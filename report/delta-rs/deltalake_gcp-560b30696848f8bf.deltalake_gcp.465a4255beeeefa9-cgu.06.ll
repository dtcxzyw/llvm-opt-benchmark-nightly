inline.NumInlined: 182
inline.NumDeleted: 88
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_3gcp18GoogleCloudStorageNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3n_ENtNtB5_6marker4SendEL_EEE000ECs62u4JVtZyFF_13deltalake_gcp:bb.a
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw i64 %i.b, %.sroa.05.020.i        ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !3, !noalias !8, !noundef !9
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !9 ; 2 uses
  %i.g = sub i64 %.sroa.01.021.i, %i.b            ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs62u4JVtZyFF_13deltalake_gcp7storage17GcsStorageBackendNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3P_ENtNtB5_6marker4SendEL_EEE000EB2o_:bb.a
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw i64 %i.b, %.sroa.05.020.i        ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !10, !noalias !15, !noundef !9
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !9 ; 2 uses
  %i.g = sub i64 %.sroa.01.021.i, %i.b            ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_1
