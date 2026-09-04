Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_locale_core-413afa2d20942937.icu_locale_core.6a0ef9680380a242-cgu.7?download=true
inline.NumInlined: 125
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCs96xUavsWfLi_15icu_locale_core6langidNtB2_18LanguageIdentifier14normalizing_eq:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.ao, label %.split58, label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit

.split58:                                         ; preds = %bb.i
  call void @llvm.assume(i1 %i.aq)
  %i.aw = icmp eq i8 %i.at, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.aw, label %bb.g, label %.loopexit

_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.i
  %i.ax = xor i1 %i.aq, true
  call void @llvm.assume(i1 %i.ax)
  %i.ay = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull readonly dereferenceable(4) %i.f, ptr noundef nonnull readonly dereferenceable(4) %i.e, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.ay, label %bb.g, label %.loopexit

bb.j:                                             ; preds = %bb.g
  %i.az = call { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0      ; 2 uses
  %.not41 = icmp eq ptr %i.ba, null
  br i1 %.not41, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %.split60, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !range !13, !noundef !11
  %.not42 = icmp eq i8 %i.bc, -1                  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !range !13
  %.not43.not = icmp eq i8 %i.be, -1              ; 3 uses
  %.46 = select i1 %.not43.not, ptr inttoptr (i64 1 to ptr), ptr %i.bd
  %.sroa.016.0 = select i1 %.not42, ptr %.46, ptr %i.bb ; 2 uses
  %i.bf = select i1 %.not43.not, i64 0, i64 8
  %.idx = select i1 %.not42, i64 %i.bf, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 %.idx
  %i.bh = select i1 %.not42, i1 %.not43.not, i1 false
  br i1 %i.bh, label %._crit_edge69, label %.lr.ph68

bb.l:                                             ; preds = %bb.j
  %i.bi = extractvalue { ptr, i64 } %i.az, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = call i24 @_RNvMs_NtNtCs96xUavsWfLi_15icu_locale_core7subtags6regionNtB4_6Region13try_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ba, i64 noundef %i.bi) ; 3 uses
  store i24 %i.bj, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.c, ptr noundef nonnull align 1 dereferenceable(3) %i.aj, i64 3, i1 false)
  %i.bk = trunc i24 %i.bj to i8
  %i.bl = icmp eq i8 %i.bk, -1                    ; 2 uses
  %i.bm = load i8, ptr %i.c, align 1, !range !13, !alias.scope !203, !noalias !204, !noundef !11
  %i.bn = icmp eq i8 %i.bm, -1                    ; 3 uses
  %i.bo = xor i1 %i.bl, %i.bn
  %i.bp = lshr i24 %i.bj, 8
  %i.bq = trunc i24 %i.bp to i8
  br i1 %i.bo, label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread, label %bb.m

_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.bl, label %.split60, label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit

.split60:                                         ; preds = %bb.m
  call void @llvm.assume(i1 %i.bn)
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.val2.i52 = load i8, ptr %i.br, align 1, !range !202, !alias.scope !203, !noalias !204, !noundef !11
  %i.bs = icmp eq i8 %.val2.i52, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.bs, label %bb.k, label %.loopexit

_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.m
  %i.bt = xor i1 %i.bn, true
  call void @llvm.assume(i1 %i.bt)
  %i.bu = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull readonly dereferenceable(3) %i.d, ptr noundef nonnull readonly dereferenceable(3) %i.c, i64 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.bu, label %bb.k, label %.loopexit

