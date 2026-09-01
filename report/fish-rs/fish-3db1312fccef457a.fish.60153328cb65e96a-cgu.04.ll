Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1a_15CompletionEntryE7get_mutB18_EB1c_:bb.a
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load i32, ptr %i.y, align 4, !alias.scope !322, !noalias !327, !noundef !4 ; 2 uses
  %.val16.i.i.i.i = load i32, ptr %i.z, align 4, !alias.scope !325, !noalias !328, !noundef !4 ; 2 uses
  %i.aa = icmp eq i32 %.val15.i.i.i.i, %.val16.i.i.i.i
  br i1 %i.aa, label %bb.e, label %.loopexit.i.i.i.i

_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.w, %._crit_edge.i.i.i.i ], [ %i.x, %.loopexit.i.i.i.i ] ; 2 uses
  %i.ab = icmp eq i8 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.ab, label %switch.lookup.i.i.i, label %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

switch.lookup.i.i.i:                              ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i34, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !124, !alias.scope !317, !noalias !320, !noundef !4
  %i.ae = sub nsw i8 %i.i, %i.ad
  br label %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i: ; preds = %switch.lookup.i.i.i, %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish.exit.i.i.i
  %.sroa.0.0.i6.i.i = phi i8 [ %.sroa.0.0.i.i.i.i, %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish.exit.i.i.i ], [ %i.ae, %switch.lookup.i.i.i ]
  switch i8 %.sroa.0.0.i6.i.i, label %bb.f [
    i8 -1, label %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1A_15CompletionEntryNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_.exit
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  unreachable

_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge: ; preds = %bb.d, %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i33, %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.af, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1A_15CompletionEntryNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 720
  %i.ah = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.4.0.i.ph.i
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !329, !nonnull !4, !noundef !4
  %i.ak = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1A_15CompletionEntryNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_.exit.thread: ; preds = %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1A_15CompletionEntryNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.am, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1A_15CompletionEntryNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_.exit ], [ null, %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1A_15CompletionEntryNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_.exit: ; preds = %_RNvXsJ_NtCs8frGy5WneL6_4fish8completeNtB5_20CompletionEntryIndexNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 352
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.sroa.8.0.i.i33
  br label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexNtB1A_15CompletionEntryNtB1i_14LeafOrInternalE11search_treeB1y_EB1C_.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef ptr @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB8_7set_val9SetValZSTE3getNtNtB1c_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.y, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 274
  %i.f = load i16, ptr %i.e, align 2, !noalias !336, !noundef !4 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  %i.j = icmp eq ptr %i.k, %i.h
  br i1 %i.j, label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i34 = phi ptr [ %i.k, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i33 = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i34, i64 24 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.8.0.i.i33, 1
  %i.m = getelementptr i8, ptr %.sroa.0.01.i.i34, i64 8
  %.val.i.i = load ptr, ptr %i.m, align 8, !noalias !336, !nonnull !4, !noundef !4
  %i.n = getelementptr i8, ptr %.sroa.0.01.i.i34, i64 16
  %.val6.i.i = load i64, ptr %i.n, align 8, !noalias !336, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %..i.i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.val6.i.i, i64 range(i64 0, 2305843009213693952) %2) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.o, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %.lr.ph
  %i.p = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %2, i64 range(i64 0, 2305843009213693952) %.val6.i.i)
  br label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.q = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i.i.i.i, i32 %.val16.i.i.i.i)
  br label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph, %bb.e
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.o, %bb.e ], [ 0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.019.i.i.i.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load i32, ptr %i.r, align 4, !alias.scope !348, !noalias !349, !noundef !4 ; 2 uses
  %.val16.i.i.i.i = load i32, ptr %i.s, align 4, !alias.scope !350, !noalias !351, !noundef !4 ; 2 uses
  %i.t = icmp eq i32 %.val15.i.i.i.i, %.val16.i.i.i.i
  br i1 %i.t, label %bb.e, label %.loopexit.i.i.i.i

_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i: ; preds = %.loopexit.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.p, %._crit_edge.i.i.i.i ], [ %i.q, %.loopexit.i.i.i.i ]
  switch i8 %.sroa.0.0.i.i.i.i, label %bb.f [
    i8 -1, label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  unreachable

_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge: ; preds = %bb.d, %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i33, %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.u, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 280
  %i.w = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.4.0.i.ph.i
  %i.y = load ptr, ptr %i.x, align 8, !noalias !352, !nonnull !4, !noundef !4
  %i.z = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit.thread: ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.aa, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit ], [ null, %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 276
  br label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeNtNtB1E_6utfstr8Utf32StrECs8frGy5WneL6_4fish.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBc_4sync3ArcNtB1a_7HistoryEE3getB18_EB1e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.d = load i64, ptr %1, align 8, !range !356, !alias.scope !357, !noalias !360
  %.fr21.i.i = freeze i64 %i.d
  %i.e = icmp ne i64 %.fr21.i.i, -1               ; 2 uses
  %i.f = zext i1 %i.e to i8                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !124, !alias.scope !357, !noalias !360
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !357, !noalias !360, !nonnull !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !357, !noalias !360 ; 2 uses
  br i1 %i.e, label %.split.us.i.preheader.us.i, label %.split.i.preheader.i

.split.us.i.preheader.us.i:                       ; preds = %bb.b, %bb.e
  %.sroa.3.0.us.i = phi i64 [ %i.aj, %bb.e ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.0.0.us.i = phi ptr [ %i.ai, %bb.e ], [ %i.a, %bb.b ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 362
  %i.n = load i16, ptr %i.m, align 2, !noalias !363, !noundef !4 ; 2 uses
  %i.o = zext i16 %i.n to i64                     ; 3 uses
  %.idx66 = mul nuw nsw i64 %i.o, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx66
  %i.q = icmp eq i16 %i.n, 0
  br i1 %i.q, label %.loopexit.us.i, label %.lr.ph63

.split.us.i.us.i:                                 ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i
  %i.r = icmp eq ptr %i.s, %i.p
  br i1 %i.r, label %.loopexit.us.i, label %.lr.ph63

.lr.ph63:                                         ; preds = %.split.us.i.preheader.us.i, %.split.us.i.us.i
  %.sroa.0.01.us.i.us.i62 = phi ptr [ %i.s, %.split.us.i.us.i ], [ %i.l, %.split.us.i.preheader.us.i ] ; 4 uses
  %.sroa.8.0.us.i.us.i61 = phi i64 [ %i.t, %.split.us.i.us.i ], [ 0, %.split.us.i.preheader.us.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i62, i64 24 ; 2 uses
  %i.t = add nuw nsw i64 %.sroa.8.0.us.i.us.i61, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.u = load i64, ptr %.sroa.0.01.us.i.us.i62, align 8, !range !356, !alias.scope !364, !noalias !367, !noundef !4 ; 2 uses
  %not..i.us.i.us.i = icmp ne i64 %i.u, -1
  %.neg.i.us.i.us.i = sext i1 %not..i.us.i.us.i to i8
  %2 = add nsw i8 %.neg.i.us.i.us.i, %i.f
  %.not.i.us.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.us.i, label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph63
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i62, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !364, !noalias !367, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i62, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !364, !noalias !367, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %..i.i.i.us.i.us.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.y, i64 range(i64 0, 2305843009213693952) %i.k) ; 2 uses
  %.not.i.i.us.i.us.i = icmp eq i64 %..i.i.i.us.i.us.i, 0
  br i1 %.not.i.i.us.i.us.i, label %._crit_edge.i.i.us.i.us.i, label %.lr.ph.i.i.us.i.us.i

.lr.ph.i.i.us.i.us.i:                             ; preds = %bb.c, %bb.d
  %.sroa.01.019.i.i.us.i.us.i = phi i64 [ %i.ac, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.01.019.i.i.us.i.us.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.01.019.i.i.us.i.us.i
  %.val15.i.i.us.i.us.i = load i32, ptr %i.z, align 4, !alias.scope !369, !noalias !374, !noundef !4 ; 2 uses
  %.val16.i.i.us.i.us.i = load i32, ptr %i.aa, align 4, !alias.scope !372, !noalias !375, !noundef !4 ; 2 uses
  %i.ab = icmp eq i32 %.val15.i.i.us.i.us.i, %.val16.i.i.us.i.us.i
  br i1 %i.ab, label %bb.d, label %.loopexit.i.i.us.i.us.i

bb.d:                                             ; preds = %.lr.ph.i.i.us.i.us.i
  %i.ac = add nuw nsw i64 %.sroa.01.019.i.i.us.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i = icmp eq i64 %i.ac, %..i.i.i.us.i.us.i
  br i1 %exitcond.not.i.i.us.i.us.i, label %._crit_edge.i.i.us.i.us.i, label %.lr.ph.i.i.us.i.us.i

.loopexit.i.i.us.i.us.i:                          ; preds = %.lr.ph.i.i.us.i.us.i
  %i.ad = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i.i.us.i.us.i, i32 %.val16.i.i.us.i.us.i)
  br label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i

._crit_edge.i.i.us.i.us.i:                        ; preds = %bb.d, %bb.c
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %i.k, i64 range(i64 0, 2305843009213693952) %i.y)
  br label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i

_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i: ; preds = %._crit_edge.i.i.us.i.us.i, %.loopexit.i.i.us.i.us.i, %.lr.ph63
  %.sroa.0.0.i6.us.i.us.i = phi i8 [ %2, %.lr.ph63 ], [ %i.ad, %.loopexit.i.i.us.i.us.i ], [ %i.ae, %._crit_edge.i.i.us.i.us.i ]
  switch i8 %.sroa.0.0.i6.us.i.us.i, label %.split17.us.i.i [
    i8 -1, label %.loopexit.us.i
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit
    i8 1, label %.split.us.i.us.i
  ]

bb.e:                                             ; preds = %.loopexit.us.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i, i64 368
  %i.ag = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us.i, 12
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.4.0.i.ph.ph.us.i
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !376, !nonnull !4, !noundef !4
  %i.aj = add i64 %.sroa.3.0.us.i, -1
  br label %.split.us.i.preheader.us.i

.loopexit.us.i:                                   ; preds = %.split.us.i.us.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i, %.split.us.i.preheader.us.i
  %.sroa.4.0.i.ph.ph.us.i = phi i64 [ %i.o, %.split.us.i.preheader.us.i ], [ %i.o, %.split.us.i.us.i ], [ %.sroa.8.0.us.i.us.i61, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i ] ; 2 uses
  %i.ak = icmp eq i64 %.sroa.3.0.us.i, 0
  br i1 %i.ak, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit.thread, label %bb.e

.split.i.preheader.i:                             ; preds = %bb.b, %bb.g
  %.sroa.3.0.i = phi i64 [ %i.bf, %bb.g ], [ %i.c, %bb.b ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.be, %bb.g ], [ %i.a, %bb.b ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 362
  %i.an = load i16, ptr %i.am, align 2, !noalias !363, !noundef !4 ; 2 uses
  %i.ao = zext i16 %i.an to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.ao, 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.aq = icmp eq i16 %i.an, 0
  br i1 %i.aq, label %.loopexit55.i, label %.lr.ph

.split.i.i:                                       ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  %i.ar = icmp eq ptr %i.as, %i.ap
  br i1 %i.ar, label %.loopexit55.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i.preheader.i, %.split.i.i
  %.sroa.0.01.i.i59 = phi ptr [ %i.as, %.split.i.i ], [ %i.al, %.split.i.preheader.i ] ; 3 uses
  %.sroa.8.0.i.i58 = phi i64 [ %i.at, %.split.i.i ], [ 0, %.split.i.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i59, i64 24 ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.8.0.i.i58, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.au = load i64, ptr %.sroa.0.01.i.i59, align 8, !range !356, !alias.scope !364, !noalias !367, !noundef !4
  %i.av = icmp ne i64 %i.au, -1                   ; 2 uses
  %.neg.i.i.i = sext i1 %i.av to i8
  %i.aw = add nsw i8 %.neg.i.i.i, %i.f
  br i1 %i.av, label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i59, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !range !124, !alias.scope !364, !noalias !367, !noundef !4
  %i.az = sub nsw i8 %i.h, %i.ay
  br label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.f, %.lr.ph
  %.sroa.0.0.i6.i.i = phi i8 [ %i.aw, %.lr.ph ], [ %i.az, %bb.f ]
  switch i8 %.sroa.0.0.i6.i.i, label %default.unreachable [
    i8 -1, label %.loopexit55.i
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit
    i8 1, label %.split.i.i
  ]

default.unreachable:                              ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  unreachable

.split17.us.i.i:                                  ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i
  unreachable

.loopexit55.i:                                    ; preds = %.split.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %.split.i.preheader.i
  %.sroa.4.0.i.ph.ph56.i = phi i64 [ %i.ao, %.split.i.preheader.i ], [ %i.ao, %.split.i.i ], [ %.sroa.8.0.i.i58, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  %i.ba = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.ba, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit.thread, label %bb.g

bb.g:                                             ; preds = %.loopexit55.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 368
  %i.bc = icmp samesign ult i64 %.sroa.4.0.i.ph.ph56.i, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.sroa.4.0.i.ph.ph56.i
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !376, !nonnull !4, !noundef !4
  %i.bf = add i64 %.sroa.3.0.i, -1
  br label %.split.i.preheader.i

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit.thread: ; preds = %.loopexit55.i, %.loopexit.us.i, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.bi, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit ], [ null, %.loopexit.us.i ], [ null, %.loopexit55.i ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit: ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i
  %.us-phi79.sink.i = phi ptr [ %.sroa.0.0.us.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i ], [ %.sroa.0.0.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  %.us-phi78.sink.i = phi i64 [ %.sroa.8.0.us.i.us.i61, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i ], [ %.sroa.8.0.i.i58, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi79.sink.i) ]
  %i.bg = icmp samesign ult i64 %.us-phi78.sink.i, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %.us-phi79.sink.i, i64 272
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.us-phi78.sink.i
  br label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1C_7HistoryENtB1i_14LeafOrInternalE11search_treeB1A_EB1G_.exit.thread
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB6_8BTreeMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB18_E3getB19_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.x, %bb.g ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.w, %bb.g ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 362
  %i.e = load i16, ptr %i.d, align 2, !noalias !383, !noundef !4 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.idx
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

bb.d:                                             ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  %i.i = icmp eq ptr %i.j, %i.g
  br i1 %i.i, label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i34 = phi ptr [ %i.j, %bb.d ], [ %.sroa.0.0.i, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i33 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i34, i64 16 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i33, 1
  %.val.i.i = load ptr, ptr %.sroa.0.01.i.i34, align 8, !noalias !383, !nonnull !4, !align !17, !noundef !4
  %i.l = getelementptr i8, ptr %.sroa.0.01.i.i34, i64 8
  %.val6.i.i = load i64, ptr %i.l, align 8, !noalias !383, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %..i.i.i.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.val6.i.i, i64 range(i64 0, 2305843009213693952) %2) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i
  %i.n = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %2, i64 range(i64 0, 2305843009213693952) %.val6.i.i)
  br label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.o = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i.i.i.i, i32 %.val16.i.i.i.i)
  br label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i, %bb.e
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.m, %bb.e ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.01.019.i.i.i.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load i32, ptr %i.p, align 4, !alias.scope !395, !noalias !396, !noundef !4 ; 2 uses
  %.val16.i.i.i.i = load i32, ptr %i.q, align 4, !alias.scope !397, !noalias !398, !noundef !4 ; 2 uses
  %i.r = icmp eq i32 %.val15.i.i.i.i, %.val16.i.i.i.i
  br i1 %i.r, label %bb.e, label %.loopexit.i.i.i.i

_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i: ; preds = %.loopexit.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.n, %._crit_edge.i.i.i.i ], [ %i.o, %.loopexit.i.i.i.i ]
  switch i8 %.sroa.0.0.i.i.i.i, label %bb.f [
    i8 -1, label %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit
    i8 1, label %bb.d
  ]

bb.f:                                             ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  unreachable

_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge: ; preds = %bb.d, %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.f, %bb.c ], [ %i.f, %bb.d ], [ %.sroa.8.0.i.i33, %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i ] ; 2 uses
  %i.s = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.s, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 368
  %i.u = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.4.0.i.ph.i
  %i.w = load ptr, ptr %i.v, align 8, !noalias !399, !nonnull !4, !noundef !4
  %i.x = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit.thread: ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.aa, %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit ], [ null, %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i._crit_edge ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit: ; preds = %_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i
  %i.y = icmp samesign ult i64 %.sroa.8.0.i.i33, 11
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 176
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.sroa.8.0.i.i33
  br label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrB1A_NtB1i_14LeafOrInternalE11search_treeB1B_ECs8frGy5WneL6_4fish.exit.thread
end_hunk_0
begin_hunk_1_@_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl3new:bb.a
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl3pop(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %.val8 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 16 ; 10 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !2880, !noundef !4 ; 4 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775807
  br i1 %i.h, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i, label %.noexc, !prof !87

.noexc:                                           ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #33
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i: ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.g, 1
  store i64 %i.i, ptr %i.f, align 8, !noalias !2880
  %i.j = getelementptr inbounds nuw i8, ptr %.val8, i64 80 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment7EnvNodeE6borrowBR_.exit.i
  store i64 %i.g, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %.thread26, !prof !83

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.f, align 8           ; 3 uses
  %i.r = add i64 %.pre.i, -1
  store i64 %i.r, ptr %i.f, align 8
  store ptr %i.q, ptr %i.e, align 8
  store ptr %.val8, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = icmp sgt i64 %.pre.i, 0
  br i1 %i.s, label %bb.i, label %bb.g, !prof !208

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #33
          to label %.noexc9 unwind label %bb.d

.noexc9:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @295, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @296) #37
  unreachable

.thread26:                                        ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = add nsw i64 %i.o, -1                     ; 3 uses
  store i64 %i.u, ptr %i.n, align 8
  %i.v = load i64, ptr %i.t, align 8, !range !435, !noundef !4
  %i.w = icmp samesign ult i64 %i.u, %i.v
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.z = icmp ult i64 %i.o, 1152921504606846977
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.u
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  store ptr %i.ab, ptr %i.e, align 8
  store ptr %.val8, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = add nuw nsw i64 %i.g, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread26, %bb.f
  %i.ad = phi i64 [ %i.ac, %.thread26 ], [ %.pre.i, %bb.f ]
  store i64 %i.ad, ptr %i.f, align 8, !noalias !2883
  %i.ae = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE4iterB1K_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load i64, ptr %i.f, align 8, !noundef !4
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.f, align 8
  br label %.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysB11_NtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEE9from_iterB4j_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = load i64, ptr %i.f, align 8, !noundef !4
  %i.aj = add i64 %i.ai, -1
  store i64 %i.aj, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  call void @llvm.experimental.noalias.scope.decl(metadata !2892)
  %i.ak = load ptr, ptr %i.d, align 8, !alias.scope !2895, !nonnull !4, !noundef !4
  %i.al = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !2895
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.n:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit11: ; preds = %.thread, %bb.o
  resume { ptr, i32 } %.pn15

.thread:                                          ; preds = %bb.j, %bb.d
  %.pn15 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %i.af, %bb.j ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2896)
  call void @llvm.experimental.noalias.scope.decl(metadata !2899)
  call void @llvm.experimental.noalias.scope.decl(metadata !2902)
  %i.ao = load ptr, ptr %i.d, align 8, !alias.scope !2905, !nonnull !4, !noundef !4
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !2905
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit11

