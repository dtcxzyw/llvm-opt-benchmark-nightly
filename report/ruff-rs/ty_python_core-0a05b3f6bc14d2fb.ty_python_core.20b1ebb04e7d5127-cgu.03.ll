Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.03?download=true
inline.NumInlined: 1305
inline.NumDeleted: 645
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvXs4o_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_10ExprLambdaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a

_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.y
  br i1 %i.cv, label %bb.aa, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %.split34, %_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i
  %i.cx = load i64, ptr %i.cf, align 8, !range !1101, !alias.scope !2736, !noalias !2739, !noundef !4
  %.not.i8 = icmp eq i64 %i.cx, -2
  %i.cy = load i64, ptr %i.cg, align 8, !range !1101, !alias.scope !2739, !noalias !2736, !noundef !4
  %i.cz = icmp eq i64 %i.cy, -2                   ; 2 uses
  br i1 %.not.i8, label %_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cz, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %.split71

.split71:                                         ; preds = %bb.ab
  %i.da = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.cg), !inline_history !2717
  br i1 %i.da, label %bb.w, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.aa
  br i1 %i.cz, label %bb.w, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.w, %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !2693, !noalias !2696, !noundef !4
  %.not5.i = icmp eq ptr %i.dc, null
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !2696, !noalias !2693, !noundef !4
  %i.df = icmp eq ptr %i.de, null                 ; 2 uses
  br i1 %.not5.i, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit
  br i1 %i.df, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %.split37