.lr.ph68:                                         ; preds = %bb.k, %.backedge
  %.sroa.015.066 = phi ptr [ %i.bv, %.backedge ], [ %.sroa.016.0, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.066, i64 8 ; 2 uses
  %i.bw = call { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) ; 2 uses
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0      ; 2 uses
  %.not44 = icmp eq ptr %i.bx, null
  br i1 %.not44, label %.loopexit, label %bb.n

._crit_edge69:                                    ; preds = %.backedge, %bb.k
  %i.by = call { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %.not45 = icmp eq ptr %i.bz, null
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph68
  %i.ca = extractvalue { ptr, i64 } %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cb = call i64 @_RNvMNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variantNtB2_7Variant13try_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bx, i64 noundef %i.ca) ; 3 uses
  store i64 %i.cb, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.031.0.copyload = load i64, ptr %.sroa.015.066, align 1 ; 3 uses
  store i64 %.sroa.031.0.copyload, ptr %i.a, align 8
  %i.cc = and i64 %i.cb, 255
  %i.cd = icmp eq i64 %i.cc, 255                  ; 2 uses
  %i.ce = and i64 %.sroa.031.0.copyload, 255
  %i.cf = icmp eq i64 %i.ce, 255                  ; 3 uses
  %i.cg = xor i1 %i.cd, %i.cf
  %i.ch = lshr i64 %i.cb, 8
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = lshr i64 %.sroa.031.0.copyload, 8
  %i.ck = trunc i64 %i.cj to i8
  br i1 %i.cg, label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread, label %bb.o

_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.o:                                             ; preds = %bb.n
  br i1 %i.cd, label %.split62, label %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit

.split62:                                         ; preds = %bb.o
  call void @llvm.assume(i1 %i.cf)
  %i.cl = icmp eq i8 %i.ci, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.cl, label %.backedge, label %.loopexit

_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit: ; preds = %bb.o
  %i.cm = xor i1 %i.cf, true
  call void @llvm.assume(i1 %i.cm)
  %i.cn = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull readonly dereferenceable(8) %i.b, ptr noundef nonnull readonly dereferenceable(8) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.cn, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit, %.split62
  %i.co = icmp eq ptr %i.bv, %i.bg
  br i1 %i.co, label %._crit_edge69, label %.lr.ph68

.loopexit:                                        ; preds = %.lr.ph68, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit, %.split62, %._crit_edge, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit, %bb.f, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit, %bb.j, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread, %.split, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread, %.split58, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread, %.split60, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread, %._crit_edge69
  %.sroa.0.1 = phi i1 [ %.not45, %._crit_edge69 ], [ false, %bb.f ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit ], [ false, %._crit_edge ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread ], [ false, %.split60 ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread ], [ false, %.split58 ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread ], [ false, %.split ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit.thread ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit ], [ false, %bb.j ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit ], [ false, %.split62 ], [ false, %_RNvXsw_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtNtNtBQ_6parser6errors10ParseErrorENtNtB7_3cmp9PartialEq2eqBQ_.exit ], [ false, %.lr.ph68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs96xUavsWfLi_15icu_locale_core6langidNtB2_18LanguageIdentifier33try_from_utf8_with_single_variant(ptr dead_on_unwind noalias nofree noundef writable sret([18 x i8]) align 1 captures(none) dereferenceable(18) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtCs96xUavsWfLi_15icu_locale_core6parser6langid45parse_language_identifier_with_single_variant(ptr noalias nofree noundef nonnull sret([18 x i8]) align 1 captures(none) dereferenceable(18) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvMNtCs96xUavsWfLi_15icu_locale_core6langidNtB2_18LanguageIdentifier9total_cmp(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(26) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(26) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.015.0.copyload = load i8, ptr %i.b, align 1 ; 3 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.416.0.copyload = load i8, ptr %.sroa.416.0..sroa_idx, align 1 ; 2 uses
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.517.0.copyload = load i8, ptr %.sroa.517.0..sroa_idx, align 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %.sroa.0.0.copyload4 = load i8, ptr %0, align 1 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.02.0.copyload = load i32, ptr %i.d, align 1 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.sroa.018.0.copyload = load i8, ptr %i.e, align 1 ; 4 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.419.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 1 ; 2 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.sroa.520.0.copyload = load i8, ptr %.sroa.520.0..sroa_idx, align 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %.sroa.06.0.copyload = load i8, ptr %1, align 1 ; 2 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.58.0.copyload = load i8, ptr %.sroa.58.0..sroa_idx, align 1 ; 2 uses
  %i.g = icmp eq i8 %.sroa.0.0.copyload4, %.sroa.06.0.copyload
  br i1 %i.g, label %bb.b, label %_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.b:                                             ; preds = %bb.a
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.47.0.copyload = load i8, ptr %.sroa.47.0..sroa_idx, align 1 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1 ; 2 uses
  %i.h = icmp eq i8 %.sroa.4.0.copyload, %.sroa.47.0.copyload
  br i1 %i.h, label %bb.c, label %_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %.sroa.5.0.copyload, %.sroa.58.0.copyload
  br i1 %i.i, label %_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %.val15.i.lcssa.i.i.i = phi i8 [ %.sroa.0.0.copyload4, %bb.a ], [ %.sroa.4.0.copyload, %bb.b ], [ %.sroa.5.0.copyload, %bb.c ]
  %.val16.i.lcssa.i.i.i = phi i8 [ %.sroa.06.0.copyload, %bb.a ], [ %.sroa.47.0.copyload, %bb.b ], [ %.sroa.58.0.copyload, %bb.c ]
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i, i8 %.val16.i.lcssa.i.i.i)
  br label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit

_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %bb.c
  %.sroa.6.3.extract.trunc = trunc i32 %.sroa.0.0.copyload to i8 ; 3 uses
  %.not.i.i = icmp eq i8 %.sroa.6.3.extract.trunc, -1
  %.sroa.69.3.extract.trunc = trunc i32 %.sroa.02.0.copyload to i8 ; 4 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.not2.i.i = icmp eq i8 %.sroa.69.3.extract.trunc, -1
  br i1 %.not2.i.i, label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit, label %bb.f

bb.e:                                             ; preds = %_RNvXsf_NtNtCs96xUavsWfLi_15icu_locale_core7subtags8languageNtB5_8LanguageNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.not1.i.i = icmp ne i8 %.sroa.69.3.extract.trunc, -1
  %..i.i = sext i1 %.not1.i.i to i8
  br label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = icmp eq i8 %.sroa.6.3.extract.trunc, %.sroa.69.3.extract.trunc
  br i1 %i.k, label %bb.g, label %.loopexit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %.sroa.6.4.extract.shift = lshr i32 %.sroa.0.0.copyload, 8
  %.sroa.6.4.extract.trunc = trunc i32 %.sroa.6.4.extract.shift to i8 ; 2 uses
  %.sroa.69.4.extract.shift = lshr i32 %.sroa.02.0.copyload, 8
  %.sroa.69.4.extract.trunc = trunc i32 %.sroa.69.4.extract.shift to i8 ; 2 uses
  %i.l = icmp eq i8 %.sroa.6.4.extract.trunc, %.sroa.69.4.extract.trunc
  br i1 %i.l, label %bb.h, label %.loopexit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %.sroa.6.5.extract.shift = lshr i32 %.sroa.0.0.copyload, 16
  %.sroa.6.5.extract.trunc = trunc i32 %.sroa.6.5.extract.shift to i8 ; 2 uses
  %.sroa.69.5.extract.shift = lshr i32 %.sroa.02.0.copyload, 16
  %.sroa.69.5.extract.trunc = trunc i32 %.sroa.69.5.extract.shift to i8 ; 2 uses
  %i.m = icmp eq i8 %.sroa.6.5.extract.trunc, %.sroa.69.5.extract.trunc
  br i1 %i.m, label %bb.i, label %.loopexit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.sroa.6.6.extract.shift = lshr i32 %.sroa.0.0.copyload, 24 ; 2 uses
  %.sroa.6.6.extract.trunc = trunc nuw i32 %.sroa.6.6.extract.shift to i8
  %.sroa.69.6.extract.shift = lshr i32 %.sroa.02.0.copyload, 24 ; 2 uses
  %.sroa.69.6.extract.trunc = trunc nuw i32 %.sroa.69.6.extract.shift to i8
  %i.n = icmp eq i32 %.sroa.6.6.extract.shift, %.sroa.69.6.extract.shift
  br i1 %i.n, label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.val15.i.lcssa.i.i.i.i = phi i8 [ %.sroa.6.3.extract.trunc, %bb.f ], [ %.sroa.6.4.extract.trunc, %bb.g ], [ %.sroa.6.5.extract.trunc, %bb.h ], [ %.sroa.6.6.extract.trunc, %bb.i ]
  %.val16.i.lcssa.i.i.i.i = phi i8 [ %.sroa.69.3.extract.trunc, %bb.f ], [ %.sroa.69.4.extract.trunc, %bb.g ], [ %.sroa.69.5.extract.trunc, %bb.h ], [ %.sroa.69.6.extract.trunc, %bb.i ]
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i.i, i8 %.val16.i.lcssa.i.i.i.i)
  br label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.i

_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.i: ; preds = %.loopexit.i.i.i.i.i, %bb.e
  %.sroa.0.0.i.i = phi i8 [ %i.o, %.loopexit.i.i.i.i.i ], [ %..i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.p, label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i, label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit

_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i: ; preds = %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.i, %bb.i
  %.not.i7.i = icmp eq i8 %.sroa.015.0.copyload, -1
  br i1 %.not.i7.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i
  %.not2.i8.i = icmp eq i8 %.sroa.018.0.copyload, -1
  br i1 %.not2.i8.i, label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit, label %bb.l

bb.k:                                             ; preds = %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6script6ScriptENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i
  %.not1.i17.i = icmp ne i8 %.sroa.018.0.copyload, -1
  %..i18.i = sext i1 %.not1.i17.i to i8
  br label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.q = icmp eq i8 %.sroa.015.0.copyload, %.sroa.018.0.copyload
  br i1 %i.q, label %bb.m, label %.loopexit.i.i.i.i9.i

bb.m:                                             ; preds = %bb.l
  %i.r = icmp eq i8 %.sroa.416.0.copyload, %.sroa.419.0.copyload
  br i1 %i.r, label %bb.n, label %.loopexit.i.i.i.i9.i

bb.n:                                             ; preds = %bb.m
  %i.s = icmp eq i8 %.sroa.517.0.copyload, %.sroa.520.0.copyload
  br i1 %i.s, label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i, label %.loopexit.i.i.i.i9.i

.loopexit.i.i.i.i9.i:                             ; preds = %bb.n, %bb.m, %bb.l
  %.val15.i.lcssa.i.i.i10.i = phi i8 [ %.sroa.015.0.copyload, %bb.l ], [ %.sroa.416.0.copyload, %bb.m ], [ %.sroa.517.0.copyload, %bb.n ]
  %.val16.i.lcssa.i.i.i11.i = phi i8 [ %.sroa.018.0.copyload, %bb.l ], [ %.sroa.419.0.copyload, %bb.m ], [ %.sroa.520.0.copyload, %bb.n ]
  %i.t = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i10.i, i8 %.val16.i.lcssa.i.i.i11.i)
  br label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.i

_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.i: ; preds = %.loopexit.i.i.i.i9.i, %bb.k
  %.sroa.0.0.i12.i = phi i8 [ %i.t, %.loopexit.i.i.i.i9.i ], [ %..i18.i, %bb.k ] ; 2 uses
  %i.u = icmp eq i8 %.sroa.0.0.i12.i, 0
  br i1 %i.u, label %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i, label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit

_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i: ; preds = %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.i, %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.v = load i8, ptr %i.c, align 1, !range !13, !alias.scope !227, !noalias !228, !noundef !11
  %i.w = icmp ne i8 %i.v, -1                      ; 3 uses
  %i.x = zext i1 %i.w to i8
  %i.y = load i8, ptr %i.f, align 1, !range !13, !alias.scope !229, !noalias !230, !noundef !11
  %i.z = icmp eq i8 %i.y, -1                      ; 3 uses
  %not..i.i.i.i = xor i1 %i.z, true               ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.aa = add nsw i8 %.neg.i.i.i.i, %i.x
  %i.ab = xor i1 %i.w, %i.z
  br i1 %i.ab, label %bb.o, label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit

bb.o:                                             ; preds = %_RNvXsh_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags6region6RegionENtNtB7_3cmp3Ord3cmpBQ_.exit.thread.i
  br i1 %i.w, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ac = tail call noundef i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags7variant7VariantNtB5_8SliceOrd7compareBI_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.f, i64 noundef 2), !noalias !231
  br label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ae = load i8, ptr %i.ad, align 1, !range !13, !alias.scope !227, !noalias !228, !noundef !11 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !range !13, !alias.scope !229, !noalias !230, !noundef !11 ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not6.i.i.i.i = icmp eq i8 %i.ag, -1
  br i1 %.not6.i.i.i.i, label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  %.not4.i.i.i.i = icmp ne i8 %i.ag, -1
  %..i.i.i.i = sext i1 %.not4.i.i.i.i to i8
  br label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %bb.u, label %.loopexit.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val15.i.1.i.i.i.i.i.i = load i8, ptr %i.ai, align 1, !range !238, !alias.scope !239, !noalias !240, !noundef !11 ; 2 uses
  %.val16.i.1.i.i.i.i.i.i = load i8, ptr %i.aj, align 1, !range !238, !alias.scope !241, !noalias !242, !noundef !11 ; 2 uses
  %i.ak = icmp eq i8 %.val15.i.1.i.i.i.i.i.i, %.val16.i.1.i.i.i.i.i.i
  br i1 %i.ak, label %bb.v, label %.loopexit.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.val15.i.2.i.i.i.i.i.i = load i8, ptr %i.al, align 1, !range !238, !alias.scope !239, !noalias !240, !noundef !11 ; 2 uses
  %.val16.i.2.i.i.i.i.i.i = load i8, ptr %i.am, align 1, !range !238, !alias.scope !241, !noalias !242, !noundef !11 ; 2 uses
  %i.an = icmp eq i8 %.val15.i.2.i.i.i.i.i.i, %.val16.i.2.i.i.i.i.i.i
  br i1 %i.an, label %bb.w, label %.loopexit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.val15.i.3.i.i.i.i.i.i = load i8, ptr %i.ao, align 1, !range !238, !alias.scope !239, !noalias !240, !noundef !11 ; 2 uses
  %.val16.i.3.i.i.i.i.i.i = load i8, ptr %i.ap, align 1, !range !238, !alias.scope !241, !noalias !242, !noundef !11 ; 2 uses
  %i.aq = icmp eq i8 %.val15.i.3.i.i.i.i.i.i, %.val16.i.3.i.i.i.i.i.i
  br i1 %i.aq, label %bb.x, label %.loopexit.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %.val15.i.4.i.i.i.i.i.i = load i8, ptr %i.ar, align 1, !range !238, !alias.scope !239, !noalias !240, !noundef !11 ; 2 uses
  %.val16.i.4.i.i.i.i.i.i = load i8, ptr %i.as, align 1, !range !238, !alias.scope !241, !noalias !242, !noundef !11 ; 2 uses
  %i.at = icmp eq i8 %.val15.i.4.i.i.i.i.i.i, %.val16.i.4.i.i.i.i.i.i
  br i1 %i.at, label %bb.y, label %.loopexit.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.5.i.i.i.i.i.i = load i8, ptr %i.au, align 1, !range !238, !alias.scope !239, !noalias !240, !noundef !11 ; 2 uses
  %.val16.i.5.i.i.i.i.i.i = load i8, ptr %i.av, align 1, !range !238, !alias.scope !241, !noalias !242, !noundef !11 ; 2 uses
  %i.aw = icmp eq i8 %.val15.i.5.i.i.i.i.i.i, %.val16.i.5.i.i.i.i.i.i
  br i1 %i.aw, label %bb.z, label %.loopexit.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.val15.i.6.i.i.i.i.i.i = load i8, ptr %i.ax, align 1, !range !238, !alias.scope !239, !noalias !240, !noundef !11 ; 2 uses
  %.val16.i.6.i.i.i.i.i.i = load i8, ptr %i.ay, align 1, !range !238, !alias.scope !241, !noalias !242, !noundef !11 ; 2 uses
  %i.az = icmp eq i8 %.val15.i.6.i.i.i.i.i.i, %.val16.i.6.i.i.i.i.i.i
  br i1 %i.az, label %bb.aa, label %.loopexit.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 18
  %.val15.i.7.i.i.i.i.i.i = load i8, ptr %i.ba, align 1, !range !238, !alias.scope !239, !noalias !240, !noundef !11 ; 2 uses
  %.val16.i.7.i.i.i.i.i.i = load i8, ptr %i.bb, align 1, !range !238, !alias.scope !241, !noalias !242, !noundef !11 ; 2 uses
  %i.bc = icmp eq i8 %.val15.i.7.i.i.i.i.i.i, %.val16.i.7.i.i.i.i.i.i
  br i1 %i.bc, label %_RNvXsx_NtCshzWfHUSfYae_4core5tupleTNtNtNtCs96xUavsWfLi_15icu_locale_core7subtags8language8LanguageINtNtB7_6option6OptionNtNtBB_6script6ScriptEIB1z_NtNtBB_6region6RegionERNtNtBB_8variants8VariantsENtNtB7_3cmp3Ord3cmpBD_.exit, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.val15.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.ae, %bb.t ], [ %.val15.i.1.i.i.i.i.i.i, %bb.u ], [ %.val15.i.2.i.i.i.i.i.i, %bb.v ], [ %.val15.i.3.i.i.i.i.i.i, %bb.w ], [ %.val15.i.4.i.i.i.i.i.i, %bb.x ], [ %.val15.i.5.i.i.i.i.i.i, %bb.y ], [ %.val15.i.6.i.i.i.i.i.i, %bb.z ], [ %.val15.i.7.i.i.i.i.i.i, %bb.aa ]
  %.val16.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.ag, %bb.t ], [ %.val16.i.1.i.i.i.i.i.i, %bb.u ], [ %.val16.i.2.i.i.i.i.i.i, %bb.v ], [ %.val16.i.3.i.i.i.i.i.i, %bb.w ], [ %.val16.i.4.i.i.i.i.i.i, %bb.x ], [ %.val16.i.5.i.i.i.i.i.i, %bb.y ], [ %.val16.i.6.i.i.i.i.i.i, %bb.z ], [ %.val16.i.7.i.i.i.i.i.i, %bb.aa ]
end_hunk_0
