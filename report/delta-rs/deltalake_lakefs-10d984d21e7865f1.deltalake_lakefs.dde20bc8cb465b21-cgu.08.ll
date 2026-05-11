inline.NumInlined: 308
inline.NumDeleted: 157
begin_hunk_0_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !558, !noundef !8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = load ptr, ptr %0, align 8, !alias.scope !558, !nonnull !8, !noundef !8 ; 3 uses
  %i.g = load <16 x i8>, ptr %1, align 16, !noalias !559
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, %bb.c
  %.sroa.05.020.i.i = phi ptr [ %1, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.6.019.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
  %.sroa.107.018.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ]
  %.sroa.86.017.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  %2 = load ptr, ptr %0, align 8, !alias.scope !552, !nonnull !8, !noundef !8
  %i.at = sub i64 -112, %i.an
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !552
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEENtNtNtB6_5alloc5inner6GlobalECsj34PGqTgg0L_16deltalake_lakefs.exit

end_hunk_1
