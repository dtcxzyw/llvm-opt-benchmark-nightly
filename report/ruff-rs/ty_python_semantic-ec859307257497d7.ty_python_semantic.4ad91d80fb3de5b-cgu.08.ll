Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.08?download=true
inline.NumInlined: 8661
inline.NumDeleted: 4050
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvXsd_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dicts7_1__NtB5_16InternalBitFlagsNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i8, ptr %i.c, align 8, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs4NRVxsYgnAr_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionNtB5_13SliceContains14slice_containsBK_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(20) %0, ptr noalias noundef nonnull readonly align 4 captures(address) %1, i64 noundef range(i64 0, 461168601842738791) %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21319)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !range !58, !alias.scope !21320, !noalias !21321, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !21319, !noalias !21322 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !range !15, !alias.scope !21319, !noalias !21322 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !21319, !noalias !21322
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !21319, !noalias !21322
  switch i32 %i.b, label %default.unreachable [
    i32 0, label %.lr.ph.i.split.us
    i32 1, label %.lr.ph.i.split.us1
    i32 2, label %.lr.ph.i.split.us6
  ]

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %.backedge.i.us
  %i.k = phi ptr [ %i.l, %.backedge.i.us ], [ %1, %.lr.ph.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21325)
  %i.m = load i32, ptr %i.k, align 4, !range !58, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %.backedge.i.us

bb.b:                                             ; preds = %.lr.ph.i.split.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.q = icmp eq i32 %i.p, %i.d
  br i1 %i.q, label %.split.i.us, label %.backedge.i.us

.split.i.us:                                      ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = load i32, ptr %i.r, align 4, !range !15, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.t = icmp eq i32 %i.s, %i.f
  br i1 %i.t, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit, label %.backedge.i.us

.backedge.i.us:                                   ; preds = %.split.i.us, %bb.b, %.lr.ph.i.split.us
  %.not14.i.us = icmp eq ptr %i.l, %i.a
  br i1 %.not14.i.us, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit, label %.lr.ph.i.split.us

.lr.ph.i.split.us1:                               ; preds = %.lr.ph.i, %.backedge.i.us2
  %i.u = phi ptr [ %i.v, %.backedge.i.us2 ], [ %1, %.lr.ph.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21325)
  %i.w = load i32, ptr %i.u, align 4, !range !58, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.c, label %.backedge.i.us2

bb.c:                                             ; preds = %.lr.ph.i.split.us1
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.aa = icmp eq i32 %i.z, %i.d
  br i1 %i.aa, label %.split3.i.us, label %.backedge.i.us2

.split3.i.us:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !range !15, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.ad = icmp eq i32 %i.ac, %i.f
  br i1 %i.ad, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit, label %.backedge.i.us2

.backedge.i.us2:                                  ; preds = %.split3.i.us, %bb.c, %.lr.ph.i.split.us1
  %.not14.i.us3 = icmp eq ptr %i.v, %i.a
  br i1 %.not14.i.us3, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit, label %.lr.ph.i.split.us1

.lr.ph.i.split.us6:                               ; preds = %.lr.ph.i, %.backedge.i.us7
  %i.ae = phi ptr [ %i.af, %.backedge.i.us7 ], [ %1, %.lr.ph.i ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21325)
  %i.ag = load i32, ptr %i.ae, align 4, !range !58, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.ah = icmp eq i32 %i.ag, 2
  br i1 %i.ah, label %bb.d, label %.backedge.i.us7

bb.d:                                             ; preds = %.lr.ph.i.split.us6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.ak = icmp eq i32 %i.aj, %i.d
  br i1 %i.ak, label %bb.e, label %.backedge.i.us7

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.am = load i32, ptr %i.al, align 4, !range !15, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.an = icmp eq i32 %i.am, %i.f
  br i1 %i.an, label %bb.f, label %.backedge.i.us7

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.aq = icmp eq i32 %i.ap, %i.h
  br i1 %i.aq, label %.split4.i.us, label %.backedge.i.us7

.split4.i.us:                                     ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !21326, !noalias !21327, !noundef !12
  %i.at = icmp eq i32 %i.as, %i.j
  br i1 %i.at, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit, label %.backedge.i.us7

