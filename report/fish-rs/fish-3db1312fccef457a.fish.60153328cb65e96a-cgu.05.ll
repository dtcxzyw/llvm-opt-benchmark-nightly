Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.05?download=true
inline.NumInlined: 1761
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvXsu_NtCs3oUPovFnLWP_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB28_11Utf32StringINtNtBS_7collect6ExtendcE6extendBw_E0E0ECs8frGy5WneL6_4fish:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.i.i
  %i.h = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.r, %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  %i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.j, %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp ult i64 %i.i, 3
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4, !range !13, !alias.scope !1954, !noalias !1959, !noundef !5
  %i.n = load i64, ptr %1, align 8, !range !12, !alias.scope !1958, !noalias !1959, !noundef !5
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #32, !noalias !1954
  br label %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i

_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.g, align 8, !alias.scope !1958, !noalias !1959, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.h
  store i32 %i.m, ptr %i.q, align 4, !noalias !1960
  %i.r = add i64 %i.h, 1                          ; 2 uses
  store i64 %i.r, ptr %i.f, align 8, !alias.scope !1958, !noalias !1959
  %.not.i.i = icmp eq i64 %i.j, %i.d
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB13_7collect6ExtendcE6extendNtNtBa_4char11ToUppercaseE0E0ECs8frGy5WneL6_4fish.exit, label %bb.b

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2j_11Utf32StringINtNtB13_7collect6ExtendcE6extendNtNtBa_4char11ToUppercaseE0E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitcEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuituE10wrap_mut_2ucNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB4s_11Utf32StringINtNtB3s_7collect6ExtendcE6extendNtNtBe_4char11ToUppercaseE0E0E0B2B_E0Cs8frGy5WneL6_4fish.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsu_NtCs3oUPovFnLWP_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduQNCINvNvBO_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB29_11Utf32StringINtNtBS_7collect6ExtendcE6extendINtNtNtBU_8adapters7flatten7FlatMapINtNtNtB8_5slice4iter4ItercEBw_NCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB4M_6Reader23handle_readline_commands1_0EE0E0EB4Q_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1970
  store ptr %i.c, ptr %i.a, align 8, !noalias !1970
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 3, ptr %i.d, align 8, !noalias !1970
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %1, ptr %i.e, align 8, !noalias !1970
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %i.f = load i64, ptr %i.b, align 8, !alias.scope !1973, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1973, !noundef !5 ; 3 uses
  %i.i = icmp ule i64 %i.f, %i.h
  call void @llvm.assume(i1 %i.i)
  %.not1.i.i = icmp eq i64 %i.f, %i.h
  br i1 %.not1.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2k_11Utf32StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtBa_5slice4iter4ItercENtNtBa_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5l_6Reader23handle_readline_commands1_0EE0E0EB5p_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.j = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.k, ptr %i.b, align 8, !alias.scope !1973
  call void @llvm.experimental.noalias.scope.decl(metadata !1974)
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !1975, !noalias !1970, !nonnull !5, !align !31, !noundef !5
  %i.m = load i64, ptr %i.d, align 8, !alias.scope !1975, !noalias !1970, !noundef !5
  %i.n = icmp ult i64 %i.j, %i.m
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !range !13, !noalias !1976, !noundef !5
  call void @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1Z_11Utf32StringINtNtBZ_7collect6ExtendcE6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4ItercENtNtBb_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB4Z_6Reader23handle_readline_commands1_0EE0E0INtB7_5FnMutTucEE8call_mutB53_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef range(i32 0, 1114112) %i.p)
  %.not.i.i = icmp eq i64 %i.k, %i.h
  br i1 %.not.i.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2k_11Utf32StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtBa_5slice4iter4ItercENtNtBa_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5l_6Reader23handle_readline_commands1_0EE0E0EB5p_.exit, label %.lr.ph.i.i

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoItercKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvBZ_8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB2k_11Utf32StringINtNtB13_7collect6ExtendcE6extendINtNtNtB15_8adapters7flatten7FlatMapINtNtNtBa_5slice4iter4ItercENtNtBa_4char11ToUppercaseNCNvMs9_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5l_6Reader23handle_readline_commands1_0EE0E0EB5p_.exit: ; preds = %.lr.ph.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYNtNtCs3oUPovFnLWP_4core4char11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator5eq_byINtNtB7_6option6OptioncENCINvYB3_BI_2eqB1t_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i32 noundef range(i32 -1, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.b = sub nuw i64 %.sroa.5.0.copyload, %.sroa.0.0.copyload
  %i.c = icmp ne i32 %1, -1                       ; 2 uses
  %i.d = zext i1 %i.c to i64
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.noexc.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtBb_4char11ToUppercaseINtB5_10SpecIterEqINtNtBb_6option8IntoItercEE12spec_iter_eqNCINvNvNtB5_8Iterator5eq_by7compareccNCINvYBP_B2i_2eqINtB1z_6OptioncEE0E0ECs8frGy5WneL6_4fish.exit

.noexc.i:                                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1979
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false)
  %i.f = call noundef i32 @_RNvXsu_NtCs3oUPovFnLWP_4core4charNtB5_11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %.not.peel.i.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.peel.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc.i
  %.not1.i.i.peel.i.i.i.i = icmp eq i32 %i.f, %1
  br i1 %.not1.i.i.peel.i.i.i.i, label %.peel.next.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i

