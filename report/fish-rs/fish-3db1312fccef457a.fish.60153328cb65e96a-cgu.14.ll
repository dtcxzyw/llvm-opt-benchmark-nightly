Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtBe_4char11ToLowercaseENtB4_13SpecAdvanceBy15spec_advance_byCs8frGy5WneL6_4fish:bb.a
  call void %i.g(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i32 noundef %i.l), !inline_history !3410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3413
  %i.q = call noundef i32 @_RNvXsO_NtCs3oUPovFnLWP_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  %.not.i = icmp eq i32 %i.q, -1
  br i1 %.not.i, label %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator8try_foldINtNtNtB24_3num7nonzero7NonZerojENCNvXs_NvB2G_10advance_byB3_NtB49_13SpecAdvanceBy15spec_advance_by0INtNtB24_6option6OptionB3v_EECs8frGy5WneL6_4fish.exit, label %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread10.i

_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread10.i: ; preds = %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i, %bb.c
  %i.r = add i64 %.sroa.01.0.i, -1                ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator8try_foldINtNtNtB24_3num7nonzero7NonZerojENCNvXs_NvB2G_10advance_byB3_NtB49_13SpecAdvanceBy15spec_advance_by0INtNtB24_6option6OptionB3v_EECs8frGy5WneL6_4fish.exit, label %bb.c

_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator8try_foldINtNtNtB24_3num7nonzero7NonZerojENCNvXs_NvB2G_10advance_byB3_NtB49_13SpecAdvanceBy15spec_advance_by0INtNtB24_6option6OptionB3v_EECs8frGy5WneL6_4fish.exit: ; preds = %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread10.i, %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i, %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i, %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i ], [ %.sroa.01.0.i, %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i ], [ 0, %_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread10.i ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtB4_13SpecAdvanceBy15spec_advance_byCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3420)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !3421, !nonnull !8, !noundef !8
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !3421
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.d = phi ptr [ %.promoted.i, %bb.b ], [ %i.f, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %1, %bb.b ], [ %i.l, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !alias.scope !3421
  %i.g = load i32, ptr %i.d, align 4, !noalias !3421, !noundef !8 ; 3 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i.i, label %bb.e

.split.i.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3421
  store i32 %i.g, ptr %i.a, align 4, !noalias !3421
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @993) #28, !noalias !3421
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i64 %.sroa.01.0.i, -1                ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.c