bb.o:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment15EnvNodeSyncCellE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish3env4impl11environment10EnvNodeRefEBJ_.exit11 unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden range(i24 0, 197120) i24 @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl3set(ptr noalias nofree noundef align 8 dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [12 x i8], align 1                ; 15 uses
  %i.j = alloca [12 x i8], align 1                ; 15 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.02.0.extract.trunc.i = trunc i32 %3 to i16 ; 4 uses
  %i.y = and i16 %.sroa.02.0.extract.trunc.i, 15  ; 2 uses
  %i.z = icmp ne i16 %i.y, 0                      ; 3 uses
  %i.aa = trunc i32 %3 to i8                      ; 7 uses
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = and i8 %i.aa, 1
  %i.ac = lshr i8 %i.aa, 1
  %i.ad = and i8 %i.ac, 1
  %i.ae = lshr i8 %i.aa, 2
  %i.af = and i8 %i.ae, 1
  %i.ag = lshr i8 %i.aa, 3
  %i.ah = and i8 %i.ag, 1
  br label %bb.c

.noexc117:                                        ; preds = %bb.dl, %bb.dk
  br i1 %.sroa.040.2, label %.thread168, label %common.resume

.body.thread175:                                  ; preds = %.invoke, %bb.dc, %bb.cw, %bb.ch, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit108, %bb.cn, %bb.cg, %bb.ca, %bb.bs, %bb.bo, %bb.bl, %_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl16try_set_electric.exit, %bb.ab, %bb.c, %bb.h, %bb.j, %bb.m, %bb.p, %bb.q, %bb.s, %bb.y
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread168

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.05.0.i.i = phi i8 [ %i.ah, %bb.b ], [ 1, %bb.a ] ; 2 uses
  %.sroa.04.0.i.i = phi i8 [ %i.af, %bb.b ], [ 1, %bb.a ] ; 5 uses
  %.sroa.03.0.i.i = phi i8 [ %i.ad, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %.sroa.02.0.i.i = phi i8 [ %i.ab, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %i.ai = and i16 %.sroa.02.0.extract.trunc.i, 48
  %i.aj = icmp ne i16 %i.ai, 0                    ; 5 uses
  %i.ak = lshr i8 %i.aa, 4                        ; 2 uses
  %i.al = and i8 %i.ak, 1                         ; 2 uses
  %i.am = lshr i8 %i.aa, 5                        ; 2 uses
  %i.an = and i8 %i.am, 1
  %.sroa.06.0.i.i = select i1 %i.aj, i8 %i.al, i8 1 ; 2 uses
  %.sroa.07.0.i.i = select i1 %i.aj, i8 %i.an, i8 1 ; 2 uses
  %i.ao = and i16 %.sroa.02.0.extract.trunc.i, 192
  %i.ap = icmp ne i16 %i.ao, 0                    ; 2 uses
  %i.aq = and i16 %.sroa.02.0.extract.trunc.i, 128
  %i.ar = icmp ne i16 %i.aq, 0
  %i.as = zext i1 %i.z to i8                      ; 2 uses
  %i.at = zext i1 %i.aj to i8                     ; 2 uses
  %i.au = zext i1 %i.ap to i8                     ; 2 uses
  %i.av = lshr i8 %i.aa, 6
  %i.aw = and i8 %i.av, 1                         ; 3 uses
  %i.ax = zext i1 %i.ar to i8                     ; 2 uses
  %i.ay = lshr i32 %3, 16                         ; 2 uses
  %i.az = trunc i32 %i.ay to i8
  %i.ba = and i8 %i.az, 1                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2909)
  %i.bb = invoke fastcc noundef align 8 ptr @_RNvMNtNtNtCs8frGy5WneL6_4fish3env4impl3varNtB2_11ElectricVar8for_name(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc unwind label %.body.thread175 ; 4 uses

.noexc:                                           ; preds = %bb.c
  %.not15.i = icmp eq ptr %i.bb, null
  br i1 %.not15.i, label %_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl16try_set_electric.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %.not.i = icmp eq i16 %i.y, 0
  %i.bc = trunc nuw i8 %.sroa.04.0.i.i to i1
  %or.cond.i = or i1 %.not.i, %i.bc
  br i1 %or.cond.i, label %bb.e, label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.bd = trunc i32 %i.ay to i1
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %i.aj, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bf = load i8, ptr %i.be, align 8, !range !124, !noalias !2911, !noundef !4
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.ag, label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 2 uses
  %i.bi = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull @287, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @287, i64 5))
          to label %.noexc83 unwind label %.body.thread175

.noexc83:                                         ; preds = %bb.h
  br i1 %i.bi, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 25
  %i.bk = load i8, ptr %i.bj, align 1, !range !124, !noalias !2911, !noundef !4
  %i.bl = trunc nuw i8 %i.bk to i1
  %.sroa.06.0.i.sroa.speculated = select i1 %i.bl, i8 %i.ak, i8 %i.am
  %i.bm = trunc i8 %.sroa.06.0.i.sroa.speculated to i1
  br i1 %i.bm, label %bb.h, label %bb.ag

bb.j:                                             ; preds = %.noexc83
  %i.bn = invoke noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull @288, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @288, i64 3))
          to label %.noexc84 unwind label %.body.thread175

