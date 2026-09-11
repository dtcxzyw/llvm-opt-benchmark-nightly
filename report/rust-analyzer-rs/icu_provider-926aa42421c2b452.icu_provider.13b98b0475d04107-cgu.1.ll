Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_provider-926aa42421c2b452.icu_provider.13b98b0475d04107-cgu.1?download=true
inline.NumInlined: 77
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7privateNtB3_7Private19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB2a_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider:bb.a
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.u = tail call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val11, i32 noundef 45), !noalias !110
  br i1 %i.u, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %.val.i.i.i.i.pre, align 1, !noalias !110
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.g, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.v = tail call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  br i1 %i.v, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %._crit_edge

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.c, %bb.d, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i, %._crit_edge, %bb.g, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit, %bb.a
  %.sroa.0.0 = phi i1 [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit ], [ false, %bb.a ], [ true, %bb.g ], [ false, %._crit_edge ], [ true, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1m_9FormatterE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(26) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %.val23 = load i24, ptr %0, align 1, !alias.scope !125
  %.sroa.0.0.insert.ext.i.i = zext i24 %.val23 to i32
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i, i1 false)
  %i.d = lshr i32 %i.c, 3
  %i.e = sub nuw nsw i32 4, %i.d
  %i.f = zext nneg i32 %i.e to i64
  %.val20 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val21 = load ptr, ptr %i.g, align 8           ; 10 uses
  %i.h = load i8, ptr %.val20, align 1, !range !6, !noalias !126, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.j = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !126
  br i1 %i.j, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %.val20, align 1, !noalias !126
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.b, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.k = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.f)
  br i1 %i.k, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val24 = load i32, ptr %i.l, align 1, !alias.scope !127
  %i.n = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val24, i1 false)
  %i.o = lshr i32 %i.n, 3
  %i.p = sub nuw nsw i32 4, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = load i8, ptr %.val20, align 1, !range !6, !noalias !128, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !128
  br i1 %i.t, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %.val20, align 1, !noalias !128
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26: ; preds = %bb.f, %bb.g
  %i.u = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.q)
  br i1 %i.u, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !range !4, !noundef !5
  %.not11 = icmp eq i8 %i.w, -1
  br i1 %.not11, label %bb.l, label %bb.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split: ; preds = %bb.q, %bb.p
  %.sroa.0.0.ph = phi i1 [ false, %bb.p ], [ %i.ar, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread: ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split, %bb.n, %bb.j, %bb.f, %bb.b, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit
  %.sroa.0.0 = phi i1 [ true, %bb.f ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26 ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29 ], [ true, %bb.n ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31 ], [ true, %bb.j ], [ true, %bb.b ], [ %.sroa.0.0.ph, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split ]
  ret i1 %.sroa.0.0

bb.i:                                             ; preds = %bb.h
  %.val22 = load i24, ptr %i.v, align 1, !alias.scope !125
  %.sroa.0.0.insert.ext.i.i27 = zext i24 %.val22 to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i27, i1 false)
  %i.y = lshr i32 %i.x, 3
  %i.z = sub nuw nsw i32 4, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = load i8, ptr %.val20, align 1, !range !6, !noalias !129, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !129
  br i1 %i.ad, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %.val20, align 1, !noalias !129
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29: ; preds = %bb.j, %bb.k
  %i.ae = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.aa)
  br i1 %i.ae, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !range !4, !noundef !5
  %.not12 = icmp eq i8 %i.ag, -1
  br i1 %.not12, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val = load i64, ptr %i.af, align 1, !alias.scope !130
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val, i1 false)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = sub nuw nsw i32 8, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = load i8, ptr %.val20, align 1, !range !6, !noalias !131, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !131
  br i1 %i.ao, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr %.val20, align 1, !noalias !131
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31: ; preds = %bb.n, %bb.o
  %i.ap = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.al)
  br i1 %i.ap, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.p

bb.p:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10extensions(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %0)
  %i.aq = load i8, ptr %i.b, align 8, !range !7, !noundef !5
  %.not13 = icmp eq i8 %i.aq, -2
  br i1 %.not13, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  %i.ar = call noundef zeroext i1 @_RINvMs_NtCs96xUavsWfLi_15icu_locale_core10extensionsNtB5_10Extensions19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB26_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1s_9FormatterE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 50)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(11) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #1 {
_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 49
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !6
  %i.d = select i1 %i.c, i8 1, i8 %.pre
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.g = load ptr, ptr %1, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.sroa.01.0.copyload = load i64, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i64 %.sroa.01.0.copyload, ptr %.sroa.4.0..sroa_idx, align 1
  store ptr %i.g, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.d, ptr %i.m, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtNtCs1GZEXNOm2AR_12icu_provider5baked8zerotrie9get_index(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 6 uses
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %.val23.i = load i24, ptr %i.h, align 1, !alias.scope !163, !noalias !164
  %.sroa.0.0.insert.ext.i.i.i = zext i24 %.val23.i to i32
  %i.j = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i.i, i1 false)
  %i.k = lshr i32 %i.j, 3
  %i.l = sub nuw nsw i32 4, %i.k
  %i.m = zext nneg i32 %i.l to i64
  store i8 0, ptr %i.d, align 1, !noalias !165
  %i.n = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %i.h, i64 noundef %i.m), !noalias !164
  br i1 %i.n, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.a