.split37:                                         ; preds = %bb.ac
  %i.dg = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd), !inline_history !2735
  br i1 %i.dg, label %bb.ad, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit
  br i1 %i.df, label %bb.ad, label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.ad:                                            ; preds = %.split37, %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.c
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !4, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4
  %i.dl = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.dk)
  br label %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.i, %.lr.ph, %bb.g, %.split, %bb.k, %_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i18, %_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit26, %.split69, %bb.p, %.lr.ph47, %bb.n, %.split30, %bb.r, %_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i9, %_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit17, %.split70, %bb.z, %.lr.ph50, %bb.x, %.split34, %bb.ab, %_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %.split71, %.split32, %bb.ac, %bb.t, %bb.d, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit6, %bb.s, %bb.u, %.split37, %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.c, %bb.b, %bb.ad
  %.sroa.0.0 = phi i1 [ %i.dl, %bb.ad ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_RNvXs2M_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_20ComparableParametersNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %.split37 ], [ false, %bb.u ], [ false, %bb.s ], [ false, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable30ComparableParameterWithDefaultINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit6 ], [ false, %bb.d ], [ false, %bb.t ], [ false, %bb.ac ], [ false, %.split32 ], [ false, %bb.z ], [ false, %bb.p ], [ false, %.split71 ], [ false, %_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.ab ], [ false, %.split34 ], [ false, %bb.x ], [ false, %.lr.ph50 ], [ false, %.split70 ], [ false, %_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit17 ], [ false, %_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i9 ], [ false, %bb.r ], [ false, %.split30 ], [ false, %bb.n ], [ false, %.lr.ph47 ], [ false, %.split69 ], [ false, %_RNvXs2W_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_30ComparableParameterWithDefaultNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit26 ], [ false, %_RNvXs2R_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableParameterNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i18 ], [ false, %bb.k ], [ false, %.split ], [ false, %bb.g ], [ false, %.lr.ph ], [ false, %bb.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4t_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_6ExprIfNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b)
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ %i.m, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs52_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_13ExprGeneratorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs2O29vuvTAEJ_14ty_python_core.exit, %bb.f, %.lr.ph9, %bb.e, %bb.d, %.lr.ph, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %.lr.ph ], [ true, %bb.c ], [ true, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs2O29vuvTAEJ_14ty_python_core.exit ], [ false, %bb.f ], [ false, %.lr.ph9 ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %.not7.not = icmp eq i64 %i.g, 0
  br i1 %.not7.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.c, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs2O29vuvTAEJ_14ty_python_core.exit
  %.sroa.01.0.i8 = phi i64 [ %i.ao, %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs2O29vuvTAEJ_14ty_python_core.exit ], [ 0, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [288 x i8], ptr %i.n, i64 %.sroa.01.0.i8 ; 5 uses
  %i.p = getelementptr inbounds nuw [288 x i8], ptr %i.l, i64 %.sroa.01.0.i8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2757)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.r = load i8, ptr %i.q, align 8, !range !3, !alias.scope !2759, !noalias !2760, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.t = load i8, ptr %i.s, align 8, !range !3, !alias.scope !2760, !noalias !2759, !noundef !4
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.d:                                             ; preds = %.lr.ph9
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.w), !inline_history !2667
  br i1 %i.x, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.z), !inline_history !2667
  br i1 %i.aa, label %bb.f, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2759, !noalias !2760, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !2760, !noalias !2759, !noundef !4
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !2760, !noalias !2759, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2759, !noalias !2760, !nonnull !4, !noundef !4
  %.not35.not = icmp eq i64 %i.ac, 0
  br i1 %.not35.not, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs2O29vuvTAEJ_14ty_python_core.exit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ak = add nuw i64 %.sroa.01.0.i16, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.ac
  br i1 %exitcond.not, label %_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs2O29vuvTAEJ_14ty_python_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i16 = phi i64 [ %i.ak, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.aj, i64 %.sroa.01.0.i16
  %i.am = getelementptr inbounds nuw [128 x i8], ptr %i.ah, i64 %.sroa.01.0.i16
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.am), !inline_history !2668
  br i1 %i.an, label %bb.h, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.h, %bb.g
  %i.ao = add nuw i64 %.sroa.01.0.i8, 1           ; 2 uses
  %exitcond19.not = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond19.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable23ComparableComprehensionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit, label %.lr.ph9
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5V_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ExprNumberLiteralNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  %i.a = load i64, ptr %0, align 8, !range !26, !alias.scope !2761, !noalias !2764, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !26, !alias.scope !2764, !noalias !2761, !noundef !4
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
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !2761, !noalias !2764, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !2764, !noalias !2761, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !2766, !noundef !4 ; 2 uses
  %i.f = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load i64, ptr %i.f, align 8, !noalias !2766 ; 2 uses
  %.val2.i.i = load ptr, ptr %.val2.i, align 8, !noalias !2766, !noundef !4 ; 2 uses
  %i.g = icmp ne ptr %.val.i.i, null              ; 2 uses
  %i.h = icmp eq ptr %.val2.i.i, null             ; 3 uses
  %not..i.i.i.i = xor i1 %i.h, true
  %i.i = xor i1 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %2 = getelementptr i8, ptr %.val2.i, i64 8
  %.val3.i.i = load i64, ptr %2, align 8, !noalias !2766
  %i.j = icmp eq i64 %.val1.i.i, %.val3.i.i       ; 2 uses
  br i1 %i.g, label %3, label %bb.e

