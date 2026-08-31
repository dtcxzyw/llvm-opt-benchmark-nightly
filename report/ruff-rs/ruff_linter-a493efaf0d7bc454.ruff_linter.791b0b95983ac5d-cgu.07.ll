Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.07?download=true
inline.NumInlined: 5011
inline.NumDeleted: 2021
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs4o_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_10ExprLambdaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !8000, !noalias !7997, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7997, !noalias !8000, !nonnull !6, !noundef !6
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.o), !noalias !8002, !inline_history !8003
  br i1 %i.w, label %bb.h, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !7997, !noalias !8000, !noundef !6
  %.not.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !8000, !noalias !7997, !noundef !6
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.ab, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %.split

bb.j:                                             ; preds = %bb.h
  br i1 %i.ab, label %bb.k, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.i
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !inline_history !8003
  br i1 %i.ac, label %bb.k, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %.split, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !7997, !noalias !8000, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !8000, !noalias !7997, !noundef !6
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.l, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !8000, !noalias !7997, !nonnull !6, !noundef !6
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !7997, !noalias !8000, !nonnull !6, !noundef !6
  %i.am = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj, i64 noundef %i.ae), !inline_history !8003
  br i1 %i.am, label %bb.m, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !7997, !noalias !8000, !noundef !6
  %.not5.i = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !8000, !noalias !7997, !noundef !6
  %i.ar = icmp eq ptr %i.aq, null                 ; 2 uses
  br i1 %.not5.i, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ar, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %.split4

.split4:                                          ; preds = %bb.n
  %i.as = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap), !inline_history !8003
  br i1 %i.as, label %bb.o, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m
  br i1 %i.ar, label %bb.o, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.o:                                             ; preds = %.split4, %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !6, !noundef !6
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.aw)
  br label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %.split, %bb.n, %bb.g, %bb.j, %bb.l, %bb.d, %bb.f, %bb.i, %bb.k, %bb.e, %.split4, %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.c, %bb.b, %bb.o
  %.sroa.0.0 = phi i1 [ %i.ax, %bb.o ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %.split4 ], [ false, %bb.e ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.n ], [ false, %.split ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4t_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.c = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.m, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs52_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.o, %bb.d ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i64 noundef %i.g)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5G_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_11ExprTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8007)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8004, !noalias !8007, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !8007, !noalias !8004, !noundef !6
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs3P_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !alias.scope !8007, !noalias !8004, !nonnull !6, !noundef !6
  %i.g = load ptr, ptr %0, align 8, !alias.scope !8004, !noalias !8007, !nonnull !6, !noundef !6
  %i.h = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, i64 noundef %i.b), !noalias !8009
  br i1 %i.h, label %bb.c, label %_RNvXs3P_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !8004, !noalias !8007, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !8007, !noalias !8004, !noundef !6
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs3P_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !8007, !noalias !8004, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !8004, !noalias !8007, !nonnull !6, !noundef !6
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable19InterpolatedElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j), !noalias !8009
  br label %_RNvXs3P_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs3P_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableTStringNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.r, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5V_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8013)
  %i.a = load i64, ptr %0, align 8, !range !222, !alias.scope !8010, !noalias !8013, !noundef !6 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !222, !alias.scope !8013, !noalias !8010, !noundef !6
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !8010, !noalias !8013, !nonnull !6, !align !217, !noundef !6 ; 2 uses
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !8013, !noalias !8010, !nonnull !6, !align !217, !noundef !6 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !8015, !noundef !6 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.f, align 8, !noalias !8015 ; 3 uses
  %.val2.i.i = load ptr, ptr %.val2.i, align 8, !noalias !8015, !noundef !6 ; 3 uses
  %2 = getelementptr i8, ptr %.val2.i, i64 8
  %.val3.i.i = load i64, ptr %2, align 8, !noalias !8015 ; 2 uses
  %i.g = icmp ne ptr %.val.i.i, null              ; 2 uses
  %i.h = icmp eq ptr %.val2.i.i, null             ; 3 uses
  %not..i.i.i.i = xor i1 %i.h, true
  %i.i = xor i1 %i.g, %i.h
  br i1 %i.i, label %3, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