_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.c, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.e ], [ %.sroa.01.0.i, %bb.c ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj2_NtNtB7_3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCs3oUPovFnLWP_4core5arrayAhj3_NtNtB7_3fmt5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtShNtB5_5Debug3fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef 3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB5_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 3 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %.idx = shl i64 %2, 2                           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.l = icmp eq i64 %2, 0
  br i1 %i.l, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.m = add i64 %.idx, -4
  %i.n = lshr exact i64 %i.m, 2
  %i.o = add nuw nsw i64 %i.n, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2Y_11PipeOrRedirINtNtBg_7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtB4d_4iter10CharsUtf32B2Q_EB1i_5count0E0E0B30_.exit.i.i.i
  %.sroa.01.022.i.i.i = phi i64 [ %i.x, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2Y_11PipeOrRedirINtNtBg_7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtB4d_4iter10CharsUtf32B2Q_EB1i_5count0E0E0B30_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.p = phi ptr [ %i.q, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2Y_11PipeOrRedirINtNtBg_7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtB4d_4iter10CharsUtf32B2Q_EB1i_5count0E0E0B30_.exit.i.i.i ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.p, align 4, !noalias !3440, !noundef !8 ; 4 uses
  %i.s = xor i32 %i.r, 55296
  %i.t = add i32 %i.s, -1114112
  %i.u = icmp ult i32 %i.t, -1112064
  br i1 %i.u, label %.split.i.i.i.i, label %bb.b

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3440
  store i32 %i.r, ptr %i.i, align 4, !noalias !3440
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @993) #28, !noalias !3440
  unreachable

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.v = icmp ult i32 %i.r, 1114112
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nsw i32 %i.r, -48
  %.sroa.0.0.i.i.i.i.i = icmp ult i32 %i.w, 10
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2Y_11PipeOrRedirINtNtBg_7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtB4d_4iter10CharsUtf32B2Q_EB1i_5count0E0E0B30_.exit.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2Y_11PipeOrRedirINtNtBg_7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtB4d_4iter10CharsUtf32B2Q_EB1i_5count0E0E0B30_.exit.i.i.i: ; preds = %bb.b
  %i.x = add nuw nsw i64 %.sroa.01.022.i.i.i, 1
  %i.y = icmp eq ptr %i.q, %i.k
  br i1 %i.y, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit: ; preds = %bb.b, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2Y_11PipeOrRedirINtNtBg_7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtB4d_4iter10CharsUtf32B2Q_EB1i_5count0E0E0B30_.exit.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %i.o, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2Y_11PipeOrRedirINtNtBg_7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtB4d_4iter10CharsUtf32B2Q_EB1i_5count0E0E0B30_.exit.i.i.i ], [ %.sroa.01.022.i.i.i, %bb.b ] ; 2 uses
  %.not = icmp ugt i64 %.sroa.0.1.i.i, %2
  br i1 %.not, label %bb.c, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread, !prof !3441

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread: ; preds = %bb.a, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit
  %.sroa.0.1.i.i69 = phi i64 [ %.sroa.0.1.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit ], [ 0, %bb.a ] ; 18 uses
  %.not20 = icmp eq i64 %.sroa.0.1.i.i69, 0       ; 5 uses
  %i.z = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.1.i.i69)
  switch i32 %i.z, label %bb.d [
    i32 124, label %bb.e
    i32 62, label %bb.f
    i32 60, label %bb.h
    i32 38, label %bb.j
  ]

bb.c:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1036) #28
  unreachable

bb.d:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 2, ptr %i.aa, align 2
  br label %bb.ar

bb.e:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread
  br i1 %.not20, label %bb.l, label %bb.n

bb.f:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 62, ptr %i.h, align 4, !noalias !3442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3442
  %i.ab = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.1.i.i69), !noalias !3442 ; 2 uses
  store i32 %i.ab, ptr %i.g, align 4, !noalias !3442
  %i.ac = icmp eq i32 %i.ab, 62
  br i1 %i.ac, label %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noundef nonnull @73, ptr nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28, !noalias !3442
  unreachable

_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3442
  %i.ad = add nuw i64 %.sroa.0.1.i.i69, 1         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ae = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ad)
  %.not22 = icmp eq i32 %i.ae, 62                 ; 2 uses
  %i.af = add nuw i64 %.sroa.0.1.i.i69, 2
  %spec.select = select i1 %.not22, i64 %i.af, i64 %i.ad ; 10 uses
  %spec.select78 = zext i1 %.not22 to i8          ; 3 uses
  %i.ag = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %spec.select)
  %i.ah = icmp eq i32 %i.ag, 124
  br i1 %i.ah, label %bb.q, label %bb.r

bb.h:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 60, ptr %i.f, align 4, !noalias !3443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3443
  %i.ai = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.1.i.i69), !noalias !3443 ; 2 uses
  store i32 %i.ai, ptr %i.e, align 4, !noalias !3443
  %i.aj = icmp eq i32 %i.ai, 60
  br i1 %i.aj, label %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit31, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noundef nonnull @73, ptr nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28, !noalias !3443
  unreachable

_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit31: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3443
  %i.ak = add nuw i64 %.sroa.0.1.i.i69, 1         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.al = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ak)
  %i.am = icmp eq i32 %i.al, 38
  br i1 %i.am, label %bb.ag, label %bb.af

bb.j:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB2d_11PipeOrRedirINtNtBc_7convert7TryFromRNtB1f_8Utf32StrE8try_from0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3R_5count0EB2f_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 38, ptr %i.d, align 4, !noalias !3444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3444
  %i.an = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.0.1.i.i69), !noalias !3444 ; 2 uses
  store i32 %i.an, ptr %i.c, align 4, !noalias !3444
  %i.ao = icmp eq i32 %i.an, 38
  br i1 %i.ao, label %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit32, label %bb.k, !prof !24