bb.a:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !range !4, !alias.scope !162, !noalias !164, !noundef !5
  %.not.i = icmp eq i8 %i.p, -1
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val24.i = load i32, ptr %i.o, align 1, !alias.scope !166, !noalias !164
  %i.q = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val24.i, i1 false)
  %i.r = lshr i32 %i.q, 3
  %i.s = sub nuw nsw i32 4, %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = load i8, ptr %i.d, align 1, !range !6, !noalias !167, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 45), !noalias !167
  br i1 %i.w, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1, !noalias !167
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i: ; preds = %bb.d, %bb.c
  %i.x = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.t), !noalias !164
  br i1 %i.x, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.e

bb.e:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 7 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !range !4, !alias.scope !162, !noalias !164, !noundef !5
  %.not11.i = icmp eq i8 %i.z, -1
  br i1 %.not11.i, label %bb.i, label %bb.f

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !168
  br label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit

bb.f:                                             ; preds = %bb.e
  %.val22.i = load i24, ptr %i.y, align 1, !alias.scope !163, !noalias !164
  %.sroa.0.0.insert.ext.i.i27.i = zext i24 %.val22.i to i32
  %i.aa = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i27.i, i1 false)
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = sub nuw nsw i32 4, %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = load i8, ptr %i.d, align 1, !range !6, !noalias !169, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 45), !noalias !169
  br i1 %i.ag, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.d, align 1, !noalias !169
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i: ; preds = %bb.h, %bb.g
  %i.ah = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.ad), !noalias !164
  br i1 %i.ah, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 10 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !4, !alias.scope !162, !noalias !164, !noundef !5
  %.not12.i = icmp eq i8 %i.aj, -1
  br i1 %.not12.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load i64, ptr %i.ai, align 1, !alias.scope !170, !noalias !164
  %i.ak = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i, i1 false)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 3
  %i.an = sub nuw nsw i32 8, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load i8, ptr %i.d, align 1, !range !6, !noalias !171, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 45), !noalias !171
  br i1 %i.ar, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.d, align 1, !noalias !171
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i: ; preds = %bb.l, %bb.k
  %i.as = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ao), !noalias !164
  br i1 %i.as, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.m

bb.m:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168
  call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10extensions(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %i.h), !noalias !164
  %i.at = load i8, ptr %i.b, align 8, !range !7, !noalias !168, !noundef !5
  %.not13.i = icmp eq i8 %i.at, -2
  br i1 %.not13.i, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !168
  %i.au = call noundef zeroext i1 @_RINvMs_NtCs96xUavsWfLi_15icu_locale_core10extensionsNtB5_10Extensions19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB26_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split.i

_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit: ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i, %bb.c, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split.i, %bb.g, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i, %bb.k, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.aq, label %bb.o

