inline.NumInlined: 1088
inline.NumDeleted: 543
begin_hunk_0_@_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i = load i64, ptr %i.c, align 8, !alias.scope !1325, !noalias !1328, !noundef !3 ; 2 uses
  %.val2.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1325, !noalias !1328, !nonnull !3
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i, %.lr.ph.i
end_hunk_0
begin_hunk_1_@_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !noalias !1330, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i, ptr nonnull readonly %.val2.i.i, i64 %.val3.i.i), !noalias !1330
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2k_13SliceContains14slice_contains0ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i
end_hunk_1
