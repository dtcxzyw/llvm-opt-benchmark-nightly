inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17create_merge_plan00B9_:bb.a
  unreachable

bb.gd:                                            ; preds = %._crit_edge
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i168.i, align 8, !alias.scope !15750, !noalias !15752, !nonnull !4, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.pre.i, ptr noundef nonnull align 8 dereferenceable(272) %i.bh, i64 272, i1 false), !noalias !15629
  store i64 1, ptr %.sroa.5.0..sroa_idx.i169.i, align 8, !alias.scope !15750, !noalias !15752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !15622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !15622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false), !noalias !15622
  %3 = load i64, ptr %i.pc, align 8, !alias.scope !15753, !noalias !15758, !noundef !4 ; 3 uses
  %i.rr = load i64, ptr %i.bl, align 8, !range !16, !alias.scope !15753, !noalias !15758, !noundef !4
  %i.rs = icmp eq i64 %3, %i.rr
  br i1 %i.rs, label %bb.ge, label %bb.gh

bb.ge:                                            ; preds = %bb.gd
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize17create_merge_plan00B9_:bb.a
  unreachable

bb.gh:                                            ; preds = %bb.ge, %bb.gd
  %i.rv = load ptr, ptr %i.pb, align 8, !alias.scope !15753, !noalias !15758, !nonnull !4, !noundef !4
  %i.rw = getelementptr inbounds nuw [32 x i8], ptr %i.rv, i64 %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rw, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false), !noalias !15629
  %i.rx = add i64 %3, 1
  store i64 %i.rx, ptr %i.pc, align 8, !alias.scope !15753, !noalias !15758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !15622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !15622
  br label %.backedge.i
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!15747 = !{!15748, !15746, !15623}
!15748 = distinct !{!15748, !15749, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE8push_mutBN_: argument 1"}
!15749 = distinct !{!15749, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE8push_mutBN_"}
!15750 = !{!15751, !15743}
!15751 = distinct !{!15751, !15749, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE8push_mutBN_: argument 0"}
!15752 = !{!15748, !15746, !15623, !15625}
!15753 = !{!15754, !15756}
!15754 = distinct !{!15754, !15755, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinE8push_mutBL_: argument 0"}
!15755 = distinct !{!15755, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinE8push_mutBL_"}
!15756 = distinct !{!15756, !15757, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinE4pushBL_: argument 0"}
!15757 = distinct !{!15757, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinE4pushBL_"}
!15758 = !{!15759, !15760, !15623, !15625}
!15759 = distinct !{!15759, !15755, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinE8push_mutBL_: argument 1"}
!15760 = distinct !{!15760, !15757, !"_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinE4pushBL_: argument 1"}
!15761 = !{!15759, !15760, !15623}
!15762 = !{!15763}
!15763 = distinct !{!15763, !15732, !"_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB14_: argument 1:h.rot"}
!15764 = !{!15765}
end_hunk_2