bb.o:                                             ; preds = %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit
  %i.ay = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !172 ; 2 uses
  %.not89.i = icmp eq i64 %.promoted.i, 0
  br i1 %.not89.i, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %.promoted87.i = load ptr, ptr %i.e, align 8, !alias.scope !172
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i, %.lr.ph.preheader.i
  %.sroa.4.0.i8691.i = phi i64 [ %.sroa.4.0.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i ], [ %.promoted.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.0.i8890.i = phi ptr [ %.sroa.0.0.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i ], [ %.promoted87.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8890.i, i64 1 ; 5 uses
  %i.ba = add i64 %.sroa.4.0.i8691.i, -1          ; 7 uses
  store ptr %i.az, ptr %i.e, align 8, !alias.scope !172, !captures !8
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !172
  %i.bb = load i8, ptr %.sroa.0.0.i8890.i, align 1, !noalias !172, !noundef !5 ; 5 uses
  %i.bc = lshr i8 %i.bb, 5
  switch i8 %i.bc, label %bb.ao [
    i8 4, label %bb.p
    i8 5, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit
    i8 6, label %bb.q
    i8 7, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph.i
  %i.bd = and i8 %i.bb, 16
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.p
  %.not.i.i106 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i106, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.thread.i, label %.lr.ph

.preheader.i.i:                                   ; preds = %.lr.ph
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.thread.i, label %.lr.ph

_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.thread.i: ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %scevgep.i.le.i = getelementptr i8, ptr %.sroa.0.0.i8890.i, i64 %.sroa.4.0.i8691.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %scevgep.i.le.i) ]
  br label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit.sink.split

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.1.i.i108 = phi ptr [ %i.bf, %.preheader.i.i ], [ %i.az, %.preheader.i.i.preheader ] ; 2 uses
  %.sroa.4.1.i.i107 = phi i64 [ %i.bg, %.preheader.i.i ], [ %i.ba, %.preheader.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i108, i64 1 ; 2 uses
  %i.bg = add nsw i64 %.sroa.4.1.i.i107, -1       ; 3 uses
  %i.bh = load i8, ptr %.sroa.0.1.i.i108, align 1, !alias.scope !173, !noalias !174, !noundef !5
  %i.bi = icmp sgt i8 %i.bh, -1
  br i1 %i.bi, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i, label %.preheader.i.i

_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i: ; preds = %.lr.ph, %bb.p
  %.sroa.4.0.i.i = phi i64 [ %i.ba, %bb.p ], [ %i.bg, %.lr.ph ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %i.az, %bb.p ], [ %i.bf, %.lr.ph ] ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.e, align 8, !alias.scope !172, !captures !8
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !alias.scope !172
  %.not.i8 = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %.not.i8, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit, label %.lr.ph.i

bb.q:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.bj = and i8 %i.bb, 31
  %i.bk = zext nneg i8 %i.bj to i64               ; 3 uses
  %i.bl = and i8 %i.bb, 32
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i, label %.preheader.preheader.i42.i

.preheader.preheader.i42.i:                       ; preds = %bb.q
  %scevgep.i43.i = getelementptr i8, ptr %.sroa.0.0.i8890.i, i64 %.sroa.4.0.i8691.i ; 2 uses
  %.not.i48.i112 = icmp eq i64 %i.ba, 0
  br i1 %.not.i48.i112, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i, label %.lr.ph116

.preheader.i44.i:                                 ; preds = %.lr.ph116
  %.not.i48.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i48.i, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader.preheader.i42.i, %.preheader.i44.i
  %.sroa.0.1.i47.i115 = phi ptr [ %i.bn, %.preheader.i44.i ], [ %i.az, %.preheader.preheader.i42.i ] ; 2 uses
  %.sroa.4.1.i46.i114 = phi i64 [ %i.bo, %.preheader.i44.i ], [ %i.ba, %.preheader.preheader.i42.i ]
  %.sroa.03.1.i45.i113 = phi i64 [ %i.bu, %.preheader.i44.i ], [ %i.bk, %.preheader.preheader.i42.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i47.i115, i64 1 ; 2 uses
  %i.bo = add nsw i64 %.sroa.4.1.i46.i114, -1     ; 3 uses
  %i.bp = shl i64 %.sroa.03.1.i45.i113, 7
  %i.bq = load i8, ptr %.sroa.0.1.i47.i115, align 1, !alias.scope !175, !noalias !176, !noundef !5 ; 2 uses
  %i.br = and i8 %i.bq, 127
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bp, 32
  %i.bu = add i64 %i.bt, %i.bs                    ; 3 uses
  %i.bv = icmp sgt i8 %i.bq, -1
  br i1 %i.bv, label %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i, label %.preheader.i44.i

_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i: ; preds = %.preheader.i44.i, %.lr.ph116, %.preheader.preheader.i42.i, %bb.q
  %.sroa.03.0.i49.i = phi i64 [ %i.bk, %bb.q ], [ %i.bk, %.preheader.preheader.i42.i ], [ %i.bu, %.lr.ph116 ], [ %i.bu, %.preheader.i44.i ] ; 3 uses
  %.sroa.4.0.i50.i = phi i64 [ %i.ba, %bb.q ], [ 0, %.preheader.preheader.i42.i ], [ %i.bo, %.lr.ph116 ], [ 0, %.preheader.i44.i ] ; 3 uses
  %.sroa.0.0.i51.i = phi ptr [ %i.az, %bb.q ], [ %scevgep.i43.i, %.preheader.preheader.i42.i ], [ %i.bn, %.lr.ph116 ], [ %scevgep.i43.i, %.preheader.i44.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i51.i) ]
  %i.bw = icmp ult i64 %.sroa.03.0.i49.i, 256
  %i.bx = and i64 %.sroa.03.0.i49.i, 255          ; 2 uses
  %i.by = lshr i64 %.sroa.03.0.i49.i, 8
  %i.bz = and i64 %i.by, 3                        ; 7 uses
  %i.ca = icmp eq i64 %i.bx, 0
  %spec.store.select.i = select i1 %i.ca, i64 256, i64 %i.bx ; 5 uses
  %.not40.i = icmp ugt i64 %spec.store.select.i, %.sroa.4.0.i50.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i51.i, i64 %spec.store.select.i
  %.sroa.030.0.i = select i1 %.not40.i, ptr inttoptr (i64 1 to ptr), ptr %i.cb ; 8 uses
  %.sroa.8.0.i = call i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %.sroa.4.0.i50.i) ; 6 uses
  %.sroa.331.0.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.i50.i, i64 %spec.store.select.i) ; 9 uses
  switch i64 %.sroa.8.0.i, label %.lr.ph.i.i [
    i64 0, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit.sink.split
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i ], [ %i.cj, %.lr.ph.i.i ] ; 18 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i51.i, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load i8, ptr %i.cc, align 1, !alias.scope !177, !noalias !178, !noundef !5 ; 2 uses
  %i.cd = icmp eq i8 %.val14.i.i, 30
  br i1 %i.cd, label %bb.s, label %bb.r

