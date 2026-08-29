Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.14?download=true
inline.NumInlined: 1677
inline.NumDeleted: 809
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXst_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_EIBJ_uE9call_onceCskIqAKC4t9Ft_2yr:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !159, !invariant.load !16 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskIqAKC4t9Ft_2yr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !237, !invariant.load !16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #34
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskIqAKC4t9Ft_2yr.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !159, !invariant.load !16 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskIqAKC4t9Ft_2yr.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !237, !invariant.load !16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #34
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskIqAKC4t9Ft_2yr.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskIqAKC4t9Ft_2yr.exit4: ; preds = %bb.d, %bb.e
  ret void

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextIBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIB2j_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(560) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIB2j_INtNtB1A_6bubble6BubbleIB2j_IB2j_IB2j_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB48_6TokensINtNtNtB3r_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB67_6parser6ParserENCINvMs_B1A_B4L_6formatRShNtNtNtBR_2io4util4SinkE0EEEss_0NCB4A_st_0EEEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1200) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1200) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIB2j_INtNtB1A_6bubble6BubbleIB2j_IB2j_IB2j_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB48_6TokensINtNtNtB3r_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB67_6parser6ParserENCINvMs_B1A_B4L_6formatRShQINtNtNtBR_2io6cursor6CursorINtNtB7_3vec3VechEEE0EEEss_0NCB4A_st_0EEEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1200) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1200) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(368) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_19format_hex_patterns17FormatHexPatternsINtB1y_9ProcessorIBy_IB36_IB36_IBy_IB36_IB36_IBy_IB36_IB36_INtNtB1A_6bubble6BubbleIB43_IB36_INtNtB1A_8comments16CommentProcessorIB36_INtNtB1A_6tokens6TokensINtNtNtNtBR_4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6m_6parser6ParserENCINvMs_B1A_NtB1A_9Formatter6formatRShNtNtNtBR_2io4util4SinkE0EEEEENCINvMs0_B1A_B7C_11format_implB5e_Es1_0NCB8x_s2_0ENCB8x_s3_0NCB8x_s4_0EEEEEEEEEEEEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(400) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_19format_hex_patterns17FormatHexPatternsINtB1y_9ProcessorIBy_IB36_IB36_IBy_IB36_IB36_IBy_IB36_IB36_INtNtB1A_6bubble6BubbleIB43_IB36_INtNtB1A_8comments16CommentProcessorIB36_INtNtB1A_6tokens6TokensINtNtNtNtBR_4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6m_6parser6ParserENCINvMs_B1A_NtB1A_9Formatter6formatRShQINtNtNtBR_2io6cursor6CursorINtNtB7_3vec3VechEEE0EEEEENCINvMs0_B1A_B7C_11format_implB5e_Es1_0NCB8W_s2_0ENCB8W_s3_0NCB8W_s4_0EEEEEEEEEEEEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(400) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_5align5AlignINtB1y_9ProcessorIB2E_IB2E_INtNtB1A_6bubble6BubbleIB2E_IB2E_IB2E_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB4y_6TokensINtNtNtB3R_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6x_6parser6ParserENCINvMs_B1A_B5b_6formatRShNtNtNtBR_2io4util4SinkE0EEEss_0NCB50_st_0EEEEEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1424) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1424) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsu_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_5align5AlignINtB1y_9ProcessorIB2E_IB2E_INtNtB1A_6bubble6BubbleIB2E_IB2E_IB2E_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB4y_6TokensINtNtNtB3R_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6x_6parser6ParserENCINvMs_B1A_B5b_6formatRShQINtNtNtBR_2io6cursor6CursorINtNtB7_3vec3VechEEE0EEEss_0NCB50_st_0EEEEEEEEp6OutputuEL_EINtBN_5FnMutTQB1v_EE8call_mutCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1424) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1424) %1) #37
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_RNvXsu_NtCskKLDkoKarTP_4core3numjNtNtNtB7_3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3253)
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !alias.scope !3250, !noalias !3253
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !3253, !noalias !3250, !noundef !16 ; 2 uses
  switch i8 %i.b, label %bb.e [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.c, align 1, !alias.scope !3250, !noalias !3253
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !3253, !noalias !3250
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.c
  %i.d = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.c ]
  %cond.i = icmp eq i8 %i.d, 43                   ; 2 uses
  %i.e = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.e            ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.f = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.f, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %.loopexit.i, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.i, 0
  br i1 %.not52.i, label %.loopexit.i, label %.preheader56.i.preheader