.noexc84:                                         ; preds = %bb.j
  br i1 %i.bn, label %bb.r, label %bb.q

bb.k:                                             ; preds = %.noexc83
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !2909, !noalias !2914, !nonnull !4, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !2909, !noalias !2914, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !2915, !noalias !2918, !noundef !4 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2919
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !2915, !noalias !2918, !nonnull !4, !noundef !4
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi17fish_wcstol_radix(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.by, i64 noundef %i.bu, i32 noundef 8)
          to label %.noexc85 unwind label %.body.thread175

.noexc85:                                         ; preds = %bb.m
  %i.bz = load i8, ptr %i.d, align 8, !range !124, !noalias !2919, !noundef !4
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2919
  br label %bb.ag

bb.o:                                             ; preds = %.noexc85
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !2919, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2919
  %or.cond.i.i = icmp ugt i64 %i.cc, 511
  br i1 %or.cond.i.i, label %bb.ag, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = invoke noundef i32 @_RNvNtNtCse7JGOylGlDZ_3nix3sys4stat5umask(i32 noundef %i.cd)
          to label %bb.ag unwind label %.body.thread175 ; 0 uses

bb.q:                                             ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !noalias !2914
  store i64 0, ptr %4, align 8, !alias.scope !2909, !noalias !2914
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !2909, !noalias !2914
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !2909, !noalias !2914
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 25
  %i.cg = load i8, ptr %i.cf, align 1, !range !124, !noalias !2918, !noundef !4
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.011.0.insert.ext.i = zext nneg i8 %i.cg to i24 ; 2 uses
  %.sroa.011.2.insert.shift.i = shl nuw nsw i24 %.sroa.011.0.insert.ext.i, 16
  %.sroa.011.2.insert.insert.i = or disjoint i24 %.sroa.011.2.insert.shift.i, %.sroa.011.0.insert.ext.i
  %.val19.i = load ptr, ptr %i.ch, align 8, !alias.scope !2906, !noalias !2920, !nonnull !4, !noundef !4
  invoke fastcc void @_RNvMsb_NtNtNtCs8frGy5WneL6_4fish3env4impl11environmentNtB5_12EnvStackImpl11set_in_node(ptr nonnull %.val19.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, i24 %.sroa.011.2.insert.insert.i)
          to label %.noexc87 unwind label %.body.thread175