3:                                                ; preds = %bb.c
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %3
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.j = icmp eq i64 %.val1.i.i, %.val3.i.i
  br i1 %i.j, label %bb.f, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %3
  tail call void @llvm.assume(i1 %i.h)
  %4 = icmp eq i64 %.val1.i.i, %.val3.i.i
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.d
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %.val1.i.i), !noalias !8015
  %i.k = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8, !alias.scope !8010, !noalias !8013, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !8013, !noalias !8010, !noundef !6
  %i.o = icmp eq i64 %i.l, %i.n
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !8010, !noalias !8013, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !8013, !noalias !8010, !noundef !6
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.i, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !8010, !noalias !8013, !noundef !6
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !8013, !noalias !8010, !noundef !6
  %i.x = icmp eq i64 %i.u, %i.w
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.h ], [ %i.o, %bb.g ], [ %i.x, %bb.i ], [ false, %bb.a ], [ %i.k, %bb.f ], [ false, %bb.c ], [ %4, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules7stringsNtB5_33PercentFormatStarRequiresSequenceNtNtBd_9violation9Violation7message(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 49, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !410, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !4304, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.e, 48
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.h, ptr noundef nonnull align 1 dereferenceable(49) @536, i64 49, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 49, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5m_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i64 noundef %i.g)
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !6
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c, %bb.b, %bb.f
  %.sroa.0.0 = phi i1 [ %i.y, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !noundef !6
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.x, ptr noundef nonnull %i.v, i64 noundef %i.q)
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5r_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8019)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !8016, !noalias !8019, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !8019, !noalias !8016, !noundef !6
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !8019, !noalias !8016, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !8016, !noalias !8019, !nonnull !6, !noundef !6
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable14ComparableExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i64 noundef %i.g), !noalias !8021
  br i1 %i.o, label %bb.d, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !8016, !noalias !8019, !noundef !6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !8019, !noalias !8016, !noundef !6
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !8019, !noalias !8016, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !8016, !noalias !8019, !nonnull !6, !noundef !6
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable17ComparableKeywordINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.x, ptr noundef nonnull %i.v, i64 noundef %i.q), !noalias !8021
  br label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.y, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5w_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_23ExprInterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !244, !noundef !6
  %.not = icmp eq i64 %i.g, -2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !range !244, !noundef !6
  %i.j = icmp eq i64 %i.i, -2                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.f, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load i64, ptr %i.k, align 8, !alias.scope !8022, !noalias !8025, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5 = load i64, ptr %i.l, align 8, !alias.scope !8025, !noalias !8022, !noundef !6
  %i.m = icmp eq i64 %.val3, %.val5
  br i1 %i.m, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val4 = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val4, i64 %.val3), !alias.scope !8027, !noalias !8031
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %bb.f, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val6 = load i8, ptr %i.q, align 8, !range !8035, !noundef !6
  %.val7 = load i8, ptr %i.r, align 8, !range !8035, !noundef !6
  %i.s = icmp eq i8 %.val6, %.val7
  br i1 %i.s, label %bb.g, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !6
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.e, %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.g, %bb.a, %bb.d, %bb.c, %bb.f, %bb.h
  %.sroa.0.0 = phi i1 [ %i.ac, %bb.h ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.g ], [ false, %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6
  %i.ac = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.z, i64 noundef %i.u)
  br label %_RNvXs3q_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableDebugTextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