.lr.ph.i.i:                                       ; preds = %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i, %.lr.ph.i.i
  %.sroa.01.017.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ %.sroa.8.0.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i ] ; 2 uses
  %.sroa.05.016.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ 0, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i ] ; 2 uses
  %i.ce = lshr i64 %.sroa.01.017.i.i, 1           ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, %.sroa.05.016.i.i ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %.sroa.8.0.i
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i51.i, i64 %i.cf
  %.val12.i.i = load i8, ptr %i.ch, align 1, !alias.scope !177, !noalias !178, !noundef !5
  %i.ci = icmp ugt i8 %.val12.i.i, 30
  %i.cj = select i1 %i.ci, i64 %.sroa.05.016.i.i, i64 %i.cf, !unpredictable !5 ; 2 uses
  %i.ck = sub nuw nsw i64 %.sroa.01.017.i.i, %i.ce ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.cm = icmp ult i8 %.val14.i.i, 30
  %i.cn = zext i1 %i.cm to i64
  %i.co = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.cn
  %i.cp = icmp ule i64 %i.co, %.sroa.8.0.i
  call void @llvm.assume(i1 %i.cp)
  br label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit.sink.split

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.cq = icmp eq i64 %i.bz, 0
  %i.cr = or i1 %i.bw, %i.cq
  %i.cs = add nsw i64 %spec.store.select.i, -1    ; 36 uses
  br i1 %i.cr, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %.sroa.323.0.i.i = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %.sroa.331.0.i, i64 %i.cs) ; 2 uses
  %.sroa.9.0.i.i = call i64 @llvm.umin.i64(i64 %i.cs, i64 range(i64 0, -9223372036854775808) %.sroa.331.0.i) ; 2 uses
  %i.ct = icmp eq i64 %.sroa.05.0.lcssa.i.i, 0
  br i1 %i.ct, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = add nsw i64 %.sroa.05.0.lcssa.i.i, -1   ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %.sroa.9.0.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %i.cu
  %.sroa.015.0.i.i = select i1 %i.cv, ptr %i.cw, ptr @3
  %i.cx = load i8, ptr %.sroa.015.0.i.i, align 1, !noalias !172, !noundef !5
  %i.cy = zext i8 %i.cx to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.012.0.i.i = phi i64 [ %i.cy, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %i.cz = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i, %.sroa.9.0.i.i
  br i1 %i.cz, label %bb.w, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0.exit.i

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %.sroa.05.0.lcssa.i.i
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !179, !noalias !172, !noundef !5
  %i.dc = zext i8 %i.db to i64
  br label %_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0.exit.i

_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0.exit.i: ; preds = %bb.w, %bb.v
  %.sroa.017.0.i.i = phi i64 [ %i.dc, %bb.w ], [ %.sroa.323.0.i.i, %bb.v ] ; 3 uses
  %.not.i56.i = icmp ugt i64 %i.cs, %.sroa.331.0.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %i.cs
  %.sroa.022.0.i.i = select i1 %.not.i56.i, ptr inttoptr (i64 1 to ptr), ptr %i.dd
  %i.de = icmp samesign ult i64 %.sroa.017.0.i.i, %.sroa.012.0.i.i
  %.not28.i.i = icmp samesign ugt i64 %.sroa.017.0.i.i, %.sroa.323.0.i.i
  %or.cond.i.i = select i1 %i.de, i1 true, i1 %.not28.i.i ; 2 uses
  %i.df = sub nuw nsw i64 %.sroa.017.0.i.i, %.sroa.012.0.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.022.0.i.i, i64 %.sroa.012.0.i.i
  %.sroa.3.0.i.i = select i1 %or.cond.i.i, i64 0, i64 %i.df
  %.sroa.011.0.i.i = select i1 %or.cond.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.dg
  br label %bb.am

bb.x:                                             ; preds = %bb.s
  %i.dh = icmp eq i64 %.sroa.05.0.lcssa.i.i, 0
  %i.di = add nsw i64 %.sroa.05.0.lcssa.i.i, -1   ; 8 uses
  br i1 %i.dh, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.x
  %.not.us.i.i = icmp ugt i64 %i.cs, %.sroa.331.0.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %i.cs
  %.sroa.328.0.us.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.331.0.i, i64 %i.cs) ; 5 uses
  %.sroa.027.0.us.i.i = select i1 %.not.us.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.dj ; 3 uses
  %.sroa.9.1.us.i.i = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.331.0.i)
  %.not39.i.i = icmp eq i64 %.sroa.9.1.us.i.i, 0
  br i1 %.not39.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.split.us.i.i
  %i.dk = load i8, ptr %.sroa.030.0.i, align 1, !noalias !172, !noundef !5
  %i.dl = zext i8 %i.dk to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.split.us.i.i
  %.sroa.021.1.us.i.i = phi i64 [ %i.dl, %bb.y ], [ %.sroa.328.0.us.i.i, %.split.us.i.i ] ; 2 uses
  %i.dm = icmp eq i64 %i.bz, 0
  br i1 %i.dm, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, label %.split.us.i.i.1

