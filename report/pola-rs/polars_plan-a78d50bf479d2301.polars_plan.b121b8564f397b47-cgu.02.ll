Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11832
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvXsq_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !178631 !guid !178640 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178648
  %i.b = load ptr, ptr %i.a, align 8, !dbg !178648, !nonnull !4700, !noundef !4700
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !178649
  %i.d = load i64, ptr %i.c, align 8, !dbg !178649, !noundef !4700
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !178650
  ret i1 %i.e, !dbg !178651
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsq_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s8_9___VisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4681 !guid !178652 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1303, i64 noundef 33), !dbg !178653
  ret i1 %i.a, !dbg !178654
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsr_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s7_14___FieldVisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4678 !guid !178655 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1002, i64 noundef 16), !dbg !178656
  ret i1 %i.a, !dbg !178657
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXst_NtCs721FSB8TeJg_9rmp_serde6decodeINtB5_13VariantAccessINtB5_10ReadReaderQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEENtNtB7_6config13DefaultConfigENtNtCs40veMcpUDl8_10serde_core2de13VariantAccess12unit_variantCsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 !dbg !2329 !guid !178659 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !178660
  call void @_RINvNtCs9ZYpNh434G8_3rmp6decode8read_nilINtNtCs721FSB8TeJg_9rmp_serde6decode10ReadReaderQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %1), !dbg !178660
  %i.b = load i8, ptr %i.a, align 8, !dbg !178662, !range !4865, !noundef !4700 ; 3 uses
  %.not = icmp eq i8 %i.b, 3, !dbg !178662
  br i1 %.not, label %bb.c, label %bb.b, !dbg !178663

bb.b:                                             ; preds = %bb.a
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !178664
  %.sroa.515.0.copyload = load i8, ptr %.sroa.515.0..sroa_idx, align 1, !dbg !178664
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !178664
  %.sroa.616.0.copyload = load i8, ptr %.sroa.616.0..sroa_idx, align 2, !dbg !178664
  %.sroa.818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !178664
  %.sroa.818.0.copyload = load ptr, ptr %.sroa.818.0..sroa_idx, align 8, !dbg !178664 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !178665
  %i.c = icmp eq i8 %i.b, 2, !dbg !178666
  br i1 %i.c, label %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit, label %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split, !dbg !178666

_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.818.0.copyload) ]
  br label %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit, !dbg !178667

_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit: ; preds = %bb.b, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split
  %.sroa.420.0 = phi i8 [ %.sroa.515.0.copyload, %bb.b ], [ undef, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split ], !dbg !178668
  %.sroa.521.0 = phi i8 [ %.sroa.616.0.copyload, %bb.b ], [ undef, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split ], !dbg !178668
  %.sroa.623.0 = phi ptr [ undef, %bb.b ], [ %.sroa.818.0.copyload, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit.sink.split ], !dbg !178668
  store i8 %i.b, ptr %0, align 8, !dbg !178667
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !178667
  store i8 %.sroa.420.0, ptr %.sroa.420.0..sroa_idx, align 1, !dbg !178667
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !178667
  store i8 %.sroa.521.0, ptr %.sroa.521.0..sroa_idx, align 2, !dbg !178667
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !178667
  store ptr %.sroa.623.0, ptr %.sroa.623.0..sroa_idx, align 8, !dbg !178667
  br label %bb.d, !dbg !178669

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !178665
  store i8 9, ptr %0, align 8, !dbg !178670
  br label %bb.d, !dbg !178669

bb.d:                                             ; preds = %bb.c, %_RNvXs3_NtCs721FSB8TeJg_9rmp_serde6decodeNtB5_5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCs9ZYpNh434G8_3rmp6decode14ValueReadErrorE4from.exit
  ret void, !dbg !178669
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 5) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !178671 !guid !178842 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3, !dbg !178886
  br i1 %i.d, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.b, !dbg !178886

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.o, %bb.b, %bb.q, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dk, %bb.q ], [ %i.di, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.o ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ], !dbg !178887
  %i.e = trunc nuw i8 %.sroa.0.0 to i1, !dbg !178888
  ret i1 %i.e, !dbg !178888

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3, !dbg !178889
  br i1 %i.f, label %bb.q, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !178889

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178848), !dbg !178890
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178849), !dbg !178890
  %i.g = load i8, ptr %0, align 1, !dbg !178891, !alias.scope !178848, !noundef !4700 ; 5 uses
  %i.h = add nsw i64 %1, -1, !dbg !178892         ; 2 uses
  %i.i = add nsw i64 %1, -1, !dbg !178893         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i, !dbg !178894
  %i.k = load i8, ptr %i.j, align 1, !dbg !178894, !alias.scope !178848, !noalias !178855, !noundef !4700 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.k, %i.g, !dbg !178894
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.f, !dbg !178895

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %.not.i = icmp eq i64 %i.i, 0, !dbg !178896
  br i1 %.not.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1, !dbg !178897

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1: ; preds = %bb.c
  %i.l = add nsw i64 %1, -2, !dbg !178893         ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l, !dbg !178894
  %i.n = load i8, ptr %i.m, align 1, !dbg !178894, !alias.scope !178848, !noalias !178855, !noundef !4700 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.g, !dbg !178894
  br i1 %.not.i.not.i.i.1, label %bb.d, label %bb.f, !dbg !178895

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1
  %.not.i.1 = icmp eq i64 %i.l, 0, !dbg !178896
  br i1 %.not.i.1, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2, !dbg !178897

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2: ; preds = %bb.d
  %i.o = add nsw i64 %1, -3, !dbg !178893         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !178894
  %i.q = load i8, ptr %i.p, align 1, !dbg !178894, !alias.scope !178848, !noalias !178855, !noundef !4700 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.g, !dbg !178894
  br i1 %.not.i.not.i.i.2, label %bb.e, label %bb.f, !dbg !178895

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2
  %.not.i.2 = icmp eq i64 %i.o, 0, !dbg !178896
  br i1 %.not.i.2, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3, !dbg !178897

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3: ; preds = %bb.e
  %i.r = add nsw i64 %1, -4, !dbg !178893         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r, !dbg !178894
  %i.t = load i8, ptr %i.s, align 1, !dbg !178894, !alias.scope !178848, !noalias !178855, !noundef !4700 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.t, %i.g, !dbg !178894
  br i1 %.not.i.not.i.i.3, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, label %bb.f, !dbg !178895

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %.lcssa37 = phi i64 [ %i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.l, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1 ], [ %i.o, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2 ], [ %i.r, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3 ], !dbg !178893 ; 6 uses
  %.lcssa35 = phi i8 [ %i.k, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ %i.n, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.1 ], [ %i.q, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.2 ], [ %i.t, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3 ], !dbg !178894
  %i.u = add nuw nsw i64 %1, 15, !dbg !178898     ; 3 uses
  %i.v = icmp ult i64 %3, %i.u, !dbg !178899
  br i1 %i.v, label %.lr.ph.split.us.i.i, label %bb.g, !dbg !178899

.lr.ph.split.us.i.i:                              ; preds = %bb.f
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 5) %1), !dbg !178900, !alias.scope !178856, !noalias !178857
  %i.w = icmp eq i32 %bcmp.i.i.us23.i.i, 0, !dbg !178900
  br i1 %i.w, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader, !dbg !178901

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.x = add nsw i64 %3, -1, !dbg !178902         ; 2 uses
  %.not28.i.i31 = icmp ugt i64 %1, %i.x, !dbg !178903
  br i1 %.not28.i.i31, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !178903

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i
  %i.y = phi i64 [ %i.ab, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i ], [ %i.x, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader ]
  %.pn.i32 = phi ptr [ %i.z, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.i32, i64 1, !dbg !178904 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.z, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 5) %1), !dbg !178900, !alias.scope !178856, !noalias !178857
  %i.aa = icmp eq i32 %bcmp.i.i.us.i.i, 0, !dbg !178900
  br i1 %i.aa, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i, !dbg !178901

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ab = add nsw i64 %i.y, -1, !dbg !178902      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ab, !dbg !178903
  br i1 %.not28.i.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !178903

