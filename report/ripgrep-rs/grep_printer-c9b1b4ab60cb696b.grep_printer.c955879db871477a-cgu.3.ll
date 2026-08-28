Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_printer-c9b1b4ab60cb696b.grep_printer.c955879db871477a-cgu.3?download=true
inline.NumInlined: 109
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keysNCNvXs5_BY_NtBY_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB10_:bb.a
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, label %bb.l, !dbg !238

bb.l:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i47, 1, !dbg !257 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.m, !dbg !236
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, label %.lr.ph, !dbg !236

.lr.ph51:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i16 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ], !dbg !258
  %.sroa.01.1.i.i50 = phi i64 [ %i.al, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i.i50, !dbg !259 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 48, !dbg !258
  %.val.i = load i16, ptr %i.ag, align 8, !dbg !258, !range !72, !alias.scope !218, !noalias !221, !noundef !13
  %i.ah = getelementptr i8, ptr %i.af, i64 50, !dbg !258
  %.val7.i = load i16, ptr %i.ah, align 2, !dbg !258, !alias.scope !218, !noalias !221 ; 2 uses
  %i.ai = trunc nuw i16 %.val.i to i1, !dbg !263
  %i.aj = icmp slt i16 %.val7.i, %.val9.i, !dbg !267
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false, !dbg !263
  br i1 %i.ak, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, !dbg !258

bb.m:                                             ; preds = %.lr.ph51
  %i.al = add nuw i64 %.sroa.01.1.i.i50, 1, !dbg !269 ; 2 uses
  %exitcond67.not = icmp eq i64 %i.al, %i.m, !dbg !237
  br i1 %exitcond67.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i, label %.lr.ph51, !dbg !237

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph51
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i50, %.lr.ph51 ], [ %i.m, %bb.m ], [ %.sroa.01.0.i.i47, %.lr.ph ], [ %i.m, %bb.l ], !dbg !270 ; 6 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m, !dbg !271
  tail call void @llvm.assume(i1 %i.am), !dbg !273
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !274
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !274

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88: ; preds = %.preheader
  br i1 %.not5.i90, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i, !dbg !274

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread: ; preds = %.preheader45
  br i1 %.not5.i85, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, !dbg !274

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, !dbg !275

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0), !dbg !276
  %i.an = shl nuw nsw i64 %..i34, 1, !dbg !280
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit, !dbg !284

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 164703072086692426) i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32), !dbg !285 ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !288, !inline_history !290
  %i.ao = shl nuw nsw i64 %..i33, 1, !dbg !291
  %i.ap = or disjoint i64 %i.ao, 1, !dbg !291
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit, !dbg !284

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i869397, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i ]
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1, !dbg !294
  %i.ar = or disjoint i64 %i.aq, 1, !dbg !294
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit, !dbg !296

bb.q:                                             ; preds = %bb.n
  %i.as = lshr i64 %.sroa.0.0.i.i, 1, !dbg !297   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300), !dbg !303, !noalias !221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307), !dbg !303, !noalias !221
  %.not.i.i = icmp eq i64 %i.as, 0, !dbg !309
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i, !dbg !309

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88, %bb.q
  %i.at = phi i64 [ %i.as, %bb.q ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88 ]
  %.sroa.0.0.i.i869397 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_11sort_by_keysNCNvXs5_B14_NtB14_20HyperlinkFormatErrorNtNtB8_3fmt7Display3fmt0E0EB16_.exit.i.thread88 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i.i869397, !dbg !316
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, !dbg !309

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bk, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.preheader.i.i ] ; 3 uses
  %i.av = xor i64 %.sroa.0.016.i.i, -1, !dbg !322
  %i.aw = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.016.i.i, !dbg !323 ; 5 uses
  %i.ax = getelementptr [56 x i8], ptr %i.au, i64 %i.av, !dbg !324 ; 5 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !dbg !325, !alias.scope !357, !noalias !363
  %i.az = load <2 x i64>, ptr %i.ax, align 8, !dbg !364, !alias.scope !366, !noalias !369
  store <2 x i64> %i.az, ptr %i.aw, align 8, !dbg !370, !alias.scope !357, !noalias !363
  store <2 x i64> %i.ay, ptr %i.ax, align 8, !dbg !372, !alias.scope !366, !noalias !369
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !373 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !376 ; 2 uses
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !dbg !325, !alias.scope !378, !noalias !363
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !dbg !364, !alias.scope !381, !noalias !369
  store <2 x i64> %i.bd, ptr %i.ba, align 8, !dbg !370, !alias.scope !378, !noalias !363
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !dbg !372, !alias.scope !381, !noalias !369
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 32, !dbg !373 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 32, !dbg !376 ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !dbg !325, !alias.scope !384, !noalias !363
  %i.bh = load <2 x i64>, ptr %i.bf, align 8, !dbg !364, !alias.scope !387, !noalias !369
  store <2 x i64> %i.bh, ptr %i.be, align 8, !dbg !370, !alias.scope !384, !noalias !363
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !dbg !372, !alias.scope !387, !noalias !369
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !373 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 48, !dbg !376 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390), !dbg !392, !noalias !221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393), !dbg !392, !noalias !221
  %.sroa.0.0.copyload.i.6.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !dbg !325, !alias.scope !395, !noalias !396
  %.sroa.02.0.copyload.i.6.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !dbg !364, !alias.scope !397, !noalias !398
  store i64 %.sroa.02.0.copyload.i.6.i.i.i.i.i.i, ptr %i.bi, align 8, !dbg !370, !alias.scope !395, !noalias !396
  store i64 %.sroa.0.0.copyload.i.6.i.i.i.i.i.i, ptr %i.bj, align 8, !dbg !372, !alias.scope !397, !noalias !398
  %i.bk = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !399 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.at, !dbg !309
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit11.i.i, !dbg !309

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_11sort_by_keysNCNvXs5_B15_NtB15_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ar, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias7reverseBy_.exit ], [ %i.ap, %bb.p ], [ %i.an, %bb.o ], !dbg !400 ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1, !dbg !401
  %i.bm = lshr i64 %.sroa.0.0.i32, 1, !dbg !404
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !406 ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl, !dbg !406
  %i.bo = add nuw nsw i64 %i.bm, %factor, !dbg !409
  %i.bp = mul i64 %i.bn, %.sroa.0.0, !dbg !411
  %i.bq = mul i64 %i.bo, %.sroa.0.0, !dbg !413
  %i.br = xor i64 %i.bq, %i.bp, !dbg !414
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false), !dbg !415
  %i.bt = trunc nuw nsw i64 %i.bs to i8, !dbg !414
  br label %bb.g, !dbg !418

.lr.ph57:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit
  %.sroa.02.156 = phi i64 [ %i.bu, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.155 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bu = add i64 %.sroa.02.156, -1, !dbg !419    ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu, !dbg !420
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !423, !noundef !13
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0, !dbg !423
  br i1 %.not28, label %._crit_edge, label %bb.r, !dbg !423

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit, %.lr.ph57, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.155, %.lr.ph57 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], !dbg !185 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.156, %.lr.ph57 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit ], !dbg !187 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !424
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8, !dbg !427
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !428
  store i8 %.sroa.021.0, ptr %i.by, align 1, !dbg !430
  br i1 %i.k, label %bb.y, label %bb.z, !dbg !431

bb.r:                                             ; preds = %.lr.ph57
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu, !dbg !432
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !434, !noundef !13 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1, !dbg !435            ; 5 uses
  %i.cc = lshr i64 %.sroa.023.155, 1, !dbg !438   ; 3 uses
  %i.cd = add nuw i64 %i.cb, %i.cc, !dbg !440     ; 5 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd, !dbg !441
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ce, !dbg !443 ; 3 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3, !dbg !453
  %i.ch = trunc i64 %.sroa.023.155 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.155, !dbg !458
  %i.cj = trunc i64 %i.ci to i1, !dbg !458
  %or.cond3.i = or i1 %i.cg, %i.cj, !dbg !458
  br i1 %or.cond3.i, label %bb.s, label %bb.t, !dbg !458

bb.s:                                             ; preds = %bb.r
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.u, label %bb.v, !dbg !460

bb.t:                                             ; preds = %bb.r
  %i.cl = shl nuw nsw i64 %i.cd, 1, !dbg !461
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit, !dbg !464

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ch, label %bb.x, label %bb.w, !dbg !465

bb.v:                                             ; preds = %bb.s
  %i.cm = or i64 %i.cb, 1, !dbg !466
  %i.cn = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true), !dbg !469
  %i.co = trunc nuw nsw i64 %i.cn to i32, !dbg !469
  %i.cp = shl nuw nsw i32 %i.co, 1, !dbg !484
  %i.cq = xor i32 %i.cp, 126, !dbg !484
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 164703072086692426) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !485, !inline_history !487
  br label %bb.u, !dbg !488

bb.w:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %i.cf, i64 %i.cb, !dbg !489
  %i.cs = or i64 %i.cc, 1, !dbg !499
  %i.ct = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true), !dbg !501
  %i.cu = trunc nuw nsw i64 %i.ct to i32, !dbg !501
  %i.cv = shl nuw nsw i32 %i.cu, 1, !dbg !506
  %i.cw = xor i32 %i.cv, 126, !dbg !506
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 164703072086692426) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !507, !inline_history !487
  br label %bb.x, !dbg !508

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keysNCNvXs5_BZ_NtBZ_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 164703072086692426) %i.cd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5), !dbg !509
  %i.cx = shl nuw nsw i64 %i.cd, 1, !dbg !510
  %i.cy = or disjoint i64 %i.cx, 1, !dbg !510
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit, !dbg !464

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keysNCNvXs5_B18_NtB18_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cy, %bb.x ], [ %i.cl, %bb.t ], !dbg !513 ; 2 uses
  %i.cz = icmp ugt i64 %i.bu, 1, !dbg !191
  br i1 %i.cz, label %.lr.ph57, label %._crit_edge, !dbg !191

bb.y:                                             ; preds = %._crit_edge
  %i.da = add i64 %.sroa.02.1.lcssa, 1, !dbg !514
  %i.db = lshr i64 %.sroa.018.0, 1, !dbg !515
  %i.dc = add nuw i64 %i.db, %.sroa.09.0, !dbg !517
  br label %bb.f, !dbg !180

bb.z:                                             ; preds = %._crit_edge
  %6 = trunc i64 %.sroa.023.1.lcssa to i1, !dbg !518
  br i1 %6, label %bb.ab, label %bb.aa, !dbg !521