.peel.next.i.i.i.i:                               ; preds = %bb.b
  %i.g = call noundef i32 @_RNvXsu_NtCs3oUPovFnLWP_4core4charNtB5_11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  %.not.i.i.i.i = icmp eq i32 %i.g, -1
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i

bb.c:                                             ; preds = %.noexc.i
  br i1 %i.c, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.c, %.peel.next.i.i.i.i
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i: ; preds = %.thread.i.i, %bb.c, %.peel.next.i.i.i.i, %bb.b
  %i.h = phi i1 [ false, %bb.c ], [ false, %.peel.next.i.i.i.i ], [ true, %.thread.i.i ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1979
  br label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtBb_4char11ToUppercaseINtB5_10SpecIterEqINtNtBb_6option8IntoItercEE12spec_iter_eqNCINvNvNtB5_8Iterator5eq_by7compareccNCINvYBP_B2i_2eqINtB1z_6OptioncEE0E0ECs8frGy5WneL6_4fish.exit

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorNtNtBb_4char11ToUppercaseINtB5_10SpecIterEqINtNtBb_6option8IntoItercEE12spec_iter_eqNCINvNvNtB5_8Iterator5eq_by7compareccNCINvYBP_B2i_2eqINtB1z_6OptioncEE0E0ECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i, %bb.a
  %.sroa.0.1.i = phi i1 [ %i.h, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator12iter_compareNtNtB8_4char11ToUppercaseINtNtB8_6option8IntoItercENCINvNvNtB2_8Iterator5eq_by7compareccNCINvYB10_B1W_2eqINtB1s_6OptioncEE0E0uECs8frGy5WneL6_4fish.exit.i ], [ false, %bb.a ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %.not.i19 = icmp eq ptr %0, %1
  br i1 %.not.i19, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
  %.sroa.0.022 = phi i64 [ %i.eh, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ], [ 0, %bb.a ]
  %.sroa.6.021 = phi i16 [ %.sroa.51.1.i.i, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ], [ 0, %bb.a ] ; 5 uses
  %.sroa.2.020 = phi ptr [ %.sroa.2.3.ph, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -1 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !noalias !1986, !noundef !5 ; 3 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i: ; preds = %.lr.ph
  %i.d = icmp ne ptr %0, %i.a
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -2 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !noalias !1986, !noundef !5 ; 3 uses
  %i.g = and i8 %i.f, 31
  %i.h = zext nneg i8 %i.g to i32
  %i.i = icmp slt i8 %i.f, -64
  br i1 %i.i, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = zext nneg i8 %i.b to i32
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i
  %i.k = icmp ne ptr %0, %i.e
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -3 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !noalias !1986, !noundef !5 ; 3 uses
  %i.n = and i8 %i.m, 15
  %i.o = zext nneg i8 %i.n to i32
  %i.p = icmp slt i8 %i.m, -64
  br i1 %i.p, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i
  %.sroa.2.1 = phi ptr [ %.sroa.2.2, %bb.d ], [ %i.e, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i ]
  %.sroa.010.0.i.i = phi i32 [ %i.ag, %bb.d ], [ %i.h, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i ]
  %i.q = shl nuw nsw i32 %.sroa.010.0.i.i, 6
  %i.r = and i8 %i.b, 63
  %i.s = zext nneg i8 %i.r to i32
  %i.t = or disjoint i32 %i.q, %i.s
  br label %bb.e

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i
  %i.u = icmp ne ptr %0, %i.l
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.020, i64 -4 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !noalias !1986, !noundef !5
  %i.x = and i8 %i.w, 7
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 6
  %i.aa = and i8 %i.m, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i
  %.sroa.2.2 = phi ptr [ %i.v, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i ], [ %i.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i ]
  %.sroa.010.1.i.i = phi i32 [ %i.ac, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i ], [ %i.o, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.ae = and i8 %i.f, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.2.3.ph = phi ptr [ %.sroa.2.1, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %spec.select.i.ph = phi i32 [ %i.t, %bb.c ], [ %i.j, %bb.b ] ; 81 uses
  %.not.i.i = icmp sgt i16 %.sroa.6.021, -1
  br i1 %.not.i.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = lshr i32 %spec.select.i.ph, 10
  switch i32 %i.ah, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i [
    i32 0, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 12, label %bb.j
    i32 124, label %bb.k
    i32 125, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.h:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.i:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.j:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.k:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

bb.l:                                             ; preds = %bb.f
  br label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.01.0.i.i.i = phi i64 [ 6, %bb.l ], [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 0, %bb.f ]
  %i.ai = lshr i32 %spec.select.i.ph, 3
  %i.aj = and i32 %i.ai, 127
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [128 x i8], ptr @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables25EMOJI_PRESENTATION_LEAVES, i64 %.sroa.01.0.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !noundef !5
  %i.ao = trunc i32 %spec.select.i.ph to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = lshr i8 %i.an, %i.ap
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i

bb.m:                                             ; preds = %bb.o, %bb.e
  %.sroa.0.0.i.i = phi i16 [ %i.aw, %bb.o ], [ %.sroa.6.021, %bb.e ] ; 13 uses
  %i.as = icmp samesign ult i32 %spec.select.i.ph, 161
  br i1 %i.as, label %bb.r, label %bb.q

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i: ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i, %bb.f
  %i.at = and i16 %.sroa.6.021, 8192
  %.not81.i.i = icmp eq i16 %i.at, 0
  br i1 %.not81.i.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.i.i
  %i.au = and i16 %.sroa.6.021, -20480
  %i.av = icmp eq i16 %i.au, -28672
  %..i.i = select i1 %i.av, i8 0, i8 2
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.o:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i
  %i.aw = and i16 %.sroa.6.021, 32767
  br label %bb.m

bb.p:                                             ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables29starts_emoji_presentation_seq.exit.thread.i.i
  %i.ax = icmp samesign ult i32 %spec.select.i.ph, 161
  br i1 %i.ax, label %bb.cp, label %.thread121.i.i

bb.q:                                             ; preds = %bb.m
  %.not82.i.i = icmp eq i16 %.sroa.0.0.i.i, 0
  br i1 %.not82.i.i, label %.thread121.i.i, label %bb.s

bb.r:                                             ; preds = %bb.m
  %trunc.i.i = trunc nuw i32 %spec.select.i.ph to i8
  switch i8 %trunc.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit [
    i8 10, label %bb.cn
    i8 13, label %bb.co
  ]

.thread121.i.i:                                   ; preds = %bb.ci, %bb.cm, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %.thread137.i.i, %bb.cb, %bb.bn, %bb.ax, %bb.ax, %bb.ax, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.q, %bb.p
  %spec.select.i17 = phi i32 [ %spec.select.i.ph, %bb.cm ], [ %spec.select.i.ph, %bb.ci ], [ %spec.select.i.ph, %bb.ch ], [ 127988, %bb.cg ], [ %spec.select.i.ph, %bb.cf ], [ %spec.select.i.ph, %bb.ce ], [ %spec.select.i.ph, %bb.cd ], [ %spec.select.i.ph, %.thread137.i.i ], [ %spec.select.i.ph, %bb.cb ], [ %spec.select.i.ph, %bb.bn ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ 11647, %bb.ax ], [ %spec.select.i.ph, %bb.au ], [ %spec.select.i.ph, %bb.at ], [ %spec.select.i.ph, %bb.as ], [ %spec.select.i.ph, %bb.ar ], [ %spec.select.i.ph, %bb.q ], [ %spec.select.i.ph, %bb.p ]
  %i.ay = tail call fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i17) #35 ; 2 uses
  %i.az = extractvalue { i8, i16 } %i.ay, 0
  %i.ba = extractvalue { i8, i16 } %i.ay, 1
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.s:                                             ; preds = %bb.q
  switch i32 %spec.select.i.ph, label %bb.w [
    i32 65039, label %bb.t
    i32 65025, label %bb.u
    i32 65038, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.bb = and i16 %.sroa.0.0.i.i, 12288
  %or.cond27.not.i.i = icmp eq i16 %i.bb, 0
  %i.bc = or disjoint i16 %.sroa.0.0.i.i, -32768
  %.sroa.050.0.i.i = select i1 %or.cond27.not.i.i, i16 -32768, i16 %i.bc
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = and i16 %.sroa.0.0.i.i, 8192
  %.not84.i.i = icmp eq i16 %i.bd, 0
  %i.be = or i16 %.sroa.0.0.i.i, 512
  %.sroa.051.0.i.i = select i1 %.not84.i.i, i16 512, i16 %i.be
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.v:                                             ; preds = %bb.s
  %i.bf = and i16 %.sroa.0.0.i.i, 8192
  %.not83.i.i = icmp eq i16 %i.bf, 0
  %i.bg = or i16 %.sroa.0.0.i.i, 16384
  %.sroa.052.0.i.i = select i1 %.not83.i.i, i16 16384, i16 %i.bg
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.w:                                             ; preds = %bb.s
  %.not85.i.i = icmp samesign ult i16 %.sroa.0.0.i.i, 16384
  br i1 %.not85.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bh = and i16 %.sroa.0.0.i.i, 512
  %.not86.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not86.i.i, label %bb.ak, label %bb.ai

bb.y:                                             ; preds = %bb.w
  %i.bi = lshr i32 %spec.select.i.ph, 8
  switch i32 %i.bi, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i [
    i32 35, label %bb.ah
    i32 37, label %.thread.i.i.i
    i32 38, label %bb.z
    i32 39, label %bb.aa
    i32 43, label %bb.ab
    i32 496, label %bb.ac
    i32 499, label %bb.ad
    i32 500, label %bb.ae
    i32 501, label %bb.af
    i32 502, label %bb.ag
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  br label %.thread.i.i.i

bb.ad:                                            ; preds = %bb.y
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  br label %bb.ah

bb.af:                                            ; preds = %bb.y
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  br label %bb.ah

.thread.i.i.i:                                    ; preds = %bb.ac, %bb.y
  %.sroa.01.0.ph.i.i.i = phi ptr [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_5, %bb.ac ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_1, %bb.y ]
  %i.bj = trunc i32 %spec.select.i.ph to i8
  br label %._crit_edge.i.i.i.i

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.sroa.11.0.i.i.i = phi i64 [ 10, %bb.ag ], [ 4, %bb.af ], [ 15, %bb.z ], [ 10, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.y ], [ 13, %bb.ad ], [ 22, %bb.ae ] ; 2 uses
  %.sroa.01.0.i99.i.i = phi ptr [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_9, %bb.ag ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_8, %bb.af ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_2, %bb.z ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_3, %bb.aa ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_4, %bb.ab ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_0, %bb.y ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_6, %bb.ad ], [ @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables24TEXT_PRESENTATION_LEAF_7, %bb.ae ] ; 2 uses
  %i.bk = trunc i32 %spec.select.i.ph to i8       ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.thread.i.i.i
  %i.bl = phi i8 [ %i.bj, %.thread.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.01.05.i.i.i = phi ptr [ %.sroa.01.0.ph.i.i.i, %.thread.i.i.i ], [ %.sroa.01.0.i99.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %.thread.i.i.i ], [ %i.bv, %.lr.ph.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.05.i.i.i, i64 %.sroa.05.0.lcssa.i.i.i.i ; 2 uses
  %.val15.i.i.i.i = load i8, ptr %i.bm, align 1, !alias.scope !1987, !noundef !5
  %i.bn = getelementptr i8, ptr %i.bm, i64 1
  %.val16.i.i.i.i = load i8, ptr %i.bn, align 1, !alias.scope !1987
  %.not = icmp ult i8 %i.bl, %.val15.i.i.i.i
  %i.bo = icmp ugt i8 %i.bl, %.val16.i.i.i.i
  %i.bp = select i1 %.not, i1 true, i1 %i.bo
  br i1 %i.bp, label %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.ah
  %.sroa.01.020.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.05.019.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ 0, %bb.ah ] ; 2 uses
  %i.bq = lshr i64 %.sroa.01.020.i.i.i.i, 1       ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, %.sroa.05.019.i.i.i.i ; 3 uses
  %i.bs = icmp ult i64 %i.br, %.sroa.11.0.i.i.i
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.i99.i.i, i64 %i.br
  %.val12.i.i.i.i = load i8, ptr %i.bt, align 1, !alias.scope !1987, !noundef !5
  %i.bu = icmp ugt i8 %.val12.i.i.i.i, %i.bk
  %i.bv = select i1 %i.bu, i64 %.sroa.05.019.i.i.i.i, i64 %i.br, !unpredictable !5 ; 2 uses
  %i.bw = sub nuw nsw i64 %.sroa.01.020.i.i.i.i, %i.bq ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 1
  br i1 %i.bx, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

bb.ai:                                            ; preds = %bb.x
  %switch.tableidx = add i32 %spec.select.i.ph, -8216 ; 2 uses
  %i.by = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond9 = select i1 %i.by, i1 %switch.lobit, i1 false
  br i1 %or.cond9, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bz = and i16 %.sroa.0.0.i.i, 15871
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i, %bb.aj, %bb.x
  %.sroa.0.1.i.i = phi i16 [ %i.cb, %_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i ], [ %i.bz, %bb.aj ], [ %.sroa.0.0.i.i, %bb.x ] ; 17 uses
  %i.ca = and i16 %.sroa.0.1.i.i, 2048
  %.not87.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not87.i.i, label %bb.am, label %bb.al

_RNvNtCsfc8f8SDE2Co_13unicode_width6tables44starts_non_ideographic_text_presentation_seq.exit.thread.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.y
  %i.cb = and i16 %.sroa.0.0.i.i, 16383
  br label %bb.ak

bb.al:                                            ; preds = %bb.ak
  switch i32 %spec.select.i.ph, label %bb.ao [
    i32 8205, label %bb.an
    i32 847, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 6159, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
  ]

bb.am:                                            ; preds = %bb.ao, %bb.ak
  switch i16 %.sroa.0.1.i.i, label %bb.ap [
    i16 12543, label %bb.aq
    i16 15360, label %bb.ar
    i16 15367, label %bb.as
    i16 15361, label %bb.at
    i16 15362, label %bb.au
  ]

bb.an:                                            ; preds = %bb.al
  %i.cc = or i16 %.sroa.0.1.i.i, 1024
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.ao:                                            ; preds = %bb.al
  %i.cd = and i32 %spec.select.i.ph, 2097150
  %or.cond.i = icmp eq i32 %i.cd, 6068
  %i.ce = add nsw i32 %spec.select.i.ph, -6155
  %or.cond1.i = icmp ult i32 %i.ce, 3
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %or.cond1.i
  %i.cf = and i32 %spec.select.i.ph, 2097136
  %or.cond2.i = icmp eq i32 %i.cf, 65024
  %or.cond4.i = or i1 %or.cond2.i, %or.cond3.i
  %i.cg = add nsw i32 %spec.select.i.ph, -917760
  %spec.select.i9 = icmp ult i32 %i.cg, 240
  %or.cond = select i1 %or.cond4.i, i1 true, i1 %spec.select.i9
  br i1 %or.cond, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.am

bb.ap:                                            ; preds = %bb.aw, %bb.am
  %i.ch = icmp eq i32 %spec.select.i.ph, 11647
  br i1 %i.ch, label %bb.ax, label %bb.ay

bb.aq:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %bb.av [
    i32 1604, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 1898, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 2214, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 2247, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
  ]

bb.ar:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 1488, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.as:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6098, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.at:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6679, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.au:                                            ; preds = %bb.am
  switch i32 %spec.select.i.ph, label %.thread105.i.i [
    i32 6677, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i32 11647, label %.thread121.i.i
  ]

bb.av:                                            ; preds = %bb.aq
  %i.ci = add nsw i32 %spec.select.i.ph, -1717
  %or.cond.i.i = icmp ult i32 %i.ci, 4
  br i1 %or.cond.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cj = tail call noundef zeroext i1 @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables25is_transparent_zero_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph)
  br i1 %i.cj, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ap

bb.ax:                                            ; preds = %bb.ap
  switch i16 %.sroa.0.1.i.i, label %.thread118.i.i [
    i16 14339, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 15363, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 2, label %bb.bb
    i16 15364, label %.thread121.i.i
    i16 15365, label %.thread121.i.i
    i16 15366, label %.thread121.i.i
  ]

bb.ay:                                            ; preds = %bb.ap
  switch i16 %.sroa.0.1.i.i, label %.thread105.i.i [
    i16 15363, label %bb.bc
    i16 15364, label %bb.bd
    i16 15365, label %bb.az
    i16 15366, label %bb.be
    i16 2, label %bb.bb
  ]

.thread105.i.i:                                   ; preds = %bb.ay, %bb.au, %bb.at, %bb.as, %bb.ar
  %i.ck = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.cl = zext i1 %i.ck to i8                     ; 3 uses
  %i.cm = add nsw i32 %spec.select.i.ph, -127462
  %or.cond91.i.i = icmp ult i32 %i.cm, 26
  br i1 %or.cond91.i.i, label %bb.bh, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.cn = and i32 %spec.select.i.ph, 2097148
  %or.cond6.i.i = icmp eq i32 %i.cn, 42232
  br i1 %or.cond6.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.az
  %i.co = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.cp = zext i1 %i.co to i8
  %i.cq = add nsw i32 %spec.select.i.ph, -127462
  %or.cond89.i.i = icmp ult i32 %i.cq, 26
  br i1 %or.cond89.i.i, label %bb.bh, label %.thread112.i.i

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.cr = tail call fastcc noundef zeroext i1 @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables22is_emoji_modifier_base(i32 noundef range(i32 0, 1114112) %spec.select.i.ph) #35
  br i1 %i.cr, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %2

bb.bc:                                            ; preds = %bb.ay
  %i.cs = icmp samesign ugt i32 %spec.select.i.ph, 11568
  br i1 %i.cs, label %bb.bf, label %.thread112.i.i

bb.bd:                                            ; preds = %bb.ay
  %i.ct = icmp samesign ugt i32 %spec.select.i.ph, 11568
  br i1 %i.ct, label %bb.bg, label %.thread112.i.i

bb.be:                                            ; preds = %bb.ay
  %i.cu = icmp eq i32 %spec.select.i.ph, 68658
  br i1 %i.cu, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

bb.bf:                                            ; preds = %bb.bc
  %i.cv = icmp samesign ult i32 %spec.select.i.ph, 11622
  %i.cw = icmp eq i32 %spec.select.i.ph, 11631
  %or.cond2.i.i = or i1 %i.cv, %i.cw
  br i1 %or.cond2.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

bb.bg:                                            ; preds = %bb.bd
  %i.cx = icmp samesign ult i32 %spec.select.i.ph, 11622
  %i.cy = icmp eq i32 %spec.select.i.ph, 11631
  %or.cond4.i.i = or i1 %i.cx, %i.cy
  br i1 %or.cond4.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ba

.thread112.i.i:                                   ; preds = %bb.bd, %bb.bc, %bb.ba
  %i.cz = phi i8 [ %i.cp, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.bd ] ; 2 uses
  %cond1.i.i = icmp eq i32 %spec.select.i.ph, 8205
  br i1 %cond1.i.i, label %bb.bi, label %.thread114.i.i

bb.bh:                                            ; preds = %bb.ba, %.thread105.i.i
  switch i16 %.sroa.0.1.i.i, label %.thread114.i.i [
    i16 3, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4102, label %bb.bm
  ]

.thread118.i.i:                                   ; preds = %bb.bk, %bb.ax
  %.sroa.059.1.i.i = phi i8 [ %i.cl, %bb.bk ], [ 0, %bb.ax ] ; 2 uses
  %cond125.i.i = icmp eq i16 %.sroa.0.1.i.i, 4102
  br i1 %cond125.i.i, label %bb.bm, label %.thread114.i.i

bb.bi:                                            ; preds = %bb.bk, %.thread112.i.i
  %.sroa.059.2.i.i = phi i8 [ %i.cl, %bb.bk ], [ %i.cz, %.thread112.i.i ] ; 2 uses
  switch i16 %.sroa.0.1.i.i, label %.thread114.i.i [
    i16 5, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 10, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 11, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 2, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4102, label %bb.bm
  ]

2:                                                ; preds = %bb.bb
  %3 = add nsw i32 %spec.select.i.ph, -127462
  %or.cond90.i.i = icmp ult i32 %3, 26
  br i1 %or.cond90.i.i, label %.thread114.i.i, label %bb.bj

bb.bj:                                            ; preds = %2
  %i.da = icmp samesign ugt i32 %spec.select.i.ph, 127461
  %i.db = zext i1 %i.da to i8
  %cond.i.i = icmp eq i32 %spec.select.i.ph, 8205
  br i1 %cond.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread114.i.i

bb.bk:                                            ; preds = %.thread105.i.i
  switch i32 %spec.select.i.ph, label %.thread118.i.i [
    i32 8205, label %bb.bi
    i32 8419, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %cond126.i.i = icmp eq i16 %.sroa.0.1.i.i, 4102
  br i1 %cond126.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread114.i.i

.thread114.i.i:                                   ; preds = %bb.bl, %bb.bj, %2, %bb.bi, %.thread118.i.i, %bb.bh, %.thread112.i.i
  %.sroa.059.3.i.i = phi i8 [ 1, %bb.bh ], [ %i.db, %bb.bj ], [ %i.cl, %bb.bl ], [ %.sroa.059.1.i.i, %.thread118.i.i ], [ %.sroa.059.2.i.i, %bb.bi ], [ 1, %2 ], [ %i.cz, %.thread112.i.i ]
  %i.dc = trunc nuw i8 %.sroa.059.3.i.i to i1
  %i.dd = icmp samesign ult i32 %spec.select.i.ph, 127488
  %or.cond10.i.i = and i1 %i.dd, %i.dc
  br i1 %or.cond10.i.i, label %bb.bn, label %.thread114.thread.i.i

bb.bm:                                            ; preds = %bb.bi, %.thread118.i.i, %bb.bh
  %.sroa.059.6.i.i = phi i8 [ 1, %bb.bh ], [ %.sroa.059.1.i.i, %.thread118.i.i ], [ %.sroa.059.2.i.i, %bb.bi ]
  %i.de = trunc nuw i8 %.sroa.059.6.i.i to i1
  %i.df = icmp samesign ult i32 %spec.select.i.ph, 127488
  %or.cond29.i.i = and i1 %i.df, %i.de
  br i1 %or.cond29.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread119.i.i

.thread114.thread.i.i:                            ; preds = %.thread114.i.i
  switch i16 %.sroa.0.1.i.i, label %bb.bo [
    i16 4102, label %.thread119.i.i
    i16 16, label %bb.bp
    i16 25, label %bb.bq
    i16 26, label %bb.br
    i16 27, label %bb.bs
    i16 28, label %bb.bt
    i16 29, label %bb.bu
  ]

bb.bn:                                            ; preds = %.thread114.i.i
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 9, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 11, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 10, label %bb.cl
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
    i16 33, label %bb.cm
  ]

bb.bo:                                            ; preds = %bb.bv, %.thread114.thread.i.i
  %i.dg = add nsw i32 %spec.select.i.ph, -917552
  %or.cond98.i.i = icmp ult i32 %i.dg, 10
  br i1 %or.cond98.i.i, label %bb.cf, label %bb.bx

.thread119.i.i:                                   ; preds = %.thread114.thread.i.i, %bb.bm
  %i.dh = add nsw i32 %spec.select.i.ph, -127995
  %or.cond12.i.i = icmp ult i32 %i.dh, 5
  br i1 %or.cond12.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bv

bb.bp:                                            ; preds = %.thread114.thread.i.i
  %i.di = add nsw i32 %spec.select.i.ph, -917601
  %or.cond14.i.i = icmp ult i32 %i.di, 26
  br i1 %or.cond14.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bw

bb.bq:                                            ; preds = %.thread114.thread.i.i
  %i.dj = add nsw i32 %spec.select.i.ph, -917601
  %or.cond16.i.i = icmp ult i32 %i.dj, 26
  br i1 %or.cond16.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.by

bb.br:                                            ; preds = %.thread114.thread.i.i
  %i.dk = add nsw i32 %spec.select.i.ph, -917601
  %or.cond18.i.i = icmp ult i32 %i.dk, 26
  br i1 %or.cond18.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bz

bb.bs:                                            ; preds = %.thread114.thread.i.i
  %i.dl = add nsw i32 %spec.select.i.ph, -917601
  %or.cond20.i.i = icmp ult i32 %i.dl, 26
  br i1 %or.cond20.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ca

bb.bt:                                            ; preds = %.thread114.thread.i.i
  %i.dm = add nsw i32 %spec.select.i.ph, -917601
  %or.cond22.i.i = icmp ult i32 %i.dm, 26
  br i1 %or.cond22.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cc

bb.bu:                                            ; preds = %.thread114.thread.i.i
  %i.dn = add nsw i32 %spec.select.i.ph, -917601
  %or.cond24.i.i = icmp ult i32 %i.dn, 26
  br i1 %or.cond24.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ce

bb.bv:                                            ; preds = %.thread119.i.i
  %i.do = icmp eq i32 %spec.select.i.ph, 917631
  br i1 %i.do, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bo

bb.bw:                                            ; preds = %bb.bp
  %i.dp = add nsw i32 %spec.select.i.ph, -917552
  %or.cond92.i.i = icmp ult i32 %i.dp, 10
  br i1 %or.cond92.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bo
  %i.dq = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dq, label %bb.cg, label %.thread137.i.i

bb.by:                                            ; preds = %bb.bq
  %i.dr = add nsw i32 %spec.select.i.ph, -917552
  %or.cond93.i.i = icmp ult i32 %i.dr, 10
  br i1 %or.cond93.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.bz:                                            ; preds = %bb.br
  %i.ds = add nsw i32 %spec.select.i.ph, -917552
  %or.cond94.i.i = icmp ult i32 %i.ds, 10
  br i1 %or.cond94.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.ca:                                            ; preds = %bb.bs
  %i.dt = add nsw i32 %spec.select.i.ph, -917552
  %or.cond95.i.i = icmp ult i32 %i.dt, 10
  br i1 %or.cond95.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.du = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.du, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

.thread137.i.i:                                   ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
    i16 33, label %bb.cm
  ]

bb.cc:                                            ; preds = %bb.bt
  %i.dv = add nsw i32 %spec.select.i.ph, -917552
  %or.cond96.i.i = icmp ult i32 %i.dv, 10
  br i1 %or.cond96.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dw = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dw, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.ce:                                            ; preds = %bb.bu
  %i.dx = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dx, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.cf:                                            ; preds = %bb.bo
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 16, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 25, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 26, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 17, label %bb.cj
    i16 18, label %bb.ck
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 29, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 30, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 19, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4102, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.thread137.i.i, %bb.bn
  %i.dy = tail call fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph) #35
  %i.dz = extractvalue { i8, i16 } %i.dy, 1
  %i.ea = icmp eq i16 %i.dz, 5
  br i1 %i.ea, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.ci:                                            ; preds = %bb.cf, %.thread137.i.i, %bb.bn
  %switch.tableidx2 = add i32 %spec.select.i.ph, -93539 ; 4 uses
  %i.eb = icmp ult i32 %switch.tableidx2, 7
  %switch.maskindex6 = trunc i32 %switch.tableidx2 to i8
  %switch.shifted7 = lshr i8 113, %switch.maskindex6
  %switch.lobit8 = trunc i8 %switch.shifted7 to i1
  %or.cond10 = select i1 %i.eb, i1 %switch.lobit8, i1 false
  br i1 %or.cond10, label %switch.lookup5, label %.thread121.i.i

bb.cj:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.ck:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cl:                                            ; preds = %bb.bn
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cm:                                            ; preds = %.thread137.i.i, %bb.bn
  %i.ec = icmp eq i32 %spec.select.i.ph, 93539
  br i1 %i.ec, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.cn:                                            ; preds = %bb.cp, %bb.r
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.co:                                            ; preds = %bb.r
  %i.ed = icmp ne i16 %.sroa.0.0.i.i, 1
  %spec.select.i.i = zext i1 %i.ed to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cp:                                            ; preds = %bb.p
  %cond30.i.i = icmp eq i32 %spec.select.i.ph, 10
  br i1 %cond30.i.i, label %bb.cn, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

switch.lookup5:                                   ; preds = %bb.ci
  %i.ee = zext nneg i32 %switch.tableidx2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs8frGy5WneL6_4fish, i64 %i.ee
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.ef = shl nuw nsw i32 %switch.tableidx2, 3
  %switch.shiftamt = zext nneg i32 %i.ef to i56
  %switch.downshift = lshr i56 1099511627776, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.ai, %switch.lookup5, %bb.al, %bb.al, %bb.ao, %bb.n, %bb.r, %.thread121.i.i, %bb.t, %bb.u, %bb.v, %._crit_edge.i.i.i.i, %bb.an, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ax, %bb.az, %bb.bb, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bh, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bn, %bb.bn, %.thread119.i.i, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp
  %.sroa.51.1.i.i = phi i16 [ 5, %bb.n ], [ 0, %bb.cm ], [ 5, %bb.cd ], [ %i.cc, %bb.an ], [ 0, %bb.cp ], [ 30, %bb.bu ], [ 11, %bb.cl ], [ 10, %bb.bn ], [ 5, %bb.ch ], [ %i.ba, %.thread121.i.i ], [ 10, %bb.bn ], [ %switch.ext, %switch.lookup5 ], [ 1, %bb.cn ], [ 25, %bb.bp ], [ 18, %bb.cj ], [ 19, %bb.ck ], [ 28, %bb.bs ], [ 9, %bb.bm ], [ 2, %.thread119.i.i ], [ 16, %bb.bv ], [ 17, %bb.by ], [ 26, %bb.bq ], [ 27, %bb.br ], [ 5, %bb.cb ], [ 29, %bb.bt ], [ 4103, %bb.bl ], [ 4, %bb.bh ], [ %.sroa.052.0.i.i, %bb.v ], [ 0, %._crit_edge.i.i.i.i ], [ 5, %bb.bb ], [ 4102, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 15364, %bb.ax ], [ 0, %bb.az ], [ %.sroa.0.1.i.i, %bb.al ], [ 0, %bb.aq ], [ 12543, %bb.aw ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 15362, %bb.at ], [ %.sroa.051.0.i.i, %bb.u ], [ %.sroa.050.0.i.i, %bb.t ], [ %.sroa.0.1.i.i, %bb.al ], [ %.sroa.0.1.i.i, %bb.ao ], [ 0, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 15364, %bb.ax ], [ 0, %bb.co ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4, %bb.bh ], [ 17, %bb.bw ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cc ], [ 17, %bb.ca ], [ 17, %bb.bz ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.ce ], [ 0, %bb.ai ]
  %.sroa.046.1.i.i = phi i8 [ %..i.i, %bb.n ], [ 0, %bb.cm ], [ 0, %bb.cd ], [ 0, %bb.an ], [ 1, %bb.cp ], [ 0, %bb.bu ], [ 3, %bb.cl ], [ -1, %bb.bn ], [ 0, %bb.ch ], [ %i.az, %.thread121.i.i ], [ -1, %bb.bn ], [ %switch.masked, %switch.lookup5 ], [ 1, %bb.cn ], [ 0, %bb.bp ], [ 0, %bb.cj ], [ 0, %bb.ck ], [ 0, %bb.bs ], [ 1, %bb.bm ], [ 0, %.thread119.i.i ], [ 0, %bb.bv ], [ 0, %bb.by ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.cb ], [ 0, %bb.bt ], [ 0, %bb.bl ], [ 1, %bb.bh ], [ 0, %bb.v ], [ 1, %._crit_edge.i.i.i.i ], [ 0, %bb.bb ], [ 0, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ -1, %bb.bg ], [ 1, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.al ], [ 0, %bb.aq ], [ 0, %bb.aw ], [ 0, %bb.ar ], [ -1, %bb.as ], [ 0, %bb.at ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.al ], [ 0, %bb.ao ], [ 1, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 1, %bb.ax ], [ %spec.select.i.i, %bb.co ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 1, %bb.bh ], [ 0, %bb.bw ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cc ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 2, %bb.ai ]
  %i.eg = sext i8 %.sroa.046.1.i.i to i64
  %i.eh = add i64 %.sroa.0.022, %i.eg             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.3.ph) ]
  %.not.i = icmp eq ptr %0, %.sroa.2.3.ph
  br i1 %.not.i, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph
end_hunk_0