end_hunk_0
begin_hunk_1_@_RNvXshN_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_11ExprStarredNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.o = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull align 8 %i.o)
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val = load i8, ptr %i.q, align 4, !range !3451, !noundef !6
  %.val1 = load i8, ptr %i.r, align 4, !range !3451, !noundef !6
  %i.s = icmp eq i8 %.val, %.val1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.s, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshS_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8473)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.o = load i8, ptr %i.n, align 1, !range !325, !alias.scope !8475, !noalias !8473, !noundef !6 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !8475, !noalias !8473, !noundef !6
  %i.r = and i64 %i.q, 72057594037927935
  %i.s = icmp ult i8 %i.o, -48
  %i.t = zext i8 %i.o to i64
  %i.u = add nsw i64 %i.t, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 16)
  %.sroa.0.0.i.i = select i1 %i.s, i64 %spec.store.select.i.i, i64 %i.r ; 2 uses
  %i.v = icmp ugt i8 %i.o, -49
  %i.w = load ptr, ptr %0, align 8, !alias.scope !8475, !noalias !8473
  %.sroa.01.0.i.i = select i1 %i.v, ptr %i.w, ptr %0 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.y = load i8, ptr %i.x, align 1, !range !325, !alias.scope !8478, !noalias !8470, !noundef !6 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !8478, !noalias !8470, !noundef !6
  %i.ab = and i64 %i.aa, 72057594037927935
  %i.ac = icmp ult i8 %i.y, -48
  %i.ad = zext i8 %i.y to i64
  %i.ae = add nsw i64 %i.ad, -192
  %spec.store.select.i4.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 16)
  %.sroa.0.0.i5.i = select i1 %i.ac, i64 %spec.store.select.i4.i, i64 %i.ab
  %i.af = icmp ugt i8 %i.y, -49
  %i.ag = load ptr, ptr %1, align 8, !alias.scope !8478, !noalias !8470
  %.sroa.01.0.i6.i = select i1 %i.af, ptr %i.ag, ptr %1 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.0.0.i.i, %.sroa.0.0.i5.i
  br i1 %i.ah, label %bb.e, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp eq ptr %.sroa.01.0.i.i, %.sroa.01.0.i6.i
  br i1 %i.ai, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit: ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i, ptr %.sroa.01.0.i6.i, i64 %.sroa.0.0.i.i)
  %i.aj = icmp eq i32 %bcmp.i, 0
  br i1 %i.aj, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread: ; preds = %bb.e, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !range !3451, !noundef !6
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load i8, ptr %i.am, align 4, !range !3451, !noundef !6
  %i.ao = icmp eq i8 %i.al, %i.an
  br label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread2: ; preds = %bb.d, %bb.c, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit, %bb.a, %bb.b, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread
  %.sroa.0.0 = phi i1 [ %i.ao, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread ], [ false, %bb.b ], [ false, %bb.a ], [ false, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshX_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_8ExprListNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !6
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !6, !noundef !6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.o)
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.val = load i8, ptr %i.x, align 4, !range !3451, !noundef !6
  %.val1 = load i8, ptr %i.y, align 4, !range !3451, !noundef !6
  %i.z = icmp eq i8 %.val, %.val1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.a, %bb.b, %bb.d, %bb.f
  %.sroa.0.0 = phi i1 [ %i.z, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.e ], [ false, %bb.c ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsh_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  %i.d = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.e = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.a, ptr noundef %i.d, i64 noundef %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshb_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_16ExprBytesLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !noundef !6
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !noundef !6
  %i.q = icmp eq ptr %i.p, null                   ; 3 uses
  %i.r = xor i1 %i.o, %i.q
  br i1 %i.r, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.assume(i1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.m, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %2 = xor i1 %i.q, true
  tail call void @llvm.assume(i1 %2)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !noundef !6
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !6
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !noundef !6
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.ah, ptr noundef nonnull align 4 %i.ai)
  br i1 %i.aj, label %bb.j, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !6
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.aq = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.ap, i64 %i.al)
  %i.ar = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ar, label %bb.l, label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i8, ptr %i.as, align 4, !noundef !6
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.av = load i8, ptr %i.au, align 4, !noundef !6
  %i.aw = icmp eq i8 %i.at, %i.av
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !6, !noundef !6
  %i.bb = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast5nodes12BytesLiteralINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, i64 noundef %i.t)
  br label %_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs4N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_22BytesLiteralValueInnerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bb, %bb.m ], [ false, %bb.d ], [ false, %bb.f ], [ %i.aw, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshg_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8484)
  %i.n = load i64, ptr %0, align 8, !range !222, !alias.scope !8481, !noalias !8484, !noundef !6 ; 2 uses
  %i.o = load i64, ptr %1, align 8, !range !222, !alias.scope !8484, !noalias !8481, !noundef !6
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.e, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !8481, !noalias !8484, !noundef !6 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.s, align 8, !alias.scope !8481, !noalias !8484 ; 3 uses
  %.val3.i = load ptr, ptr %i.r, align 8, !alias.scope !8484, !noalias !8481, !noundef !6 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %2, align 8, !alias.scope !8484, !noalias !8481 ; 2 uses
  %i.t = icmp ne ptr %.val.i, null                ; 2 uses
  %i.u = icmp eq ptr %.val3.i, null               ; 3 uses
  %not..i.i = xor i1 %i.u, true
  %i.v = xor i1 %i.t, %i.u
  br i1 %i.v, label %3, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

