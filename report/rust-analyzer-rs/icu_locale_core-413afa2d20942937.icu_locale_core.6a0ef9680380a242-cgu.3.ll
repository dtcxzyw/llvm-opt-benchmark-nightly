Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_locale_core-413afa2d20942937.icu_locale_core.6a0ef9680380a242-cgu.3?download=true
inline.NumInlined: 135
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1C_9FormatterE0EB9_:bb.a
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2g_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB2K_3cmp15WriteComparatorE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.c, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !4
  %.not3.not = icmp eq i8 %i.e, -1                ; 3 uses
  %.4 = select i1 %.not3.not, ptr inttoptr (i64 1 to ptr), ptr %i.d
  %.sroa.0.0 = select i1 %.not, ptr %.4, ptr %0   ; 2 uses
  %i.f = select i1 %.not3.not, i64 0, i64 8
  %.idx = select i1 %.not, i64 %i.f, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.idx ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !102
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !noalias !102
  %.not.not.not.i.not.not.not5.not = select i1 %.not, i1 %.not3.not, i1 false
  br i1 %.not.not.not.i.not.not.not5.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.k = phi ptr [ %i.r, %.lr.ph ], [ %.sroa.0.0, %bb.a ] ; 3 uses
  %.val.i.i.i.i = load i64, ptr %i.k, align 1, !alias.scope !103, !noalias !104
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i, i1 false)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = lshr i32 %i.m, 3
  %i.o = sub nuw nsw i32 8, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtBX_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB1S_3cmp15WriteComparatorE0INtB7_5FnMutTReEE8call_mutBZ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.k, i64 noundef range(i64 0, 9) %i.p), !noalias !104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.r, %i.g
  %or.cond = select i1 %i.q, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_.exit, label %.lr.ph

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.q, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB3_5Value19for_each_subtag_strNtNtCshzWfHUSfYae_4core7convert10InfallibleNCNvXs9_NtB5_8keywordsNtB2p_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.c, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !4
  %.not3.not = icmp eq i8 %i.e, -1                ; 3 uses
  %.4 = select i1 %.not3.not, ptr inttoptr (i64 1 to ptr), ptr %i.d
  %.sroa.0.0 = select i1 %.not, ptr %.4, ptr %0   ; 3 uses
  %i.f = select i1 %.not3.not, i64 0, i64 8
  %.idx = select i1 %.not, i64 %i.f, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.idx ; 2 uses
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !117
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !noalias !117
  %i.k = select i1 %.not, i1 %.not3.not, i1 false
  br i1 %i.k, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.l = phi ptr [ %i.m, %.lr.ph.i ], [ %.sroa.0.0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.l, align 1, !alias.scope !118, !noalias !119
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i.i, i1 false)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = lshr i32 %i.o, 3
  %i.q = sub nuw nsw i32 8, %i.p
  %i.r = zext nneg i32 %i.q to i64
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvXs9_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtBW_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0INtB7_5FnMutTReEE8call_mutB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.l, i64 noundef range(i64 0, 9) %i.r), !noalias !119
  %i.s = icmp eq ptr %i.m, %i.g
  br i1 %i.s, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_.exit, label %.lr.ph.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_.exit: ; preds = %.lr.ph.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvNtCs8xIf8eOPprX_9writeable3cmp8cmp_utf8NtNtCs96xUavsWfLi_15icu_locale_core4data10DataLocaleEBJ_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(26) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @_RINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB11_3cmp15WriteComparatorEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !5
  %i.f = load i8, ptr %i.c, align 8, !range !7, !noundef !5 ; 2 uses
  %i.g = icmp ne i8 %i.f, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.h, %i.g
  %switch.offset = sub nsw i8 0, %i.f
  %.sroa.0.0 = select i1 %or.cond, i8 %switch.offset, i8 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvNtCs8xIf8eOPprX_9writeable3cmp8cmp_utf8NtNtCs96xUavsWfLi_15icu_locale_core6langid18LanguageIdentifierEBJ_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(26) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @_RINvXsa_NtCs96xUavsWfLi_15icu_locale_core6langidNtB6_18LanguageIdentifierNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB1b_3cmp15WriteComparatorEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !5
  %i.f = load i8, ptr %i.c, align 8, !range !7, !noundef !5 ; 2 uses
  %i.g = icmp ne i8 %i.f, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.h, %i.g
  %switch.offset = sub nsw i8 0, %i.f
  %.sroa.0.0 = select i1 %or.cond, i8 %switch.offset, i8 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvNtCs8xIf8eOPprX_9writeable3cmp8cmp_utf8NtNtCs96xUavsWfLi_15icu_locale_core6locale6LocaleEBJ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @_RINvXsb_NtCs96xUavsWfLi_15icu_locale_core6localeNtB6_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtBY_3cmp15WriteComparatorEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !5
  %i.f = load i8, ptr %i.c, align 8, !range !7, !noundef !5 ; 2 uses
  %i.g = icmp ne i8 %i.f, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.h, %i.g
  %switch.offset = sub nsw i8 0, %i.f
  %.sroa.0.0 = select i1 %or.cond, i8 %switch.offset, i8 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvNtCs8xIf8eOPprX_9writeable3cmp8cmp_utf8NtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywords8KeywordsEBN_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @_RINvXs9_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB6_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB1q_3cmp15WriteComparatorEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !5
  %i.f = load i8, ptr %i.c, align 8, !range !7, !noundef !5 ; 2 uses
  %i.g = icmp ne i8 %i.f, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.h, %i.g
  %switch.offset = sub nsw i8 0, %i.f
  %.sroa.0.0 = select i1 %or.cond, i8 %switch.offset, i8 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs96xUavsWfLi_15icu_locale_core(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !120

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCshzWfHUSfYae_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E2Ok0BL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([30 x i8]) align 1 captures(none) dereferenceable(30) initializes((0, 30)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.a, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 29, i1 false)
  store i8 0, ptr %0, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E3Err0BL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([30 x i8]) align 1 captures(none) dereferenceable(30) initializes((0, 30)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.a, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 29, i1 false)
  store i8 1, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicodeNtB2_7Unicode9total_cmp(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.c = load i8, ptr %i.a, align 1, !range !4, !alias.scope !154, !noundef !5
  %i.d = icmp ne i8 %i.c, -1                      ; 3 uses
  %i.e = zext i1 %i.d to i8
  %i.f = load i8, ptr %i.b, align 1, !range !4, !alias.scope !155, !noundef !5
  %i.g = icmp eq i8 %i.f, -1                      ; 3 uses
  %not..i = xor i1 %i.g, true                     ; 2 uses
  %.neg.i = sext i1 %not..i to i8
  %i.h = add nsw i8 %.neg.i, %i.e
  %i.i = xor i1 %i.d, %i.g
  br i1 %i.i, label %bb.b, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.j = tail call noundef i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode9attribute9AttributeNtB5_8SliceOrd7compareBK_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 2)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.l = load i8, ptr %i.k, align 1, !range !4, !alias.scope !154, !noundef !5 ; 3 uses
  %.not.i = icmp eq i8 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.n = load i8, ptr %i.m, align 1, !range !4, !alias.scope !155, !noundef !5 ; 4 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not6.i = icmp eq i8 %i.n, -1
  br i1 %.not6.i, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.not4.i = icmp ne i8 %i.n, -1
  %..i = sext i1 %.not4.i to i8
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %.loopexit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 38
  %.val15.i.1.i.i.i = load i8, ptr %i.p, align 1, !range !162, !alias.scope !163, !noundef !5 ; 2 uses
  %.val16.i.1.i.i.i = load i8, ptr %i.q, align 1, !range !162, !alias.scope !164, !noundef !5 ; 2 uses
  %i.r = icmp eq i8 %.val15.i.1.i.i.i, %.val16.i.1.i.i.i
  br i1 %i.r, label %bb.i, label %.loopexit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.val15.i.2.i.i.i = load i8, ptr %i.s, align 1, !range !162, !alias.scope !163, !noundef !5 ; 2 uses
  %.val16.i.2.i.i.i = load i8, ptr %i.t, align 1, !range !162, !alias.scope !164, !noundef !5 ; 2 uses
  %i.u = icmp eq i8 %.val15.i.2.i.i.i, %.val16.i.2.i.i.i
  br i1 %i.u, label %bb.j, label %.loopexit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val15.i.3.i.i.i = load i8, ptr %i.v, align 1, !range !162, !alias.scope !163, !noundef !5 ; 2 uses
  %.val16.i.3.i.i.i = load i8, ptr %i.w, align 1, !range !162, !alias.scope !164, !noundef !5 ; 2 uses
  %i.x = icmp eq i8 %.val15.i.3.i.i.i, %.val16.i.3.i.i.i
  br i1 %i.x, label %bb.k, label %.loopexit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val15.i.4.i.i.i = load i8, ptr %i.y, align 1, !range !162, !alias.scope !163, !noundef !5 ; 2 uses
  %.val16.i.4.i.i.i = load i8, ptr %i.z, align 1, !range !162, !alias.scope !164, !noundef !5 ; 2 uses
  %i.aa = icmp eq i8 %.val15.i.4.i.i.i, %.val16.i.4.i.i.i
  br i1 %i.aa, label %bb.l, label %.loopexit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 42
  %.val15.i.5.i.i.i = load i8, ptr %i.ab, align 1, !range !162, !alias.scope !163, !noundef !5 ; 2 uses
  %.val16.i.5.i.i.i = load i8, ptr %i.ac, align 1, !range !162, !alias.scope !164, !noundef !5 ; 2 uses
  %i.ad = icmp eq i8 %.val15.i.5.i.i.i, %.val16.i.5.i.i.i
  br i1 %i.ad, label %bb.m, label %.loopexit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 43
  %.val15.i.6.i.i.i = load i8, ptr %i.ae, align 1, !range !162, !alias.scope !163, !noundef !5 ; 2 uses
  %.val16.i.6.i.i.i = load i8, ptr %i.af, align 1, !range !162, !alias.scope !164, !noundef !5 ; 2 uses
  %i.ag = icmp eq i8 %.val15.i.6.i.i.i, %.val16.i.6.i.i.i
  br i1 %i.ag, label %bb.n, label %.loopexit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val15.i.7.i.i.i = load i8, ptr %i.ah, align 1, !range !162, !alias.scope !163, !noundef !5 ; 2 uses
  %.val16.i.7.i.i.i = load i8, ptr %i.ai, align 1, !range !162, !alias.scope !164, !noundef !5 ; 2 uses
  %i.aj = icmp eq i8 %.val15.i.7.i.i.i, %.val16.i.7.i.i.i
  br i1 %i.aj, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.val15.i.lcssa.i.i.i = phi i8 [ %i.l, %bb.g ], [ %.val15.i.1.i.i.i, %bb.h ], [ %.val15.i.2.i.i.i, %bb.i ], [ %.val15.i.3.i.i.i, %bb.j ], [ %.val15.i.4.i.i.i, %bb.k ], [ %.val15.i.5.i.i.i, %bb.l ], [ %.val15.i.6.i.i.i, %bb.m ], [ %.val15.i.7.i.i.i, %bb.n ]
  %.val16.i.lcssa.i.i.i = phi i8 [ %i.n, %bb.g ], [ %.val16.i.1.i.i.i, %bb.h ], [ %.val16.i.2.i.i.i, %bb.i ], [ %.val16.i.3.i.i.i, %bb.j ], [ %.val16.i.4.i.i.i, %bb.k ], [ %.val16.i.5.i.i.i, %bb.l ], [ %.val16.i.6.i.i.i, %bb.m ], [ %.val16.i.7.i.i.i, %bb.n ]
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i, i8 %.val16.i.lcssa.i.i.i)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit: ; preds = %bb.a, %bb.c, %bb.f, %.loopexit.i.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.j, %bb.c ], [ %i.ak, %.loopexit.i.i.i.i ], [ %i.h, %bb.a ], [ %..i, %bb.f ] ; 2 uses
  %i.al = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.al, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread: ; preds = %bb.n, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.am = load i8, ptr %0, align 1, !range !4, !alias.scope !165, !noundef !5
  %i.an = icmp ne i8 %i.am, -1                    ; 3 uses
  %i.ao = zext i1 %i.an to i8
  %i.ap = load i8, ptr %1, align 1, !range !4, !alias.scope !166, !noundef !5
  %i.aq = icmp eq i8 %i.ap, -1                    ; 3 uses
  %not..i3 = xor i1 %i.aq, true                   ; 2 uses
  %.neg.i4 = sext i1 %not..i3 to i8
  %i.ar = add nsw i8 %.neg.i4, %i.ao
  %i.as = xor i1 %i.an, %i.aq
  br i1 %i.as, label %bb.o, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.o:                                             ; preds = %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i3)
  %i.at = tail call noundef i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpTNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBH_5value5ValueENtB5_8SliceOrd7compareBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %0, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %1, i64 noundef 2)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !4, !alias.scope !165, !noundef !5 ; 3 uses
  %.not.i6 = icmp eq i8 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !4, !alias.scope !166, !noundef !5 ; 4 uses
  br i1 %.not.i6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not6.i7 = icmp eq i8 %i.ax, -1
  br i1 %.not6.i7, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  %.not4.i8 = icmp ne i8 %i.ax, -1
  %..i9 = sext i1 %.not4.i8 to i8
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.ay = icmp eq i8 %i.av, %i.ax
  br i1 %i.ay, label %bb.u, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val4.i.i = load i8, ptr %i.az, align 1, !alias.scope !169 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val2.i.i = load i8, ptr %i.ba, align 1, !alias.scope !170 ; 2 uses
  %i.bb = icmp eq i8 %.val2.i.i, %.val4.i.i
  br i1 %i.bb, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.u, %bb.t
  %.val15.i.lcssa.i.i.i.i = phi i8 [ %i.av, %bb.t ], [ %.val2.i.i, %bb.u ] ; 2 uses
  %.val16.i.lcssa.i.i.i.i = phi i8 [ %i.ax, %bb.t ], [ %.val4.i.i, %bb.u ] ; 2 uses
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i.i, i8 %.val16.i.lcssa.i.i.i.i)
  %i.bd = icmp eq i8 %.val15.i.lcssa.i.i.i.i, %.val16.i.lcssa.i.i.i.i
  br i1 %i.bd, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.bg = load i8, ptr %i.be, align 1, !range !4, !alias.scope !175, !noundef !5
  %i.bh = icmp ne i8 %i.bg, -1                    ; 3 uses
  %i.bi = zext i1 %i.bh to i8
  %i.bj = load i8, ptr %i.bf, align 1, !range !4, !alias.scope !176, !noundef !5
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences32to_data_locale_language_priority:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.sroa.0.0.copyload = load i48, ptr %.sroa.4.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.sroa.05.0.copyload = load i64, ptr %i.d, align 1
  %.sroa.012.0.insert.ext = zext i8 %i.c to i56
  %i.e = zext i48 %.sroa.4.sroa.0.0.copyload to i56
  %i.f = shl nuw i56 %i.e, 8
  %.sroa.012.1.insert.shift = select i1 %.not, i56 0, i56 %i.f
  %.sroa.012.1.insert.insert = or disjoint i56 %.sroa.012.1.insert.shift, %.sroa.012.0.insert.ext
  tail call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10from_parts(ptr noalias nofree noundef nonnull sret([26 x i8]) align 1 captures(none) dereferenceable(26) %0, i24 %.sroa.010.0.copyload, i32 %.sroa.0.0.copyload, i56 %.sroa.012.1.insert.insert, i64 %.sroa.05.0.copyload)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB2_5Value13remove_subtag(ptr noalias nofree noundef dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !4
  %i.d = icmp ne i8 %i.c, -1
  %i.e = zext i1 %i.d to i64
  %.sroa.01.0 = select i1 %.not, i64 %i.e, i64 2
  %i.f = icmp ult i64 %.sroa.01.0, %1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_RNvMs0_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_13ShortBoxSliceNtNtB7_7subtags6SubtagE6removeB7_(ptr noalias nofree noundef nonnull dereferenceable(16) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert = phi i64 [ %i.g, %bb.b ], [ 255, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB2_5Value13try_from_utf8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.0.sroa.8.0 = phi i64 [ 255, %bb.a ], [ %.sroa.0.sroa.8.2, %._crit_edge ]
  %.sroa.0.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %.sroa.0.sroa.0.2, %._crit_edge ]
  %.sroa.19.0 = phi i48 [ undef, %bb.a ], [ %.sroa.19.1.lcssa, %._crit_edge ]
  %.sroa.16.0 = phi i8 [ undef, %bb.a ], [ %.sroa.16.1.lcssa, %._crit_edge ]
  store i8 %.sroa.0.sroa.0.0, ptr %0, align 1
  %.sroa.091.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.0.sroa.8.0, ptr %.sroa.091.sroa.4.0..sroa_idx, align 1
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.16.0, ptr %.sroa.492.0..sroa_idx, align 1
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i48 %.sroa.19.0, ptr %.sroa.593.0..sroa_idx, align 1
  br label %bb.e

bb.c:                                             ; preds = %.preheader, %bb.d
  %.sroa.037.0.lcssa = phi i64 [ %.sroa.037.0107, %.preheader ], [ %2, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.037.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not108 = icmp eq ptr %i.e, null
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %bb.a, %bb.d
  %.sroa.037.0107 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.037.0107
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  %i.h = icmp eq i8 %i.g, 45
  br i1 %i.h, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.i = add nuw nsw i64 %.sroa.037.0107, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %2
  br i1 %exitcond.not, label %bb.c, label %.preheader

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %.sroa.0.sroa.8.1 = phi i64 [ %.sroa.0.sroa.8.3, %bb.g ], [ 255, %bb.c ] ; 6 uses
  %.sroa.0.sroa.0.1 = phi i8 [ %.sroa.0.sroa.0.3, %bb.g ], [ -1, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.r, %bb.g ], [ %i.e, %bb.c ]
  %i.k = phi { ptr, i64 } [ %i.q, %bb.g ], [ %i.d, %bb.c ]
  %.sroa.16.1110 = phi i8 [ %.sroa.16.2, %bb.g ], [ undef, %bb.c ]
  %.sroa.19.1109 = phi i48 [ %.sroa.19.2, %bb.g ], [ undef, %bb.c ]
  %i.l = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = call i64 @_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag13try_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) ; 6 uses
  %.sroa.468.0.extract.shift = lshr i64 %i.m, 8
  %.sroa.468.0.extract.trunc = trunc i64 %.sroa.468.0.extract.shift to i8 ; 2 uses
  %.sroa.569.0.extract.shift = lshr i64 %i.m, 16
  %.sroa.569.0.extract.trunc = trunc nuw i64 %.sroa.569.0.extract.shift to i48
  %i.n = and i64 %i.m, 255
  %i.o = icmp eq i64 %i.n, 255
  br i1 %i.o, label %bb.k, label %bb.f

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.sroa.0.sroa.8.2 = phi i64 [ 255, %bb.c ], [ %.sroa.0.sroa.8.3, %bb.g ]
  %.sroa.0.sroa.0.2 = phi i8 [ -1, %bb.c ], [ %.sroa.0.sroa.0.3, %bb.g ]
  %.sroa.19.1.lcssa = phi i48 [ undef, %bb.c ], [ %.sroa.19.2, %bb.g ]
  %.sroa.16.1.lcssa = phi i8 [ undef, %bb.c ], [ %.sroa.16.2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.e:                                             ; preds = %bb.k, %bb.b
  ret void

bb.f:                                             ; preds = %.lr.ph
  store i64 %i.m, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @1, i64 noundef 8)
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.j, %bb.f
  %.sroa.0.sroa.8.3 = phi i64 [ %.sroa.0.sroa.8.1, %bb.f ], [ %op.rdx144, %bb.j ], [ %i.m, %bb.h ] ; 2 uses
  %.sroa.0.sroa.0.3 = phi i8 [ %.sroa.0.sroa.0.1, %bb.f ], [ %.sroa.0.sroa.8.1.extract.trunc135, %bb.j ], [ -1, %bb.h ] ; 2 uses
  %.sroa.19.2 = phi i48 [ %.sroa.19.1109, %bb.f ], [ %.sroa.569.0.extract.trunc, %bb.j ], [ undef, %bb.h ] ; 2 uses
  %.sroa.16.2 = phi i8 [ %.sroa.16.1110, %bb.f ], [ %.sroa.468.0.extract.trunc, %bb.j ], [ undef, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = call { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.f
  %.not94 = icmp eq i8 %.sroa.0.sroa.0.1, -1      ; 2 uses
  %.sroa.0.sroa.8.1.extract.trunc135 = trunc i64 %.sroa.0.sroa.8.1 to i8 ; 2 uses
  %i.s = icmp eq i8 %.sroa.0.sroa.8.1.extract.trunc135, -1 ; 2 uses
  %or.cond = select i1 %.not94, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %not..not94 = xor i1 %.not94, true
  %i.t = select i1 %not..not94, i1 true, i1 %i.s
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.0.sroa.8.2.extract.shift = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.1.insert.ext = and i64 %.sroa.0.sroa.8.2.extract.shift, 255
  %i.u = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.2.insert.shift = and i64 %i.u, 65280
  %i.v = insertelement <4 x i64> poison, i64 %.sroa.0.sroa.8.1, i64 0
  %i.w = lshr <4 x i64> %i.v, <i64 8, i64 poison, i64 poison, i64 poison>
  %i.x = shufflevector <4 x i64> %i.w, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.y = and <4 x i64> %i.x, <i64 16711680, i64 4278190080, i64 1095216660480, i64 280375465082880>
  %i.z = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.7.insert.shift = and i64 %i.z, 71776119061217280
  %.sroa.0.sroa.8.8.insert.ext = shl i64 %i.m, 56
  %i.aa = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.y)
  %op.rdx = or disjoint i64 %i.aa, %.sroa.0.sroa.8.1.insert.ext
  %op.rdx142 = or disjoint i64 %.sroa.0.sroa.8.2.insert.shift, %.sroa.0.sroa.8.7.insert.shift
  %op.rdx143 = or disjoint i64 %op.rdx, %op.rdx142
  %op.rdx144 = or disjoint i64 %op.rdx143, %.sroa.0.sroa.8.8.insert.ext
  br label %bb.g

bb.k:                                             ; preds = %bb.i, %.lr.ph
  %.sink = phi i8 [ %.sroa.468.0.extract.trunc, %.lr.ph ], [ 1, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink, ptr %i.ab, align 1
  store i8 -2, ptr %0, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB2_5Value22parse_subtag_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag13try_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 7 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 255
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.760.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.861.0.extract.shift = lshr i64 %i.a, 40
  %.sroa.962.0.extract.shift = lshr i64 %i.a, 48
  %.sroa.1063.0.extract.shift = lshr i64 %i.a, 56
  %i.d = and i64 %i.a, 4294967295
  %or.cond8 = icmp eq i64 %i.d, 1702195828
  %i.e = or i64 %.sroa.962.0.extract.shift, %.sroa.861.0.extract.shift
  %i.f = or i64 %i.e, %.sroa.760.0.extract.shift
  %i.g = and i64 %i.f, 255
  %i.h = or i64 %i.g, %.sroa.1063.0.extract.shift
  %i.i = icmp eq i64 %i.h, 0
  %or.cond20 = and i1 %or.cond8, %i.i
  %. = select i1 %or.cond20, i64 255, i64 %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.sroa.0.0 = phi i64 [ %., %bb.b ], [ 510, %bb.a ]
  ret i64 %.sroa.5.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB5_17LocalePreferences18from_locale_strict(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([30 x i8]) align 1 captures(none) dereferenceable(30) initializes((0, 30)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.545 = alloca [7 x i8], align 1           ; 4 uses
  %i.a = alloca [29 x i8], align 1                ; 13 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca [7 x i8], align 1                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.e = tail call noundef ptr @_RINvMs1_NtCshD3lJRhzE0y_7litemap3mapINtB6_7LiteMapNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBQ_5value5ValueINtNtBU_8shortvec13ShortBoxSliceTBM_B1R_EEE3getBM_EBU_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) @2) ; 2 uses
  %.not = icmp ne ptr %i.e, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i56 @_RNvXs_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords20regional_subdivisionNtB4_19RegionalSubdivisionINtNtCshzWfHUSfYae_4core7convert7TryFromRNtNtNtNtBe_10extensions7unicode5value5ValueE8try_from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.e) ; 3 uses
  %.sroa.068.0.extract.trunc = trunc i56 %i.f to i8 ; 3 uses
  %i.g = icmp eq i8 %.sroa.068.0.extract.trunc, -1
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.068.1.extract.shift = lshr i56 %i.f, 8   ; 2 uses
  %.sroa.068.1.extract.trunc = trunc nuw i56 %.sroa.068.1.extract.shift to i48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.sroa.068.0.extract.trunc, ptr %i.c, align 1
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i48 %.sroa.068.1.extract.trunc, ptr %.sroa.6.0..sroa_idx2, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 143 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !4, !noundef !5
  %.not76 = icmp eq i8 %i.i, -1
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %i.h, i64 3, i1 false)
  %i.j = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 3) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.sroa.021.0.copyload22 = load i32, ptr %i.k, align 1
  %not. = xor i1 %i.j, true
  %.sroa.021.0 = select i1 %i.j, i32 %.sroa.021.0.copyload22, i32 2054847098
  %.sroa.019.0.copyload = load i8, ptr %i.b, align 1
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.420.sroa.0.0.copyload24 = load i16, ptr %.sroa.420.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = lshr i56 %i.f, 24
  %i.m = trunc nuw i56 %i.l to i32
  %i.n = trunc i56 %.sroa.068.1.extract.shift to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.1 = phi i1 [ false, %bb.e ], [ %not., %bb.d ]
  %.sroa.5.sroa.4.0 = phi i32 [ %i.m, %bb.e ], [ %.sroa.021.0, %bb.d ]
  %.sroa.5.sroa.0.0 = phi i16 [ %i.n, %bb.e ], [ %.sroa.420.sroa.0.0.copyload24, %bb.d ]
  %.sroa.010.0 = phi i8 [ %.sroa.068.0.extract.trunc, %bb.e ], [ %.sroa.019.0.copyload, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.2 = phi i1 [ %.not, %bb.h ], [ %.sroa.0.1, %bb.f ] ; 2 uses
  %.sroa.5.sroa.4.1 = phi i32 [ 2054847098, %bb.h ], [ %.sroa.5.sroa.4.0, %bb.f ]
  %.sroa.5.sroa.0.1 = phi i16 [ %.sroa.5.sroa.0.2, %bb.h ], [ %.sroa.5.sroa.0.0, %bb.f ]
  %.sroa.010.1 = phi i8 [ %.sroa.029.0.copyload, %bb.h ], [ %.sroa.010.0, %bb.f ]
  %i.o = call noundef ptr @_RINvMs1_NtCshD3lJRhzE0y_7litemap3mapINtB6_7LiteMapNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBQ_5value5ValueINtNtBU_8shortvec13ShortBoxSliceTBM_B1R_EEE3getBM_EBU_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) @3) ; 2 uses
  %.not78 = icmp eq ptr %i.o, null
  br i1 %.not78, label %bb.i, label %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 143
  %.sroa.029.0.copyload = load i8, ptr %i.p, align 1 ; 2 uses
  %.not77 = icmp eq i8 %.sroa.029.0.copyload, -1
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx31, align 8
  %.sroa.5.sroa.0.2 = select i1 %.not77, i16 undef, i16 %.sroa.5.0.copyload
  br label %bb.g

