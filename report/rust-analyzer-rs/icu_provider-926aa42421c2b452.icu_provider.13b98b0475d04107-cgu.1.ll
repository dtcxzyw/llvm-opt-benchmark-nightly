Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_provider-926aa42421c2b452.icu_provider.13b98b0475d04107-cgu.1?download=true
inline.NumInlined: 77
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7privateNtB3_7Private19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB2a_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1w_9FormatterE0ECs1GZEXNOm2AR_12icu_provider:bb.a
.lr.ph:                                           ; preds = %._crit_edge, %bb.c
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.sroa.04.0, %._crit_edge ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %.val.i.i.i = load i64, ptr %i.h, align 1, !alias.scope !62, !noalias !67
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i, i1 false)
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = lshr i32 %i.k, 3
  %i.m = sub nuw nsw i32 8, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = load i8, ptr %.val.i.i.i.i.pre, align 1, !range !20, !noalias !71, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.q = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val11, i32 noundef 45), !noalias !71
  br i1 %i.q, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3T_9FormatterE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2C_9FormatterE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i

bb.e:                                             ; preds = %.lr.ph
  store i8 0, ptr %.val.i.i.i.i.pre, align 1, !noalias !71
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2C_9FormatterE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2C_9FormatterE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.r = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.h, i64 noundef range(i64 0, 9) %i.n), !noalias !79
  br i1 %i.r, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3T_9FormatterE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.s = load i8, ptr %.val.i.i.i.i.pre, align 1, !range !20, !noalias !80, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.u = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val11, i32 noundef 45), !noalias !80
  br i1 %i.u, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3T_9FormatterE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %.val.i.i.i.i.pre, align 1, !noalias !80
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.g, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.v = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
  br i1 %i.v, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3T_9FormatterE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %._crit_edge

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3T_9FormatterE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit: ; preds = %bb.c, %bb.d, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2C_9FormatterE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i, %._crit_edge, %bb.g, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit, %bb.a
  %.sroa.0.0 = phi i1 [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit ], [ false, %bb.a ], [ true, %bb.g ], [ false, %._crit_edge ], [ true, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2C_9FormatterE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7privateNtB3_7Private19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB2a_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.a, -1                     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !4
  %.not7 = icmp eq i8 %i.c, -1                    ; 4 uses
  %i.d = select i1 %.not, i1 %.not7, i1 false
  br i1 %i.d, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.pre = load ptr, ptr %1, align 8   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load ptr, ptr %i.e, align 8           ; 8 uses
  br i1 %2, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit
  %.10 = select i1 %.not7, ptr inttoptr (i64 1 to ptr), ptr %i.b
  %.sroa.04.0 = select i1 %.not, ptr %.10, ptr %0 ; 2 uses
  %i.f = select i1 %.not7, i64 0, i64 8
  %.idx = select i1 %.not, i64 %i.f, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 %.idx
  %.not.not.not.i.not.not14 = select i1 %.not, i1 %.not7, i1 false
  br i1 %.not.not.not.i.not.not14, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %.lr.ph

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i
  %.not.not.not.i.not.not = icmp eq ptr %i.i, %i.g
  br i1 %.not.not.not.i.not.not, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.c
  %i.h = phi ptr [ %i.i, %bb.c ], [ %.sroa.04.0, %._crit_edge ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.val.i.i.i = load i64, ptr %i.h, align 1, !alias.scope !86, !noalias !91
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i.i.i, i1 false)
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = lshr i32 %i.k, 3
  %i.m = sub nuw nsw i32 8, %i.l
  %i.n = zext nneg i32 %i.m to i64
  %i.o = load i8, ptr %.val.i.i.i.i.pre, align 1, !range !20, !noalias !95, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.q = tail call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val11, i32 noundef 45), !noalias !95
  br i1 %i.q, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i