.noexc87:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2911
  br label %bb.ag

bb.r:                                             ; preds = %.noexc84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2911
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !2909, !noalias !2914, !noundef !4 ; 3 uses
  store i64 %i.cj, ptr %i.h, align 8, !noalias !2911
  %i.ck = icmp ult i64 %i.cj, 384307168202282326
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp eq i64 %i.cj, 1
  br i1 %i.cl, label %bb.t, label %bb.s, !prof !87

bb.s:                                             ; preds = %bb.r
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @289, ptr noundef nonnull @291, ptr nonnull inttoptr (i64 77 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #33
          to label %.noexc88 unwind label %.body.thread175

.noexc88:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2911
  store i64 0, ptr %i.ci, align 8, !alias.scope !2909, !noalias !2914
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !2909, !noalias !2914, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !2918
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !noalias !2911, !noundef !4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !2906, !noalias !2920, !noundef !4
  %i.cs = icmp eq i64 %i.cp, %i.cr
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !2906, !noalias !2920, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !2911, !nonnull !4, !noundef !4
  %i.cx = shl nuw i64 %i.cp, 2
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.cw, ptr nonnull %i.cu, i64 %i.cx), !noalias !2918
  %.not16.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not16.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !2918
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.w, !noalias !2921

bb.w:                                             ; preds = %bb.v
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %.body.i unwind label %bb.x, !noalias !2921