bb.aa:                                            ; preds = %bb.z
  %i.dd = or i64 %1, 1, !dbg !522
  %i.de = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true), !dbg !524
  %i.df = trunc nuw nsw i64 %i.de to i32, !dbg !524
  %i.dg = shl nuw nsw i32 %i.df, 1, !dbg !529
  %i.dh = xor i32 %i.dg, 126, !dbg !529
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #19, !dbg !530, !inline_history !487
  br label %bb.ab, !dbg !531

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !533
  br label %bb.ac, !dbg !534

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void, !dbg !534
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(56) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !535 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33, !dbg !538
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph, !dbg !538

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph112 = phi ptr [ %i.lq, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph111 = phi i64 [ %i.lb, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph110 = phi i32 [ %i.hm, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph109 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph112, i64 48
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph112, i64 50
  %i.e = ptrtoint ptr %.sroa.0.0.ph112 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph109, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph109, i64 48
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph109, i64 50
  %i.h = icmp eq i32 %.sroa.025.0.ph110, 0, !dbg !540
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph258, !dbg !540

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit
  %i.i = icmp eq i32 %i.hm, 0, !dbg !540
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph258, !dbg !540

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa103 = phi ptr [ %.sroa.0.0.ph112, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.lq, %.outer ] ; 20 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.lb, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !541), !dbg !544
  call void @llvm.experimental.noalias.scope.decl(metadata !548), !dbg !544
  %i.j = icmp samesign ult i64 %.sroa.16.0.lcssa, 2, !dbg !550
  br i1 %i.j, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_.exit, label %bb.c, !dbg !550

bb.c:                                             ; preds = %.outer._crit_edge
  %i.k = add nuw nsw i64 %.sroa.16.0.lcssa, 16, !dbg !554
  %i.l = icmp samesign ult i64 %3, %i.k, !dbg !555
  br i1 %i.l, label %bb.e, label %bb.d, !dbg !555

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %.sroa.16.0.lcssa, 1, !dbg !556 ; 10 uses
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7, !dbg !558
  br i1 %i.n, label %bb.f, label %bb.g, !dbg !558

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap(), !dbg !561
  unreachable, !dbg !561

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 104, !dbg !562
  %.val16.i.i = load i16, ptr %i.o, align 8, !dbg !562, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.p = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 106, !dbg !562
  %.val17.i.i = load i16, ptr %i.p, align 2, !dbg !562, !alias.scope !541, !noalias !548
  %i.q = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 48, !dbg !562
  %.val18.i.i = load i16, ptr %i.q, align 8, !dbg !562, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.r = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 50, !dbg !562
  %.val19.i.i = load i16, ptr %i.r, align 2, !dbg !562, !alias.scope !541, !noalias !548
  %i.s = trunc nuw i16 %.val16.i.i to i1, !dbg !565
  %i.t = trunc nuw i16 %.val18.i.i to i1, !dbg !569
  %.sroa.0.0.i4.i.i.i = select i1 %i.t, i16 %.val19.i.i, i16 32767, !dbg !569
  %i.u = icmp slt i16 %.val17.i.i, %.sroa.0.0.i4.i.i.i, !dbg !572
  %i.v = select i1 %i.s, i1 %i.u, i1 false, !dbg !565 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 216, !dbg !574
  %.val12.i.i = load i16, ptr %i.w, align 8, !dbg !574, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.x = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 218, !dbg !574
  %.val13.i.i = load i16, ptr %i.x, align 2, !dbg !574, !alias.scope !541, !noalias !548
  %i.y = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 160, !dbg !574
  %.val14.i.i = load i16, ptr %i.y, align 8, !dbg !574, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.z = getelementptr i8, ptr %.sroa.0.0.ph.lcssa103, i64 162, !dbg !574
  %.val15.i.i = load i16, ptr %i.z, align 2, !dbg !574, !alias.scope !541, !noalias !548
  %i.aa = trunc nuw i16 %.val12.i.i to i1, !dbg !576
  %i.ab = trunc nuw i16 %.val14.i.i to i1, !dbg !580
  %.sroa.0.0.i4.i20.i.i = select i1 %i.ab, i16 %.val15.i.i, i16 32767, !dbg !580
  %i.ac = icmp slt i16 %.val13.i.i, %.sroa.0.0.i4.i20.i.i, !dbg !583
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false, !dbg !576 ; 2 uses
  %i.ae = zext i1 %i.v to i64, !dbg !585
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.ae, !dbg !587 ; 4 uses
  %i.ag = xor i1 %i.v, true, !dbg !593
  %i.ah = zext i1 %i.ag to i64, !dbg !593
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.ah, !dbg !595 ; 5 uses
  %i.aj = select i1 %i.ad, i64 3, i64 2, !dbg !597
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.aj, !dbg !599 ; 5 uses
  %i.al = select i1 %i.ad, i64 2, i64 3, !dbg !601
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.al, !dbg !603 ; 4 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 48, !dbg !605
  %.val8.i.i = load i16, ptr %i.an, align 8, !dbg !605, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.ao = getelementptr i8, ptr %i.ak, i64 50, !dbg !605
  %.val9.i.i = load i16, ptr %i.ao, align 2, !dbg !605, !alias.scope !541, !noalias !548
  %i.ap = getelementptr i8, ptr %i.af, i64 48, !dbg !605
  %.val10.i.i = load i16, ptr %i.ap, align 8, !dbg !605, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.aq = getelementptr i8, ptr %i.af, i64 50, !dbg !605
  %.val11.i.i = load i16, ptr %i.aq, align 2, !dbg !605, !alias.scope !541, !noalias !548
  %i.ar = trunc nuw i16 %.val8.i.i to i1, !dbg !607
  %i.as = trunc nuw i16 %.val10.i.i to i1, !dbg !611
  %.sroa.0.0.i4.i21.i.i = select i1 %i.as, i16 %.val11.i.i, i16 32767, !dbg !611
  %i.at = icmp slt i16 %.val9.i.i, %.sroa.0.0.i4.i21.i.i, !dbg !614
  %i.au = select i1 %i.ar, i1 %i.at, i1 false, !dbg !607 ; 3 uses
  %i.av = getelementptr i8, ptr %i.am, i64 48, !dbg !616
  %.val4.i.i = load i16, ptr %i.av, align 8, !dbg !616, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.aw = getelementptr i8, ptr %i.am, i64 50, !dbg !616
  %.val5.i.i = load i16, ptr %i.aw, align 2, !dbg !616, !alias.scope !541, !noalias !548
  %i.ax = getelementptr i8, ptr %i.ai, i64 48, !dbg !616
  %.val6.i.i = load i16, ptr %i.ax, align 8, !dbg !616, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.ay = getelementptr i8, ptr %i.ai, i64 50, !dbg !616
  %.val7.i.i = load i16, ptr %i.ay, align 2, !dbg !616, !alias.scope !541, !noalias !548
  %i.az = trunc nuw i16 %.val4.i.i to i1, !dbg !618
  %i.ba = trunc nuw i16 %.val6.i.i to i1, !dbg !622
  %.sroa.0.0.i4.i22.i.i = select i1 %i.ba, i16 %.val7.i.i, i16 32767, !dbg !622
  %i.bb = icmp slt i16 %.val5.i.i, %.sroa.0.0.i4.i22.i.i, !dbg !625
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false, !dbg !618 ; 3 uses
  %i.bd = select i1 %i.au, ptr %i.ak, ptr %i.af, !dbg !627, !unpredictable !13
  %i.be = select i1 %i.bc, ptr %i.ai, ptr %i.am, !dbg !640, !unpredictable !13
  %i.bf = select i1 %i.bc, ptr %i.ak, ptr %i.ai, !dbg !643, !unpredictable !13
  %i.bg = select i1 %i.au, ptr %i.af, ptr %i.bf, !dbg !646, !unpredictable !13 ; 4 uses
  %i.bh = select i1 %i.au, ptr %i.ai, ptr %i.ak, !dbg !648, !unpredictable !13
  %i.bi = select i1 %i.bc, ptr %i.am, ptr %i.bh, !dbg !651, !unpredictable !13 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 48, !dbg !653
  %.val.i.i = load i16, ptr %i.bj, align 8, !dbg !653, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.bk = getelementptr i8, ptr %i.bi, i64 50, !dbg !653
  %.val1.i.i = load i16, ptr %i.bk, align 2, !dbg !653, !alias.scope !541, !noalias !548
  %i.bl = getelementptr i8, ptr %i.bg, i64 48, !dbg !653
  %.val2.i.i = load i16, ptr %i.bl, align 8, !dbg !653, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.bm = getelementptr i8, ptr %i.bg, i64 50, !dbg !653
  %.val3.i.i = load i16, ptr %i.bm, align 2, !dbg !653, !alias.scope !541, !noalias !548
  %i.bn = trunc nuw i16 %.val.i.i to i1, !dbg !655
  %i.bo = trunc nuw i16 %.val2.i.i to i1, !dbg !659
  %.sroa.0.0.i4.i23.i.i = select i1 %i.bo, i16 %.val3.i.i, i16 32767, !dbg !659
  %i.bp = icmp slt i16 %.val1.i.i, %.sroa.0.0.i4.i23.i.i, !dbg !662
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false, !dbg !655 ; 2 uses
  %i.br = select i1 %i.bq, ptr %i.bi, ptr %i.bg, !dbg !664, !unpredictable !13
  %i.bs = select i1 %i.bq, ptr %i.bg, ptr %i.bi, !dbg !667, !unpredictable !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i64 56, i1 false), !dbg !670, !alias.scope !674
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 56, !dbg !675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(56) %i.br, i64 56, i1 false), !dbg !678, !alias.scope !674
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 112, !dbg !680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.bs, i64 56, i1 false), !dbg !682, !alias.scope !674
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 168, !dbg !684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bv, ptr noundef nonnull align 8 dereferenceable(56) %i.be, i64 56, i1 false), !dbg !686, !alias.scope !674
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.m, !dbg !688 ; 12 uses
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.m, !dbg !691 ; 4 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 104, !dbg !693
  %.val16.i30.i = load i16, ptr %i.by, align 8, !dbg !693, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.bz = getelementptr i8, ptr %i.bw, i64 106, !dbg !693
  %.val17.i31.i = load i16, ptr %i.bz, align 2, !dbg !693, !alias.scope !541, !noalias !548
  %i.ca = getelementptr i8, ptr %i.bw, i64 48, !dbg !693
  %.val18.i32.i = load i16, ptr %i.ca, align 8, !dbg !693, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.cb = getelementptr i8, ptr %i.bw, i64 50, !dbg !693
  %.val19.i33.i = load i16, ptr %i.cb, align 2, !dbg !693, !alias.scope !541, !noalias !548
  %i.cc = trunc nuw i16 %.val16.i30.i to i1, !dbg !695
  %i.cd = trunc nuw i16 %.val18.i32.i to i1, !dbg !699
  %.sroa.0.0.i4.i.i34.i = select i1 %i.cd, i16 %.val19.i33.i, i16 32767, !dbg !699
  %i.ce = icmp slt i16 %.val17.i31.i, %.sroa.0.0.i4.i.i34.i, !dbg !702
  %i.cf = select i1 %i.cc, i1 %i.ce, i1 false, !dbg !695 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bw, i64 216, !dbg !704
  %.val12.i35.i = load i16, ptr %i.cg, align 8, !dbg !704, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.ch = getelementptr i8, ptr %i.bw, i64 218, !dbg !704
  %.val13.i36.i = load i16, ptr %i.ch, align 2, !dbg !704, !alias.scope !541, !noalias !548
  %i.ci = getelementptr i8, ptr %i.bw, i64 160, !dbg !704
  %.val14.i37.i = load i16, ptr %i.ci, align 8, !dbg !704, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.cj = getelementptr i8, ptr %i.bw, i64 162, !dbg !704
  %.val15.i38.i = load i16, ptr %i.cj, align 2, !dbg !704, !alias.scope !541, !noalias !548
  %i.ck = trunc nuw i16 %.val12.i35.i to i1, !dbg !705
  %i.cl = trunc nuw i16 %.val14.i37.i to i1, !dbg !709
  %.sroa.0.0.i4.i20.i39.i = select i1 %i.cl, i16 %.val15.i38.i, i16 32767, !dbg !709
  %i.cm = icmp slt i16 %.val13.i36.i, %.sroa.0.0.i4.i20.i39.i, !dbg !712
  %i.cn = select i1 %i.ck, i1 %i.cm, i1 false, !dbg !705 ; 2 uses
  %i.co = zext i1 %i.cf to i64, !dbg !714
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %i.co, !dbg !715 ; 4 uses
  %i.cq = xor i1 %i.cf, true, !dbg !717
  %i.cr = zext i1 %i.cq to i64, !dbg !717
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %i.cr, !dbg !718 ; 5 uses
  %i.ct = select i1 %i.cn, i64 3, i64 2, !dbg !720
  %i.cu = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %i.ct, !dbg !721 ; 5 uses
  %i.cv = select i1 %i.cn, i64 2, i64 3, !dbg !723
  %i.cw = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %i.cv, !dbg !724 ; 4 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 48, !dbg !726
  %.val8.i40.i = load i16, ptr %i.cx, align 8, !dbg !726, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.cy = getelementptr i8, ptr %i.cu, i64 50, !dbg !726
  %.val9.i41.i = load i16, ptr %i.cy, align 2, !dbg !726, !alias.scope !541, !noalias !548
  %i.cz = getelementptr i8, ptr %i.cp, i64 48, !dbg !726
  %.val10.i42.i = load i16, ptr %i.cz, align 8, !dbg !726, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.da = getelementptr i8, ptr %i.cp, i64 50, !dbg !726
  %.val11.i43.i = load i16, ptr %i.da, align 2, !dbg !726, !alias.scope !541, !noalias !548
  %i.db = trunc nuw i16 %.val8.i40.i to i1, !dbg !727
  %i.dc = trunc nuw i16 %.val10.i42.i to i1, !dbg !731
  %.sroa.0.0.i4.i21.i44.i = select i1 %i.dc, i16 %.val11.i43.i, i16 32767, !dbg !731
  %i.dd = icmp slt i16 %.val9.i41.i, %.sroa.0.0.i4.i21.i44.i, !dbg !734
  %i.de = select i1 %i.db, i1 %i.dd, i1 false, !dbg !727 ; 3 uses
  %i.df = getelementptr i8, ptr %i.cw, i64 48, !dbg !736
  %.val4.i45.i = load i16, ptr %i.df, align 8, !dbg !736, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.dg = getelementptr i8, ptr %i.cw, i64 50, !dbg !736
  %.val5.i46.i = load i16, ptr %i.dg, align 2, !dbg !736, !alias.scope !541, !noalias !548
  %i.dh = getelementptr i8, ptr %i.cs, i64 48, !dbg !736
  %.val6.i47.i = load i16, ptr %i.dh, align 8, !dbg !736, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.di = getelementptr i8, ptr %i.cs, i64 50, !dbg !736
  %.val7.i48.i = load i16, ptr %i.di, align 2, !dbg !736, !alias.scope !541, !noalias !548
  %i.dj = trunc nuw i16 %.val4.i45.i to i1, !dbg !737
  %i.dk = trunc nuw i16 %.val6.i47.i to i1, !dbg !741
  %.sroa.0.0.i4.i22.i49.i = select i1 %i.dk, i16 %.val7.i48.i, i16 32767, !dbg !741
  %i.dl = icmp slt i16 %.val5.i46.i, %.sroa.0.0.i4.i22.i49.i, !dbg !744
  %i.dm = select i1 %i.dj, i1 %i.dl, i1 false, !dbg !737 ; 3 uses
  %i.dn = select i1 %i.de, ptr %i.cu, ptr %i.cp, !dbg !746, !unpredictable !13
  %i.do = select i1 %i.dm, ptr %i.cs, ptr %i.cw, !dbg !748, !unpredictable !13
  %i.dp = select i1 %i.dm, ptr %i.cu, ptr %i.cs, !dbg !750, !unpredictable !13
  %i.dq = select i1 %i.de, ptr %i.cp, ptr %i.dp, !dbg !752, !unpredictable !13 ; 4 uses
  %i.dr = select i1 %i.de, ptr %i.cs, ptr %i.cu, !dbg !754, !unpredictable !13
  %i.ds = select i1 %i.dm, ptr %i.cw, ptr %i.dr, !dbg !756, !unpredictable !13 ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 48, !dbg !758
  %.val.i50.i = load i16, ptr %i.dt, align 8, !dbg !758, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.du = getelementptr i8, ptr %i.ds, i64 50, !dbg !758
  %.val1.i51.i = load i16, ptr %i.du, align 2, !dbg !758, !alias.scope !541, !noalias !548
  %i.dv = getelementptr i8, ptr %i.dq, i64 48, !dbg !758
  %.val2.i52.i = load i16, ptr %i.dv, align 8, !dbg !758, !range !72, !alias.scope !541, !noalias !548, !noundef !13
  %i.dw = getelementptr i8, ptr %i.dq, i64 50, !dbg !758
  %.val3.i53.i = load i16, ptr %i.dw, align 2, !dbg !758, !alias.scope !541, !noalias !548
  %i.dx = trunc nuw i16 %.val.i50.i to i1, !dbg !759
  %i.dy = trunc nuw i16 %.val2.i52.i to i1, !dbg !763
  %.sroa.0.0.i4.i23.i54.i = select i1 %i.dy, i16 %.val3.i53.i, i16 32767, !dbg !763
  %i.dz = icmp slt i16 %.val1.i51.i, %.sroa.0.0.i4.i23.i54.i, !dbg !766
  %i.ea = select i1 %i.dx, i1 %i.dz, i1 false, !dbg !759 ; 2 uses
  %i.eb = select i1 %i.ea, ptr %i.ds, ptr %i.dq, !dbg !768, !unpredictable !13
  %i.ec = select i1 %i.ea, ptr %i.dq, ptr %i.ds, !dbg !770, !unpredictable !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %i.dn, i64 56, i1 false), !dbg !772, !alias.scope !674
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bx, i64 56, !dbg !774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ed, ptr noundef nonnull align 8 dereferenceable(56) %i.eb, i64 56, i1 false), !dbg !776, !alias.scope !674
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bx, i64 112, !dbg !778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ee, ptr noundef nonnull align 8 dereferenceable(56) %i.ec, i64 56, i1 false), !dbg !780, !alias.scope !674
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bx, i64 168, !dbg !782
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ef, ptr noundef nonnull align 8 dereferenceable(56) %i.do, i64 56, i1 false), !dbg !784, !alias.scope !674
  br label %bb.h, !dbg !786

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.ph.lcssa103, i64 56, i1 false), !dbg !787, !alias.scope !674
  %i.eg = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.m, !dbg !790
  %i.eh = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.m, !dbg !792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eh, ptr noundef nonnull align 8 dereferenceable(56) %i.eg, i64 56, i1 false), !dbg !794, !alias.scope !674
  br label %bb.h, !dbg !786

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ], !dbg !796 ; 4 uses
  %i.ei = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.m ; 2 uses
  %i.ej = icmp samesign ult i64 %.sroa.0.0.i, %i.m, !dbg !797
  br i1 %i.ej, label %.lr.ph.i, label %.loopexit.i, !dbg !818

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.i, %bb.h
  %i.ek = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.m, !dbg !819
  %i.el = getelementptr [56 x i8], ptr %2, i64 %i.m, !dbg !821 ; 6 uses
  %i.em = icmp samesign ult i64 %.sroa.0.0.i, %i.ei, !dbg !797
  br i1 %i.em, label %.lr.ph.1.i, label %.loopexit.1.i, !dbg !818

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.fd, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.ek, i64 %.sroa.05.08.1.i, !dbg !823 ; 2 uses
  %.idx278 = mul nuw nsw i64 %.sroa.05.08.1.i, 56, !dbg !826
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx278, !dbg !826 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eo, ptr noundef nonnull align 8 dereferenceable(56) %i.en, i64 56, i1 false), !dbg !828, !alias.scope !674
  %i.ep = getelementptr i8, ptr %i.eo, i64 48, !dbg !830
  %.val11.i56.1.i = load i16, ptr %i.ep, align 8, !dbg !830, !range !72, !alias.scope !548, !noalias !541, !noundef !13
  %i.eq = getelementptr i8, ptr %i.eo, i64 50, !dbg !830
  %.val12.i57.1.i = load i16, ptr %i.eq, align 2, !dbg !830, !alias.scope !548, !noalias !541 ; 3 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 -8, !dbg !830
  %.val13.i58.1.i = load i16, ptr %i.er, align 8, !dbg !830, !range !72, !alias.scope !548, !noalias !541, !noundef !13
  %i.es = getelementptr i8, ptr %i.eo, i64 -6, !dbg !830
  %.val14.i59.1.i = load i16, ptr %i.es, align 2, !dbg !830, !alias.scope !548, !noalias !541
  %i.et = trunc nuw i16 %.val11.i56.1.i to i1, !dbg !832
  %i.eu = trunc nuw i16 %.val13.i58.1.i to i1, !dbg !836
  %.sroa.0.0.i4.i.i60.1.i = select i1 %i.eu, i16 %.val14.i59.1.i, i16 32767, !dbg !836
  %i.ev = icmp slt i16 %.val12.i57.1.i, %.sroa.0.0.i4.i.i60.1.i, !dbg !839
  %i.ew = select i1 %i.et, i1 %i.ev, i1 false, !dbg !832
  br i1 %i.ew, label %.split.preheader.i.1.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.1.i, !dbg !830