bb.e:                                             ; preds = %.lr.ph
  store i8 0, ptr %.val.i.i.i.i.pre, align 1, !noalias !95
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMB14_NtB14_7Private19for_each_subtag_strB2A_NCINvXsd_NtB18_4dataNtB3O_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB2a_B2d_QB3F_E0E0Cs1GZEXNOm2AR_12icu_provider.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.r = tail call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(8) %i.h, i64 noundef range(i64 0, 9) %i.n), !noalias !103
  br i1 %i.r, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.s = load i8, ptr %.val.i.i.i.i.pre, align 1, !range !20, !noalias !104, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.u = tail call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.val11, i32 noundef 45), !noalias !104
  br i1 %i.u, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7private5other6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB20_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENCINvMBN_NtBN_7Private19for_each_subtag_strB3R_NCINvXsd_NtBR_4dataNtB53_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0E0NCINvNvB1U_12try_for_each4callB3r_B3u_QB4U_E0E0B3u_ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %.val.i.i.i.i.pre, align 1, !noalias !104
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
  %.val23 = load i24, ptr %0, align 1, !alias.scope !107
  %.sroa.0.0.insert.ext.i.i = zext i24 %.val23 to i32
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i, i1 false)
  %i.d = lshr i32 %i.c, 3
  %i.e = sub nuw nsw i32 4, %i.d
  %i.f = zext nneg i32 %i.e to i64
  %.val20 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val21 = load ptr, ptr %i.g, align 8           ; 10 uses
  %i.h = load i8, ptr %.val20, align 1, !range !20, !noalias !110, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  %i.j = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !110
  br i1 %i.j, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %.val20, align 1, !noalias !110
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
  %.val24 = load i32, ptr %i.l, align 1, !alias.scope !113
  %i.n = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val24, i1 false)
  %i.o = lshr i32 %i.n, 3
  %i.p = sub nuw nsw i32 4, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = load i8, ptr %.val20, align 1, !range !20, !noalias !116, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !116
  br i1 %i.t, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %.val20, align 1, !noalias !116
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26: ; preds = %bb.f, %bb.g
  %i.u = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.q)
  br i1 %i.u, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !range !4, !noundef !5
  %.not11 = icmp eq i8 %i.w, -1
  br i1 %.not11, label %bb.l, label %bb.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split: ; preds = %bb.q, %bb.p, %2
  %.sroa.0.0.ph = phi i1 [ false, %bb.p ], [ false, %2 ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread: ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split, %bb.n, %bb.j, %bb.f, %bb.b, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit
  %.sroa.0.0 = phi i1 [ true, %bb.f ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit26 ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29 ], [ true, %bb.n ], [ true, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31 ], [ true, %bb.j ], [ true, %bb.b ], [ %.sroa.0.0.ph, %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split ]
  ret i1 %.sroa.0.0

bb.i:                                             ; preds = %bb.h
  %.val22 = load i24, ptr %i.v, align 1, !alias.scope !107
  %.sroa.0.0.insert.ext.i.i27 = zext i24 %.val22 to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i27, i1 false)
  %i.y = lshr i32 %i.x, 3
  %i.z = sub nuw nsw i32 4, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = load i8, ptr %.val20, align 1, !range !20, !noalias !119, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !119
  br i1 %i.ad, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit29

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %.val20, align 1, !noalias !119
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
  %.val = load i64, ptr %i.af, align 1, !alias.scope !122
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val, i1 false)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = sub nuw nsw i32 8, %i.aj
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = load i8, ptr %.val20, align 1, !range !20, !noalias !125, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, i32 noundef 45), !noalias !125
  br i1 %i.ao, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr %.val20, align 1, !noalias !125
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31: ; preds = %bb.n, %bb.o
  %i.ap = tail call noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.al)
  br i1 %i.ap, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread, label %bb.p

bb.p:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit31, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10extensions(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %0)
  %i.aq = load i8, ptr %i.b, align 8, !range !128, !noundef !5
  %.not13 = icmp eq i8 %i.aq, -2
  br i1 %.not13, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  %i.ar = call noundef zeroext i1 @_RINvMs_NtCs96xUavsWfLi_15icu_locale_core10extensionsNtB5_10Extensions19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB26_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1s_9FormatterE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ar, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split, label %2

2:                                                ; preds = %bb.q
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCshzWfHUSfYae_4core3fmt9FormatterE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs0_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_9DataError8with_req(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 50)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(11) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #1 {
_RNvXs8_NtCs1GZEXNOm2AR_12icu_provider5errorNtB5_13DataErrorKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !20, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 49
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !range !20
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
  %i.e = alloca [16 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store i64 %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.i, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %.val23.i = load i24, ptr %i.h, align 1, !alias.scope !132, !noalias !135
  %.sroa.0.0.insert.ext.i.i.i = zext i24 %.val23.i to i32
  %i.j = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i.i, i1 false)
  %i.k = lshr i32 %i.j, 3
  %i.l = sub nuw nsw i32 4, %i.k
  %i.m = zext nneg i32 %i.l to i64
  store i8 0, ptr %i.d, align 1, !noalias !137
  %i.n = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %i.h, i64 noundef %i.m), !noalias !135
  br i1 %i.n, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.a