3:                                                ; preds = %bb.d
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  br i1 %i.j, label %bb.f, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.assume(i1 %i.h)
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %3
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %.val1.i.i), !noalias !2766
  %i.k = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8, !alias.scope !2761, !noalias !2764, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2764, !noalias !2761, !noundef !4
  %i.o = icmp eq i64 %i.l, %i.n
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !2761, !noalias !2764, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2764, !noalias !2761, !noundef !4
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.i, label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2761, !noalias !2764, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !2764, !noalias !2761, !noundef !4
  %i.x = icmp eq i64 %i.u, %i.w
  br label %_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2B_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_16ComparableNumberNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %3, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.h ], [ %i.o, %bb.g ], [ %i.x, %bb.i ], [ false, %bb.a ], [ %i.k, %bb.f ], [ false, %bb.c ], [ %i.j, %bb.e ], [ false, %3 ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5m_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_11ExprCompareNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.o = icmp eq i64 %i.g, 0
  br i1 %i.o, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = add nuw i64 %.sroa.01.06.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.01.06.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.06.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.06.i
  %.val.i = load i8, ptr %i.q, align 1, !range !1463, !noundef !4
  %.val5.i = load i8, ptr %i.r, align 1, !range !1463, !noundef !4
  %.not.i = icmp eq i8 %.val.i, %.val5.i
  br i1 %.not.i, label %bb.d, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %.lr.ph.i, %.lr.ph, %bb.e, %.loopexit, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.loopexit ], [ %i.ad, %.lr.ph ], [ false, %.lr.ph.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4
  %.not4.not = icmp eq i64 %i.t, 0
  br i1 %.not4.not, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.01.0.i5 = phi i64 [ %i.ae, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %.sroa.01.0.i5
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.y, i64 %.sroa.01.0.i5
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ac), !inline_history !2450 ; 2 uses
  %i.ae = add nuw i64 %.sroa.01.0.i5, 1           ; 2 uses
  %exitcond.not = icmp ne i64 %i.ae, %i.t
  %or.cond.not = select i1 %i.ad, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable15ComparableCmpOpINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5r_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_8ExprCallNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2767, !noalias !2770, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2770, !noalias !2767, !noundef !4
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2770, !noalias !2767, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2767, !noalias !2770, !nonnull !4, !noundef !4
  %.not6.not = icmp eq i64 %i.g, 0
  br i1 %.not6.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.o = add nuw i64 %.sroa.01.0.i17, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.01.0.i17 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %.sroa.01.0.i17
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.l, i64 %.sroa.01.0.i17
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.q), !noalias !2772, !inline_history !2773
  br i1 %i.r, label %bb.d, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !2767, !noalias !2770, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2770, !noalias !2767, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2770, !noalias !2767, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2767, !noalias !2770, !nonnull !4, !noundef !4
  %.not48.not = icmp eq i64 %i.t, 0
  br i1 %.not48.not, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph11

bb.f:                                             ; preds = %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.ab = add nuw i64 %.sroa.01.0.i9, 1           ; 2 uses
  %exitcond21.not = icmp eq i64 %i.ab, %i.t
  br i1 %exitcond21.not, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.e, %bb.f
  %.sroa.01.0.i9 = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.aa, i64 %.sroa.01.0.i9 ; 3 uses
  %i.ad = getelementptr inbounds nuw [144 x i8], ptr %i.y, i64 %.sroa.01.0.i9 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !2774, !noalias !2779, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %.not.i = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !2777, !noalias !2780, !noundef !4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph11
  br i1 %i.aj, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.i

bb.h:                                             ; preds = %.lr.ph11
  br i1 %i.aj, label %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.al = load i64, ptr %i.ag, align 8, !alias.scope !2774, !noalias !2779, !noundef !4 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !alias.scope !2777, !noalias !2780, !noundef !4
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %.split, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.i
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.af, ptr nonnull %i.ai, i64 %i.al), !noalias !2781, !inline_history !2782
  %i.ao = icmp eq i32 %bcmp.i, 0
  br i1 %i.ao, label %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.h, %.split
  %i.ap = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ad), !noalias !2772, !inline_history !2782
  br i1 %i.ap, label %bb.f, label %_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs2H_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_19ComparableArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.f, %bb.i, %bb.g, %bb.h, %.split, %bb.e, %._crit_edge, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ false, %._crit_edge ], [ false, %bb.b ], [ false, %.split ], [ false, %_RNvXs31_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_17ComparableKeywordNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ true, %bb.f ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5w_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_23ExprInterpolatedElementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCskLngH8kgpZI_15ruff_python_ast10comparableNtB6_14ComparableExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d)
  br i1 %i.e, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !785, !noundef !4
  %.not = icmp eq i64 %i.g, -2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !range !785, !noundef !4
  %i.j = icmp eq i64 %i.i, -2                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCskLngH8kgpZI_15ruff_python_ast10comparable35ComparableInterpolatedStringElementINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2O29vuvTAEJ_14ty_python_core.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
end_hunk_0