.split.preheader.i.1.i:                           ; preds = %.lr.ph.1.i
  %.sroa.617.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 52, !dbg !841
  %.sroa.617.0.copyload.i.1.i = load i32, ptr %.sroa.617.0..sroa_idx.i.1.i, align 4, !dbg !841, !alias.scope !548, !noalias !541
  %.sroa.0.0.i61.1.i270 = getelementptr inbounds i8, ptr %i.eo, i64 -56, !dbg !844 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.eo, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i61.1.i270, i64 56, i1 false), !dbg !846, !alias.scope !548, !noalias !541
  %i.ex = icmp eq i64 %.sroa.05.08.1.i, 1, !dbg !848
  br i1 %i.ex, label %.split6.i.1.i, label %.lr.ph273, !dbg !848

.split.i.1.i:                                     ; preds = %.lr.ph273
  %.sroa.0.0.i61.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i61.1.i272, i64 -56, !dbg !844 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i61.1.i272, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i61.1.i, i64 56, i1 false), !dbg !846, !alias.scope !548, !noalias !541
  %i.ey = icmp eq ptr %.sroa.0.0.i61.1.i, %i.el, !dbg !848
  br i1 %i.ey, label %.split6.i.1.i, label %.lr.ph273, !dbg !848

.lr.ph273:                                        ; preds = %.split.preheader.i.1.i, %.split.i.1.i
  %.sroa.0.0.i61.1.i272 = phi ptr [ %.sroa.0.0.i61.1.i, %.split.i.1.i ], [ %.sroa.0.0.i61.1.i270, %.split.preheader.i.1.i ] ; 5 uses
  %.sroa.5.0.i.1.i271 = phi ptr [ %.sroa.0.0.i61.1.i272, %.split.i.1.i ], [ %i.eo, %.split.preheader.i.1.i ] ; 3 uses
  %i.ez = getelementptr i8, ptr %.sroa.5.0.i.1.i271, i64 -64, !dbg !849
  %.val9.i62.1.i = load i16, ptr %i.ez, align 8, !dbg !849, !range !72, !alias.scope !548, !noalias !541, !noundef !13
  %i.fa = getelementptr i8, ptr %.sroa.5.0.i.1.i271, i64 -62, !dbg !849
  %.val10.i63.1.i = load i16, ptr %i.fa, align 2, !dbg !849, !alias.scope !548, !noalias !541
  %i.fb = trunc nuw i16 %.val9.i62.1.i to i1, !dbg !850
  %.sroa.0.0.i4.i15.i.1.i = select i1 %i.fb, i16 %.val10.i63.1.i, i16 32767, !dbg !850
  %i.fc = icmp slt i16 %.val12.i57.1.i, %.sroa.0.0.i4.i15.i.1.i, !dbg !854
  br i1 %i.fc, label %.split.i.1.i, label %.split6.i.1.i, !dbg !849