bb.a:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !range !4, !alias.scope !129, !noalias !135, !noundef !5
  %.not.i = icmp eq i8 %i.p, -1
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val24.i = load i32, ptr %i.o, align 1, !alias.scope !140, !noalias !135
  %i.q = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.val24.i, i1 false)
  %i.r = lshr i32 %i.q, 3
  %i.s = sub nuw nsw i32 4, %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = load i8, ptr %i.d, align 1, !range !20, !noalias !143, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 45), !noalias !143
  br i1 %i.w, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %i.d, align 1, !noalias !143
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i: ; preds = %bb.d, %bb.c
  %i.x = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.t), !noalias !135
  br i1 %i.x, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.e

bb.e:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit26.i, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 7 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !range !4, !alias.scope !129, !noalias !135, !noundef !5
  %.not11.i = icmp eq i8 %i.z, -1
  br i1 %.not11.i, label %bb.i, label %bb.f

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146
  br label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit

bb.f:                                             ; preds = %bb.e
  %.val22.i = load i24, ptr %i.y, align 1, !alias.scope !132, !noalias !135
  %.sroa.0.0.insert.ext.i.i27.i = zext i24 %.val22.i to i32
  %i.aa = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.0.0.insert.ext.i.i27.i, i1 false)
  %i.ab = lshr i32 %i.aa, 3
  %i.ac = sub nuw nsw i32 4, %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = load i8, ptr %i.d, align 1, !range !20, !noalias !147, !noundef !5
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 45), !noalias !147
  br i1 %i.ag, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.d, align 1, !noalias !147
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i: ; preds = %bb.h, %bb.g
  %i.ah = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.ad), !noalias !135
  br i1 %i.ah, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.i

bb.i:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit29.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 10 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !4, !alias.scope !129, !noalias !135, !noundef !5
  %.not12.i = icmp eq i8 %i.aj, -1
  br i1 %.not12.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load i64, ptr %i.ai, align 1, !alias.scope !150, !noalias !135
  %i.ak = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.val.i, i1 false)
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 3
  %i.an = sub nuw nsw i32 8, %i.am
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load i8, ptr %i.d, align 1, !range !20, !noalias !153, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 45), !noalias !153
  br i1 %i.ar, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.d, align 1, !noalias !153
  br label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i

_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i: ; preds = %bb.l, %bb.k
  %i.as = call noundef zeroext i1 @_RNvXs4_NtCsl2c274gG30Y_8zerotrie6cursorNtB5_25ZeroTrieSimpleAsciiCursorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ao), !noalias !135
  br i1 %i.as, label %_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider.exit, label %bb.m

bb.m:                                             ; preds = %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit31.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146
  call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10extensions(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %i.h), !noalias !135
  %i.at = load i8, ptr %i.b, align 8, !range !128, !noalias !146, !noundef !5
  %.not13.i = icmp eq i8 %i.at, -2
  br i1 %.not13.i, label %_RNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB8_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0Cs1GZEXNOm2AR_12icu_provider.exit.thread.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !146
  %i.au = call noundef zeroext i1 @_RINvMs_NtCs96xUavsWfLi_15icu_locale_core10extensionsNtB5_10Extensions19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB7_4dataNtB26_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtCsl2c274gG30Y_8zerotrie6cursor25ZeroTrieSimpleAsciiCursorE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
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
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !156 ; 2 uses
  %.not89.i = icmp eq i64 %.promoted.i, 0
  br i1 %.not89.i, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %.promoted87.i = load ptr, ptr %i.e, align 8, !alias.scope !156
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i, %.lr.ph.preheader.i
  %.sroa.4.0.i8691.i = phi i64 [ %.sroa.4.0.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i ], [ %.promoted.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.0.i8890.i = phi ptr [ %.sroa.0.0.i.i, %_RNvNtCsl2c274gG30Y_8zerotrie6varint17read_varint_meta3.exit.i ], [ %.promoted87.i, %.lr.ph.preheader.i ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8890.i, i64 1 ; 6 uses
  %i.ba = add i64 %.sroa.4.0.i8691.i, -1          ; 8 uses
  %i.bb = load i8, ptr %.sroa.0.0.i8890.i, align 1, !noalias !156, !noundef !5 ; 5 uses
  %i.bc = lshr i8 %i.bb, 5
  switch i8 %i.bc, label %bb.ao [
    i8 4, label %bb.p
    i8 5, label %_RINvNtCsl2c274gG30Y_8zerotrie6reader18step_parameterizedINtNtB4_8zerotrie19ZeroTrieSimpleAsciiShEECs1GZEXNOm2AR_12icu_provider.exit.sink.split
    i8 6, label %bb.q
    i8 7, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph.i
end_hunk_0