.split.us.i.i.1:                                  ; preds = %bb.z
  %.not.us.i.i.1 = icmp ugt i64 %i.cs, %.sroa.328.0.us.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.027.0.us.i.i, i64 %i.cs
  %.sroa.328.0.us.i.i.1 = call i64 @llvm.usub.sat.i64(i64 %.sroa.328.0.us.i.i, i64 %i.cs) ; 5 uses
  %.sroa.027.0.us.i.i.1 = select i1 %.not.us.i.i.1, ptr inttoptr (i64 1 to ptr), ptr %i.dn ; 3 uses
  %.sroa.9.1.us.i.i.1 = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.328.0.us.i.i)
  %.not39.i.i.1 = icmp eq i64 %.sroa.9.1.us.i.i.1, 0
  br i1 %.not39.i.i.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.split.us.i.i.1
  %i.do = shl i64 %.sroa.021.1.us.i.i, 8
  %i.dp = load i8, ptr %.sroa.027.0.us.i.i, align 1, !noalias !172, !noundef !5
  %i.dq = zext i8 %i.dp to i64
  %i.dr = or disjoint i64 %i.do, %i.dq
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.split.us.i.i.1
  %.sroa.021.1.us.i.i.1 = phi i64 [ %i.dr, %bb.aa ], [ %.sroa.328.0.us.i.i.1, %.split.us.i.i.1 ] ; 2 uses
  %i.ds = icmp eq i64 %i.bz, 1
  br i1 %i.ds, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, label %.split.us.i.i.2

.split.us.i.i.2:                                  ; preds = %bb.ab
  %.not.us.i.i.2 = icmp ugt i64 %i.cs, %.sroa.328.0.us.i.i.1
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.027.0.us.i.i.1, i64 %i.cs
  %.sroa.328.0.us.i.i.2 = call i64 @llvm.usub.sat.i64(i64 %.sroa.328.0.us.i.i.1, i64 %i.cs) ; 5 uses
  %.sroa.027.0.us.i.i.2 = select i1 %.not.us.i.i.2, ptr inttoptr (i64 1 to ptr), ptr %i.dt ; 3 uses
  %.sroa.9.1.us.i.i.2 = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.328.0.us.i.i.1)
  %.not39.i.i.2 = icmp eq i64 %.sroa.9.1.us.i.i.2, 0
  br i1 %.not39.i.i.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.split.us.i.i.2
  %i.du = shl i64 %.sroa.021.1.us.i.i.1, 8
  %i.dv = load i8, ptr %.sroa.027.0.us.i.i.1, align 1, !noalias !172, !noundef !5
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.du, %i.dw
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.i.i.2
  %.sroa.021.1.us.i.i.2 = phi i64 [ %i.dx, %bb.ac ], [ %.sroa.328.0.us.i.i.2, %.split.us.i.i.2 ] ; 2 uses
  %i.dy = icmp eq i64 %i.bz, 2
  br i1 %i.dy, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, label %.split.us.i.i.3

.split.us.i.i.3:                                  ; preds = %bb.ad
  %.not.us.i.i.3 = icmp ugt i64 %i.cs, %.sroa.328.0.us.i.i.2
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.027.0.us.i.i.2, i64 %i.cs
  %.sroa.328.0.us.i.i.3 = call i64 @llvm.usub.sat.i64(i64 %.sroa.328.0.us.i.i.2, i64 %i.cs) ; 3 uses
  %.sroa.027.0.us.i.i.3 = select i1 %.not.us.i.i.3, ptr inttoptr (i64 1 to ptr), ptr %i.dz ; 2 uses
  %.sroa.9.1.us.i.i.3 = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.328.0.us.i.i.2)
  %.not39.i.i.3 = icmp eq i64 %.sroa.9.1.us.i.i.3, 0
  br i1 %.not39.i.i.3, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, label %bb.ae

bb.ae:                                            ; preds = %.split.us.i.i.3
  %i.ea = shl i64 %.sroa.021.1.us.i.i.2, 8
  %i.eb = load i8, ptr %.sroa.027.0.us.i.i.2, align 1, !noalias !172, !noundef !5
  %i.ec = zext i8 %i.eb to i64
  %i.ed = or disjoint i64 %i.ea, %i.ec
  br label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i

.split.i.i:                                       ; preds = %bb.x
  %.not.i60.i = icmp ugt i64 %i.cs, %.sroa.331.0.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %i.cs
  %.sroa.328.0.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.331.0.i, i64 %i.cs) ; 5 uses
  %.sroa.027.0.i.i = select i1 %.not.i60.i, ptr inttoptr (i64 1 to ptr), ptr %i.ee ; 4 uses
  %.sroa.9.1.i.i = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.331.0.i) ; 2 uses
  %i.ef = icmp ult i64 %i.di, %.sroa.9.1.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %i.di
  %.sroa.019.0.i.i = select i1 %i.ef, ptr %i.eg, ptr @3
  %i.eh = load i8, ptr %.sroa.019.0.i.i, align 1, !noalias !172, !noundef !5
  %i.ei = zext i8 %i.eh to i64                    ; 2 uses
  %i.ej = icmp ult i64 %.sroa.05.0.lcssa.i.i, %.sroa.9.1.i.i
  br i1 %i.ej, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.split.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 %.sroa.05.0.lcssa.i.i
  %i.el = load i8, ptr %i.ek, align 1, !noalias !172, !noundef !5
  %i.em = zext i8 %i.el to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.split.i.i
  %.sroa.021.1.i.i = phi i64 [ %i.em, %bb.af ], [ %.sroa.328.0.i.i, %.split.i.i ] ; 2 uses
  %i.en = icmp eq i64 %i.bz, 0
  br i1 %i.en, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, label %.split.i.i.1