.backedge.i.us7:                                  ; preds = %.split4.i.us, %bb.f, %bb.e, %bb.d, %.lr.ph.i.split.us6
  %.not14.i.us8 = icmp eq ptr %i.af, %i.a
  br i1 %.not14.i.us8, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit, label %.lr.ph.i.split.us6

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11ide_support18resolve_definition18ResolvedDefinitionENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB3k_13SliceContains14slice_contains0EBY_.exit: ; preds = %.backedge.i.us7, %.split4.i.us, %.split3.i.us, %.backedge.i.us2, %.backedge.i.us, %.split.i.us, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ true, %.split.i.us ], [ true, %.split3.i.us ], [ false, %.backedge.i.us ], [ false, %.backedge.i.us2 ], [ false, %.backedge.i.us7 ], [ true, %.split4.i.us ]
  ret i1 %.lcssa.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydanticNtB5_11ModelConfigNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(7) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5
  store ptr %i.h, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1344, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @189, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @189, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @189, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @189, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @189, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @1345, ptr %i.u, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1353, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @1352, i64 noundef 7, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14SuperOwnerKindINtB5_10HashEqLikeBA_E2eqBG_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21347)
  %i.a = load i32, ptr %0, align 4, !range !79, !alias.scope !21346, !noalias !21347, !noundef !12 ; 5 uses
  %i.b = add nsw i32 %i.a, -5
  %i.c = icmp sgt i32 %i.a, 4
  %narrow.i = select i1 %i.c, i32 %i.b, i32 2     ; 2 uses
  %i.d = load i32, ptr %1, align 4, !range !79, !alias.scope !21347, !noalias !21346, !noundef !12 ; 4 uses
  %i.e = add nsw i32 %i.d, -5
  %2 = icmp sgt i32 %i.d, 4
  %narrow2.i = select i1 %2, i32 %i.e, i32 2
  %i.f = icmp eq i32 %narrow.i, %narrow2.i
  br i1 %i.f, label %bb.b, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %narrow.i, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.h
    i32 2, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21349)
  %i.i = load i32, ptr %i.g, align 4, !range !104, !alias.scope !21350, !noalias !21351, !noundef !12 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !range !104, !alias.scope !21351, !noalias !21350, !noundef !12
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %i.i, 2
  br i1 %i.l, label %bb.f, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !21350, !noalias !21351, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !21351, !noalias !21350, !noundef !12
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.g, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 4, !range !15, !alias.scope !21350, !noalias !21351, !noundef !12
  %i.u = load i32, ptr %i.r, align 4, !range !15, !alias.scope !21351, !noalias !21350, !noundef !12
  %i.v = icmp eq i32 %i.t, %i.u
  br label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21353)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 4, !alias.scope !21354, !noalias !21355, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !21355, !noalias !21354, !noundef !12
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.i, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !range !15, !alias.scope !21354, !noalias !21355, !noundef !12
  %i.ae = load i32, ptr %i.ab, align 4, !range !15, !alias.scope !21355, !noalias !21354, !noundef !12
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i8, ptr %i.ag, align 4, !range !25, !alias.scope !21354, !noalias !21355, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ah, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i8, ptr %i.ai, align 4, !range !25, !alias.scope !21355, !noalias !21354, !noundef !12 ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not2.i.i = icmp eq i8 %i.ah, %i.aj
  br label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp eq i8 %i.aj, 2
  br label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21357)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.an = tail call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.al, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.am)
  br i1 %i.an, label %bb.n, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21359)
  %i.ao = icmp eq i32 %i.a, -1                    ; 2 uses
  %i.ap = icmp eq i32 %i.d, -1                    ; 3 uses
  %i.aq = xor i1 %i.ao, %i.ap
  br i1 %i.aq, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !21360, !noalias !21361, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !21361, !noalias !21360, !noundef !12
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %.split.i.i, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.o
  %i.aw = xor i1 %i.ap, true
  tail call void @llvm.assume(i1 %i.aw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21363)
  %i.ax = icmp eq i32 %i.a, %i.d
  br i1 %i.ax, label %bb.r, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !21364, !noalias !21365, !noundef !12
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !21365, !noalias !21364, !noundef !12
  %i.bc = icmp eq i32 %i.az, %i.bb                ; 5 uses
  switch i32 %i.a, label %default.unreachable.i.i [
    i32 0, label %bb.s
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.v
    i32 4, label %bb.w
  ]