bb.k:                                             ; preds = %bb.j
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noundef nonnull @73, ptr nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28, !noalias !3444
  unreachable

_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit32: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3444
  %i.ap = add nuw i64 %.sroa.0.1.i.i69, 1         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aq = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ap)
  %i.ar = icmp eq i32 %i.aq, 124
  br i1 %i.ar, label %bb.ak, label %bb.aj

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 124, ptr %i.b, align 4, !noalias !3445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3445
  %i.as = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 0), !noalias !3445 ; 2 uses
  store i32 %i.as, ptr %i.a, align 4, !noalias !3445
  %i.at = icmp eq i32 %i.as, 124
  br i1 %i.at, label %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit33, label %bb.m, !prof !24

bb.m:                                             ; preds = %bb.l
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noundef nonnull @73, ptr nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28, !noalias !3445
  unreachable

_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit33: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.au = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1) ; 2 uses
  store i32 %i.au, ptr %i.j, align 4
  %i.av = icmp eq i32 %i.au, 124
  br i1 %i.av, label %bb.o, label %bb.p, !prof !9

bb.n:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 2, ptr %i.aw, align 2
  br label %bb.ar

bb.o:                                             ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit33
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @1032, ptr noundef nonnull @1033, ptr nonnull inttoptr (i64 155 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #28
  unreachable

bb.p:                                             ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ax = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1)
  %i.ay = icmp eq i32 %i.ax, 38                   ; 2 uses
  %spec.select70 = select i1 %i.ay, i64 2, i64 1
  %spec.select71 = zext i1 %i.ay to i8
  br label %bb.aq

bb.q:                                             ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit
  %i.az = icmp eq i64 %spec.select, -1
  br i1 %i.az, label %bb.t, label %bb.s

bb.r:                                             ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit
  %i.ba = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %spec.select)
  %i.bb = icmp eq i32 %i.ba, 38
  br i1 %i.bb, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.bc = add nuw i64 %spec.select, 1             ; 2 uses
  br i1 %.not20, label %bb.aq, label %bb.u

bb.t:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #28
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bd = tail call fastcc noundef i32 @_RNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %.sroa.0.1.i.i69)
  br label %bb.aq

bb.v:                                             ; preds = %bb.r
  %i.be = icmp eq i64 %spec.select, -1
  br i1 %i.be, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.r
  br i1 %.not20, label %bb.ab, label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.bf = add nuw i64 %spec.select, 1             ; 2 uses
  br i1 %.not20, label %bb.aq, label %bb.z

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #28
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bg = tail call fastcc noundef i32 @_RNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %.sroa.0.1.i.i69)
  br label %bb.aq

bb.aa:                                            ; preds = %bb.w
  %i.bh = tail call fastcc noundef i32 @_RNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %.sroa.0.1.i.i69)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.aa
  %.sroa.04.0 = phi i32 [ %i.bh, %bb.aa ], [ 1, %bb.w ] ; 2 uses
  %i.bi = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %spec.select)
  %i.bj = icmp eq i32 %i.bi, 63
  br i1 %i.bj, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.bk = icmp eq i64 %spec.select, -1
  br i1 %i.bk, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = add nuw i64 %spec.select, 1
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #28
  unreachable

bb.af:                                            ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit31
  %i.bm = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ak)
  %i.bn = icmp eq i32 %i.bm, 63                   ; 2 uses
  %3 = add nuw i64 %.sroa.0.1.i.i69, 2
  %spec.select79 = select i1 %i.bn, i64 %3, i64 %i.ak
  %spec.select80 = select i1 %i.bn, i8 3, i8 2
  br label %bb.ah