.split.i.i.1:                                     ; preds = %bb.ag
  %.not.i60.i.1 = icmp ugt i64 %i.cs, %.sroa.328.0.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i, i64 %i.cs
  %.sroa.328.0.i.i.1 = call i64 @llvm.usub.sat.i64(i64 %.sroa.328.0.i.i, i64 %i.cs) ; 5 uses
  %.sroa.027.0.i.i.1 = select i1 %.not.i60.i.1, ptr inttoptr (i64 1 to ptr), ptr %i.eo ; 4 uses
  %.sroa.9.1.i.i.1 = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.328.0.i.i) ; 2 uses
  %i.ep = shl nuw nsw i64 %i.ei, 8
  %i.eq = icmp ult i64 %i.di, %.sroa.9.1.i.i.1
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i, i64 %i.di
  %.sroa.019.0.i.i.1 = select i1 %i.eq, ptr %i.er, ptr @3
  %i.es = load i8, ptr %.sroa.019.0.i.i.1, align 1, !noalias !172, !noundef !5
  %i.et = zext i8 %i.es to i64
  %i.eu = or disjoint i64 %i.ep, %i.et            ; 2 uses
  %i.ev = icmp ult i64 %.sroa.05.0.lcssa.i.i, %.sroa.9.1.i.i.1
  br i1 %i.ev, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.split.i.i.1
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i, i64 %.sroa.05.0.lcssa.i.i
  %i.ex = shl i64 %.sroa.021.1.i.i, 8
  %i.ey = load i8, ptr %i.ew, align 1, !noalias !172, !noundef !5
  %i.ez = zext i8 %i.ey to i64
  %i.fa = or disjoint i64 %i.ex, %i.ez
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.split.i.i.1
  %.sroa.021.1.i.i.1 = phi i64 [ %i.fa, %bb.ah ], [ %.sroa.328.0.i.i.1, %.split.i.i.1 ] ; 2 uses
  %i.fb = icmp eq i64 %i.bz, 1
  br i1 %i.fb, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, label %.split.i.i.2

.split.i.i.2:                                     ; preds = %bb.ai
  %.not.i60.i.2 = icmp ugt i64 %i.cs, %.sroa.328.0.i.i.1
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.1, i64 %i.cs
  %.sroa.328.0.i.i.2 = call i64 @llvm.usub.sat.i64(i64 %.sroa.328.0.i.i.1, i64 %i.cs) ; 5 uses
  %.sroa.027.0.i.i.2 = select i1 %.not.i60.i.2, ptr inttoptr (i64 1 to ptr), ptr %i.fc ; 4 uses
  %.sroa.9.1.i.i.2 = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.328.0.i.i.1) ; 2 uses
  %i.fd = shl nuw nsw i64 %i.eu, 8
  %i.fe = icmp ult i64 %i.di, %.sroa.9.1.i.i.2
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.1, i64 %i.di
  %.sroa.019.0.i.i.2 = select i1 %i.fe, ptr %i.ff, ptr @3
  %i.fg = load i8, ptr %.sroa.019.0.i.i.2, align 1, !noalias !172, !noundef !5
  %i.fh = zext i8 %i.fg to i64
  %i.fi = or disjoint i64 %i.fd, %i.fh            ; 2 uses
  %i.fj = icmp ult i64 %.sroa.05.0.lcssa.i.i, %.sroa.9.1.i.i.2
  br i1 %i.fj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.split.i.i.2
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.1, i64 %.sroa.05.0.lcssa.i.i
  %i.fl = shl i64 %.sroa.021.1.i.i.1, 8
  %i.fm = load i8, ptr %i.fk, align 1, !noalias !172, !noundef !5
  %i.fn = zext i8 %i.fm to i64
  %i.fo = or disjoint i64 %i.fl, %i.fn
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.split.i.i.2
  %.sroa.021.1.i.i.2 = phi i64 [ %i.fo, %bb.aj ], [ %.sroa.328.0.i.i.2, %.split.i.i.2 ] ; 2 uses
  %i.fp = icmp eq i64 %i.bz, 2
  br i1 %i.fp, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, label %.split.i.i.3

.split.i.i.3:                                     ; preds = %bb.ak
  %.not.i60.i.3 = icmp ugt i64 %i.cs, %.sroa.328.0.i.i.2
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.2, i64 %i.cs
  %.sroa.328.0.i.i.3 = call i64 @llvm.usub.sat.i64(i64 %.sroa.328.0.i.i.2, i64 %i.cs) ; 3 uses
  %.sroa.027.0.i.i.3 = select i1 %.not.i60.i.3, ptr inttoptr (i64 1 to ptr), ptr %i.fq ; 2 uses
  %.sroa.9.1.i.i.3 = call i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.328.0.i.i.2) ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fi, 8
  %i.fs = icmp ult i64 %i.di, %.sroa.9.1.i.i.3
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.2, i64 %i.di
  %.sroa.019.0.i.i.3 = select i1 %i.fs, ptr %i.ft, ptr @3
  %i.fu = load i8, ptr %.sroa.019.0.i.i.3, align 1, !noalias !172, !noundef !5
  %i.fv = zext i8 %i.fu to i64
  %i.fw = or disjoint i64 %i.fr, %i.fv            ; 2 uses
  %i.fx = icmp ult i64 %.sroa.05.0.lcssa.i.i, %.sroa.9.1.i.i.3
  br i1 %i.fx, label %bb.al, label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i