bb.g:                                             ; preds = %bb.f
  %i.ac = insertelement <16 x i8> poison, i8 %i.g, i64 0, !dbg !178905
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !178905 ; 6 uses
  %i.ae = insertelement <16 x i8> poison, i8 %.lcssa35, i64 0, !dbg !178906
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !178906 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !178907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !178908, !noalias !178856
  store ptr %2, ptr %i.a, align 8, !dbg !178909, !noalias !178856
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !178909
  store i64 %3, ptr %i.ah, align 8, !dbg !178909, !noalias !178856
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !178909
  store ptr %i.ag, ptr %i.ai, align 8, !dbg !178909, !noalias !178856
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !178909
  store i64 %i.h, ptr %i.aj, align 8, !dbg !178909, !noalias !178856
  %i.ak = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not105.i = icmp ult i64 %i.ak, %3, !dbg !178910
  br i1 %.not105.i, label %.lr.ph.i, label %.preheader.i, !dbg !178910

.preheader.i:                                     ; preds = %bb.k, %bb.g
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.g ], [ %.sroa.014.2.3.i, %bb.k ], !dbg !178911 ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.cc, %bb.k ], !dbg !178912 ; 2 uses
  %i.al = add i64 %.sroa.06.0.lcssa.i, %i.u, !dbg !178913
  %i.am = icmp uge i64 %i.al, %3, !dbg !178913
  %i.an = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.am, i1 true, i1 %i.an, !dbg !178913
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !178913

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.sroa.06.098.i = phi i64 [ %i.cc, %bb.k ], [ 0, %bb.g ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ao, align 1, !dbg !178914, !alias.scope !178849, !noalias !178866
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.lcssa37, !dbg !178915
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ap, align 1, !dbg !178916, !alias.scope !178849, !noalias !178866
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ad, !dbg !178917
  %i.ar = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.af, !dbg !178918
  %i.as = and <16 x i1> %i.aq, %i.ar, !dbg !178919
  %4 = bitcast <16 x i1> %i.as to i16, !dbg !178920 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !178921 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.at, align 1, !dbg !178914, !alias.scope !178849, !noalias !178866
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.lcssa37, !dbg !178915
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.au, align 1, !dbg !178916, !alias.scope !178849, !noalias !178866
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ad, !dbg !178917
  %i.aw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.af, !dbg !178918
  %i.ax = and <16 x i1> %i.av, %i.aw, !dbg !178919
  %5 = bitcast <16 x i1> %i.ax to i16, !dbg !178920 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 32, !dbg !178921 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.ay, align 1, !dbg !178914, !alias.scope !178849, !noalias !178866
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.lcssa37, !dbg !178915
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.az, align 1, !dbg !178916, !alias.scope !178849, !noalias !178866
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ad, !dbg !178917
  %i.bb = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.af, !dbg !178918
  %i.bc = and <16 x i1> %i.ba, %i.bb, !dbg !178919
  %6 = bitcast <16 x i1> %i.bc to i16, !dbg !178920 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 48, !dbg !178921 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bd, align 1, !dbg !178914, !alias.scope !178849, !noalias !178866
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.lcssa37, !dbg !178915
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.be, align 1, !dbg !178916, !alias.scope !178849, !noalias !178866
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ad, !dbg !178917
  %i.bg = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.af, !dbg !178918
  %i.bh = and <16 x i1> %i.bf, %i.bg, !dbg !178919
  %i.bi = bitcast <16 x i1> %i.bh to i16, !dbg !178920 ; 2 uses
  %i.bj = icmp eq i16 %4, 0, !dbg !178922
  br i1 %i.bj, label %.preheader91.1.i, label %bb.l, !dbg !178922

.preheader91.1.i:                                 ; preds = %bb.l, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.ch, %bb.l ], !dbg !178923 ; 3 uses
  %i.bk = icmp eq i16 %5, 0, !dbg !178922
  br i1 %i.bk, label %.preheader91.2.i, label %bb.h, !dbg !178922

bb.h:                                             ; preds = %.preheader91.1.i
  %i.bl = or disjoint i64 %.sroa.06.098.i, 16, !dbg !178924
  %i.bm = trunc nuw i8 %.sroa.014.2.i to i1, !dbg !178925
  %i.bn = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bl, i16 noundef %5, i1 noundef zeroext %i.bm) #49, !dbg !178926
  %i.bo = zext i1 %i.bn to i8, !dbg !178927
  %i.bp = or i8 %.sroa.014.2.i, %i.bo, !dbg !178927
  br label %.preheader91.2.i, !dbg !178928

.preheader91.2.i:                                 ; preds = %bb.h, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.bp, %bb.h ], !dbg !178923 ; 3 uses
  %i.bq = icmp eq i16 %6, 0, !dbg !178922
  br i1 %i.bq, label %.preheader91.3.i, label %bb.i, !dbg !178922

bb.i:                                             ; preds = %.preheader91.2.i
  %i.br = or disjoint i64 %.sroa.06.098.i, 32, !dbg !178924
  %i.bs = trunc nuw i8 %.sroa.014.2.1.i to i1, !dbg !178925
  %i.bt = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.br, i16 noundef %6, i1 noundef zeroext %i.bs) #49, !dbg !178926
  %i.bu = zext i1 %i.bt to i8, !dbg !178927
  %i.bv = or i8 %.sroa.014.2.1.i, %i.bu, !dbg !178927
  br label %.preheader91.3.i, !dbg !178928

.preheader91.3.i:                                 ; preds = %bb.i, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.bv, %bb.i ], !dbg !178923 ; 3 uses
  %i.bw = icmp eq i16 %i.bi, 0, !dbg !178922
  br i1 %i.bw, label %bb.k, label %bb.j, !dbg !178922

bb.j:                                             ; preds = %.preheader91.3.i
  %i.bx = or disjoint i64 %.sroa.06.098.i, 48, !dbg !178924
  %i.by = trunc nuw i8 %.sroa.014.2.2.i to i1, !dbg !178925
  %i.bz = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bx, i16 noundef %i.bi, i1 noundef zeroext %i.by) #49, !dbg !178926
  %i.ca = zext i1 %i.bz to i8, !dbg !178927
  %i.cb = or i8 %.sroa.014.2.2.i, %i.ca, !dbg !178927
  br label %bb.k, !dbg !178928

bb.k:                                             ; preds = %bb.j, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.cb, %bb.j ], !dbg !178923 ; 2 uses
  %i.cc = add i64 %.sroa.06.098.i, 64, !dbg !178929 ; 3 uses
  %i.cd = add i64 %i.cc, %i.ak, !dbg !178910
  %i.ce = icmp uge i64 %i.cd, %3, !dbg !178910
  %i.cf = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.ce, i1 true, i1 %i.cf, !dbg !178910
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i, !dbg !178910

bb.l:                                             ; preds = %.lr.ph.i
  %i.cg = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %4, i1 noundef zeroext false) #49, !dbg !178926
  %i.ch = zext i1 %i.cg to i8, !dbg !178927
  br label %.preheader91.1.i, !dbg !178928

