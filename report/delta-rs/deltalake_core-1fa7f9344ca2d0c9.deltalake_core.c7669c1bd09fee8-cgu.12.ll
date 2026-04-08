inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1p_11ObjectStoreEL_EEB4i_10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtB3O_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4Y_ENtNtB5_6marker4SendEL_EEE000EB2t_:bb.a
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.020.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !11, !noalias !16, !noundef !10
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !10 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.021.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_3aws8AmazonS3NtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3c_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.020.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !17, !noalias !22, !noundef !10
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !10 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.021.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_1
begin_hunk_2_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_3gcp18GoogleCloudStorageNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3n_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.020.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !23, !noalias !28, !noundef !10
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !10 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.021.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_2
begin_hunk_3_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_4http9HttpStoreNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3e_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.020.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !29, !noalias !34, !noundef !10
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !10 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.021.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_3
begin_hunk_4_@_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_5azure14MicrosoftAzureNtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3l_ENtNtB5_6marker4SendEL_EEE000ECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.01.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %.sroa.05.020.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.b = lshr i64 %.sroa.01.021.i, 1              ; 2 uses
  %i.c = add nuw nsw i64 %i.b, %.sroa.05.020.i    ; 3 uses
  %i.d = icmp ult i64 %i.c, %1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %.val16.i = load i64, ptr %i.e, align 8, !alias.scope !35, !noalias !40, !noundef !10
  %.not.i18.i = icmp ugt i64 %.val16.i, %.pre.i
  %i.f = select i1 %.not.i18.i, i64 %.sroa.05.020.i, i64 %i.c, !unpredictable !10 ; 2 uses
  %i.g = sub nuw nsw i64 %.sroa.01.021.i, %i.b    ; 2 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

end_hunk_4
begin_hunk_5_@_RNvMs3_NtCsdl0l68gAy31_9arrow_ipc6writerINtB5_10FileWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.01.024.i.i.i = phi i64 [ %i.iw, %.lr.ph.i38.i.i ], [ %i.kd, %.noexc119 ] ; 2 uses
  %.sroa.05.023.i.i.i = phi i64 [ 0, %.lr.ph.i38.i.i ], [ %i.kc, %.noexc119 ] ; 2 uses
  %i.jn = lshr i64 %.sroa.01.024.i.i.i, 1         ; 2 uses
  %i.jo = add nuw nsw i64 %i.jn, %.sroa.05.023.i.i.i ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %i.iw
  call void @llvm.assume(i1 %i.jp)
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jo
end_hunk_5
begin_hunk_6_@_RNvMs3_NtCsdl0l68gAy31_9arrow_ipc6writerINtB5_10FileWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18815
  %i.kb = icmp sgt i64 %spec.select.i22.i.i.i, 0
  %i.kc = select i1 %i.kb, i64 %.sroa.05.023.i.i.i, i64 %i.jo, !unpredictable !10 ; 2 uses
  %i.kd = sub nuw nsw i64 %.sroa.01.024.i.i.i, %i.jn ; 2 uses
  %i.ke = icmp ugt i64 %i.kd, 1
  br i1 %i.ke, label %bb.ab, label %._crit_edge.i.loopexit.i.i

end_hunk_6