bb.x:                                             ; preds = %bb.w
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !2921
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.z, !noalias !2921

bb.y:                                             ; preds = %bb.u
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g)
          to label %.noexc89 unwind label %.body.thread175

.noexc89:                                         ; preds = %bb.y, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2911
  br label %bb.ag

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %bb.w
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.da, %bb.z ], [ %i.cy, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2920
  br label %.thread168

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !2906, !noalias !2920, !nonnull !4, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 5 uses
  %i.de = load i64, ptr %i.dd, align 8, !noalias !2921, !noundef !4
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.aa, label %bb.ab, !prof !87

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  store i64 -1, ptr %i.dd, align 8, !noalias !2921
end_hunk_1
begin_hunk_2_@_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE6insertCs8frGy5WneL6_4fish:bb.a
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.sroa.0.06.i.i14.i.i.i.prol
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !3316, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28.i.i, ptr %i.iw, align 8, !noalias !3316
  %i.ix = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 272
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !3316
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter393
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol, !llvm.loop !3328

.lr.ph.i.i13.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i13.i.i.i.prol, %.lr.ph.i.i13.i.i.i.preheader
  %.sroa.0.06.i.i14.i.i.i.unr = phi i64 [ %i.ic, %.lr.ph.i.i13.i.i.i.preheader ], [ %i.it, %.lr.ph.i.i13.i.i.i.prol ]
  %i.iz = icmp ult i64 %i.is, 3
  br i1 %i.iz, label %.loopexit.i.i, label %.lr.ph.i.i13.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i
  %.sroa.0.06.i.i14.i.i.i = phi i64 [ %i.jp, %.lr.ph.i.i13.i.i.i ], [ %.sroa.0.06.i.i14.i.i.i.unr, %.lr.ph.i.i13.i.i.i.prol.loopexit ] ; 7 uses
  %i.ja = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %.sroa.0.06.i.i14.i.i.i
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !3316, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28.i.i, ptr %i.jc, align 8, !noalias !3316
  %i.jd = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i to i16
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 272
  store i16 %i.jd, ptr %i.je, align 8, !noalias !3316
  %i.jf = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 2 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ja
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !3316, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28.i.i, ptr %i.jh, align 8, !noalias !3316
  %i.ji = trunc nuw nsw i64 %i.ja to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 272
  store i16 %i.ji, ptr %i.jj, align 8, !noalias !3316
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 3 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.jf
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !3316, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28.i.i, ptr %i.jm, align 8, !noalias !3316
  %i.jn = trunc nuw nsw i64 %i.jf to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 272
  store i16 %i.jn, ptr %i.jo, align 8, !noalias !3316
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 4 ; 2 uses
  %i.jq = icmp ult i64 %.sroa.0.06.i.i14.i.i.i, 9
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.jk
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !3316, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28.i.i, ptr %i.js, align 8, !noalias !3316
  %i.jt = trunc nuw nsw i64 %i.jk to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 272
  store i16 %i.jt, ptr %i.ju, align 8, !noalias !3316
  %exitcond.not.i.i15.i.i.i.3 = icmp eq i64 %i.jp, %i.in
  br i1 %exitcond.not.i.i15.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i13.i.i.i

bb.bx:                                            ; preds = %bb.by
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3275
  unreachable

bb.by:                                            ; preds = %bb.bu, %.loopexit42.i.i
  %.pn.ph.i24.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.bu ], [ %lpad.loopexit.i.i, %.loopexit42.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #34
          to label %common.resume unwind label %bb.bx, !noalias !3275

.thread38.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB4_7set_val9SetValZSTEEECs8frGy5WneL6_4fish.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3205
  br label %.loopexit43.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i, %_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree4node12slice_insertINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB4_7set_val9SetValZSTEEECs8frGy5WneL6_4fish.exit.i12.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.717.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.sroa.4.i.i, i64 16, i1 false), !noalias !3329
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3205
  %.not16.i.i = icmp eq i64 %.sroa.0.i23.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit43.i.i, label %bb.bz