.loopexit.i:                                      ; preds = %.preheader56.i, %bb.k, %.preheader.i
  %.sroa.042.1.i = phi i64 [ %i.ad, %bb.k ], [ 0, %.preheader.i ], [ %i.q, %.preheader56.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.042.1.i, ptr %i.g, align 8, !alias.scope !3250, !noalias !3253
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i34 = phi ptr [ %i.h, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i33 = phi i64 [ %i.i, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i32 = phi i64 [ %i.q, %.preheader56.i ], [ 0, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i34, i64 1
  %i.i = add nsw i64 %.sroa.15.1.i33, -1          ; 2 uses
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i32, i64 10) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 0             ; 2 uses
  %5 = extractvalue { i64, i1 } %3, 1
  %i.j = load i8, ptr %.sroa.0.1.i34, align 1, !alias.scope !3253, !noalias !3250, !noundef !16 ; 2 uses
  br i1 %5, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %bb.h, label %.loopexit58.i

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.n = add i8 %i.j, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.j, label %.loopexit58.i

bb.h:                                             ; preds = %bb.f
  %i.p = zext nneg i32 %i.l to i64
  %i.q = add i64 %4, %i.p                         ; 3 uses
  %i.r = icmp ult i64 %i.q, %4
  br i1 %i.r, label %bb.i, label %.preheader56.i, !prof !49

.loopexit58.i:                                    ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.s, align 1, !alias.scope !3250, !noalias !3253
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.t, align 1, !alias.scope !3250, !noalias !3253
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

bb.j:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.u, align 1, !alias.scope !3250, !noalias !3253
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.k
  %.sroa.0.269.i = phi ptr [ %i.ab, %bb.k ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.aa, %bb.k ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ad, %bb.k ], [ 0, %.preheader.i ]
  %i.v = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !3253, !noalias !3250, !noundef !16
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.z = mul i64 %.sroa.042.267.i, 10
  %i.aa = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = add i64 %i.z, %i.ac                     ; 2 uses
  %.not53.i = icmp eq i64 %i.aa, 0
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ae, align 1, !alias.scope !3250, !noalias !3253
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %bb.b, %bb.d, %.loopexit.i, %.loopexit58.i, %bb.i, %bb.j, %bb.l
  %.sink.i = phi i8 [ 1, %.loopexit58.i ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.d ], [ 0, %.loopexit.i ], [ 1, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !3250, !noalias !3253
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextIBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIB2j_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(560) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(560) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIB2j_INtNtB1A_6bubble6BubbleIB2j_IB2j_IB2j_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB48_6TokensINtNtNtB3r_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB67_6parser6ParserENCINvMs_B1A_B4L_6formatRShNtNtNtBR_2io4util4SinkE0EEEss_0NCB4A_st_0EEEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1200) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1200) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIB2j_INtNtB1A_6bubble6BubbleIB2j_IB2j_IB2j_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB48_6TokensINtNtNtB3r_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB67_6parser6ParserENCINvMs_B1A_B4L_6formatRShQINtNtNtBR_2io6cursor6CursorINtNtB7_3vec3VechEEE0EEEss_0NCB4A_st_0EEEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1200) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1200) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtB1y_9ProcessorIBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(368) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(368) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_19format_hex_patterns17FormatHexPatternsINtB1y_9ProcessorIBy_IB36_IB36_IBy_IB36_IB36_IBy_IB36_IB36_INtNtB1A_6bubble6BubbleIB43_IB36_INtNtB1A_8comments16CommentProcessorIB36_INtNtB1A_6tokens6TokensINtNtNtNtBR_4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6m_6parser6ParserENCINvMs_B1A_NtB1A_9Formatter6formatRShNtNtNtBR_2io4util4SinkE0EEEEENCINvMs0_B1A_B7C_11format_implB5e_Es1_0NCB8x_s2_0ENCB8x_s3_0NCB8x_s4_0EEEEEEEEEEEEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(400) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_19format_hex_patterns17FormatHexPatternsINtB1y_9ProcessorIBy_IB36_IB36_IBy_IB36_IB36_IBy_IB36_IB36_INtNtB1A_6bubble6BubbleIB43_IB36_INtNtB1A_8comments16CommentProcessorIB36_INtNtB1A_6tokens6TokensINtNtNtNtBR_4iter8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6m_6parser6ParserENCINvMs_B1A_NtB1A_9Formatter6formatRShQINtNtNtBR_2io6cursor6CursorINtNtB7_3vec3VechEEE0EEEEENCINvMs0_B1A_B7C_11format_implB5e_Es1_0NCB8W_s2_0ENCB8W_s3_0NCB8W_s4_0EEEEEEEEEEEEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(400) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(400) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_5align5AlignINtB1y_9ProcessorIB2E_IB2E_INtNtB1A_6bubble6BubbleIB2E_IB2E_IB2E_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB4y_6TokensINtNtNtB3R_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6x_6parser6ParserENCINvMs_B1A_B5b_6formatRShNtNtNtBR_2io4util4SinkE0EEEss_0NCB50_st_0EEEEEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1424) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1424) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_INtNtCsbRBQYsxaRdD_10yara_x_fmt9processor7ContextINtNtB1A_5align5AlignINtB1y_9ProcessorIB2E_IB2E_INtNtB1A_6bubble6BubbleIB2E_IB2E_IB2E_IBy_DNtNtNtNtBR_4iter6traits8iterator8Iteratorp4ItemNtNtB1A_6tokens5TokenEL_EEEENCINvMs0_B1A_NtB1A_9Formatter11format_implINtB4y_6TokensINtNtNtB3R_8adapters7inspect7InspectINtNtCsfF8zpZz1lvn_13yara_x_parser3cst9CSTStreamNtNtB6x_6parser6ParserENCINvMs_B1A_B5b_6formatRShQINtNtNtBR_2io6cursor6CursorINtNtB7_3vec3VechEEE0EEEss_0NCB50_st_0EEEEEEEEp6OutputuEL_EIBL_TQB1v_EE4callCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(1424) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(1424) %1) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !55, !noundef !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !16, !nonnull !16
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.a) #37
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !197, !noalias !3255, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskIqAKC4t9Ft_2yr.exit, label %bb.b, !prof !1146

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) ; 0 uses
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskIqAKC4t9Ft_2yr.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CskIqAKC4t9Ft_2yr.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  %i.d = call { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef %.sroa.6.039) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
end_hunk_0
begin_hunk_1_@_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr
declare hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6ThreadNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsfF8zpZz1lvn_13yara_x_parser3cst11syntax_kind10SyntaxKindNtB6_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19assert_failed_inner(i8 noundef range(i8 0, 3), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core5slice10specializeSINtNtNtB8_3mem12maybe_uninit11MaybeUninithEINtB4_8SpecFillBK_E9spec_fillCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), i8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueE32forget_allocation_drop_remainingCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtB6_3vec3VechEENtNtB4_4read4Read8read_bufCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCsaeRQ2XwCvzm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtB8_5value23BorrowedStrDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsa_NtNtCsgTIQnf6SZNZ_7figment5value2deNtB6_8RawValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtBV_5value17UsizeDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsa_NtNtCsgTIQnf6SZNZ_7figment5value2deNtB6_8RawValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtNtNtCs1zfV5xdjBAP_9toml_edit2de5value17ValueDeserializerECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(184)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB6_3TagNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtBR_5value17UsizeDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs6_NtNtCsgTIQnf6SZNZ_7figment5value3tagNtB6_3TagNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtNtNtCs1zfV5xdjBAP_9toml_edit2de5value17ValueDeserializerECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(184)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsb_NtNtCsgTIQnf6SZNZ_7figment5value2deNtNtB8_5value5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtB10_5value17UsizeDeserializerNtNtCs1zfV5xdjBAP_9toml_edit2de5ErrorEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsb_NtNtCsgTIQnf6SZNZ_7figment5value2deNtNtB8_5value5ValueNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtNtNtCs1zfV5xdjBAP_9toml_edit2de5value17ValueDeserializerECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(184)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterhEENtNtBc_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB2A_s_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB43_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5h_6StringINtNtB47_7collect6ExtendcE6extendINtNtB8_5chain5ChainBN_IBY_INtNtBc_6option4IterB5K_ENtNtNtBc_3str4iter5CharsNCB2A_s0_0EEE0E0EB2M_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterhEENtNtBc_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB2A_s_0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB4b_8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB5p_6StringINtNtB4f_7collect6ExtendcE6extendINtNtB8_5chain5ChainBN_IBY_INtNtBc_6option4IterB5S_ENtNtNtBc_3str4iter5CharsNCB2A_s0_0EEE0E0EB2M_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local11destructors10linux_like8register(ptr noundef, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors5array4SlotNtNtCsG258MDvU3F_3std4path7PathBufEE16into_boxed_sliceCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors5array4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageEE16into_boxed_sliceB1F_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors5array4SlotNtNtCsG258MDvU3F_3std4path7PathBufEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2X_3ops5range5RangejENCNvMs_BX_INtBX_7ChannelB1R_E13with_capacity0EE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsgqCuqWkNCVj_17crossbeam_channel7flavors5array4SlotNtNtCskIqAKC4t9Ft_2yr4walk7MessageEEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2X_3ops5range5RangejENCNvMs_BX_INtBX_7ChannelB1R_E13with_capacity0EE9from_iterB1V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvCs8nqbrUBEgxJ_4unty10type_equalhhECskIqAKC4t9Ft_2yr() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1Y_6StringINtNtBZ_7collect6ExtendcE6extendINtNtNtB11_8adapters5chain5ChainINtNtB3f_3map3MapINtNtB3f_7flatten7FlatMapINtNtB3f_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json000ENCB5C_s_0EIB3Y_INtNtBb_6option4IterB2r_ENtNtNtBb_3str4iter5CharsNCB5C_s0_0EEE0E0INtB7_5FnMutTucEE8call_mutB5O_(ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef range(i32 0, 1114112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1Y_6StringINtNtBZ_7collect6ExtendcE6extendINtNtNtB11_8adapters5chain5ChainINtNtB3f_3map3MapINtNtB3f_7flatten7FlatMapINtNtB3f_4take4TakeINtNtNtBb_5slice4iter4IterhEENtNtBb_5ascii13EscapeDefaultNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler24patterns_to_string_jsons000ENCB5C_s_0EIB3Y_INtNtBb_6option4IterB2r_ENtNtNtBb_3str4iter5CharsNCB5C_s0_0EEE0E0INtB7_5FnMutTucEE8call_mutB5O_(ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef range(i32 0, 1114112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #24

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs7gfv9tzbXmh_6yara_x8compiler3wshINtB5_22WarningSuppressionHookNtNtCsfF8zpZz1lvn_13yara_x_parser6parser6ParserNCINvMs3_B7_NtB7_8Compiler10add_sourceNtB7_10SourceCodeE0ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(568)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCsfF8zpZz1lvn_13yara_x_parser6parserNtB2_6ParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(376)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtCs1ZTs3ySsPIM_12clap_builder5errorNtB2_5Error24insert_context_uncheckedB4_(ptr noalias noundef nonnull align 8, i8 noundef range(i8 0, 17), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser8features11suggestions12did_you_meanRNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtCskKLDkoKarTP_4core5slice4iter4IterB1i_EECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCs1ZTs3ySsPIM_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RINvMNtCs1ZTs3ySsPIM_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj3_EB5_(ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RINvMNtCs1ZTs3ySsPIM_12clap_builder5errorNtB3_5Error24extend_context_uncheckedKj2_EB5_(ptr noalias noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #11

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs1ZTs3ySsPIM_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs_NtNtCs1ZTs3ySsPIM_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 2 ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs1ZTs3ySsPIM_12clap_builder5error6format13get_help_flag(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs1ZTs3ySsPIM_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCs1ZTs3ySsPIM_12clap_builder5errorNtB5_7Message9formatted(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(126)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #8

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #25

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #26

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE7reserveCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE12slice_rangesNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchE8grow_oneCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7SectionE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report7CodeLocNtNtB7_6string6StringEE8grow_oneBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs1EHlS6WA7C6_6object(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE8elementsCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs8_NtCsG258MDvU3F_3std2fsRNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCskIqAKC4t9Ft_2yr8commands7command(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionRNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCskIqAKC4t9Ft_2yr8commands3cli(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write14write_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write18write_all_vectored(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmt(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsda7QBXU1nyo_13clap_complete3aot9generator8generateNtNtNtB4_6shells5shell5ShellReECskIqAKC4t9Ft_2yr(i8 noundef range(i8 0, 5), ptr noalias nofree noundef align 8 dereferenceable(712), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9parse_refCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser10parse_ref_CskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser15possible_valuesCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsc_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser9clone_anyCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs10_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserhNtB6_18ValueParserFactory12value_parser(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMst_NtNtCs1ZTs3ySsPIM_12clap_builder7builder12value_parserINtB6_20RangedI64ValueParserhE5rangeINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromxEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCskIqAKC4t9Ft_2yr8commands16compilation_args(ptr dead_on_unwind noalias nofree noundef writable sret([4200 x i8]) align 8 captures(none) dereferenceable(4200)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionRNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onejECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionRjEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_onehECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionRhEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs9_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCskIqAKC4t9Ft_2yr4walkNtB4_9ParWalker6filter(ptr noalias nofree noundef align 8 dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB5_9ParWalker4walkNtNtNtB7_8commands3fix16FixEncodingStateuNCNvBP_17exec_fix_encoding0NCB1u_s_0NCB1u_s0_0NCB1u_s1_0NCB1u_s2_0EB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefTIB1d_NtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([744 x i8]) align 8 captures(none) dereferenceable(744), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB5_7Warning7patches(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB4_5Patch6origin(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB13_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE11rustc_entryCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEEE14insert_no_growCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBR_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBO_3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report5PatchEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtNtCskKLDkoKarTP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB4_5Patch4span(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs_NtCscK5W4trzgIe_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCskIqAKC4t9Ft_2yr(ptr noundef nonnull) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsEB1G_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionRNtNtNtCskIqAKC4t9Ft_2yr8commands4dump13OutputFormatsEEB1V_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches12try_get_manyNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesEB1H_(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtB5_7matches11arg_matches9ValuesRefNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesEEEB2z_(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCs8CCKhUbE3L4_9crossterm3ttyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_5IsTty6is_ttyCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio5stdin() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtCsG258MDvU3F_3std2io5stdioNtB5_5StdinNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules4mods10invoke_all(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCskIqAKC4t9Ft_2yr8commands4dump16SupportedModulesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefB12_EE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB5_2PENtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCskIStwd7HrDO_12yara_x_proto4jsonINtB2_10SerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutE11with_colorsCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(64), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4modsNtB5_7ModulesNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4mods7ModulesNtB2_10MessageDyn14descriptor_dynCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4mods7ModulesNtB2_10MessageDyn14merge_from_dynCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4mods7ModulesNtB2_10MessageDyn30write_to_with_cached_sizes_dynCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4mods7ModulesNtB2_10MessageDyn16compute_size_dynCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4mods7ModulesNtB2_10MessageDyn18is_initialized_dynCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXNtCsg2CeFYmfPbl_8protobuf11message_dynNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4mods7ModulesNtB2_10MessageDyn18special_fields_dynCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8) unnamed_addr #2
end_hunk_1