.split6.i.1.i:                                    ; preds = %.split.i.1.i, %.lr.ph273, %.split.preheader.i.1.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.eo, %.split.preheader.i.1.i ], [ %.sroa.0.0.i61.1.i272, %.split.i.1.i ], [ %.sroa.5.0.i.1.i271, %.lr.ph273 ], !dbg !856 ; 3 uses
  %.sroa.0.0.i61.lcssa.1.i = phi ptr [ %i.el, %.split.preheader.i.1.i ], [ %i.el, %.split.i.1.i ], [ %.sroa.0.0.i61.1.i272, %.lr.ph273 ], !dbg !844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i61.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(48) %i.en, i64 48, i1 false), !dbg !857, !alias.scope !674
  %.sroa.4.0..us-phi.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8, !dbg !857
  store i16 1, ptr %.sroa.4.0..us-phi.sroa_idx.i.1.i, align 8, !dbg !857, !alias.scope !548, !noalias !861
  %.sroa.5.0..us-phi.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -6, !dbg !857
  store i16 %.val12.i57.1.i, ptr %.sroa.5.0..us-phi.sroa_idx.i.1.i, align 2, !dbg !857, !alias.scope !548, !noalias !861
  %.sroa.6.0..us-phi.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -4, !dbg !857
  store i32 %.sroa.617.0.copyload.i.1.i, ptr %.sroa.6.0..us-phi.sroa_idx.i.1.i, align 4, !dbg !857, !alias.scope !548, !noalias !861
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.1.i, !dbg !866

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.1.i: ; preds = %.split6.i.1.i, %.lr.ph.1.i
  %i.fd = add nuw nsw i64 %.sroa.05.08.1.i, 1, !dbg !867 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.fd, %i.ei, !dbg !797
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i, !dbg !818

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.1.i, %.loopexit.i
  %i.fe = add nsw i64 %.sroa.16.0.lcssa, -1, !dbg !874 ; 2 uses
  %i.ff = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %i.fe, !dbg !885
  %i.fg = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.fe, !dbg !889
  %i.fh = getelementptr i8, ptr %i.el, i64 -56, !dbg !892
  br label %.lr.ph.i.i, !dbg !894

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.fi = getelementptr i8, ptr %i.gj, i64 56, !dbg !902 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.gi, i64 56, !dbg !907
  %7 = trunc i64 %.sroa.16.0.lcssa to i1, !dbg !912
  br i1 %7, label %bb.i, label %bb.j, !dbg !916

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa103, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.fk, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.fx, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.fv, %.lr.ph.i.i ], [ %i.el, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.gj, %.lr.ph.i.i ], [ %i.fh, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.gi, %.lr.ph.i.i ], [ %i.fg, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.gk, %.lr.ph.i.i ], [ %i.ff, %.loopexit.1.i ] ; 2 uses
  %i.fk = add nuw nsw i64 %.sroa.04.09.i.i, 1, !dbg !917 ; 2 uses
  %i.fl = getelementptr i8, ptr %.sroa.011.07.i.i, i64 48, !dbg !923
  %.sroa.011.0.val.i.i = load i16, ptr %i.fl, align 8, !dbg !923, !range !72, !alias.scope !926, !noalias !541, !noundef !13
  %i.fm = getelementptr i8, ptr %.sroa.011.07.i.i, i64 50, !dbg !923
  %.sroa.011.0.val22.i.i = load i16, ptr %i.fm, align 2, !dbg !923, !alias.scope !926, !noalias !541
  %i.fn = getelementptr i8, ptr %.sroa.06.08.i.i, i64 48, !dbg !923
  %.sroa.06.0.val.i.i = load i16, ptr %i.fn, align 8, !dbg !923, !range !72, !alias.scope !926, !noalias !541, !noundef !13
  %i.fo = getelementptr i8, ptr %.sroa.06.08.i.i, i64 50, !dbg !923
  %.sroa.06.0.val23.i.i = load i16, ptr %i.fo, align 2, !dbg !923, !alias.scope !926, !noalias !541
  %i.fp = trunc nuw i16 %.sroa.011.0.val.i.i to i1, !dbg !929
  %i.fq = trunc nuw i16 %.sroa.06.0.val.i.i to i1, !dbg !933
  %.sroa.0.0.i4.i.i55.i = select i1 %i.fq, i16 %.sroa.06.0.val23.i.i, i16 32767, !dbg !933
  %i.fr = icmp slt i16 %.sroa.011.0.val22.i.i, %.sroa.0.0.i4.i.i55.i, !dbg !936
  %i.fs = select i1 %i.fp, i1 %i.fr, i1 false, !dbg !929 ; 3 uses
  %..i21.i.i = select i1 %i.fs, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i, !dbg !938
  %i.ft = xor i1 %i.fs, true, !dbg !940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i21.i.i, i64 56, i1 false), !dbg !941, !alias.scope !674, !noalias !945
  %i.fu = zext i1 %i.fs to i64, !dbg !949
  %i.fv = getelementptr inbounds nuw [56 x i8], ptr %.sroa.011.07.i.i, i64 %i.fu, !dbg !950 ; 4 uses
  %i.fw = zext i1 %i.ft to i64, !dbg !953
  %i.fx = getelementptr inbounds nuw [56 x i8], ptr %.sroa.06.08.i.i, i64 %i.fw, !dbg !954 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56, !dbg !956 ; 2 uses
  %i.fz = getelementptr i8, ptr %.sroa.017.05.i.i, i64 48, !dbg !959
  %.sroa.017.0.val.i.i = load i16, ptr %i.fz, align 8, !dbg !959, !range !72, !alias.scope !926, !noalias !541, !noundef !13
  %i.ga = getelementptr i8, ptr %.sroa.017.05.i.i, i64 50, !dbg !959
  %.sroa.017.0.val24.i.i = load i16, ptr %i.ga, align 2, !dbg !959, !alias.scope !926, !noalias !541
  %i.gb = getelementptr i8, ptr %.sroa.015.06.i.i, i64 48, !dbg !959
  %.sroa.015.0.val.i.i = load i16, ptr %i.gb, align 8, !dbg !959, !range !72, !alias.scope !926, !noalias !541, !noundef !13
  %i.gc = getelementptr i8, ptr %.sroa.015.06.i.i, i64 50, !dbg !959
  %.sroa.015.0.val25.i.i = load i16, ptr %i.gc, align 2, !dbg !959, !alias.scope !926, !noalias !541
  %i.gd = trunc nuw i16 %.sroa.017.0.val.i.i to i1, !dbg !962
  %i.ge = trunc nuw i16 %.sroa.015.0.val.i.i to i1, !dbg !966
  %.sroa.0.0.i4.i26.i.i = select i1 %i.ge, i16 %.sroa.015.0.val25.i.i, i16 32767, !dbg !966
  %i.gf = icmp slt i16 %.sroa.017.0.val24.i.i, %.sroa.0.0.i4.i26.i.i, !dbg !969
  %i.gg = select i1 %i.gd, i1 %i.gf, i1 false, !dbg !962 ; 3 uses
  %..i.i.i = select i1 %i.gg, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i, !dbg !971
  %i.gh = xor i1 %i.gg, true, !dbg !973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !dbg !974, !alias.scope !674, !noalias !978
  %.neg.i.i.i = sext i1 %i.gh to i64, !dbg !982
  %i.gi = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i, !dbg !983 ; 2 uses
  %.neg13.i.i.i = sext i1 %i.gg to i64, !dbg !988
  %i.gj = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i, !dbg !989 ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56, !dbg !993
  %exitcond.not.i.i = icmp eq i64 %i.fk, %i.m, !dbg !996
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !894

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.gl = icmp ult ptr %i.fx, %i.fi, !dbg !999    ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.gl, ptr %i.fx, ptr %i.fv, !dbg !1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !dbg !1002, !alias.scope !674
  %i.gm = zext i1 %i.gl to i64, !dbg !1006
  %i.gn = getelementptr inbounds nuw [56 x i8], ptr %i.fx, i64 %i.gm, !dbg !1007
  %i.go = xor i1 %i.gl, true, !dbg !1009
  %i.gp = zext i1 %i.go to i64, !dbg !1009
  %i.gq = getelementptr inbounds nuw [56 x i8], ptr %i.fv, i64 %i.gp, !dbg !1010
  br label %bb.j, !dbg !1012

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.fv, %._crit_edge.i.i ], [ %i.gq, %bb.i ], !dbg !1013
  %.sroa.06.1.i.i = phi ptr [ %i.fx, %._crit_edge.i.i ], [ %i.gn, %bb.i ], !dbg !1014
  %i.gr = icmp ne ptr %.sroa.06.1.i.i, %i.fi, !dbg !1015
  %i.gs = icmp ne ptr %.sroa.011.1.i.i, %i.fj
  %or.cond.i.i = select i1 %i.gr, i1 true, i1 %i.gs, !dbg !1015, !prof !1016
  br i1 %or.cond.i.i, label %bb.k, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_.exit, !dbg !1015, !prof !1016

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #20
          to label %.noexc.i unwind label %bb.l, !dbg !1017