bb.bz:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7241.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.717.i.i, i64 16, i1 false), !noalias !3205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.717.i.i)
  %i.jw = load ptr, ptr %i.dk, align 8, !noalias !3251, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.az

.loopexit43.i.i:                                  ; preds = %.loopexit.i.i, %.thread38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.717.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7241.i.i)
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB9_7set_val9SetValZSTE12insert_entryCs8frGy5WneL6_4fish.exit

bb.ca:                                            ; preds = %bb.au
  %i.jx = zext nneg i16 %i.de to i64              ; 2 uses
  %i.jy = add nuw nsw i16 %i.de, 1
  store i16 %i.jy, ptr %i.cu, align 2, !noalias !3267
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %i.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 24, i1 false), !noalias !3205
  %i.kb = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.kb
  store ptr %.lcssa126.i.i, ptr %i.kc, align 8, !noalias !3267
  store ptr %i.ct, ptr %.lcssa126.i.i, align 8, !noalias !3267
  %i.kd = trunc nuw nsw i64 %i.kb to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %.lcssa126.i.i, i64 272
  store i16 %i.kd, ptr %i.ke, align 8, !noalias !3267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3205
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7241.i.i)
  br label %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB9_7set_val9SetValZSTE12insert_entryCs8frGy5WneL6_4fish.exit

bb.cb:                                            ; preds = %bb.cc
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3199
  unreachable

bb.cc:                                            ; preds = %bb.l
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i) #34
          to label %common.resume unwind label %bb.cb, !noalias !3199

_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB9_7set_val9SetValZSTE12insert_entryCs8frGy5WneL6_4fish.exit: ; preds = %bb.al, %.loopexit43.i.i, %bb.ca, %bb.r
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ki = load i64, ptr %i.kh, align 8, !noalias !3195, !noundef !4
  %i.kj = add i64 %i.ki, 1
  store i64 %i.kj, ptr %i.kh, align 8, !noalias !3195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.cd

bb.cd:                                            ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit.thread, %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB9_7set_val9SetValZSTE12insert_entryCs8frGy5WneL6_4fish.exit
  %i.kk = phi i1 [ false, %_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB9_7set_val9SetValZSTE12insert_entryCs8frGy5WneL6_4fish.exit ], [ true, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit.thread ], [ true, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtB7_7set_val9SetValZSTE5entryCs8frGy5WneL6_4fish.exit ]
  ret i1 %i.kk
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE6insertB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0.i27.sroa.4.sroa.0.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.4.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.716.sroa.0.i.i = alloca [16 x i8], align 8 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.i.i = alloca [16 x i8], align 8        ; 5 uses
  %.sroa.7264.i.i = alloca [16 x i8], align 8     ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 17 uses
  %i.q = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.q, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3335)
  %i.r = load ptr, ptr %0, align 8, !alias.scope !3333, !noalias !3337, !noundef !4 ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !3333, !noalias !3337, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3338)
  %i.u = load i64, ptr %1, align 8, !alias.scope !3341, !noalias !3344
  %.fr21.i.i.i = freeze i64 %i.u                  ; 3 uses
  %i.v = icmp ne i64 %.fr21.i.i.i, -1             ; 2 uses
  %i.w = zext i1 %i.v to i8                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !124, !alias.scope !3341, !noalias !3344
  %i.z = load ptr, ptr %i.x, align 8, !alias.scope !3341, !noalias !3344 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !3341, !noalias !3344 ; 4 uses
  br i1 %i.v, label %.split.us.i.preheader.us.i.i, label %.split.i.preheader.i.i