bb.al:                                            ; preds = %.split.i.i.3
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i.i.2, i64 %.sroa.05.0.lcssa.i.i
  %i.fz = shl i64 %.sroa.021.1.i.i.2, 8
  %i.ga = load i8, ptr %i.fy, align 1, !noalias !172, !noundef !5
  %i.gb = zext i8 %i.ga to i64
  %i.gc = or disjoint i64 %i.fz, %i.gb
  br label %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i

_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i: ; preds = %bb.ag, %bb.ai, %bb.ak, %bb.al, %.split.i.i.3, %bb.z, %bb.ab, %bb.ad, %bb.ae, %.split.us.i.i.3
  %.us-phi.i.i = phi i64 [ %.sroa.328.0.us.i.i.3, %.split.us.i.i.3 ], [ %.sroa.021.1.us.i.i, %bb.z ], [ %.sroa.021.1.us.i.i.1, %bb.ab ], [ %.sroa.021.1.us.i.i.2, %bb.ad ], [ %i.ed, %bb.ae ], [ %.sroa.021.1.i.i, %bb.ag ], [ %.sroa.021.1.i.i.1, %bb.ai ], [ %.sroa.021.1.i.i.2, %bb.ak ], [ %i.gc, %bb.al ], [ %.sroa.328.0.i.i.3, %.split.i.i.3 ] ; 3 uses
  %.us-phi35.i.i = phi i64 [ 0, %bb.z ], [ 0, %.split.us.i.i.3 ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.ei, %bb.ag ], [ %i.eu, %bb.ai ], [ %i.fi, %bb.ak ], [ %i.fw, %bb.al ], [ %i.fw, %.split.i.i.3 ] ; 3 uses
  %.us-phi36.i.i = phi i64 [ %.sroa.328.0.us.i.i.3, %.split.us.i.i.3 ], [ %.sroa.328.0.us.i.i, %bb.z ], [ %.sroa.328.0.us.i.i.1, %bb.ab ], [ %.sroa.328.0.us.i.i.2, %bb.ad ], [ %.sroa.328.0.us.i.i.3, %bb.ae ], [ %.sroa.328.0.i.i, %bb.ag ], [ %.sroa.328.0.i.i.1, %bb.ai ], [ %.sroa.328.0.i.i.2, %bb.ak ], [ %.sroa.328.0.i.i.3, %bb.al ], [ %.sroa.328.0.i.i.3, %.split.i.i.3 ]
  %.us-phi37.i.i = phi ptr [ %.sroa.027.0.us.i.i.3, %.split.us.i.i.3 ], [ %.sroa.027.0.us.i.i, %bb.z ], [ %.sroa.027.0.us.i.i.1, %bb.ab ], [ %.sroa.027.0.us.i.i.2, %bb.ad ], [ %.sroa.027.0.us.i.i.3, %bb.ae ], [ %.sroa.027.0.i.i, %bb.ag ], [ %.sroa.027.0.i.i.1, %bb.ai ], [ %.sroa.027.0.i.i.2, %bb.ak ], [ %.sroa.027.0.i.i.3, %bb.al ], [ %.sroa.027.0.i.i.3, %.split.i.i.3 ]
  %i.gd = icmp ult i64 %.us-phi.i.i, %.us-phi35.i.i
  %.not32.i.i = icmp ugt i64 %.us-phi.i.i, %.us-phi36.i.i
  %or.cond.i61.i = select i1 %i.gd, i1 true, i1 %.not32.i.i ; 2 uses
  %i.ge = sub nuw i64 %.us-phi.i.i, %.us-phi35.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.us-phi37.i.i, i64 %.us-phi35.i.i
  %.sroa.3.0.i62.i = select i1 %or.cond.i61.i, i64 0, i64 %i.ge
  %.sroa.013.0.i.i = select i1 %or.cond.i61.i, ptr inttoptr (i64 1 to ptr), ptr %i.gf
  br label %bb.am

bb.am:                                            ; preds = %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i, %_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0.exit.i
  %.sroa.011.0.i.pn.i = phi ptr [ %.sroa.011.0.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0.exit.i ], [ %.sroa.013.0.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i ] ; 2 uses
  %.sroa.3.0.i.pn.i = phi i64 [ %.sroa.3.0.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6reader13get_branch_w0.exit.i ], [ %.sroa.3.0.i62.i, %_RNvNtCsl2c274gG30Y_8zerotrie6reader10get_branch.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.0.i.pn.i) ]
  store ptr %.sroa.011.0.i.pn.i, ptr %i.e, align 8, !alias.scope !172, !captures !8
  store i64 %.sroa.3.0.i.pn.i, ptr %i.f, align 8, !alias.scope !172
  %i.gg = icmp ult i64 %.sroa.05.0.lcssa.i.i, %.sroa.8.0.i
  br i1 %i.gg, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %.sroa.8.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !172
  unreachable