.noexc.i:                                         ; preds = %bb.k
  unreachable, !dbg !1017

bb.l:                                             ; preds = %bb.k
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = mul nuw nsw i64 %.sroa.16.0.lcssa, 56, !dbg !1018
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa103, ptr nonnull align 8 %2, i64 %i.gu, i1 false), !dbg !1018, !alias.scope !674, !noalias !1022
  resume { ptr, i32 } %i.gt, !dbg !1027

.lr.ph.i:                                         ; preds = %bb.h, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.hl, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.gv = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph.lcssa103, i64 %.sroa.05.08.i, !dbg !823 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 56, !dbg !826
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !826 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gw, ptr noundef nonnull align 8 dereferenceable(56) %i.gv, i64 56, i1 false), !dbg !828, !alias.scope !674
  %i.gx = getelementptr i8, ptr %i.gw, i64 48, !dbg !830
  %.val11.i56.i = load i16, ptr %i.gx, align 8, !dbg !830, !range !72, !alias.scope !548, !noalias !541, !noundef !13
  %i.gy = getelementptr i8, ptr %i.gw, i64 50, !dbg !830
  %.val12.i57.i = load i16, ptr %i.gy, align 2, !dbg !830, !alias.scope !548, !noalias !541 ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gw, i64 -8, !dbg !830
  %.val13.i58.i = load i16, ptr %i.gz, align 8, !dbg !830, !range !72, !alias.scope !548, !noalias !541, !noundef !13
  %i.ha = getelementptr i8, ptr %i.gw, i64 -6, !dbg !830
  %.val14.i59.i = load i16, ptr %i.ha, align 2, !dbg !830, !alias.scope !548, !noalias !541
  %i.hb = trunc nuw i16 %.val11.i56.i to i1, !dbg !832
  %i.hc = trunc nuw i16 %.val13.i58.i to i1, !dbg !836
  %.sroa.0.0.i4.i.i60.i = select i1 %i.hc, i16 %.val14.i59.i, i16 32767, !dbg !836
  %i.hd = icmp slt i16 %.val12.i57.i, %.sroa.0.0.i4.i.i60.i, !dbg !839
  %i.he = select i1 %i.hb, i1 %i.hd, i1 false, !dbg !832
  br i1 %i.he, label %.split.preheader.i.i, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.i, !dbg !830

.split.preheader.i.i:                             ; preds = %.lr.ph.i
  %.sroa.617.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 52, !dbg !841
  %.sroa.617.0.copyload.i.i = load i32, ptr %.sroa.617.0..sroa_idx.i.i, align 4, !dbg !841, !alias.scope !548, !noalias !541
  %.sroa.0.0.i61.i262 = getelementptr inbounds i8, ptr %i.gw, i64 -56, !dbg !844 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gw, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i61.i262, i64 56, i1 false), !dbg !846, !alias.scope !548, !noalias !541
  %i.hf = icmp eq i64 %.sroa.05.08.i, 1, !dbg !848
  br i1 %i.hf, label %.split6.i.i, label %.lr.ph265, !dbg !848

.split.i.i:                                       ; preds = %.lr.ph265
  %.sroa.0.0.i61.i = getelementptr inbounds i8, ptr %.sroa.0.0.i61.i264, i64 -56, !dbg !844 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i61.i264, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i61.i, i64 56, i1 false), !dbg !846, !alias.scope !548, !noalias !541
  %i.hg = icmp eq ptr %.sroa.0.0.i61.i, %2, !dbg !848
  br i1 %i.hg, label %.split6.i.i, label %.lr.ph265, !dbg !848

.lr.ph265:                                        ; preds = %.split.preheader.i.i, %.split.i.i
  %.sroa.0.0.i61.i264 = phi ptr [ %.sroa.0.0.i61.i, %.split.i.i ], [ %.sroa.0.0.i61.i262, %.split.preheader.i.i ] ; 5 uses
  %.sroa.5.0.i.i263 = phi ptr [ %.sroa.0.0.i61.i264, %.split.i.i ], [ %i.gw, %.split.preheader.i.i ] ; 3 uses
  %i.hh = getelementptr i8, ptr %.sroa.5.0.i.i263, i64 -64, !dbg !849
  %.val9.i62.i = load i16, ptr %i.hh, align 8, !dbg !849, !range !72, !alias.scope !548, !noalias !541, !noundef !13
  %i.hi = getelementptr i8, ptr %.sroa.5.0.i.i263, i64 -62, !dbg !849
  %.val10.i63.i = load i16, ptr %i.hi, align 2, !dbg !849, !alias.scope !548, !noalias !541
  %i.hj = trunc nuw i16 %.val9.i62.i to i1, !dbg !850
  %.sroa.0.0.i4.i15.i.i = select i1 %i.hj, i16 %.val10.i63.i, i16 32767, !dbg !850
  %i.hk = icmp slt i16 %.val12.i57.i, %.sroa.0.0.i4.i15.i.i, !dbg !854
  br i1 %i.hk, label %.split.i.i, label %.split6.i.i, !dbg !849

.split6.i.i:                                      ; preds = %.split.i.i, %.lr.ph265, %.split.preheader.i.i
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.gw, %.split.preheader.i.i ], [ %.sroa.0.0.i61.i264, %.split.i.i ], [ %.sroa.5.0.i.i263, %.lr.ph265 ], !dbg !856 ; 3 uses
  %.sroa.0.0.i61.lcssa.i = phi ptr [ %2, %.split.preheader.i.i ], [ %2, %.split.i.i ], [ %.sroa.0.0.i61.i264, %.lr.ph265 ], !dbg !844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i61.lcssa.i, ptr noundef nonnull align 8 dereferenceable(48) %i.gv, i64 48, i1 false), !dbg !857, !alias.scope !674
  %.sroa.4.0..us-phi.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8, !dbg !857
  store i16 1, ptr %.sroa.4.0..us-phi.sroa_idx.i.i, align 8, !dbg !857, !alias.scope !548, !noalias !861
  %.sroa.5.0..us-phi.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -6, !dbg !857
  store i16 %.val12.i57.i, ptr %.sroa.5.0..us-phi.sroa_idx.i.i, align 2, !dbg !857, !alias.scope !548, !noalias !861
  %.sroa.6.0..us-phi.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -4, !dbg !857
  store i32 %.sroa.617.0.copyload.i.i, ptr %.sroa.6.0..us-phi.sroa_idx.i.i, align 4, !dbg !857, !alias.scope !548, !noalias !861
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.i, !dbg !866

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB18_11sort_by_keysNCNvXs5_B1a_NtB1a_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1c_.exit.i: ; preds = %.split6.i.i, %.lr.ph.i
  %i.hl = add nuw nsw i64 %.sroa.05.08.i, 1, !dbg !867 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hl, %i.m, !dbg !797
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !dbg !818

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0105.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph111, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keysNCNvXs5_BY_NtBY_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph112, i64 noundef %.sroa.16.0105.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1028
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_.exit, !dbg !1029

.lr.ph258:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0104257 = phi i32 [ %i.hm, %bb.b ], [ %.sroa.025.0.ph110, %.lr.ph ]
  %.sroa.16.0105256 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph111, %.lr.ph ] ; 21 uses
  %i.hm = add i32 %.sroa.025.0104257, -1, !dbg !1032 ; 4 uses
  %i.hn = lshr i64 %.sroa.16.0105256, 3, !dbg !1033 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.hn, 224, !dbg !1040
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph112, i64 %.idx.i, !dbg !1040 ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.hn, 392, !dbg !1045
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph112, i64 %.idx2.i, !dbg !1045 ; 4 uses
  %i.hq = icmp samesign ult i64 %.sroa.16.0105256, 64, !dbg !1048
  br i1 %i.hq, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keysNCNvXs5_B11_NtB11_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB13_.exit.i, label %bb.m, !dbg !1048

bb.m:                                             ; preds = %.lr.ph258
  %i.hr = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keysNCNvXs5_B16_NtB16_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph112, ptr noundef nonnull readonly %i.ho, ptr noundef nonnull readonly %i.hp, i64 noundef %i.hn, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6), !dbg !1050
  br label %bb.n, !dbg !1051

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keysNCNvXs5_B11_NtB11_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB13_.exit.i: ; preds = %.lr.ph258
  %.val10.i = load i16, ptr %i.c, align 8, !dbg !1052, !range !72, !alias.scope !1055, !noalias !1058, !noundef !13
  %.val11.i = load i16, ptr %i.d, align 2, !dbg !1052, !alias.scope !1055, !noalias !1058 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.ho, i64 48, !dbg !1052
  %.val12.i = load i16, ptr %i.hs, align 8, !dbg !1052, !range !72, !alias.scope !1055, !noalias !1058, !noundef !13
  %i.ht = getelementptr i8, ptr %i.ho, i64 50, !dbg !1052
  %.val13.i = load i16, ptr %i.ht, align 2, !dbg !1052, !alias.scope !1055, !noalias !1058 ; 2 uses
  %i.hu = trunc nuw i16 %.val10.i to i1, !dbg !1060 ; 2 uses
  %i.hv = trunc nuw i16 %.val12.i to i1, !dbg !1064 ; 2 uses
  %.sroa.0.0.i4.i.i = select i1 %i.hv, i16 %.val13.i, i16 32767, !dbg !1064
  %i.hw = icmp slt i16 %.val11.i, %.sroa.0.0.i4.i.i, !dbg !1067
  %i.hx = select i1 %i.hu, i1 %i.hw, i1 false, !dbg !1060 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hp, i64 48, !dbg !1069
  %.val8.i = load i16, ptr %i.hy, align 8, !dbg !1069, !range !72, !alias.scope !1055, !noalias !1058, !noundef !13
  %i.hz = getelementptr i8, ptr %i.hp, i64 50, !dbg !1069
  %.val9.i = load i16, ptr %i.hz, align 2, !dbg !1069, !alias.scope !1055, !noalias !1058
  %i.ia = trunc nuw i16 %.val8.i to i1, !dbg !1071
  %.sroa.0.0.i4.i14.i = select i1 %i.ia, i16 %.val9.i, i16 32767, !dbg !1071 ; 2 uses
  %i.ib = icmp slt i16 %.val11.i, %.sroa.0.0.i4.i14.i, !dbg !1075
  %i.ic = select i1 %i.hu, i1 %i.ib, i1 false, !dbg !1077
  %i.id = xor i1 %i.hx, %i.ic, !dbg !1080
  %i.ie = icmp slt i16 %.val13.i, %.sroa.0.0.i4.i14.i, !dbg !1080
  %i.if = select i1 %i.hv, i1 %i.ie, i1 false, !dbg !1080
  %i.ig = xor i1 %i.hx, %i.if, !dbg !1080
  %..i.i = select i1 %i.ig, ptr %i.hp, ptr %i.ho, !dbg !1080
  %.sroa.0.0.i.i = select i1 %i.id, ptr %.sroa.0.0.ph112, ptr %..i.i, !dbg !1080
  br label %bb.n, !dbg !1051

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_.exit: ; preds = %.outer._crit_edge.thread, %bb.j, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void, !dbg !1082