.split.us.i.preheader.us.i.i:                     ; preds = %bb.b, %bb.e
  %.sroa.3.0.us.i.i = phi i64 [ %i.ba, %bb.e ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.0.us.i.i = phi ptr [ %i.az, %bb.e ], [ %i.r, %bb.b ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3346)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 362
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !3347, !noundef !4 ; 2 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %.idx440 = mul nuw nsw i64 %i.af, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx440
  %i.ah = icmp eq i16 %i.ae, 0
  br i1 %i.ah, label %.loopexit.us.i.i, label %.lr.ph437

.split.us.i.us.i.i:                               ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  %i.ai = icmp eq ptr %i.aj, %i.ag
  br i1 %i.ai, label %.loopexit.us.i.i, label %.lr.ph437

.lr.ph437:                                        ; preds = %.split.us.i.preheader.us.i.i, %.split.us.i.us.i.i
  %.sroa.0.01.us.i.us.i.i436 = phi ptr [ %i.aj, %.split.us.i.us.i.i ], [ %i.ac, %.split.us.i.preheader.us.i.i ] ; 4 uses
  %.sroa.8.0.us.i.us.i.i435 = phi i64 [ %i.ak, %.split.us.i.us.i.i ], [ 0, %.split.us.i.preheader.us.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i.i436, i64 24 ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.8.0.us.i.us.i.i435, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  %i.al = load i64, ptr %.sroa.0.01.us.i.us.i.i436, align 8, !range !356, !alias.scope !3348, !noalias !3351, !noundef !4 ; 2 uses
  %not..i.us.i.us.i.i = icmp ne i64 %i.al, -1
  %.neg.i.us.i.us.i.i = sext i1 %not..i.us.i.us.i.i to i8
  %3 = add nsw i8 %.neg.i.us.i.us.i.i, %i.w
  %.not.i.us.i.i = icmp eq i64 %i.al, -1
  br i1 %.not.i.us.i.i, label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph437
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i.i436, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !3348, !noalias !3351, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us.i.i436, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !3348, !noalias !3351, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3356)
  %..i.i.i.us.i.us.i.i = tail call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.ap, i64 range(i64 0, 2305843009213693952) %i.ab) ; 2 uses
  %.not.i.i.us.i.us.i.i = icmp eq i64 %..i.i.i.us.i.us.i.i, 0
  br i1 %.not.i.i.us.i.us.i.i, label %._crit_edge.i.i.us.i.us.i.i, label %.lr.ph.i.i.us.i.us.i.i

.lr.ph.i.i.us.i.us.i.i:                           ; preds = %bb.c, %bb.d
  %.sroa.01.019.i.i.us.i.us.i.i = phi i64 [ %i.at, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.01.019.i.i.us.i.us.i.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.01.019.i.i.us.i.us.i.i
  %.val15.i.i.us.i.us.i.i = load i32, ptr %i.aq, align 4, !alias.scope !3353, !noalias !3358, !noundef !4 ; 2 uses
  %.val16.i.i.us.i.us.i.i = load i32, ptr %i.ar, align 4, !alias.scope !3356, !noalias !3359, !noundef !4 ; 2 uses
  %i.as = icmp eq i32 %.val15.i.i.us.i.us.i.i, %.val16.i.i.us.i.us.i.i
  br i1 %i.as, label %bb.d, label %.loopexit.i.i.us.i.us.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.us.i.us.i.i
  %i.at = add nuw nsw i64 %.sroa.01.019.i.i.us.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i.us.i.i = icmp eq i64 %i.at, %..i.i.i.us.i.us.i.i
  br i1 %exitcond.not.i.i.us.i.us.i.i, label %._crit_edge.i.i.us.i.us.i.i, label %.lr.ph.i.i.us.i.us.i.i

.loopexit.i.i.us.i.us.i.i:                        ; preds = %.lr.ph.i.i.us.i.us.i.i
  %i.au = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i.i.us.i.us.i.i, i32 %.val16.i.i.us.i.us.i.i)
  br label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i

._crit_edge.i.i.us.i.us.i.i:                      ; preds = %bb.d, %bb.c
  %i.av = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %i.ab, i64 range(i64 0, 2305843009213693952) %i.ap)
  br label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i

_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i: ; preds = %._crit_edge.i.i.us.i.us.i.i, %.loopexit.i.i.us.i.us.i.i, %.lr.ph437
  %.sroa.0.0.i6.us.i.us.i.i = phi i8 [ %3, %.lr.ph437 ], [ %i.au, %.loopexit.i.i.us.i.us.i.i ], [ %i.av, %._crit_edge.i.i.us.i.us.i.i ]
  switch i8 %.sroa.0.0.i6.us.i.us.i.i, label %.split17.us.i.i.i [
    i8 -1, label %.loopexit.us.i.i
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i
    i8 1, label %.split.us.i.us.i.i
  ]

bb.e:                                             ; preds = %.loopexit.us.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 368
  %i.ax = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us.i.i, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.4.0.i.ph.ph.us.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !3360, !nonnull !4, !noundef !4
  %i.ba = add i64 %.sroa.3.0.us.i.i, -1
  br label %.split.us.i.preheader.us.i.i

.loopexit.us.i.i:                                 ; preds = %.split.us.i.us.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i, %.split.us.i.preheader.us.i.i
  %.sroa.4.0.i.ph.ph.us.i.i = phi i64 [ %i.af, %.split.us.i.preheader.us.i.i ], [ %i.af, %.split.us.i.us.i.i ], [ %.sroa.8.0.us.i.us.i.i435, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i ] ; 3 uses
  %i.bb = icmp eq i64 %.sroa.3.0.us.i.i, 0
  br i1 %i.bb, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit, label %bb.e

.split.i.preheader.i.i:                           ; preds = %bb.b, %bb.g
  %.sroa.3.0.i.i = phi i64 [ %i.bw, %bb.g ], [ %i.t, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.bv, %bb.g ], [ %i.r, %bb.b ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3346)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 362
  %i.be = load i16, ptr %i.bd, align 2, !noalias !3347, !noundef !4 ; 2 uses
  %i.bf = zext i16 %i.be to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.bf, 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx
  %i.bh = icmp eq i16 %i.be, 0
  br i1 %i.bh, label %.loopexit55.i.i, label %.lr.ph