bb.ao:                                            ; preds = %.lr.ph.i
  %i.gh = icmp eq i8 %i.bb, 30
  br i1 %i.gh, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit.sink.split

_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit.sink.split: ; preds = %bb.ao, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i, %bb.r, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.thread.i
  %scevgep.i.le.i.sink = phi ptr [ %scevgep.i.le.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.thread.i ], [ inttoptr (i64 1 to ptr), %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta2.exit.i ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.ao ]
  store ptr %scevgep.i.le.i.sink, ptr %i.e, align 8, !alias.scope !172
  store i64 0, ptr %i.f, align 8, !alias.scope !172
  br label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit

_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit: ; preds = %.lr.ph.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i, %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit.sink.split, %bb.am, %bb.o, %bb.ao
  %i.gi = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef %i.aw)
  br i1 %i.gi, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit
  br i1 %3, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.ap
  %i.gj = call { i64, i64 } @_RNvNtCsl2c274gG30Y_8zerotrie6reader10take_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %.split.us, label %bb.ap

bb.ap:                                            ; preds = %.preheader.split.us
  %i.gm = call i24 @_RNvMs2_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursor5probe(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 0)
  %i.gn = trunc i24 %i.gm to i1
  br i1 %i.gn, label %.preheader.split.us, label %.loopexit

bb.aq:                                            ; preds = %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit
  %i.go = call { i64, i64 } @_RNvNtCsl2c274gG30Y_8zerotrie6reader10take_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) ; 2 uses
  %i.gp = extractvalue { i64, i64 } %i.go, 0
  %i.gq = extractvalue { i64, i64 } %i.go, 1
  br label %.loopexit

.preheader.split:                                 ; preds = %.preheader
  %i.gr = call { i64, i64 } @_RNvNtCsl2c274gG30Y_8zerotrie6reader10take_value(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) ; 2 uses
  %i.gs = extractvalue { i64, i64 } %i.gr, 0
  %i.gt = trunc nuw i64 %i.gs to i1
  br i1 %i.gt, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %.preheader.split.us, %.preheader.split
  %.us-phi = phi { i64, i64 } [ %i.gr, %.preheader.split ], [ %i.gj, %.preheader.split.us ]
  %i.gu = extractvalue { i64, i64 } %.us-phi, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ap, %bb.aq, %.split.us, %.preheader.split, %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit
  %.sroa.6.1 = phi i64 [ undef, %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit ], [ %i.gq, %bb.aq ], [ %i.gu, %.split.us ], [ undef, %.preheader.split ], [ undef, %bb.ap ]
  %.sroa.0.1 = phi i64 [ 0, %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit ], [ %i.gp, %bb.aq ], [ 1, %.split.us ], [ 0, %.preheader.split ], [ 0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.gv = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.gw = insertvalue { i64, i64 } %i.gv, i64 %.sroa.6.1, 1
  ret { i64, i64 } %i.gw
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs1GZEXNOm2AR_12icu_provider5errorNtB2_9DataErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !5, !nonnull !5
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 16) #11
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !10, !alias.scope !183, !noalias !184, !noundef !5
  %i.n = icmp eq i8 %i.m, 6
  br i1 %i.n, label %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXNvNtCs1GZEXNOm2AR_12icu_provider5error1__NtB4_13DataErrorKindNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @5, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.o, label %bb.e, label %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread

_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !6, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.t = load i64, ptr %i.s, align 1
  store i64 %i.t, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXst_NtCs1GZEXNOm2AR_12icu_provider11marker_fullNtB5_12DataMarkerIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.u = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @6, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread
  %i.v = load ptr, ptr %0, align 8, !noundef !5   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, %bb.f, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ true, %_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit ], [ %i.z, %bb.f ], [ true, %bb.c ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  store ptr %i.v, ptr %i.b, align 8, !captures !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs1GZEXNOm2AR_12icu_provider, ptr %.sroa.450.0..sroa_idx, align 8
  %i.z = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @5, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvNtCs1GZEXNOm2AR_12icu_provider5error1__NtB4_13DataErrorKindNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i8, ptr %0, align 8, !range !10, !noundef !5
  switch i8 %i.e, label %default.unreachable91 [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.h
    i8 6, label %bb.i
  ]

default.unreachable91:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.f, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs1GZEXNOm2AR_12icu_provider11marker_full14DataMarkerInfoNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !9, !noundef !5
  %i.j = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @10, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRReNtB6_7Display3fmtCs1GZEXNOm2AR_12icu_provider, ptr %.sroa.43.0..sroa_idx, align 8
  %i.l = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !9, !noundef !5
  %i.o = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !9, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !5, !nonnull !5
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 23) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.u, %bb.d ], [ %i.o, %bb.c ], [ %i.aa, %bb.f ], [ %i.as, %bb.i ], [ %i.ag, %bb.g ], [ %i.am, %bb.h ], [ %i.j, %bb.b ]
  ret i1 %.sroa.0.0.in

bb.f:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !9, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !5, !nonnull !5
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 27) #11
  br label %bb.e

bb.g:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
end_hunk_0