bb.n:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keysNCNvXs5_B11_NtB11_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB13_.exit.i, %bb.m
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keysNCNvXs5_B11_NtB11_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB13_.exit.i ], [ %i.hr, %bb.m ]
  %i.ih = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !1083
  %i.ii = sub nuw i64 %i.ih, %i.e, !dbg !1083     ; 2 uses
  %.sroa.0.0.i39 = udiv exact i64 %i.ii, 56, !dbg !1083 ; 3 uses
  %i.ij = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0105256, !dbg !1086
  call void @llvm.assume(i1 %i.ij), !dbg !1088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1091
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph112, i64 %i.ii, !dbg !1093 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.ik, i64 56, i1 false), !dbg !1094
  br i1 %.not, label %bb.p, label %bb.o, !dbg !1097

bb.o:                                             ; preds = %bb.n
  %.sroa.028.0.val = load i16, ptr %i.f, align 8, !dbg !1102, !range !72, !noundef !13
  %.sroa.028.0.val37 = load i16, ptr %i.g, align 2, !dbg !1102
  %i.il = getelementptr i8, ptr %i.ik, i64 48, !dbg !1102
  %.val = load i16, ptr %i.il, align 8, !dbg !1102, !range !72, !noundef !13
  %i.im = getelementptr i8, ptr %i.ik, i64 50, !dbg !1102
  %.val38 = load i16, ptr %i.im, align 2, !dbg !1102
  %i.in = trunc nuw i16 %.sroa.028.0.val to i1, !dbg !1103
  %i.io = trunc nuw i16 %.val to i1, !dbg !1107
  %.sroa.0.0.i4.i = select i1 %i.io, i16 %.val38, i16 32767, !dbg !1107
  %i.ip = icmp slt i16 %.sroa.028.0.val37, %.sroa.0.0.i4.i, !dbg !1110
  %i.iq = select i1 %i.in, i1 %i.ip, i1 false, !dbg !1103
  br i1 %i.iq, label %bb.p, label %.thread, !dbg !1112

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1114), !dbg !1117
  %.not74 = icmp samesign ult i64 %3, %.sroa.16.0105256, !dbg !1118
  br i1 %.not74, label %bb.r, label %bb.q, !dbg !1118, !prof !1016

bb.q:                                             ; preds = %bb.p
  %i.ir = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0105256, !dbg !1122 ; 4 uses
  %i.is = getelementptr i8, ptr %i.ik, i64 48
  %i.it = getelementptr i8, ptr %i.ik, i64 50
  br label %bb.s, !dbg !1131

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap(), !dbg !1135
  unreachable, !dbg !1135

bb.s:                                             ; preds = %bb.t, %bb.q
  %.sroa.19.0.i = phi ptr [ %i.ir, %bb.q ], [ %i.jj, %bb.t ], !dbg !1136 ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.q ], [ %.sroa.11.1.lcssa.i, %bb.t ], !dbg !1136 ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph112, %bb.q ], [ %i.jl, %bb.t ], !dbg !1136 ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.q ], [ %.sroa.16.0105256, %bb.t ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph112, i64 %.sroa.0.0.i40, !dbg !1137 ; 2 uses
  %i.iv = icmp ult ptr %.sroa.5.0.i, %i.iu, !dbg !1140
  br i1 %i.iv, label %.lr.ph.i42, label %._crit_edge.i, !dbg !1140

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.s
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.s ], [ %i.jd, %.lr.ph.i42 ], !dbg !1136
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.s ], [ %i.jg, %.lr.ph.i42 ], !dbg !1136 ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.s ], [ %i.jh, %.lr.ph.i42 ], !dbg !1136 ; 2 uses
  %i.iw = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0105256, !dbg !1142
  br i1 %i.iw, label %bb.u, label %bb.t, !dbg !1142

.lr.ph.i42:                                       ; preds = %bb.s, %.lr.ph.i42
  %.sroa.5.111.i = phi ptr [ %i.jh, %.lr.ph.i42 ], [ %.sroa.5.0.i, %bb.s ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.jg, %.lr.ph.i42 ], [ %.sroa.11.0.i, %bb.s ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.jd, %.lr.ph.i42 ], [ %.sroa.19.0.i, %bb.s ]
  %i.ix = getelementptr i8, ptr %.sroa.5.111.i, i64 48, !dbg !1143
  %.val.i = load i16, ptr %i.ix, align 8, !dbg !1143, !range !72, !alias.scope !1144, !noalias !1114, !noundef !13
  %i.iy = getelementptr i8, ptr %.sroa.5.111.i, i64 50, !dbg !1143
  %.val12.i43 = load i16, ptr %i.iy, align 2, !dbg !1143, !alias.scope !1144, !noalias !1114
  %.val13.i44 = load i16, ptr %i.is, align 8, !dbg !1143, !range !72, !alias.scope !1144, !noalias !1114, !noundef !13
  %.val14.i = load i16, ptr %i.it, align 2, !dbg !1143, !alias.scope !1144, !noalias !1114
  %i.iz = trunc nuw i16 %.val.i to i1, !dbg !1146
  %i.ja = trunc nuw i16 %.val13.i44 to i1, !dbg !1150
  %.sroa.0.0.i4.i.i45 = select i1 %i.ja, i16 %.val14.i, i16 32767, !dbg !1150
  %i.jb = icmp slt i16 %.val12.i43, %.sroa.0.0.i4.i.i45, !dbg !1153
  %i.jc = select i1 %i.iz, i1 %i.jb, i1 false, !dbg !1146 ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -56, !dbg !1155 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.jc, ptr %2, ptr %i.jd, !dbg !1160
  %i.je = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i, !dbg !1161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.je, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.111.i, i64 56, i1 false), !dbg !1165, !alias.scope !1169, !noalias !1170
  %i.jf = zext i1 %i.jc to i64, !dbg !1173
  %i.jg = add i64 %.sroa.11.110.i, %i.jf, !dbg !1174 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 56, !dbg !1175 ; 3 uses
  %i.ji = icmp ult ptr %i.jh, %i.iu, !dbg !1140
  br i1 %i.ji, label %.lr.ph.i42, label %._crit_edge.i, !dbg !1140

bb.t:                                             ; preds = %._crit_edge.i
  %i.jj = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -56, !dbg !1178 ; 2 uses
  %i.jk = getelementptr inbounds nuw [56 x i8], ptr %i.jj, i64 %.sroa.11.1.lcssa.i, !dbg !1181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jk, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i, i64 56, i1 false), !dbg !1183, !alias.scope !1169, !noalias !1185
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 56, !dbg !1188
  br label %bb.s, !dbg !1131

bb.u:                                             ; preds = %._crit_edge.i
  %i.jm = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 56, !dbg !1190
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph112, ptr nonnull align 8 %2, i64 %i.jm, i1 false), !dbg !1190, !alias.scope !1169
  %i.jn = sub i64 %.sroa.16.0105256, %.sroa.11.1.lcssa.i, !dbg !1194 ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.0105256, %.sroa.11.1.lcssa.i, !dbg !1195
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i, !dbg !1204

.lr.ph16.i:                                       ; preds = %bb.u
  %i.jo = getelementptr [56 x i8], ptr %.sroa.0.0.ph112, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1, !dbg !1204
  %i.jp = icmp eq i64 %.sroa.16.0105256, %.neg, !dbg !1204
  br i1 %i.jp, label %.epil.preheader, label %.lr.ph16.i.new, !dbg !1204

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.jn, -2, !dbg !1204
  br label %bb.v, !dbg !1204

bb.v:                                             ; preds = %bb.v, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.jt, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.v ]
  %i.jq = xor i64 %.sroa.06.014.i, -1, !dbg !1205
  %i.jr = getelementptr [56 x i8], ptr %i.ir, i64 %i.jq, !dbg !1207
  %i.js = getelementptr [56 x i8], ptr %i.jo, i64 %.sroa.06.014.i, !dbg !1209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.js, ptr noundef nonnull align 8 dereferenceable(56) %i.jr, i64 56, i1 false), !dbg !1211, !alias.scope !1169
  %i.jt = add nuw i64 %.sroa.06.014.i, 2, !dbg !1213 ; 2 uses
  %i.ju = xor i64 %.sroa.06.014.i, -2, !dbg !1205
  %i.jv = getelementptr [56 x i8], ptr %i.ir, i64 %i.ju, !dbg !1207
  %i.jw = getelementptr [56 x i8], ptr %i.jo, i64 %.sroa.06.014.i, !dbg !1209
  %i.jx = getelementptr i8, ptr %i.jw, i64 56, !dbg !1209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jx, ptr noundef nonnull align 8 dereferenceable(56) %i.jv, i64 56, i1 false), !dbg !1211, !alias.scope !1169
  %niter.next.1 = add i64 %niter, 2, !dbg !1204   ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !1204
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.v, !dbg !1204

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.v
  %lcmp.mod.not = trunc i64 %i.jn to i1, !dbg !1204
  br i1 %lcmp.mod.not, label %.epil.preheader, label %.loopexit, !dbg !1204

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.jt, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod338 = trunc i64 %i.jn to i1, !dbg !1204
  call void @llvm.assume(i1 %lcmp.mod338), !dbg !1204
  %i.jy = xor i64 %.sroa.06.014.i.epil.init, -1, !dbg !1205
  %i.jz = getelementptr [56 x i8], ptr %i.ir, i64 %i.jy, !dbg !1207
  %i.ka = getelementptr [56 x i8], ptr %i.jo, i64 %.sroa.06.014.i.epil.init, !dbg !1209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ka, ptr noundef nonnull align 8 dereferenceable(56) %i.jz, i64 56, i1 false), !dbg !1211, !alias.scope !1169
  br label %.loopexit, !dbg !1219

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.u
  %i.kb = icmp eq i64 %.sroa.11.1.lcssa.i, 0, !dbg !1219
  br i1 %i.kb, label %.thread, label %bb.w, !dbg !1220