.split.i.i.i:                                     ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i
  %i.bi = icmp eq ptr %i.bj, %i.bg
  br i1 %i.bi, label %.loopexit55.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i.preheader.i.i, %.split.i.i.i
  %.sroa.0.01.i.i.i433 = phi ptr [ %i.bj, %.split.i.i.i ], [ %i.bc, %.split.i.preheader.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i432 = phi i64 [ %i.bk, %.split.i.i.i ], [ 0, %.split.i.preheader.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i433, i64 24 ; 2 uses
  %i.bk = add nuw nsw i64 %.sroa.8.0.i.i.i432, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  %i.bl = load i64, ptr %.sroa.0.01.i.i.i433, align 8, !range !356, !alias.scope !3348, !noalias !3351, !noundef !4
  %i.bm = icmp ne i64 %i.bl, -1                   ; 2 uses
  %.neg.i.i.i.i = sext i1 %i.bm to i8
  %i.bn = add nsw i8 %.neg.i.i.i.i, %i.w
  br i1 %i.bm, label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i433, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !range !124, !alias.scope !3348, !noalias !3351, !noundef !4
  %i.bq = sub nsw i8 %i.y, %i.bp
  br label %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i

_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i: ; preds = %bb.f, %.lr.ph
  %.sroa.0.0.i6.i.i.i = phi i8 [ %i.bn, %.lr.ph ], [ %i.bq, %bb.f ]
  switch i8 %.sroa.0.0.i6.i.i.i, label %default.unreachable [
    i8 -1, label %.loopexit55.i.i
    i8 0, label %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i
    i8 1, label %.split.i.i.i
  ]

default.unreachable:                              ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i
  unreachable

.split17.us.i.i.i:                                ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  unreachable

.loopexit55.i.i:                                  ; preds = %.split.i.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i, %.split.i.preheader.i.i
  %.sroa.4.0.i.ph.ph56.i.i = phi i64 [ %i.bf, %.split.i.preheader.i.i ], [ %i.bf, %.split.i.i.i ], [ %.sroa.8.0.i.i.i432, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 3 uses
  %i.br = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.br, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247, label %bb.g

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247: ; preds = %.loopexit55.i.i
  %.sroa.10.0253 = ptrtoint ptr %0 to i64
  br label %bb.l

bb.g:                                             ; preds = %.loopexit55.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 368
  %i.bt = icmp samesign ult i64 %.sroa.4.0.i.ph.ph56.i.i, 12
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.4.0.i.ph.ph56.i.i
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !3360, !nonnull !4, !noundef !4
  %i.bw = add i64 %.sroa.3.0.i.i, -1
  br label %.split.i.preheader.i.i

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload16 = load i64, ptr %1, align 8, !alias.scope !3337, !noalias !3333
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload20 = load ptr, ptr %.sroa.7.0..sroa_idx19, align 8, !alias.scope !3337, !noalias !3333
  %.sroa.9.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload24 = load i64, ptr %.sroa.9.0..sroa_idx23, align 8, !alias.scope !3337, !noalias !3333
  br label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit

_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i: ; preds = %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i
  %.us-phi79.sink.i.i = phi ptr [ %.sroa.0.0.us.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.0.0.i.i, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  %.us-phi78.sink.i.i = phi i64 [ %.sroa.8.0.us.i.us.i.i435, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.us.i.us.i.i ], [ %.sroa.8.0.i.i.i432, %_RNvXsF_NtNtCs8frGy5WneL6_4fish7history7historyNtB5_9HistoryIdNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp.exit.i.i.i ] ; 2 uses
  %i.bx = icmp eq i64 %.fr21.i.i.i, -1
  br i1 %i.bx, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RINvMs_NtNtNtCs1xwejQucwHj_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB1A_7HistoryENtB1i_14LeafOrInternalE11search_treeB1y_EB1E_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.j, !noalias !3330

bb.j:                                             ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.thread35 unwind label %bb.k, !noalias !3330

bb.k:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !3330
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread unwind label %.thread39

.thread39:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.thread35

_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit: ; preds = %.loopexit.us.i.i, %bb.h
  %.sroa.17.0 = phi i64 [ undef, %bb.h ], [ %.sroa.4.0.i.ph.ph.us.i.i, %.loopexit.us.i.i ]
  %.sroa.13.0 = phi ptr [ null, %bb.h ], [ %.sroa.0.0.us.i.i, %.loopexit.us.i.i ]
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload24, %bb.h ], [ %i.ab, %.loopexit.us.i.i ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.0.copyload20, %bb.h ], [ %i.z, %.loopexit.us.i.i ] ; 2 uses
  %.sroa.0.031 = phi i64 [ %.sroa.0.0.copyload16, %bb.h ], [ %.fr21.i.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.sroa.10.0 = ptrtoint ptr %0 to i64            ; 2 uses
  %i.cb = icmp eq i64 %.sroa.0.031, -2
  br i1 %i.cb, label %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread, label %bb.l

bb.l:                                             ; preds = %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit
  %.sroa.10.0259 = phi i64 [ %.sroa.10.0253, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.10.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.0.031258 = phi i64 [ -1, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.0.031, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.7.0257 = phi ptr [ %i.z, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.7.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.9.0256 = phi i64 [ %i.ab, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.9.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ]
  %.sroa.13.0255 = phi ptr [ %.sroa.0.0.i.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.13.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ] ; 12 uses
  %.sroa.17.0254 = phi i64 [ %.sroa.4.0.i.ph.ph56.i.i, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit.thread247 ], [ %.sroa.17.0, %_RNvMsi_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtBb_4sync3ArcNtB19_7HistoryEE5entryB1d_.exit ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.0.031258, ptr %i.p, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.7.0257, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.9.0256, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %.sroa.10.0259, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sroa.13.0255, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %.sroa.17.0254, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %2, ptr %i.o, align 8, !noalias !3361
  %.not.i7 = icmp eq ptr %.sroa.13.0255, null
  br i1 %.not.i7, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCs8frGy5WneL6_4fish7history7history9HistoryIdINtNtB6_4sync3ArcNtB1r_7HistoryEEE13new_uninit_inB1v_()
          to label %bb.n unwind label %bb.cr, !noalias !3361 ; 5 uses

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.cc, align 8, !noalias !3361
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 362 ; 3 uses
  store i16 0, ptr %i.cd, align 2, !noalias !3361
  store ptr %i.cc, ptr %0, align 8, !noalias !3361
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ce, align 8, !noalias !3361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3361
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 24, i1 false), !noalias !3365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3361
  store ptr %2, ptr %i.m, align 8, !noalias !3366
  %i.cf = load i16, ptr %i.cd, align 2, !noalias !3366, !noundef !4 ; 3 uses
  %i.cg = icmp ult i16 %i.cf, 11
  br i1 %i.cg, label %bb.t, label %bb.o, !prof !87

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @306, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #37
          to label %bb.r unwind label %bb.p, !noalias !3366

bb.p:                                             ; preds = %bb.o
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !3370
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs8frGy5WneL6_4fish7history7history7HistoryEEB1f_.exit.i.i unwind label %bb.s, !noalias !3366

bb.r:                                             ; preds = %bb.o
  unreachable

end_hunk_2