bb.ag:                                            ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit31
  %i.bo = add nuw i64 %.sroa.0.1.i.i69, 2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0.2 = phi i64 [ %i.bo, %bb.ag ], [ %spec.select79, %bb.af ] ; 2 uses
  %.sroa.11.3 = phi i8 [ 4, %bb.ag ], [ %spec.select80, %bb.af ] ; 2 uses
  br i1 %.not20, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = tail call fastcc noundef i32 @_RNvNtCs8frGy5WneL6_4fish9tokenizer8parse_fd(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %.sroa.0.1.i.i69)
  br label %bb.aq

bb.aj:                                            ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit32
  %i.bq = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ap)
  %i.br = icmp eq i32 %i.bq, 62
  br i1 %i.br, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %_RNCNvXsc_NtCs8frGy5WneL6_4fish9tokenizerNtB7_11PipeOrRedirINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_froms0_0B9_.exit32
  %i.bs = add nuw i64 %.sroa.0.1.i.i69, 2
  br label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 2, ptr %i.bt, align 2
  br label %bb.ar

bb.am:                                            ; preds = %bb.aj
  %4 = add nuw i64 %.sroa.0.1.i.i69, 2            ; 2 uses
  %5 = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %4)
  %6 = icmp eq i32 %5, 62                         ; 2 uses
  %7 = add nuw i64 %.sroa.0.1.i.i69, 3
  %spec.select81 = select i1 %6, i64 %7, i64 %4   ; 4 uses
  %spec.select82 = zext i1 %6 to i8
  %i.bu = tail call noundef i32 @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %spec.select81)
  %i.bv = icmp eq i32 %i.bu, 63
  br i1 %i.bv, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.bw = icmp eq i64 %spec.select81, -1
  br i1 %i.bw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bx = add nuw i64 %spec.select81, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1035) #28
  unreachable

bb.aq:                                            ; preds = %bb.p, %bb.ab, %bb.ad, %bb.ak, %bb.am, %bb.ao, %bb.s, %bb.u, %bb.x, %bb.z, %bb.ah, %bb.ai
  %.sroa.0.0 = phi i64 [ %spec.select81, %bb.am ], [ %spec.select70, %bb.p ], [ %i.bc, %bb.s ], [ %i.bc, %bb.u ], [ %i.bf, %bb.x ], [ %i.bf, %bb.z ], [ %i.bl, %bb.ad ], [ %spec.select, %bb.ab ], [ %.sroa.0.2, %bb.ah ], [ %.sroa.0.2, %bb.ai ], [ %i.bs, %bb.ak ], [ %i.bx, %bb.ao ]
  %.sroa.25.0 = phi i8 [ 1, %bb.am ], [ %spec.select71, %bb.p ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 1, %bb.ak ], [ 1, %bb.ao ]
  %.sroa.22.0 = phi i8 [ 0, %bb.am ], [ 1, %bb.p ], [ 1, %bb.s ], [ 1, %bb.u ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 1, %bb.ak ], [ 0, %bb.ao ]
  %.sroa.11.0 = phi i8 [ %spec.select82, %bb.am ], [ 0, %bb.p ], [ %spec.select78, %bb.s ], [ %spec.select78, %bb.u ], [ 4, %bb.x ], [ 4, %bb.z ], [ 5, %bb.ad ], [ %spec.select78, %bb.ab ], [ %.sroa.11.3, %bb.ah ], [ %.sroa.11.3, %bb.ai ], [ 0, %bb.ak ], [ 5, %bb.ao ]
  %.sroa.4.0 = phi i32 [ 1, %bb.am ], [ 1, %bb.p ], [ 1, %bb.s ], [ %i.bd, %bb.u ], [ 1, %bb.x ], [ %i.bg, %bb.z ], [ %.sroa.04.0, %bb.ad ], [ %.sroa.04.0, %bb.ab ], [ 0, %bb.ah ], [ %i.bp, %bb.ai ], [ 1, %bb.ak ], [ 1, %bb.ao ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %.sroa.25.0, ptr %.sroa.25.0..sroa_idx, align 2
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 0, ptr %.sroa.28.0..sroa_idx, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.d, %bb.n, %bb.al, %bb.aq
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsd_NtNtCs3oUPovFnLWP_4core3mem12maybe_uninitSINtB5_11MaybeUninithEINtB5_8SpecFillhE9spec_fillCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i8 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign eq i64 %1, 0
  br i1 %i.a, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 %2, i64 range(i64 0, -9223372036854775808) %1, i1 false), !alias.scope !3449, !noalias !3450
  br label %_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECs8frGy5WneL6_4fish.exit

_RINvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB5_3mem12maybe_uninit11MaybeUninithE9fill_withNCNvXsd_By_Bu_INtBy_8SpecFillhE9spec_fill0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxSTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB7_3vec3VecBJ_EEENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3454
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 192153584101141163) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48), !noalias !3454
  %i.h = load i64, ptr %i.a, align 8, !range !10, !noalias !3454, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !30, !noalias !3454, !noundef !8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !3454
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #34, !noalias !3454
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !3454, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3454
  store i64 %i.k, ptr %i.c, align 8, !noalias !3454
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !3454
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB8_3vec3VecBL_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_RNvYTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB3_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i, %.lr.ph.i
  %.sroa.013.029.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.w, %_RNvYTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB3_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i ] ; 4 uses
  %.sroa.7.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %_RNvYTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB3_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i ] ; 3 uses
  %.sroa.10.027.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %_RNvYTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB3_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i ]
  %i.u = add i64 %.sroa.10.027.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.013.029.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB8_3vec3VecBL_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.029.i, i64 48
  %i.x = add nuw nsw i64 %.sroa.7.028.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3454
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.013.029.i)
          to label %.noexc12.i unwind label %.loopexit.i, !noalias !3455

.noexc12.i:                                       ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.029.i, i64 24
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %_RNvYTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB3_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i unwind label %bb.e, !noalias !3455

bb.e:                                             ; preds = %.noexc12.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #29
          to label %bb.h unwind label %bb.f, !noalias !3455

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !3455
  unreachable

_RNvYTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB3_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc12.i
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.7.028.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !3455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3454
  %i.ac = icmp eq i64 %i.u, 0
  br i1 %i.ac, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB8_3vec3VecBL_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8frGy5WneL6_4fish.exit, label %bb.c

bb.g:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !3455
  unreachable

bb.h:                                             ; preds = %bb.e, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.z, %bb.e ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.028.i, ptr %i.q, align 8, !noalias !3454
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringIBC_B19_EEEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.i unwind label %bb.g, !noalias !3455

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtB8_3vec3VecBL_EENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %_RNvYTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtNtCs1xwejQucwHj_5alloc3vec3VecB3_EENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish.exit.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !3454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3454
  %i.ae = call { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringIBv_BF_EEE16into_boxed_sliceCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  %.val1.i.i = load i8, ptr %0, align 1, !range !32, !alias.scope !3460, !noalias !3461
  %.not.not.not.i.not.not.not1.not = icmp samesign eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2A_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.val2.i = load i8, ptr %i.b, align 1, !range !32, !noalias !3462, !noundef !8
  %i.c = icmp eq i8 %.val2.i, %.val1.i.i          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.d, %i.a
  %or.cond = select i1 %i.c, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2A_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish15parse_constants12ParseKeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2A_13SliceContains14slice_contains0EBU_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.c, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseErrorCodeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  %.val1.i.i = load i8, ptr %0, align 1, !range !3467, !alias.scope !3466, !noalias !3468
  %.not.not.not.i.not.not.not1.not = icmp samesign eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish15parse_constants14ParseErrorCodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2C_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.val2.i = load i8, ptr %i.b, align 1, !range !3467, !noalias !3469, !noundef !8
  %i.c = icmp eq i8 %.val2.i, %.val1.i.i          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.d, %i.a
  %or.cond = select i1 %i.c, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish15parse_constants14ParseErrorCodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2C_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish15parse_constants14ParseErrorCodeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2C_13SliceContains14slice_contains0EBU_.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.c, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  %.val1.i.i = load i8, ptr %0, align 1, !range !31, !alias.scope !3473, !noalias !3474
  %.not.not.not.i.not.not.not1.not = icmp samesign eq i64 %2, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2C_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
end_hunk_0
