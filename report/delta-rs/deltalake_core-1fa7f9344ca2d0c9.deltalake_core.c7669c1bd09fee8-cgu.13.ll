begin_hunk_0
  call void @llvm.experimental.noalias.scope.decl(metadata !14583)
  call void @llvm.experimental.noalias.scope.decl(metadata !14586)
  %776 = load i64, ptr %724, align 8, !alias.scope !14589, !noalias !14598, !noundef !4 ; 3 uses
  %777 = load ptr, ptr %725, align 8, !alias.scope !14603, !noalias !14471 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %777, null
  %778 = load i64, ptr %726, align 8, !alias.scope !14603, !noalias !14471
  %779 = load ptr, ptr %727, align 8, !alias.scope !14603, !noalias !14471
  %780 = load i64, ptr %728, align 8, !alias.scope !14603, !noalias !14471
end_hunk_0
begin_hunk_1
  br i1 %793, label %801, label %.split24.i.i.i

.split.us.thread38.i.i.i:                         ; preds = %.lr.ph.split.split.i.i.i, %801
  %794 = atomicrmw sub ptr %777, i64 1 release, align 8, !noalias !14611
  %795 = icmp eq i64 %794, 1
  br i1 %795, label %796, label %.loopexit.i

end_hunk_1
begin_hunk_2
  %.val209 = load ptr, ptr %1438, align 8, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %1439 = atomicrmw add ptr %.sroa.3789.0.copyload, i64 1 monotonic, align 8
  %1440 = icmp slt i64 %1439, 0
  br i1 %1440, label %1441, label %.thread1041

1441:                                             ; preds = %1430
  call void @llvm.trap()
  unreachable

.thread1041:                                      ; preds = %1430
  %1442 = getelementptr inbounds nuw i8, ptr %1433, i64 552
  %1443 = getelementptr inbounds nuw i8, ptr %.val209, i64 16
  %1444 = load i64, ptr %1443, align 8, !range !3, !invariant.load !4
end_hunk_2
begin_hunk_3
    i8 4, label %1499
  ]

1470:                                             ; preds = %.thread1041, %1467
  %1471 = phi ptr [ %1454, %.thread1041 ], [ %1469, %1467 ] ; 8 uses
  %1472 = phi ptr [ %1453, %.thread1041 ], [ %1468, %1467 ] ; 8 uses
  %1473 = getelementptr inbounds nuw i8, ptr %1, i64 2179
  %1474 = getelementptr inbounds nuw i8, ptr %1, i64 2178 ; 2 uses
  %1475 = getelementptr inbounds nuw i8, ptr %1, i64 2177
end_hunk_3
begin_hunk_4
!14608 = !{!14609, !14599, !14590, !14600, !14592, !14601, !14594, !14602, !14596, !14587, !14584, !14472}
!14609 = distinct !{!14609, !14610, !"_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core: argument 0"}
!14610 = distinct !{!14610, !"_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array10byte_array16GenericByteArrayINtNtB4_5types17GenericStringTypelEEE7is_nullCs14kWLkQVSKO_14deltalake_core"}
!14611 = !{!14612, !14614, !14616, !14618, !14620, !14622, !14624, !14626, !14601, !14594, !14602, !14596, !14587, !14584, !14472}
!14612 = distinct !{!14612, !14613, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!14613 = distinct !{!14613, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!14614 = distinct !{!14614, !14615, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core: argument 0"}
end_hunk_4