bb.w:                                             ; preds = %.loopexit
  %.not.i46 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.0105256, !dbg !1221
  br i1 %.not.i46, label %bb.x, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit, !dbg !1221, !prof !1226

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !dbg !1227, !noalias !1228
  unreachable, !dbg !1227

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAlias12split_at_mutBy_.exit: ; preds = %bb.w
  %i.kc = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph112, i64 %.sroa.11.1.lcssa.i, !dbg !1232
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph112) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keysNCNvXs5_B17_NtB17_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.kc, i64 noundef %i.jn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.hm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #19, !dbg !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1241
  %i.kd = icmp ult i64 %.sroa.11.1.lcssa.i, 33, !dbg !538
  br i1 %i.kd, label %.outer._crit_edge, label %bb.b, !dbg !538

.thread:                                          ; preds = %bb.o, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !1242), !dbg !1245
  %.not75 = icmp samesign ult i64 %3, %.sroa.16.0105256, !dbg !1246
  br i1 %.not75, label %bb.z, label %bb.y, !dbg !1246, !prof !1016

bb.y:                                             ; preds = %.thread
  %i.ke = getelementptr [56 x i8], ptr %2, i64 %.sroa.16.0105256, !dbg !1250 ; 4 uses
  %i.kf = getelementptr i8, ptr %i.ik, i64 48
  %i.kg = getelementptr i8, ptr %i.ik, i64 50
  br label %bb.aa, !dbg !1258

bb.z:                                             ; preds = %.thread
  call void @llvm.trap(), !dbg !1262
  unreachable, !dbg !1262

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %.sroa.19.0.i49 = phi ptr [ %i.ke, %bb.y ], [ %i.kw, %bb.ab ], !dbg !1263 ; 2 uses
  %.sroa.11.0.i50 = phi i64 [ 0, %bb.y ], [ %i.ky, %bb.ab ], !dbg !1263 ; 2 uses
  %.sroa.5.0.i51 = phi ptr [ %.sroa.0.0.ph112, %bb.y ], [ %i.kz, %bb.ab ], !dbg !1263 ; 3 uses
  %.sroa.0.0.i52 = phi i64 [ %.sroa.0.0.i39, %bb.y ], [ %.sroa.16.0105256, %bb.ab ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph112, i64 %.sroa.0.0.i52, !dbg !1264 ; 2 uses
  %i.ki = icmp ult ptr %.sroa.5.0.i51, %i.kh, !dbg !1267
  br i1 %i.ki, label %.lr.ph.i61, label %._crit_edge.i53, !dbg !1267

._crit_edge.i53:                                  ; preds = %.lr.ph.i61, %bb.aa
  %.sroa.19.1.lcssa.i54 = phi ptr [ %.sroa.19.0.i49, %bb.aa ], [ %i.kq, %.lr.ph.i61 ], !dbg !1263
  %.sroa.11.1.lcssa.i55 = phi i64 [ %.sroa.11.0.i50, %bb.aa ], [ %i.kt, %.lr.ph.i61 ], !dbg !1263 ; 10 uses
  %.sroa.5.1.lcssa.i56 = phi ptr [ %.sroa.5.0.i51, %bb.aa ], [ %i.ku, %.lr.ph.i61 ], !dbg !1263 ; 2 uses
  %i.kj = icmp eq i64 %.sroa.0.0.i52, %.sroa.16.0105256, !dbg !1269
  br i1 %i.kj, label %bb.ac, label %bb.ab, !dbg !1269

.lr.ph.i61:                                       ; preds = %bb.aa, %.lr.ph.i61
  %.sroa.5.111.i62 = phi ptr [ %i.ku, %.lr.ph.i61 ], [ %.sroa.5.0.i51, %bb.aa ] ; 4 uses
  %.sroa.11.110.i63 = phi i64 [ %i.kt, %.lr.ph.i61 ], [ %.sroa.11.0.i50, %bb.aa ] ; 2 uses
  %.sroa.19.19.i64 = phi ptr [ %i.kq, %.lr.ph.i61 ], [ %.sroa.19.0.i49, %bb.aa ]
  %i.kk = getelementptr i8, ptr %.sroa.5.111.i62, i64 48, !dbg !1270
  %.val.i65 = load i16, ptr %i.kk, align 8, !dbg !1270, !range !72, !alias.scope !1271, !noalias !1242, !noundef !13
  %i.kl = getelementptr i8, ptr %.sroa.5.111.i62, i64 50, !dbg !1270
  %.val12.i66 = load i16, ptr %i.kl, align 2, !dbg !1270, !alias.scope !1271, !noalias !1242
  %.val13.i67 = load i16, ptr %i.kf, align 8, !dbg !1270, !range !72, !alias.scope !1271, !noalias !1242, !noundef !13
  %.val14.i68 = load i16, ptr %i.kg, align 2, !dbg !1270, !alias.scope !1271, !noalias !1242
  %i.km = trunc nuw i16 %.val13.i67 to i1, !dbg !1273
  %i.kn = trunc nuw i16 %.val.i65 to i1, !dbg !1280
  %.sroa.0.0.i4.i.i.i69 = select i1 %i.kn, i16 %.val12.i66, i16 32767, !dbg !1280
  %i.ko = icmp sge i16 %.val14.i68, %.sroa.0.0.i4.i.i.i69, !dbg !1283
  %not..i.i = xor i1 %i.km, true, !dbg !1273
  %i.kp = select i1 %not..i.i, i1 true, i1 %i.ko, !dbg !1273 ; 2 uses
  %i.kq = getelementptr inbounds i8, ptr %.sroa.19.19.i64, i64 -56, !dbg !1285 ; 3 uses
  %.sroa.01.0.i.i70 = select i1 %i.kp, ptr %2, ptr %i.kq, !dbg !1288
  %i.kr = getelementptr inbounds nuw [56 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.11.110.i63, !dbg !1289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kr, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.111.i62, i64 56, i1 false), !dbg !1291, !alias.scope !1293, !noalias !1294
  %i.ks = zext i1 %i.kp to i64, !dbg !1297
  %i.kt = add i64 %.sroa.11.110.i63, %i.ks, !dbg !1298 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i62, i64 56, !dbg !1299 ; 3 uses
  %i.kv = icmp ult ptr %i.ku, %i.kh, !dbg !1267
  br i1 %i.kv, label %.lr.ph.i61, label %._crit_edge.i53, !dbg !1267

bb.ab:                                            ; preds = %._crit_edge.i53
  %i.kw = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i54, i64 -56, !dbg !1301
  %i.kx = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i55, !dbg !1304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.1.lcssa.i56, i64 56, i1 false), !dbg !1306, !alias.scope !1293, !noalias !1308
  %i.ky = add i64 %.sroa.11.1.lcssa.i55, 1, !dbg !1311
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i56, i64 56, !dbg !1312
  br label %bb.aa, !dbg !1258

bb.ac:                                            ; preds = %._crit_edge.i53
  %i.la = mul nuw nsw i64 %.sroa.11.1.lcssa.i55, 56, !dbg !1314
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph112, ptr nonnull align 8 %2, i64 %i.la, i1 false), !dbg !1314, !alias.scope !1293
  %i.lb = sub i64 %.sroa.16.0105256, %.sroa.11.1.lcssa.i55, !dbg !1318 ; 6 uses
  %.not18.i57 = icmp eq i64 %.sroa.16.0105256, %.sroa.11.1.lcssa.i55, !dbg !1319
  br i1 %.not18.i57, label %.outer._crit_edge.thread, label %.lr.ph16.i58, !dbg !1328

.lr.ph16.i58:                                     ; preds = %bb.ac
  %i.lc = getelementptr [56 x i8], ptr %.sroa.0.0.ph112, i64 %.sroa.11.1.lcssa.i55 ; 3 uses
  %.neg351 = add i64 %.sroa.11.1.lcssa.i55, 1, !dbg !1328
  %i.ld = icmp eq i64 %.sroa.16.0105256, %.neg351, !dbg !1328
  br i1 %i.ld, label %.epil.preheader339, label %.lr.ph16.i58.new, !dbg !1328

.lr.ph16.i58.new:                                 ; preds = %.lr.ph16.i58
  %unroll_iter349 = and i64 %i.lb, -2, !dbg !1328
  br label %bb.ad, !dbg !1328

bb.ad:                                            ; preds = %bb.ad, %.lr.ph16.i58.new
  %.sroa.06.014.i59 = phi i64 [ 0, %.lr.ph16.i58.new ], [ %i.lh, %bb.ad ] ; 5 uses
  %niter350 = phi i64 [ 0, %.lr.ph16.i58.new ], [ %niter350.next.1, %bb.ad ]
  %i.le = xor i64 %.sroa.06.014.i59, -1, !dbg !1329
  %i.lf = getelementptr [56 x i8], ptr %i.ke, i64 %i.le, !dbg !1331
  %i.lg = getelementptr [56 x i8], ptr %i.lc, i64 %.sroa.06.014.i59, !dbg !1333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lg, ptr noundef nonnull align 8 dereferenceable(56) %i.lf, i64 56, i1 false), !dbg !1335, !alias.scope !1293
  %i.lh = add nuw i64 %.sroa.06.014.i59, 2, !dbg !1337 ; 2 uses
  %i.li = xor i64 %.sroa.06.014.i59, -2, !dbg !1329
  %i.lj = getelementptr [56 x i8], ptr %i.ke, i64 %i.li, !dbg !1331
  %i.lk = getelementptr [56 x i8], ptr %i.lc, i64 %.sroa.06.014.i59, !dbg !1333
  %i.ll = getelementptr i8, ptr %i.lk, i64 56, !dbg !1333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ll, ptr noundef nonnull align 8 dereferenceable(56) %i.lj, i64 56, i1 false), !dbg !1335, !alias.scope !1293
  %niter350.next.1 = add i64 %niter350, 2, !dbg !1328 ; 2 uses
  %niter350.ncmp.1 = icmp eq i64 %niter350.next.1, %unroll_iter349, !dbg !1328
  br i1 %niter350.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit.unr-lcssa, label %bb.ad, !dbg !1328

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod347.not = trunc i64 %i.lb to i1, !dbg !1328
  br i1 %lcmp.mod347.not, label %.epil.preheader339, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit, !dbg !1328