default.unreachable.i.i:                          ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  br i1 %i.bc, label %.split5.i.i, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.r
  br i1 %i.bc, label %.split3.i.i, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.r
  br i1 %i.bc, label %.split6.i.i, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.r
  br i1 %i.bc, label %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.r
  br i1 %i.bc, label %.split4.i.i, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split5.i.i:                                      ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !range !15, !alias.scope !21364, !noalias !21365, !noundef !12
  %i.bg = load i32, ptr %i.bd, align 4, !range !15, !alias.scope !21365, !noalias !21364, !noundef !12
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.x, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split3.i.i:                                      ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !range !15, !alias.scope !21364, !noalias !21365, !noundef !12
  %i.bl = load i32, ptr %i.bi, align 4, !range !15, !alias.scope !21365, !noalias !21364, !noundef !12
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.x, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split6.i.i:                                      ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !range !15, !alias.scope !21364, !noalias !21365, !noundef !12
  %i.bq = load i32, ptr %i.bn, align 4, !range !15, !alias.scope !21365, !noalias !21364, !noundef !12
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.x, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split4.i.i:                                      ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !range !15, !alias.scope !21364, !noalias !21365, !noundef !12
  %i.bv = load i32, ptr %i.bs, align 4, !range !15, !alias.scope !21365, !noalias !21364, !noundef !12
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.x, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split.i.i:                                       ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !range !15, !alias.scope !21360, !noalias !21361, !noundef !12
  %i.ca = load i32, ptr %i.bx, align 4, !range !15, !alias.scope !21361, !noalias !21360, !noundef !12
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.x, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !range !15, !alias.scope !21364, !noalias !21365, !noundef !12
  %i.cf = load i32, ptr %i.cc, align 4, !range !15, !alias.scope !21365, !noalias !21364, !noundef !12
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.x, label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %.split4.i.i, %.split6.i.i, %.split3.i.i, %.split5.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val.i.i = load i8, ptr %i.ch, align 4, !range !27, !alias.scope !21366, !noalias !21367, !noundef !12
  %.val1.i.i = load i8, ptr %i.ci, align 4, !range !27, !alias.scope !21367, !noalias !21366, !noundef !12
  %i.cj = icmp eq i8 %.val.i.i, %.val1.i.i
  br label %_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsG_NtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_superNtB5_14SuperOwnerKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %bb.p, %bb.q, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %.split5.i.i, %.split3.i.i, %.split6.i.i, %.split4.i.i, %.split.i.i, %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i, %bb.x
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.d ], [ %i.v, %bb.g ], [ true, %bb.e ], [ %.not2.i.i, %bb.k ], [ false, %bb.i ], [ %i.ak, %bb.l ], [ %i.cj, %bb.x ], [ false, %_RNvXs1d_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.m ], [ false, %.split6.i.i ], [ false, %.split.i.i ], [ false, %.split3.i.i ], [ false, %.split4.i.i ], [ false, %.split5.i.i ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.w ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable12CallableTypeINtB5_10HashEqLikeBA_E2eqBG_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #11 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4
  %i.b = load <2 x i32>, ptr %1, align 4
  %i.c = icmp eq <2 x i32> %i.a, %i.b             ; 2 uses
  %i.d = extractelement <2 x i1> %i.c, i64 0
  %i.e = extractelement <2 x i1> %i.c, i64 1
  %.sroa.0.0.i = select i1 %i.e, i1 %i.d, i1 false
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable16CallableTypeKindINtB5_10HashEqLikeBA_E2eqBG_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #11 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !21, !noundef !12
  %.val1 = load i8, ptr %1, align 1, !range !21, !noundef !12
  %i.a = icmp eq i8 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable26CallableFunctionProvenanceINtB5_10HashEqLikeBA_E2eqBG_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #11 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !25, !noundef !12
  %.val1 = load i8, ptr %1, align 1, !range !25, !noundef !12
  %i.a = icmp eq i8 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5known10KnownClassINtB5_10HashEqLikeBA_E2eqBI_(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #11 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !88, !noundef !12
  %.val1 = load i8, ptr %1, align 1, !range !88, !noundef !12
  %i.a = icmp eq i8 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsg_NtCs45bxiIjzMqg_5salsa8internedTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class17ProtocolInterfaceNtBD_13ProtocolClassNtBF_4TypeEINtB5_10HashEqLikeBA_E2eqBH_(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(36) %1) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21381)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load <2 x i32>, ptr %i.a, align 4, !alias.scope !21380, !noalias !21381
  %i.d = load <2 x i32>, ptr %i.b, align 4, !alias.scope !21381, !noalias !21380
  %i.e = icmp eq <2 x i32> %i.c, %i.d             ; 2 uses
  %i.f = extractelement <2 x i1> %i.e, i64 0
  %i.g = extractelement <2 x i1> %i.e, i64 1
  %.sroa.0.0.i.i = select i1 %i.g, i1 %i.f, i1 false
  br i1 %.sroa.0.0.i.i, label %bb.b, label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class17ProtocolInterfaceNtBz_13ProtocolClassNtBB_4TypeENtNtB7_3cmp9PartialEq2eqBD_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21385)
  %i.h = load i32, ptr %0, align 4, !range !22, !alias.scope !21386, !noalias !21387, !noundef !12 ; 3 uses
  %i.i = icmp eq i32 %i.h, -1                     ; 2 uses
  %i.j = load i32, ptr %1, align 4, !range !22, !alias.scope !21387, !noalias !21386, !noundef !12 ; 2 uses
  %i.k = icmp eq i32 %i.j, -1                     ; 3 uses
  %i.l = xor i1 %i.i, %i.k
  br i1 %i.l, label %_RNvXsi_NtCs4NRVxsYgnAr_4core5tupleTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14protocol_class17ProtocolInterfaceNtBz_13ProtocolClassNtBB_4TypeENtNtB7_3cmp9PartialEq2eqBD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