_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit: ; preds = %bb.g
  %i.q = call i56 @_RNvXs_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_overrideNtB4_14RegionOverrideINtNtCshzWfHUSfYae_4core7convert7TryFromRNtNtNtNtBe_10extensions7unicode5value5ValueE8try_from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.o) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i56 %i.q to i8 ; 2 uses
  %i.r = icmp eq i8 %.sroa.0.0.extract.trunc.i, -1
  %spec.select = or i1 %.sroa.0.2, %i.r
  %.sroa.074.1.extract.shift = lshr i56 %i.q, 8
  %.sroa.074.1.extract.trunc = trunc nuw i56 %.sroa.074.1.extract.shift to i48
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit
  %.sroa.0.4 = phi i1 [ %.sroa.0.2, %bb.g ], [ %spec.select, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit ]
  %.sroa.034.0 = phi i8 [ -1, %bb.g ], [ %.sroa.0.0.extract.trunc.i, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit ]
  %.sroa.436.sroa.0.0 = phi i48 [ undef, %bb.g ], [ %.sroa.074.1.extract.trunc, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 139
  %.sroa.041.0.copyload = load i32, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.545)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 146 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !range !4, !noundef !5
  %.not79 = icmp eq i8 %i.u, -1                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 147 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !4
  %.not80 = icmp eq i8 %i.w, -1                   ; 2 uses
  %i.x = select i1 %.not79, i1 %.not80, i1 false
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.81 = select i1 %.not80, ptr inttoptr (i64 1 to ptr), ptr %i.v
  %.sroa.047.0 = select i1 %.not79, ptr %.81, ptr %i.t ; 2 uses
  %.sroa.066.0.copyload = load i8, ptr %.sroa.047.0, align 1
  %.sroa.467.0..sroa.065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.047.0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.545, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.467.0..sroa.065.0..sroa_idx, i64 7, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.043.0 = phi i8 [ %.sroa.066.0.copyload, %bb.j ], [ -1, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 8 dereferenceable(3) %2, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i32 %.sroa.041.0.copyload, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %.sroa.010.1, ptr %i.z, align 1
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %.sroa.5.sroa.0.1, ptr %.sroa.5.0..sroa_idx16, align 1
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx16.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i32 %.sroa.5.sroa.4.1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx16.sroa_idx, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %.sroa.043.0, ptr %i.aa, align 1
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.545.0..sroa_idx46, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.545, i64 7, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %.sroa.034.0, ptr %i.ab, align 1
  %.sroa.436.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i48 %.sroa.436.sroa.0.0, ptr %.sroa.436.0..sroa_idx37, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.545)
  br i1 %.sroa.0.4, label %call.1, label %call.0