.epil.preheader339:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i58
  %.sroa.06.014.i59.epil.init = phi i64 [ 0, %.lr.ph16.i58 ], [ %i.lh, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod348 = trunc i64 %i.lb to i1, !dbg !1328
  call void @llvm.assume(i1 %lcmp.mod348), !dbg !1328
  %i.lm = xor i64 %.sroa.06.014.i59.epil.init, -1, !dbg !1329
  %i.ln = getelementptr [56 x i8], ptr %i.ke, i64 %i.lm, !dbg !1331
  %i.lo = getelementptr [56 x i8], ptr %i.lc, i64 %.sroa.06.014.i59.epil.init, !dbg !1333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lo, ptr noundef nonnull align 8 dereferenceable(56) %i.ln, i64 56, i1 false), !dbg !1335, !alias.scope !1293
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit, !dbg !1343

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit.unr-lcssa, %.epil.preheader339
  %i.lp = icmp ugt i64 %.sroa.11.1.lcssa.i55, %.sroa.16.0105256, !dbg !1343
  br i1 %i.lp, label %bb.ae, label %.outer, !dbg !1343, !prof !1226

.outer._crit_edge.thread:                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1241
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_11sort_by_keysNCNvXs5_B1u_NtB1u_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0EB1w_.exit, !dbg !550

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit
  %i.lq = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.ph112, i64 %.sroa.11.1.lcssa.i55, !dbg !1349 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1241
  %i.lr = icmp ult i64 %i.lb, 33, !dbg !538
  br i1 %i.lr, label %.outer._crit_edge, label %.lr.ph, !dbg !538

bb.ae:                                            ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_11sort_by_keysNCNvXs5_B1f_NtB1f_20HyperlinkFormatErrorNtNtBa_3fmt7Display3fmt0E0E0EB1h_.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i55, i64 noundef %.sroa.16.0105256, i64 noundef %.sroa.16.0105256, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !dbg !1354
  unreachable, !dbg !1354
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCshhHc5tDBDRu_12grep_printer4jsonNtB5_10SubMatches3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %3, i64 noundef range(i64 0, 576460752303423488) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1355 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = icmp eq i64 %4, 1, !dbg !1359
  br i1 %i.b, label %bb.g, label %bb.b, !dbg !1359

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1360
  store i64 0, ptr %i.a, align 8, !dbg !1361
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1361 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !dbg !1361
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1361 ; 3 uses
  store i64 0, ptr %i.d, align 8, !dbg !1361
  %.idx = shl nuw nsw i64 %4, 4, !dbg !1367
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx, !dbg !1367 ; 2 uses
  %i.f = icmp eq i64 %4, 0, !dbg !1380
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !dbg !1399

.lr.ph:                                           ; preds = %bb.b
  %i.g = load ptr, ptr %5, align 8
  %.fr = freeze ptr %i.g                          ; 2 uses
  %.not24 = icmp eq ptr %.fr, null
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.440.0.copyload = load i64, ptr %.sroa.440.0..sroa_idx, align 8 ; 2 uses
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.642.0.copyload = load i64, ptr %.sroa.642.0..sroa_idx, align 8 ; 3 uses
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.541.0.copyload = load ptr, ptr %.sroa.541.0..sroa_idx, align 8, !nonnull !13
  br i1 %.not24, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.h = phi i64 [ %i.t, %bb.f ], [ 0, %.lr.ph ]  ; 3 uses
  %.sroa.0.064.us = phi ptr [ %i.i, %bb.f ], [ %3, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.064.us, i64 16, !dbg !1400 ; 2 uses
  %i.j = load i64, ptr %.sroa.0.064.us, align 8, !dbg !1404, !noundef !13 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.064.us, i64 8, !dbg !1404
  %i.l = load i64, ptr %i.k, align 8, !dbg !1404, !noundef !13 ; 6 uses
  %i.m = icmp ult i64 %i.l, %i.j, !dbg !1405
  br i1 %i.m, label %.split.us, label %bb.c, !dbg !1405, !prof !1226

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.n = sub nuw i64 %i.l, %i.j, !dbg !1422
  %.not23.us = icmp ugt i64 %i.l, %2, !dbg !1423
  br i1 %.not23.us, label %.split.us, label %bb.d, !dbg !1423, !prof !1226

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.j, !dbg !1424
  %i.p = load i64, ptr %i.a, align 8, !dbg !1428, !range !1442, !alias.scope !1443, !noalias !1446, !noundef !13
  %i.q = icmp eq i64 %i.h, %i.p, !dbg !1448
  br i1 %i.q, label %bb.e, label %bb.f, !dbg !1448

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #19
          to label %bb.f unwind label %.loopexit.split.us, !dbg !1449

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load ptr, ptr %i.c, align 8, !dbg !1450, !alias.scope !1443, !noalias !1446, !nonnull !13, !noundef !13
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.h, !dbg !1459 ; 5 uses
  store ptr %i.o, ptr %i.s, align 8, !dbg !1462
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !1462
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.us, align 8, !dbg !1462
  %.sroa.533.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !1462
  store ptr null, ptr %.sroa.533.0..sroa_idx.us, align 8, !dbg !1462
  %.sroa.734.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !1462
  store i64 %i.j, ptr %.sroa.734.0..sroa_idx.us, align 8, !dbg !1462
  %.sroa.8.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !1462
  store i64 %i.l, ptr %.sroa.8.0..sroa_idx.us, align 8, !dbg !1462
  %i.t = add i64 %i.h, 1, !dbg !1466              ; 2 uses
  store i64 %i.t, ptr %i.d, align 8, !dbg !1466, !alias.scope !1443, !noalias !1446
  %i.u = icmp eq ptr %i.i, %i.e, !dbg !1380
  br i1 %i.u, label %._crit_edge, label %.lr.ph.split.us, !dbg !1399

.loopexit.split.us:                               ; preds = %bb.e
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.v = load i64, ptr %3, align 8, !dbg !1467, !noundef !13 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !1467
  %i.x = load i64, ptr %i.w, align 8, !dbg !1467, !noundef !13 ; 5 uses
  %i.y = icmp ult i64 %i.x, %i.v, !dbg !1468
  br i1 %i.y, label %bb.j, label %bb.h, !dbg !1468, !prof !1226

bb.h:                                             ; preds = %bb.g
  %i.z = sub nuw i64 %i.x, %i.v, !dbg !1474
  %.not25 = icmp ugt i64 %i.x, %2, !dbg !1475
  br i1 %.not25, label %bb.j, label %bb.i, !dbg !1475, !prof !1226

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.v, !dbg !1476
  %i.ab = load ptr, ptr %5, align 8, !dbg !1479, !noundef !13 ; 2 uses
  %.not26 = icmp eq ptr %i.ab, null, !dbg !1479
  br i1 %.not26, label %bb.o, label %bb.k, !dbg !1482

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.v, i64 noundef %i.x, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20, !dbg !1483
  unreachable, !dbg !1483

bb.k:                                             ; preds = %bb.i
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8, !dbg !1484
  %.sroa.436.0.copyload = load i64, ptr %.sroa.436.0..sroa_idx, align 8, !dbg !1484 ; 2 uses
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24, !dbg !1484
  %.sroa.638.0.copyload = load i64, ptr %.sroa.638.0..sroa_idx, align 8, !dbg !1484
  %.not.i = icmp eq i64 %.sroa.638.0.copyload, 0, !dbg !1486
  br i1 %.not.i, label %bb.m, label %bb.l, !dbg !1486

bb.l:                                             ; preds = %bb.k
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16, !dbg !1484
  %.sroa.537.0.copyload = load ptr, ptr %.sroa.537.0..sroa_idx, align 8, !dbg !1484, !nonnull !13, !noundef !13 ; 2 uses
  %i.ac = load i64, ptr %.sroa.537.0.copyload, align 8, !dbg !1486, !noalias !1492, !noundef !13 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.537.0.copyload, i64 8, !dbg !1486
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !1486, !noalias !1492, !noundef !13 ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac, !dbg !1495
  %.not3.i = icmp ugt i64 %i.ae, %.sroa.436.0.copyload
  %or.cond.i = or i1 %i.af, %.not3.i, !dbg !1495
  br i1 %or.cond.i, label %bb.n, label %_RNCNvMs4_NtCshhHc5tDBDRu_12grep_printer4jsonNtB7_10SubMatches3new0B9_.exit, !dbg !1495, !prof !1016

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20, !dbg !1486, !noalias !1492
  unreachable, !dbg !1486

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ac, i64 noundef %i.ae, i64 noundef %.sroa.436.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #20, !dbg !1504, !noalias !1492
  unreachable, !dbg !1504

_RNCNvMs4_NtCshhHc5tDBDRu_12grep_printer4jsonNtB7_10SubMatches3new0B9_.exit: ; preds = %bb.l
  %i.ag = sub nuw i64 %i.ae, %i.ac, !dbg !1505
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac, !dbg !1506
  br label %bb.o, !dbg !1510

bb.o:                                             ; preds = %bb.i, %_RNCNvMs4_NtCshhHc5tDBDRu_12grep_printer4jsonNtB7_10SubMatches3new0B9_.exit
  %.sroa.58.0 = phi i64 [ %i.ag, %_RNCNvMs4_NtCshhHc5tDBDRu_12grep_printer4jsonNtB7_10SubMatches3new0B9_.exit ], [ undef, %bb.i ], !dbg !1511
  %.sroa.07.0 = phi ptr [ %i.ah, %_RNCNvMs4_NtCshhHc5tDBDRu_12grep_printer4jsonNtB7_10SubMatches3new0B9_.exit ], [ null, %bb.i ], !dbg !1511
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1512
  store ptr %i.aa, ptr %i.ai, align 8, !dbg !1512
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1512
  store i64 %i.z, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !1512
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1512
  store ptr %.sroa.07.0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !1512
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1512
  store i64 %.sroa.58.0, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !1512
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !1512
  store i64 %i.v, ptr %.sroa.75.0..sroa_idx, align 8, !dbg !1512
  %.sroa.86.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1512
  store i64 %i.x, ptr %.sroa.86.0..sroa_idx, align 8, !dbg !1512
  store i64 1, ptr %0, align 8, !dbg !1512
  br label %bb.p, !dbg !1513

bb.p:                                             ; preds = %._crit_edge, %bb.o
  ret void, !dbg !1514

.loopexit.split:                                  ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split.us, %bb.t, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer5jsont8SubMatchEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #21
          to label %bb.aa unwind label %bb.z, !dbg !1515

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %i.aj = phi i64 [ %i.be, %bb.x ], [ 0, %.lr.ph ] ; 3 uses
end_hunk_0