._crit_edge.i:                                    ; preds = %bb.m, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.m ], !dbg !178911 ; 2 uses
  %.lcssa.i = phi i1 [ %i.an, %.preheader.i ], [ %i.db, %bb.m ]
  %i.ci = sub nuw i64 %3, %i.h, !dbg !178930
  %i.cj = add i64 %i.ci, -16, !dbg !178930        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj, !dbg !178931 ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.ck, align 1, !dbg !178932, !alias.scope !178849, !noalias !178877
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.lcssa37, !dbg !178933
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.cl, align 1, !dbg !178934, !alias.scope !178849, !noalias !178877
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ad, !dbg !178935
  %i.cn = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.af, !dbg !178936
  %i.co = and <16 x i1> %i.cm, %i.cn, !dbg !178937
  %i.cp = bitcast <16 x i1> %i.co to i16, !dbg !178938 ; 2 uses
  %i.cq = icmp eq i16 %i.cp, 0, !dbg !178939
  br i1 %i.cq, label %bb.o, label %bb.p, !dbg !178939

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.m
  %.sroa.06.1101.i = phi i64 [ %i.cy, %bb.m ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i, !dbg !178940 ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.cr, align 1, !dbg !178941, !alias.scope !178849, !noalias !178881
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.lcssa37, !dbg !178942
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.cs, align 1, !dbg !178943, !alias.scope !178849, !noalias !178881
  %i.ct = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ad, !dbg !178944
  %i.cu = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.af, !dbg !178945
  %i.cv = and <16 x i1> %i.ct, %i.cu, !dbg !178946
  %i.cw = bitcast <16 x i1> %i.cv to i16, !dbg !178947 ; 2 uses
  %i.cx = icmp eq i16 %i.cw, 0, !dbg !178948
  br i1 %i.cx, label %bb.m, label %bb.n, !dbg !178948

bb.m:                                             ; preds = %bb.n, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.dd, %bb.n ], !dbg !178923 ; 2 uses
  %i.cy = add i64 %.sroa.06.1101.i, 16, !dbg !178949 ; 2 uses
  %i.cz = add i64 %i.cy, %i.u, !dbg !178913
  %i.da = icmp uge i64 %i.cz, %3, !dbg !178913
  %i.db = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.da, %i.db, !dbg !178913
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !178913

bb.n:                                             ; preds = %.lr.ph102.i
  %i.dc = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.cw, i1 noundef zeroext false) #49, !dbg !178950
  %i.dd = zext i1 %i.dc to i8, !dbg !178951
  br label %bb.m, !dbg !178952

bb.o:                                             ; preds = %bb.p, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dg, %bb.p ], !dbg !178923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !178953, !noalias !178856
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !178954

bb.p:                                             ; preds = %._crit_edge.i
  %i.de = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cj, i16 noundef %i.cp, i1 noundef zeroext %.lcssa.i) #49, !dbg !178955
  %i.df = zext i1 %i.de to i8, !dbg !178956
  %i.dg = or i8 %.sroa.014.3.lcssa.i, %i.df, !dbg !178956
  br label %bb.o, !dbg !178957

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.3, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !178958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !178958
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1), !dbg !178959
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b) #49, !dbg !178960
  %i.dh = load i64, ptr %i.c, align 8, !dbg !178961, !range !4742, !noundef !4700
  %i.di = trunc nuw nsw i64 %i.dh to i8, !dbg !178962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !178963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !178963
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !178963