3:                                                ; preds = %bb.f
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %3
  tail call void @llvm.assume(i1 %not..i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i) ]
  %i.w = icmp eq i64 %.val2.i, %.val4.i
  br i1 %i.w, label %bb.i, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %3
  tail call void @llvm.assume(i1 %i.u)
  %4 = icmp eq i64 %.val2.i, %.val4.i
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !8486
  %i.x = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load double, ptr %i.q, align 8, !alias.scope !8481, !noalias !8484, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !8484, !noalias !8481, !noundef !6
  %i.ab = fcmp oeq double %i.y, %i.aa
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.e
  %i.ac = load double, ptr %i.q, align 8, !alias.scope !8481, !noalias !8484, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !8484, !noalias !8481, !noundef !6
  %i.af = fcmp oeq double %i.ac, %i.ae
  br i1 %i.af, label %bb.l, label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !alias.scope !8481, !noalias !8484, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !alias.scope !8484, !noalias !8481, !noundef !6
  %i.ak = fcmp oeq double %i.ah, %i.aj
  br label %_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs5t_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_6NumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.k ], [ %i.ab, %bb.j ], [ %i.ak, %bb.l ], [ false, %bb.d ], [ %i.x, %bb.i ], [ false, %bb.f ], [ %4, %bb.h ], [ false, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXshl_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_18ExprBooleanLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !412, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !range !412, !noundef !6
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.p, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 4, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 4, !noundef !6
  %i.p = icmp eq i32 %i.m, %i.o
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi2_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprTupleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i8, ptr %i.a, align 4, !range !412, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !range !412, !noundef !6
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.f, ptr noundef nonnull align 4 %i.g)
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !noundef !6
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load i32, ptr %i.n, align 4, !noundef !6
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !noundef !6
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !6
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsEhZmuQNqkz_11ruff_linter(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t)
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 37
  %.val = load i8, ptr %i.ac, align 1, !range !3451, !noundef !6
  %.val1 = load i8, ptr %i.ad, align 1, !range !3451, !noundef !6
  %i.ae = icmp eq i8 %.val, %.val1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.a, %bb.b, %bb.c, %bb.e, %bb.g
  %.sroa.0.0 = phi i1 [ %i.ae, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsi7_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_9ExprSliceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !noundef !6
  %i.e = load i32, ptr %1, align 8, !noundef !6
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !align !217, !noundef !6 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !align !217, !noundef !6 ; 2 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.k, label %.split

bb.f:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.g, label %bb.k

.split:                                           ; preds = %bb.e
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.o)
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.split, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !align !217, !noundef !6 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !align !217, !noundef !6 ; 2 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.k, label %.split8

bb.i:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.k

.split8:                                          ; preds = %bb.h
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u)
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split8, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !align !217, !noundef !6 ; 2 uses
  %.not6 = icmp eq ptr %i.y, null                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !align !217, !noundef !6 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.ab
  %.mux = and i1 %.not6, %i.ab
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.split8, %.split, %bb.c, %bb.f, %bb.i, %bb.a, %bb.b, %bb.e, %bb.h, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.ac, %bb.l ], [ false, %bb.c ], [ false, %.split8 ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.f ], [ %.mux, %bb.j ], [ false, %.split ]
  ret i1 %.sroa.0.0.shrunk

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsbA_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.y, ptr noundef nonnull align 8 %i.aa)
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsic_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_20ExprIpyEscapeCommandNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef zeroext i1 @_RNvXs9_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 4 %i.a, ptr noundef nonnull align 4 %i.b)
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !6
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !noundef !6
end_hunk_1