call.0:                                           ; preds = %bb.k
  call fastcc void @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E2Ok0BL_(ptr noalias nofree noundef nonnull sret([30 x i8]) align 1 captures(address) dereferenceable(30) %0, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(29) %i.a), !callees !185
  br label %.tail

call.1:                                           ; preds = %bb.k
  call fastcc void @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E3Err0BL_(ptr noalias nofree noundef nonnull sret([30 x i8]) align 1 captures(address) dereferenceable(30) %0, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(29) %i.a), !callees !185
  br label %.tail

.tail:                                            ; preds = %call.1, %call.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB5_17LocalePreferences6extend(ptr noalias nofree noundef captures(none) dereferenceable(29) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %.sroa.017.0.copyload = load i8, ptr %1, align 1
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.518.0.copyload = load i8, ptr %.sroa.518.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1
  %i.c = icmp eq i8 %.sroa.017.0.copyload, 117
  %i.d = icmp eq i8 %.sroa.518.0.copyload, 110
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  %i.e = icmp eq i8 %.sroa.6.0.copyload, 100
  %or.cond5 = select i1 %or.cond, i1 %i.e, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.g, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.06.0.copyload = load i32, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i32 %.sroa.06.0.copyload, ptr %i.h, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !range !4, !noundef !5
  %.not22 = icmp eq i8 %i.j, -1
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 1
  %i.k = tail call noundef zeroext i1 @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode11subdivisionNtB2_17SubdivisionSuffix10is_unknown(i32 noundef %.sroa.4.0.copyload)
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.i, %bb.k, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !range !4, !noundef !5
  %.not25 = icmp eq i8 %i.m, -1
  br i1 %.not25, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %i.i, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.011.0.copyload = load i8, ptr %i.n, align 1 ; 2 uses
  %.not23 = icmp eq i8 %.sroa.011.0.copyload, -1
  br i1 %.not23, label %.thread, label %bb.j

bb.i:                                             ; preds = %bb.f, %.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.o, ptr noundef nonnull align 1 dereferenceable(7) %i.i, i64 7, i1 false)
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 1
  store i8 %.sroa.011.0.copyload, ptr %i.a, align 1
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i16 %.sroa.5.sroa.0.0.copyload, ptr %.sroa.420.0..sroa_idx, align 1
  %i.p = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 3)
  br i1 %i.p, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.l:                                             ; preds = %bb.g
  %.sroa.015.0.copyload = load i64, ptr %i.l, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i64 %.sroa.015.0.copyload, ptr %i.q, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !range !4, !noundef !5
  %.not26 = icmp eq i8 %i.s, -1
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) %i.r, i64 7, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define i24 @_RNvMs2_NtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB5_17LocalePreferences6region(ptr noalias nofree noundef readonly captures(none) dereferenceable(29) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [26 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %.sroa.014.0.copyload.i = load i24, ptr %0, align 1, !alias.scope !188
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.d = load i8, ptr %i.c, align 1, !range !4, !alias.scope !188, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.d, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.sroa.4.sroa.0.0.copyload.i = load i48, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !188
  br label %_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences30to_data_locale_region_priority.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !188, !noundef !5 ; 2 uses
  %.not19.i = icmp eq i8 %i.f, -1
  br i1 %.not19.i, label %_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences30to_data_locale_region_priority.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.411.sroa.0.0.copyload.i = load i48, ptr %.sroa.411.0..sroa_idx.i, align 1, !alias.scope !188
  br label %_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences30to_data_locale_region_priority.exit

_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences30to_data_locale_region_priority.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.6.sroa.0.0.i = phi i48 [ %.sroa.4.sroa.0.0.copyload.i, %bb.b ], [ %.sroa.411.sroa.0.0.copyload.i, %bb.d ], [ undef, %bb.c ]
  %.sroa.02.0.i = phi i8 [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ -1, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.07.0.copyload.i = load i64, ptr %i.g, align 1, !alias.scope !188
  %.sroa.016.0.insert.ext.i = zext i8 %.sroa.02.0.i to i56
  %.sroa.016.1.insert.ext.i = zext i48 %.sroa.6.sroa.0.0.i to i56
  %.sroa.016.1.insert.shift.i = shl nuw i56 %.sroa.016.1.insert.ext.i, 8
  %.sroa.016.1.insert.insert.i = or disjoint i56 %.sroa.016.1.insert.shift.i, %.sroa.016.0.insert.ext.i
  call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10from_parts(ptr noalias nofree noundef nonnull sret([26 x i8]) align 1 captures(none) dereferenceable(26) %i.a, i24 %.sroa.014.0.copyload.i, i32 %.sroa.0.0.copyload.i, i56 %.sroa.016.1.insert.insert.i, i64 %.sroa.07.0.copyload.i), !noalias !188
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.sroa.0.0.copyload = load i24, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i24 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define i24 @_RNvMs2_NtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB5_17LocalePreferences8language(ptr noalias nofree noundef readonly captures(none) dereferenceable(29) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [26 x i8], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %.sroa.010.0.copyload.i = load i24, ptr %0, align 1, !alias.scope !191
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 1, !alias.scope !191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.d = load i8, ptr %i.c, align 1, !range !4, !alias.scope !191, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.d, -1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load i48, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !191
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  %.sroa.05.0.copyload.i = load i64, ptr %i.e, align 1, !alias.scope !191
  %.sroa.012.0.insert.ext.i = zext i8 %i.d to i56
  %i.f = zext i48 %.sroa.4.sroa.0.0.copyload.i to i56
  %i.g = shl nuw i56 %i.f, 8
  %.sroa.012.1.insert.shift.i = select i1 %.not.i, i56 0, i56 %i.g
  %.sroa.012.1.insert.insert.i = or disjoint i56 %.sroa.012.1.insert.shift.i, %.sroa.012.0.insert.ext.i
  call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10from_parts(ptr noalias nofree noundef nonnull sret([26 x i8]) align 1 captures(none) dereferenceable(26) %i.a, i24 %.sroa.010.0.copyload.i, i32 %.sroa.0.0.copyload.i, i56 %.sroa.012.1.insert.insert.i, i64 %.sroa.05.0.copyload.i), !noalias !191
  %.sroa.0.0.copyload = load i24, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i24 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -2, 3) i8 @_RNvXNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords18measurement_systemNtB2_17MeasurementSystemNtBa_13PreferenceKey18try_from_key_value(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull @4, ptr noundef nonnull %0, i64 noundef 2)
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !194
  %i.c = load i8, ptr %1, align 1, !range !4, !alias.scope !194, !noundef !5
  %.not.not.not.not.i = icmp ne i8 %i.c, -1       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !4, !alias.scope !194
  %.not17.i = icmp ne i8 %i.e, -1                 ; 2 uses
  %i.f = select i1 %.not.not.not.not.i, i1 true, i1 %.not17.i
  br i1 %i.f, label %bb.c, label %bb.d

end_hunk_1