bb.q:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1), !dbg !178964
  %i.dj = icmp eq i32 %bcmp, 0, !dbg !178964
  %i.dk = zext i1 %i.dj to i8, !dbg !178964
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !178965
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXst_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s9_9___VisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4683 !guid !178966 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1304, i64 noundef 33), !dbg !178967
  ret i1 %i.a, !dbg !178968
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsu_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_exprs_1__NtBg_12FunctionExprNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1u_7Visitor10visit_enumNtB5_s8_14___FieldVisitorB2F_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !4680 !guid !178969 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1002, i64 noundef 16), !dbg !178970
  ret i1 %i.a, !dbg !178971
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !178972 !guid !179044 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !dbg !179060, !range !4742, !noundef !4700
  %i.b = trunc nuw i64 %i.a to i1, !dbg !179061
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader, !dbg !179061

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !5106, !alias.scope !179045, !noundef !4700
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph, !dbg !179062

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !179045, !nonnull !4700, !noundef !4700 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !179045, !noundef !4700 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !179045 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179046), !dbg !179063
  %i.l = trunc nuw i8 %.promoted26 to i1, !dbg !179064 ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0, !dbg !179065
  br i1 %i.m, label %bb.d, label %bb.b, !dbg !179065

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k, !dbg !179066
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel, !dbg !179066

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k, !dbg !179067
  br i1 %i.n, label %bb.d, label %.loopexit74, !dbg !179068

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted, !dbg !179069
  %i.p = load i8, ptr %i.o, align 1, !dbg !179069, !alias.scope !179047, !noalias !179048, !noundef !4700
  %i.q = icmp sgt i8 %i.p, -65, !dbg !179070
  br i1 %i.q, label %bb.d, label %.loopexit74, !dbg !179068

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted, !dbg !179071 ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k, !dbg !179072
  br i1 %i.s, label %.loopexit75, label %bb.e, !dbg !179073

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !dbg !179074, !noalias !179052, !noundef !4700 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1, !dbg !179075
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel, !dbg !179075

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !179076
  %i.w = and i8 %i.t, 31, !dbg !179077
  %i.x = zext nneg i8 %i.w to i32, !dbg !179077   ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1, !dbg !179078
  %i.z = icmp samesign ne i64 %i.y, %i.k, !dbg !179078
  tail call void @llvm.assume(i1 %i.z), !dbg !179079
  %i.aa = load i8, ptr %i.v, align 1, !dbg !179080, !noalias !179052, !noundef !4700
  %i.ab = shl nuw nsw i32 %i.x, 6, !dbg !179081
  %i.ac = and i8 %i.aa, 63, !dbg !179082
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !179082 ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad, !dbg !179081
  %i.af = icmp samesign ugt i8 %i.t, -33, !dbg !179083
  br i1 %i.af, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel, label %bb.g, !dbg !179083

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2, !dbg !179084
  %i.ah = add nuw nsw i64 %.promoted, 2, !dbg !179085
  %i.ai = icmp samesign ne i64 %i.ah, %i.k, !dbg !179085
  tail call void @llvm.assume(i1 %i.ai), !dbg !179086
  %i.aj = load i8, ptr %i.ag, align 1, !dbg !179087, !noalias !179052, !noundef !4700
  %i.ak = shl nuw nsw i32 %i.ad, 6, !dbg !179088
  %i.al = and i8 %i.aj, 63, !dbg !179089
  %i.am = zext nneg i8 %i.al to i32, !dbg !179089
  %i.an = or disjoint i32 %i.ak, %i.am, !dbg !179088 ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12, !dbg !179090
  %i.ap = or disjoint i32 %i.an, %i.ao, !dbg !179091
  %i.aq = icmp samesign ugt i8 %i.t, -17, !dbg !179092
  br i1 %i.aq, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel, label %bb.g, !dbg !179092

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3, !dbg !179093
  %i.as = add nuw nsw i64 %.promoted, 3, !dbg !179094
  %i.at = icmp samesign ne i64 %i.as, %i.k, !dbg !179094
  tail call void @llvm.assume(i1 %i.at), !dbg !179095
  %i.au = load i8, ptr %i.ar, align 1, !dbg !179096, !noalias !179052, !noundef !4700
  %i.av = shl nuw nsw i32 %i.x, 18, !dbg !179097
  %i.aw = and i32 %i.av, 1835008, !dbg !179097
  %i.ax = shl nuw nsw i32 %i.an, 6, !dbg !179098
  %i.ay = and i8 %i.au, 63, !dbg !179099
  %i.az = zext nneg i8 %i.ay to i32, !dbg !179099
  %i.ba = or disjoint i32 %i.ax, %i.az, !dbg !179098
  %i.bb = or disjoint i32 %i.ba, %i.aw, !dbg !179100
  br label %bb.g, !dbg !179101

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32, !dbg !179102
  br label %bb.g, !dbg !179103

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112, !dbg !179104
  tail call void @llvm.assume(i1 %i.bd), !dbg !179104
  br i1 %i.l, label %.loopexit, label %bb.h, !dbg !179105

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128, !dbg !179106
  br i1 %i.be, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i, !dbg !179106

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@llvm.umin.i16
!178720 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan", scope: !4856, file: !4854, line: 20, type: !4701, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178721 = distinct !DILexicalBlock(scope: !178720, file: !4854, line: 21, column: 9)
!178722 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCsfcROwRM8ZtH_11polars_plan", scope: !4853, file: !4850, line: 2123, type: !4701, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178723 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss_0CsfcROwRM8ZtH_11polars_plan", scope: !5981, file: !5022, line: 1822, type: !4716, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178724 = distinct !DISubprogram(name: "{closure#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsfcROwRM8ZtH_11polars_plan", scope: !178859, file: !4911, line: 2910, type: !4716, scopeLine: 2910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178725 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Windows<u8>, (), core::iter::traits::iterator::Iterator::any::check::{closure_env#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>, core::ops::control_flow::ControlFlow<(), ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsfcROwRM8ZtH_11polars_plan", scope: !4914, file: !4911, line: 2501, type: !4701, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178726 = distinct !DILexicalBlock(scope: !178725, file: !4911, line: 2507, column: 9)
!178727 = distinct !DILexicalBlock(scope: !178726, file: !4911, line: 2508, column: 41)
!178728 = distinct !DISubprogram(name: "any<core::slice::iter::Windows<u8>, core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator3anyNCNvNtNtBa_3str7pattern13simd_containss_0ECsfcROwRM8ZtH_11polars_plan", scope: !4914, file: !4911, line: 2903, type: !4701, scopeLine: 2903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178729 = distinct !DILocation(line: 1822, column: 52, scope: !178714, inlinedAt: !178684)
!178730 = distinct !DILocation(line: 2915, column: 14, scope: !178728, inlinedAt: !178729)
!178731 = distinct !DILocation(line: 2509, column: 21, scope: !178727, inlinedAt: !178730)
!178732 = distinct !DILocation(line: 2911, column: 20, scope: !178724, inlinedAt: !178731)
!178733 = distinct !DILocation(line: 1822, column: 60, scope: !178723, inlinedAt: !178732)
!178734 = distinct !DILocation(line: 2124, column: 13, scope: !178722, inlinedAt: !178733)
!178735 = distinct !DILocation(line: 25, column: 22, scope: !178721, inlinedAt: !178734)
!178736 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsfcROwRM8ZtH_11polars_plan", scope: !5669, file: !4836, line: 567, type: !4701, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178737 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsfcROwRM8ZtH_11polars_plan", scope: !4839, file: !4836, line: 18, type: !4701, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178738 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXsY_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan", scope: !178861, file: !4883, line: 1356, type: !4701, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178739 = distinct !DILexicalBlock(scope: !178738, file: !4883, line: 1360, column: 13)
!178740 = distinct !DILocation(line: 2508, column: 34, scope: !178727, inlinedAt: !178730)
!178741 = distinct !DILocation(line: 1361, column: 29, scope: !178739, inlinedAt: !178740)
!178742 = distinct !DILocation(line: 19, column: 15, scope: !178860, inlinedAt: !178741)
!178743 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfcROwRM8ZtH_11polars_plan", scope: !4837, file: !4836, line: 82, type: !4701, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178744 = distinct !DILexicalBlock(scope: !178743, file: !4836, line: 87, column: 5)
!178745 = distinct !DILexicalBlock(scope: !178736, file: !4836, line: 573, column: 13)
!178746 = distinct !DILocation(line: 574, column: 15, scope: !178745, inlinedAt: !178742)
!178747 = distinct !DISubprogram(name: "splat<u8, 16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core9core_simd6vectorINtB2_4SimdhKj10_E5splatCsfcROwRM8ZtH_11polars_plan", scope: !178865, file: !178862, line: 151, type: !4701, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178748 = distinct !DILocation(line: 1825, column: 30, scope: !178714, inlinedAt: !178684)
!178749 = distinct !DILexicalBlock(scope: !178714, file: !5022, line: 1825, column: 5)
!178750 = distinct !DILocation(line: 1826, column: 31, scope: !178749, inlinedAt: !178684)
!178751 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfcROwRM8ZtH_11polars_plan", scope: !4837, file: !4836, line: 82, type: !4701, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178752 = distinct !DILexicalBlock(scope: !178751, file: !4836, line: 87, column: 5)
!178753 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsfcROwRM8ZtH_11polars_plan", scope: !5669, file: !4836, line: 567, type: !4701, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178754 = distinct !DILexicalBlock(scope: !178753, file: !4836, line: 573, column: 13)
!178755 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsfcROwRM8ZtH_11polars_plan", scope: !4839, file: !4836, line: 18, type: !4701, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178756 = distinct !DILexicalBlock(scope: !178749, file: !5022, line: 1826, column: 5)
!178757 = distinct !DILocation(line: 1829, column: 33, scope: !178756, inlinedAt: !178684)
!178758 = distinct !DILocation(line: 19, column: 15, scope: !178755, inlinedAt: !178757)
!178759 = distinct !DILocation(line: 574, column: 15, scope: !178754, inlinedAt: !178758)
!178760 = distinct !DILexicalBlock(scope: !178756, file: !5022, line: 1829, column: 5)
!178761 = distinct !DILexicalBlock(scope: !178760, file: !5022, line: 1832, column: 5)
!178762 = distinct !DILexicalBlock(scope: !178761, file: !5022, line: 1857, column: 5)
!178763 = distinct !DILexicalBlock(scope: !178762, file: !5022, line: 1873, column: 5)
!178764 = distinct !DILexicalBlock(scope: !178763, file: !5022, line: 1874, column: 5)
!178765 = distinct !{!178765, i1 true, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsfcROwRM8ZtH_11polars_plan"}
!178766 = distinct !{!178766, !178765, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsfcROwRM8ZtH_11polars_plan: argument 0"}
!178767 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsfcROwRM8ZtH_11polars_plan", scope: !4721, file: !4720, line: 531, type: !4701, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178768 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr14read_unalignedINtNtNtB4_9core_simd6vector4SimdhKj10_EECsfcROwRM8ZtH_11polars_plan", scope: !4721, file: !4720, line: 1800, type: !4701, scopeLine: 1800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178769 = distinct !DILexicalBlock(scope: !178768, file: !4720, line: 1801, column: 5)
!178770 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtNtB6_9core_simd6vector4SimdhKj10_E14read_unalignedCsfcROwRM8ZtH_11polars_plan", scope: !4748, file: !4746, line: 1207, type: !4701, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178771 = distinct !DISubprogram(name: "{closure#3}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsfcROwRM8ZtH_11polars_plan", scope: !5981, file: !5022, line: 1857, type: !4701, scopeLine: 1857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178772 = distinct !DILexicalBlock(scope: !178764, file: !5022, line: 1879, column: 9)
!178773 = distinct !DILexicalBlock(scope: !178772, file: !5022, line: 1880, column: 9)
!178774 = distinct !DILexicalBlock(scope: !178773, file: !5022, line: 1880, column: 9)
!178775 = distinct !DILocation(line: 1881, column: 24, scope: !178774, inlinedAt: !178684)
!178776 = distinct !DILocation(line: 1860, column: 76, scope: !178771, inlinedAt: !178775)
!178777 = distinct !DILocation(line: 1212, column: 18, scope: !178770, inlinedAt: !178776)
!178778 = distinct !DILocation(line: 1809, column: 9, scope: !178769, inlinedAt: !178777)
!178779 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCsfcROwRM8ZtH_11polars_plan", scope: !4748, file: !4746, line: 829, type: !4701, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178780 = distinct !DILexicalBlock(scope: !178771, file: !5022, line: 1860, column: 9)
!178781 = distinct !DILocation(line: 1863, column: 40, scope: !178780, inlinedAt: !178775)
!178782 = distinct !DILexicalBlock(scope: !178768, file: !4720, line: 1801, column: 5)
!178783 = distinct !DILocation(line: 1863, column: 81, scope: !178780, inlinedAt: !178775)
!178784 = distinct !DILocation(line: 1212, column: 18, scope: !178868, inlinedAt: !178783)
!178785 = distinct !DILocation(line: 1809, column: 9, scope: !178867, inlinedAt: !178784)
!178786 = distinct !DISubprogram(name: "simd_eq<16>", linkageName: "_RNvXs2_NtNtNtNtCscgRAwXFJnXP_4core9core_simd4simd3cmp2eqINtNtBb_6vector4SimdhKj10_ENtB5_13SimdPartialEq7simd_eqCsfcROwRM8ZtH_11polars_plan", scope: !178873, file: !178869, line: 28, type: !4701, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178787 = distinct !DILexicalBlock(scope: !178780, file: !5022, line: 1862, column: 9)
!178788 = distinct !DILocation(line: 1865, column: 32, scope: !178787, inlinedAt: !178775)
!178789 = distinct !DILexicalBlock(scope: !178787, file: !5022, line: 1865, column: 9)
!178790 = distinct !DILocation(line: 1866, column: 31, scope: !178789, inlinedAt: !178775)
!178791 = distinct !DISubprogram(name: "bitand<i8, 16>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_ENtNtNtB9_3ops3bit6BitAnd6bitandCsfcROwRM8ZtH_11polars_plan", scope: !178876, file: !178874, line: 479, type: !4701, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178792 = distinct !DILexicalBlock(scope: !178789, file: !5022, line: 1866, column: 9)
!178793 = distinct !DILocation(line: 1867, column: 29, scope: !178792, inlinedAt: !178775)
!178794 = distinct !DILocation(line: 1860, column: 51, scope: !178771, inlinedAt: !178775)
!178795 = distinct !DILexicalBlock(scope: !178772, file: !5022, line: 1883, column: 9)
!178796 = distinct !DILexicalBlock(scope: !178795, file: !5022, line: 1883, column: 9)
!178797 = distinct !DILexicalBlock(scope: !178796, file: !5022, line: 1884, column: 13)
!178798 = distinct !DILexicalBlock(scope: !178764, file: !5022, line: 1903, column: 5)
!178799 = distinct !DILocation(line: 1904, column: 16, scope: !178798, inlinedAt: !178684)
!178800 = distinct !DILocation(line: 1860, column: 51, scope: !178771, inlinedAt: !178799)
!178801 = distinct !{!178801, i1 true, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsfcROwRM8ZtH_11polars_plan"}
!178802 = distinct !{!178802, !178801, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsfcROwRM8ZtH_11polars_plan: argument 0"}
!178803 = distinct !DILocation(line: 1860, column: 76, scope: !178771, inlinedAt: !178799)
!178804 = distinct !DILocation(line: 1212, column: 18, scope: !178770, inlinedAt: !178803)
!178805 = distinct !DILocation(line: 1809, column: 9, scope: !178769, inlinedAt: !178804)
!178806 = distinct !DILocation(line: 1863, column: 40, scope: !178780, inlinedAt: !178799)
!178807 = distinct !DILocation(line: 1863, column: 81, scope: !178780, inlinedAt: !178799)
!178808 = distinct !DILocation(line: 1212, column: 18, scope: !178868, inlinedAt: !178807)
!178809 = distinct !DILocation(line: 1809, column: 9, scope: !178867, inlinedAt: !178808)
!178810 = distinct !DILocation(line: 1865, column: 32, scope: !178787, inlinedAt: !178799)
!178811 = distinct !DILocation(line: 1866, column: 31, scope: !178789, inlinedAt: !178799)
!178812 = distinct !DILocation(line: 1867, column: 29, scope: !178792, inlinedAt: !178799)
!178813 = distinct !DISubprogram(name: "to_bitmask_impl<i8, u16, 16, 16>", linkageName: "_RINvNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB8_4MaskpKpE10to_bitmask15to_bitmask_implatKj10_KB1w_ECsfcROwRM8ZtH_11polars_plan", scope: !178879, file: !178874, line: 305, type: !4701, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178814 = distinct !DILexicalBlock(scope: !178813, file: !178874, line: 311, column: 13)
!178815 = distinct !DISubprogram(name: "to_bitmask<i8, 16>", linkageName: "_RNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCsfcROwRM8ZtH_11polars_plan", scope: !178880, file: !178874, line: 299, type: !4716, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178816 = distinct !DILexicalBlock(scope: !178792, file: !5022, line: 1867, column: 9)
!178817 = distinct !DILocation(line: 1868, column: 25, scope: !178816, inlinedAt: !178799)
!178818 = distinct !DILocation(line: 326, column: 22, scope: !178815, inlinedAt: !178817)
!178819 = distinct !DILexicalBlock(scope: !178798, file: !5022, line: 1904, column: 5)
!178820 = distinct !DILocation(line: 1892, column: 20, scope: !178764, inlinedAt: !178684)
!178821 = distinct !DILocation(line: 1860, column: 51, scope: !178771, inlinedAt: !178820)
!178822 = distinct !{!178822, i1 true, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsfcROwRM8ZtH_11polars_plan"}
!178823 = distinct !{!178823, !178822, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsfcROwRM8ZtH_11polars_plan: argument 0"}
!178824 = distinct !DILocation(line: 1860, column: 76, scope: !178771, inlinedAt: !178820)
!178825 = distinct !DILocation(line: 1212, column: 18, scope: !178770, inlinedAt: !178824)
!178826 = distinct !DILocation(line: 1809, column: 9, scope: !178769, inlinedAt: !178825)
!178827 = distinct !DILocation(line: 1863, column: 40, scope: !178780, inlinedAt: !178820)
!178828 = distinct !DILocation(line: 1863, column: 81, scope: !178780, inlinedAt: !178820)
!178829 = distinct !DILocation(line: 1212, column: 18, scope: !178868, inlinedAt: !178828)
!178830 = distinct !DILocation(line: 1809, column: 9, scope: !178867, inlinedAt: !178829)
!178831 = distinct !DILocation(line: 1865, column: 32, scope: !178787, inlinedAt: !178820)
!178832 = distinct !DILocation(line: 1866, column: 31, scope: !178789, inlinedAt: !178820)
!178833 = distinct !DILocation(line: 1867, column: 29, scope: !178792, inlinedAt: !178820)
!178834 = distinct !DILocation(line: 1868, column: 25, scope: !178816, inlinedAt: !178820)
!178835 = distinct !DILocation(line: 326, column: 22, scope: !178815, inlinedAt: !178834)
!178836 = distinct !DILexicalBlock(scope: !178764, file: !5022, line: 1892, column: 9)
!178837 = distinct !DISubprogram(name: "into_searcher", linkageName: "_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher", scope: !5047, file: !5022, line: 975, type: !4701, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178838 = distinct !DISubprogram(name: "is_some<(usize, usize)>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionTjjEE7is_someCsfcROwRM8ZtH_11polars_plan", scope: !4767, file: !4765, line: 635, type: !4701, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178839 = distinct !DILexicalBlock(scope: !178838, file: !4861, line: 429, column: 9)
!178840 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsfcROwRM8ZtH_11polars_plan", scope: !4857, file: !4854, line: 152, type: !4701, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178841 = distinct !DILexicalBlock(scope: !178840, file: !4854, line: 157, column: 13)
!178842 = !{i64 4678551774599245957}
!178843 = !DILexicalBlockFile(scope: !178676, file: !4850, discriminator: 2)
!178844 = !DILocation(line: 1011, column: 18, scope: !178671)
!178845 = !DILocation(line: 2124, column: 13, scope: !178674, inlinedAt: !178844)
!178846 = !DILocation(line: 30, column: 9, scope: !178675, inlinedAt: !178845)
!178847 = !DILocation(line: 2124, column: 13, scope: !178843, inlinedAt: !178846)
!178848 = !{!178678}
!178849 = !{!178680}
!178850 = !DIFile(filename: "library/core/src/iter/traits/double_ended.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "44f20493a76f1796bc2878d611fe77c6")
!178851 = !DINamespace(name: "double_ended", scope: !4912)
!178852 = !DINamespace(name: "DoubleEndedIterator", scope: !178851)
!178853 = !DINamespace(name: "rfind", scope: !178852)
!178854 = !DINamespace(name: "check", scope: !178853)
!178855 = !{!178712, !178710, !178708, !178707}
!178856 = !{!178678, !178680}
!178857 = !{!178717, !178716}
!178858 = !DINamespace(name: "any", scope: !4914)
!178859 = !DINamespace(name: "check", scope: !178858)
!178860 = !DILexicalBlockFile(scope: !178737, file: !4836, discriminator: 2)
!178861 = !DINamespace(name: "{impl#62}", scope: !4884)
!178862 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/vector.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9007a8fc0e081f1d4ddc6b9e6405748")
!178863 = !DINamespace(name: "core_simd", scope: !4709)
!178864 = !DINamespace(name: "vector", scope: !178863)
!178865 = !DINamespace(name: "Simd", scope: !178864)
!178866 = !{!178766}
!178867 = !DILexicalBlockFile(scope: !178782, file: !4720, discriminator: 2)
!178868 = !DILexicalBlockFile(scope: !178770, file: !4746, discriminator: 2)
!178869 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/simd/cmp/eq.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7685cb03cbca8e20bb043063063cbb87")
!178870 = !DINamespace(name: "simd", scope: !178863)
!178871 = !DINamespace(name: "cmp", scope: !178870)
!178872 = !DINamespace(name: "eq", scope: !178871)
!178873 = !DINamespace(name: "{impl#4}", scope: !178872)
!178874 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/masks.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "9d00f8d04957d898984aa5da18e7e089")
!178875 = !DINamespace(name: "masks", scope: !178863)
!178876 = !DINamespace(name: "{impl#9}", scope: !178875)
!178877 = !{!178802}
!178878 = !DINamespace(name: "{impl#2}", scope: !178875)
!178879 = !DINamespace(name: "to_bitmask", scope: !178878)
!178880 = !DINamespace(name: "Mask", scope: !178875)
!178881 = !{!178823}
!178882 = !DILocation(line: 1009, column: 22, scope: !178671)
!178883 = !DILexicalBlockFile(scope: !178839, file: !4765, discriminator: 0)
!178884 = !DILocation(line: 1009, column: 59, scope: !178671)
!178885 = !DILocation(line: 25, column: 22, scope: !178673, inlinedAt: !178847)
!178886 = !DILocation(line: 992, column: 9, scope: !178671)
!178887 = !DILocation(line: 0, scope: !178671)
!178888 = !DILocation(line: 1013, column: 6, scope: !178671)
!178889 = !DILocation(line: 22, column: 12, scope: !178673, inlinedAt: !178847)
!178890 = !DILocation(line: 1004, column: 43, scope: !178679)
!178891 = !DILocation(line: 1800, column: 23, scope: !178683, inlinedAt: !178684)
!178892 = !DILocation(line: 1801, column: 28, scope: !178685, inlinedAt: !178684)
!178893 = !DILocation(line: 1077, column: 17, scope: !178686, inlinedAt: !178700)
!178894 = !DILocation(line: 1811, column: 73, scope: !178702, inlinedAt: !178705)
!178895 = !DILocation(line: 238, column: 21, scope: !178692, inlinedAt: !178696)
!178896 = !DILocation(line: 1917, column: 50, scope: !3124, inlinedAt: !178713)
!178897 = !DILocation(line: 823, column: 12, scope: !178688, inlinedAt: !178698)
!178898 = !DILocation(line: 1821, column: 25, scope: !178714, inlinedAt: !178684)
!178899 = !DILocation(line: 1821, column: 8, scope: !178714, inlinedAt: !178684)
!178900 = !DILocation(line: 158, column: 13, scope: !178719, inlinedAt: !178735)
!178901 = !DILocation(line: 2509, column: 21, scope: !178727, inlinedAt: !178730)
!178902 = !DILocation(line: 573, column: 27, scope: !178736, inlinedAt: !178742)
!178903 = !DILocation(line: 1357, column: 12, scope: !178738, inlinedAt: !178740)
!178904 = !DILocation(line: 89, column: 24, scope: !178744, inlinedAt: !178746)
!178905 = !DILocation(line: 153, column: 18, scope: !178747, inlinedAt: !178748)
!178906 = !DILocation(line: 153, column: 18, scope: !178747, inlinedAt: !178750)
!178907 = !DILocation(line: 89, column: 24, scope: !178752, inlinedAt: !178759)
!178908 = !DILocation(line: 1832, column: 9, scope: !178760, inlinedAt: !178684)
!178909 = !DILocation(line: 1833, column: 5, scope: !178760, inlinedAt: !178684)
!178910 = !DILocation(line: 1878, column: 11, scope: !178764, inlinedAt: !178684)
!178911 = !DILocation(line: 1874, column: 22, scope: !178763, inlinedAt: !178684)
!178912 = !DILocation(line: 0, scope: !178762, inlinedAt: !178684)
!178913 = !DILocation(line: 1891, column: 11, scope: !178764, inlinedAt: !178684)
!178914 = !DILocation(line: 552, column: 14, scope: !178767, inlinedAt: !178778)
!178915 = !DILocation(line: 863, column: 18, scope: !178779, inlinedAt: !178781)
!178916 = !DILocation(line: 552, column: 14, scope: !178767, inlinedAt: !178785)
!178917 = !DILocation(line: 31, column: 52, scope: !178786, inlinedAt: !178788)
!178918 = !DILocation(line: 31, column: 52, scope: !178786, inlinedAt: !178790)
!178919 = !DILocation(line: 481, column: 23, scope: !178791, inlinedAt: !178793)
!178920 = !DILocation(line: 1881, column: 13, scope: !178774, inlinedAt: !178684)
!178921 = !DILocation(line: 863, column: 18, scope: !178779, inlinedAt: !178794)
!178922 = !DILocation(line: 1885, column: 16, scope: !178797, inlinedAt: !178684)
!178923 = !DILocation(line: 0, scope: !178763, inlinedAt: !178684)
!178924 = !DILocation(line: 1886, column: 38, scope: !178797, inlinedAt: !178684)
!178925 = !DILocation(line: 1886, column: 64, scope: !178797, inlinedAt: !178684)
!178926 = !DILocation(line: 1886, column: 27, scope: !178797, inlinedAt: !178684)
!178927 = !DILocation(line: 1886, column: 17, scope: !178797, inlinedAt: !178684)
!178928 = !DILocation(line: 1885, column: 13, scope: !178797, inlinedAt: !178684)
!178929 = !DILocation(line: 1889, column: 9, scope: !178772, inlinedAt: !178684)
!178930 = !DILocation(line: 1903, column: 13, scope: !178764, inlinedAt: !178684)
!178931 = !DILocation(line: 863, column: 18, scope: !178779, inlinedAt: !178800)
!178932 = !DILocation(line: 552, column: 14, scope: !178767, inlinedAt: !178805)
!178933 = !DILocation(line: 863, column: 18, scope: !178779, inlinedAt: !178806)
!178934 = !DILocation(line: 552, column: 14, scope: !178767, inlinedAt: !178809)
!178935 = !DILocation(line: 31, column: 52, scope: !178786, inlinedAt: !178810)
!178936 = !DILocation(line: 31, column: 52, scope: !178786, inlinedAt: !178811)
!178937 = !DILocation(line: 481, column: 23, scope: !178791, inlinedAt: !178812)
!178938 = !DILocation(line: 314, column: 39, scope: !178814, inlinedAt: !178818)
!178939 = !DILocation(line: 1905, column: 8, scope: !178819, inlinedAt: !178684)
!178940 = !DILocation(line: 863, column: 18, scope: !178779, inlinedAt: !178821)
!178941 = !DILocation(line: 552, column: 14, scope: !178767, inlinedAt: !178826)
!178942 = !DILocation(line: 863, column: 18, scope: !178779, inlinedAt: !178827)
!178943 = !DILocation(line: 552, column: 14, scope: !178767, inlinedAt: !178830)
!178944 = !DILocation(line: 31, column: 52, scope: !178786, inlinedAt: !178831)
!178945 = !DILocation(line: 31, column: 52, scope: !178786, inlinedAt: !178832)
!178946 = !DILocation(line: 481, column: 23, scope: !178791, inlinedAt: !178833)
!178947 = !DILocation(line: 314, column: 39, scope: !178814, inlinedAt: !178835)
!178948 = !DILocation(line: 1893, column: 12, scope: !178836, inlinedAt: !178684)
!178949 = !DILocation(line: 1896, column: 9, scope: !178836, inlinedAt: !178684)
!178950 = !DILocation(line: 1894, column: 23, scope: !178836, inlinedAt: !178684)
!178951 = !DILocation(line: 1894, column: 13, scope: !178836, inlinedAt: !178684)
!178952 = !DILocation(line: 1893, column: 9, scope: !178836, inlinedAt: !178684)
!178953 = !DILocation(line: 1910, column: 1, scope: !178760, inlinedAt: !178684)
!178954 = !DILocation(line: 1910, column: 2, scope: !178681, inlinedAt: !178684)
!178955 = !DILocation(line: 1906, column: 19, scope: !178819, inlinedAt: !178684)
!178956 = !DILocation(line: 1906, column: 9, scope: !178819, inlinedAt: !178684)
!178957 = !DILocation(line: 1905, column: 5, scope: !178819, inlinedAt: !178684)
!178958 = !DILocation(line: 1009, column: 17, scope: !178671)
!178959 = !DILocation(line: 976, column: 9, scope: !178837, inlinedAt: !178882)
!178960 = !DILocation(line: 1009, column: 46, scope: !178671)
!178961 = !DILocation(line: 636, column: 18, scope: !178883, inlinedAt: !178884)
!178962 = !DILocation(line: 429, column: 9, scope: !178839, inlinedAt: !178884)
!178963 = !DILocation(line: 1009, column: 67, scope: !178671)
!178964 = !DILocation(line: 158, column: 13, scope: !178841, inlinedAt: !178885)
!178965 = !DILocation(line: 22, column: 9, scope: !178673, inlinedAt: !178847)
!178966 = !{i64 -5576373442958791955}
!178967 = !DILocation(line: 76, column: 49, scope: !4683)
!178968 = !DILocation(line: 76, column: 60, scope: !4683)
!178969 = !{i64 -5996693689763033331}
!178970 = !DILocation(line: 76, column: 49, scope: !4680)
!178971 = !DILocation(line: 76, column: 60, scope: !4680)
!178972 = distinct !DISubprogram(name: "next_match", linkageName: "_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match", scope: !179043, file: !5022, line: 1171, type: !4701, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178973 = distinct !{!178973, i1 true, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!178974 = distinct !{!178974, !178973, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!178975 = distinct !DISubprogram(name: "next", linkageName: "_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next", scope: !179043, file: !5022, line: 1119, type: !4701, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178976 = distinct !DILexicalBlock(scope: !178975, file: !5022, line: 1121, column: 13)
!178977 = distinct !DILocation(line: 1174, column: 28, scope: !178972)
!178978 = distinct !{!178978, i1 true, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!178979 = distinct !{!178979, !178978, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!178980 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !5051, file: !5048, line: 539, type: !4701, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178981 = distinct !DILexicalBlock(scope: !178980, file: !5048, line: 540, column: 9)
!178982 = distinct !DISubprogram(name: "index<core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsfcROwRM8ZtH_11polars_plan", scope: !5812, file: !5048, line: 62, type: !4701, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178983 = distinct !DILexicalBlock(scope: !178976, file: !5022, line: 1126, column: 17)
!178984 = distinct !DILexicalBlock(scope: !178983, file: !5022, line: 1128, column: 17)
!178985 = distinct !DILocation(line: 1129, column: 36, scope: !178984, inlinedAt: !178977)
!178986 = distinct !DILocation(line: 63, column: 15, scope: !178982, inlinedAt: !178985)
!178987 = distinct !DILocation(line: 541, column: 20, scope: !178981, inlinedAt: !178986)
!178988 = distinct !DILocation(line: 508, column: 18, scope: !3208, inlinedAt: !178987)
!178989 = distinct !{!178989, i1 true, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!178990 = distinct !{!178990, !178989, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!178991 = distinct !{!178991, !178973, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!178992 = distinct !DILocation(line: 394, column: 36, scope: !3207, inlinedAt: !178988)
!178993 = distinct !DILocation(line: 511, column: 34, scope: !3208, inlinedAt: !178987)
!178994 = distinct !DILocation(line: 530, column: 36, scope: !3215, inlinedAt: !178993)
!178995 = distinct !DILocation(line: 212, column: 54, scope: !3213, inlinedAt: !178994)
!178996 = distinct !DISubprogram(name: "next_code_point<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfcROwRM8ZtH_11polars_plan", scope: !179050, file: !179049, line: 35, type: !4701, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178997 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !179051, file: !5039, line: 39, type: !4701, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!178998 = distinct !DILocation(line: 1129, column: 52, scope: !178984, inlinedAt: !178977)
!178999 = distinct !DILocation(line: 42, column: 18, scope: !178997, inlinedAt: !178998)
!179000 = distinct !DILocation(line: 37, column: 20, scope: !178996, inlinedAt: !178999)
!179001 = distinct !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179000)
!179002 = distinct !{!179002, i1 true, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfcROwRM8ZtH_11polars_plan"}
!179003 = distinct !{!179003, !179002, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsfcROwRM8ZtH_11polars_plan: argument 0"}
!179004 = distinct !DILexicalBlock(scope: !178996, file: !179049, line: 37, column: 5)
!179005 = distinct !DILocation(line: 185, column: 40, scope: !2093, inlinedAt: !179000)
!179006 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations15utf8_first_byte", scope: !179050, file: !179049, line: 10, type: !4701, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179007 = distinct !DILocation(line: 45, column: 16, scope: !179004, inlinedAt: !178999)
!179008 = distinct !DILexicalBlock(scope: !179004, file: !179049, line: 45, column: 5)
!179009 = distinct !DILocation(line: 48, column: 29, scope: !179008, inlinedAt: !178999)
!179010 = distinct !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179009)
!179011 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations18utf8_acc_cont_byte", scope: !179050, file: !179049, line: 16, type: !4701, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179012 = distinct !DILexicalBlock(scope: !179008, file: !179049, line: 48, column: 5)
!179013 = distinct !DILocation(line: 49, column: 18, scope: !179012, inlinedAt: !178999)
!179014 = distinct !DILexicalBlock(scope: !179012, file: !179049, line: 49, column: 5)
!179015 = distinct !DILocation(line: 185, column: 40, scope: !2093, inlinedAt: !179009)
!179016 = distinct !DILocation(line: 55, column: 33, scope: !179014, inlinedAt: !178999)
!179017 = distinct !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179016)
!179018 = distinct !DILexicalBlock(scope: !179014, file: !179049, line: 55, column: 9)
!179019 = distinct !DILocation(line: 56, column: 19, scope: !179018, inlinedAt: !178999)
!179020 = distinct !DILexicalBlock(scope: !179018, file: !179049, line: 56, column: 9)
!179021 = distinct !DILocation(line: 185, column: 40, scope: !2093, inlinedAt: !179016)
!179022 = distinct !DILocation(line: 63, column: 37, scope: !179020, inlinedAt: !178999)
!179023 = distinct !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179022)
!179024 = distinct !DILexicalBlock(scope: !179020, file: !179049, line: 63, column: 13)
!179025 = distinct !DILocation(line: 64, column: 37, scope: !179024, inlinedAt: !178999)
!179026 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7convert18from_u32_unchecked", scope: !179055, file: !179054, line: 26, type: !4701, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179027 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc18from_u32_unchecked", scope: !6321, file: !5964, line: 237, type: !4701, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179028 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0CsfcROwRM8ZtH_11polars_plan", scope: !179056, file: !5039, line: 42, type: !4701, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179029 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsfcROwRM8ZtH_11polars_plan", scope: !4767, file: !4765, line: 1160, type: !4701, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179030 = distinct !DILexicalBlock(scope: !179029, file: !4765, line: 1165, column: 13)
!179031 = distinct !DILocation(line: 42, column: 50, scope: !178997, inlinedAt: !178998)
!179032 = distinct !DILocation(line: 1165, column: 29, scope: !179030, inlinedAt: !179031)
!179033 = distinct !DILocation(line: 42, column: 59, scope: !179028, inlinedAt: !179032)
!179034 = distinct !DILocation(line: 239, column: 18, scope: !179027, inlinedAt: !179033)
!179035 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7methods8len_utf8", scope: !5966, file: !5964, line: 2038, type: !4701, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179036 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc8len_utf8", scope: !6321, file: !5964, line: 645, type: !4701, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !4700)
!179037 = distinct !DILexicalBlock(scope: !178984, file: !5022, line: 1135, column: 21)
!179038 = distinct !DILocation(line: 1136, column: 49, scope: !179037, inlinedAt: !178977)
!179039 = distinct !DILocation(line: 646, column: 9, scope: !179036, inlinedAt: !179038)
!179040 = distinct !DILexicalBlock(scope: !178972, file: !5022, line: 1180, column: 13)
!179041 = distinct !DILexicalBlock(scope: !179040, file: !5022, line: 1181, column: 17)
!179042 = distinct !DILexicalBlock(scope: !178972, file: !5022, line: 1175, column: 21)
!179043 = !DINamespace(name: "{impl#33}", scope: !5023)
!179044 = !{i64 -3325741749381118907}
!179045 = !{!178974}
!179046 = !{!178979}
!179047 = !{!178990}
!179048 = !{!178991, !178979}
!179049 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!179050 = !DINamespace(name: "validations", scope: !4951)
!179051 = !DINamespace(name: "{impl#0}", scope: !5040)
!179052 = !{!179003, !178991, !178979}
!179053 = !DILexicalBlockFile(scope: !179004, file: !4832, discriminator: 0)
!179054 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "fdce958fc348cd3d447b8c64a2fb30f1")
!179055 = !DINamespace(name: "convert", scope: !5965)
!179056 = !DINamespace(name: "next", scope: !179051)
!179057 = !{!178991, !178974}
!179058 = !{!179003, !178991, !178974}
!179059 = !DILexicalBlockFile(scope: !178972, file: !4832, discriminator: 0)
!179060 = !DILocation(line: 1172, column: 15, scope: !178972)
!179061 = !DILocation(line: 1172, column: 9, scope: !178972)
!179062 = !DILocation(line: 1122, column: 20, scope: !178976, inlinedAt: !178977)
!179063 = !DILocation(line: 1174, column: 28, scope: !178972)
!179064 = !DILocation(line: 1126, column: 32, scope: !178976, inlinedAt: !178977)
!179065 = !DILocation(line: 378, column: 12, scope: !3207, inlinedAt: !178988)
!179066 = !DILocation(line: 382, column: 12, scope: !3207, inlinedAt: !178988)
!179067 = !DILocation(line: 392, column: 13, scope: !3207, inlinedAt: !178988)
!179068 = !DILocation(line: 508, column: 12, scope: !3208, inlinedAt: !178987)
!179069 = !DILocation(line: 394, column: 13, scope: !3207, inlinedAt: !178988)
!179070 = !DILocation(line: 1178, column: 9, scope: !3209, inlinedAt: !178992)
!179071 = !DILocation(line: 863, column: 18, scope: !3210, inlinedAt: !178995)
!179072 = !DILocation(line: 1717, column: 9, scope: !2090, inlinedAt: !179001)
!179073 = !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179000)
!179074 = !DILocation(line: 37, column: 13, scope: !178996, inlinedAt: !178999)
!179075 = !DILocation(line: 38, column: 8, scope: !179004, inlinedAt: !178999)
!179076 = !DILocation(line: 659, column: 28, scope: !2098, inlinedAt: !179005)
!179077 = !DILocation(line: 11, column: 5, scope: !179006, inlinedAt: !179007)
!179078 = !DILocation(line: 1717, column: 9, scope: !2090, inlinedAt: !179010)
!179079 = !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179009)
!179080 = !DILocation(line: 48, column: 22, scope: !179008, inlinedAt: !178999)
!179081 = !DILocation(line: 17, column: 5, scope: !179011, inlinedAt: !179013)
!179082 = !DILocation(line: 17, column: 17, scope: !179011, inlinedAt: !179013)
!179083 = !DILocation(line: 50, column: 8, scope: !179014, inlinedAt: !178999)
!179084 = !DILocation(line: 659, column: 28, scope: !2098, inlinedAt: !179015)
!179085 = !DILocation(line: 1717, column: 9, scope: !2090, inlinedAt: !179017)
!179086 = !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179016)
!179087 = !DILocation(line: 55, column: 26, scope: !179014, inlinedAt: !178999)
!179088 = !DILocation(line: 17, column: 5, scope: !179011, inlinedAt: !179019)
!179089 = !DILocation(line: 17, column: 17, scope: !179011, inlinedAt: !179019)
!179090 = !DILocation(line: 57, column: 14, scope: !179020, inlinedAt: !178999)
!179091 = !DILocation(line: 57, column: 9, scope: !179020, inlinedAt: !178999)
!179092 = !DILocation(line: 58, column: 12, scope: !179020, inlinedAt: !178999)
!179093 = !DILocation(line: 659, column: 28, scope: !2098, inlinedAt: !179021)
!179094 = !DILocation(line: 1717, column: 9, scope: !2090, inlinedAt: !179023)
!179095 = !DILocation(line: 180, column: 28, scope: !2093, inlinedAt: !179022)
!179096 = !DILocation(line: 63, column: 30, scope: !179020, inlinedAt: !178999)
!179097 = !DILocation(line: 64, column: 18, scope: !179024, inlinedAt: !178999)
!179098 = !DILocation(line: 17, column: 5, scope: !179011, inlinedAt: !179025)
!179099 = !DILocation(line: 17, column: 17, scope: !179011, inlinedAt: !179025)
!179100 = !DILocation(line: 64, column: 13, scope: !179024, inlinedAt: !178999)
!179101 = !DILocation(line: 58, column: 9, scope: !179020, inlinedAt: !178999)
!179102 = !DILocation(line: 39, column: 21, scope: !179004, inlinedAt: !178999)
!179103 = !DILocation(line: 0, scope: !179053, inlinedAt: !178999)
!179104 = !DILocation(line: 34, column: 9, scope: !179026, inlinedAt: !179034)
!179105 = !DILocation(line: 1130, column: 26, scope: !178984, inlinedAt: !178977)
!179106 = !DILocation(line: 2040, column: 9, scope: !179035, inlinedAt: !179039)
!179107 = !DILocation(line: 2041, column: 9, scope: !179035, inlinedAt: !179039)
!179108 = !DILocation(line: 2042, column: 9, scope: !179035, inlinedAt: !179039)
!179109 = !DILocation(line: 0, scope: !179035, inlinedAt: !179039)
!179110 = !DILocation(line: 1136, column: 25, scope: !179037, inlinedAt: !178977)
!179111 = !DILocation(line: 1181, column: 31, scope: !179040)
!179112 = !DILocation(line: 1184, column: 20, scope: !179041)
!179113 = !DILocation(line: 0, scope: !179041)
!179114 = !DILocation(line: 0, scope: !178976, inlinedAt: !178977)
!179115 = !DILocation(line: 543, column: 21, scope: !178981, inlinedAt: !178986)
!179116 = !DILocation(line: 1132, column: 25, scope: !178984, inlinedAt: !178977)
!179117 = !DILocation(line: 1133, column: 25, scope: !178984, inlinedAt: !178977)
!179118 = !DILocation(line: 1175, column: 55, scope: !179042)
!179119 = !DILocation(line: 0, scope: !179059)
!179120 = !DILocation(line: 0, scope: !178972)
!179121 = !DILocation(line: 1199, column: 6, scope: !178972)
end_hunk_1
