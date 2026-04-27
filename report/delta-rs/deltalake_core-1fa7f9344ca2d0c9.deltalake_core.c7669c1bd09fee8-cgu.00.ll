inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringjEEINtB2_12SpecFromIterBU_INtNtCscVxtfYSVfE7_9itertools11groupbylazy5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2x_7flatten7FlattenINtNtNtB2B_5slice4iter4IterINtNtNtB6_11collections9vec_deque8VecDequeBU_EEEEEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 13 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringjEEINtB2_12SpecFromIterBU_INtNtCscVxtfYSVfE7_9itertools11groupbylazy5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2x_7flatten7FlattenINtNtNtB2B_5slice4iter4IterINtNtNtB6_11collections9vec_deque8VecDequeBU_EEEEEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !22449, !noalias !22452 ; 2 uses
  store i64 -9223372036854775808, ptr %i.d, align 8, !alias.scope !22449, !noalias !22452
  %2 = load ptr, ptr %i.ad, align 8, !alias.scope !22441, !noalias !22454, !nonnull !8, !align !1742 ; 2 uses
  %3 = load i64, ptr %i.ae, align 8, !alias.scope !22441, !noalias !22454 ; 2 uses
  %.not.i.i.peel.i.i = icmp eq i64 %.promoted.i.i, -9223372036854775808
  br i1 %.not.i.i.peel.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.peel.i.i, label %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtBZ_7flatten7FlattenINtNtNtB13_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2K_6string6StringjEEEEEENtNtNtB11_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.peel.i.i

end_hunk_1
begin_hunk_2_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringjEEINtB2_12SpecFromIterBU_INtNtCscVxtfYSVfE7_9itertools11groupbylazy5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2x_7flatten7FlattenINtNtNtB2B_5slice4iter4IterINtNtNtB6_11collections9vec_deque8VecDequeBU_EEEEEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
.loopexit.i.i:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

.loopexit.split-lp.i.i:                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.peel.i.i
end_hunk_2
begin_hunk_3_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringjEEINtB2_12SpecFromIterBU_INtNtCscVxtfYSVfE7_9itertools11groupbylazy5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2x_7flatten7FlattenINtNtNtB2B_5slice4iter4IterINtNtNtB6_11collections9vec_deque8VecDequeBU_EEEEEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtBZ_7flatten7FlattenINtNtNtB13_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2K_6string6StringjEEEEEENtNtNtB11_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %.pr.i.i.i = load i64, ptr %i.a, align 8, !noalias !22455
  %.not.i.i.i = icmp eq i64 %.pr.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %.loopexit2.i.i, label %bb.m

bb.m:                                             ; preds = %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtBZ_7flatten7FlattenINtNtNtB13_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2K_6string6StringjEEEEEENtNtNtB11_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !22458, !noalias !22457 ; 4 uses
end_hunk_3
begin_hunk_4_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringjEEINtB2_12SpecFromIterBU_INtNtCscVxtfYSVfE7_9itertools11groupbylazy5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2x_7flatten7FlattenINtNtNtB2B_5slice4iter4IterINtNtNtB6_11collections9vec_deque8VecDequeBU_EEEEEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.al = icmp eq i64 %.pre.i.i, %i.ak
  br i1 %i.al, label %bb.t, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTNtNtB6_6string6StringjEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

.loopexit2.i.i:                                   ; preds = %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtBZ_7flatten7FlattenINtNtNtB13_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2K_6string6StringjEEEEEENtNtNtB11_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtBZ_7flatten7FlattenINtNtNtB13_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2K_6string6StringjEEEEEENtNtNtB11_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.peel.i.i
  invoke void @_RNvXsc_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtBZ_7flatten7FlattenINtNtNtB13_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2K_6string6StringjEEEEEENtNtNtB13_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.p unwind label %bb.n, !noalias !22424

end_hunk_4
begin_hunk_5_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecTNtNtB6_6string6StringjEEINtB2_12SpecFromIterBU_INtNtCscVxtfYSVfE7_9itertools11groupbylazy5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2x_7flatten7FlattenINtNtNtB2B_5slice4iter4IterINtNtNtB6_11collections9vec_deque8VecDequeBU_EEEEEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
bb.s:                                             ; preds = %bb.t
  %lpad.loopexit5.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringjEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.u, !noalias !22457

end_hunk_5
begin_hunk_6_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksIBN_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBb_6option6OptionINtB1S_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3T_B2B_EEE0s_0EENCINvB4f_32partitioned_files_to_file_groupsB1J_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_:bb.a
  %i.a = alloca [184 x i8], align 8               ; 10 uses
  %i.b = alloca [184 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [200 x i8], align 8               ; 13 uses
  %.sroa.6 = alloca [176 x i8], align 8           ; 5 uses
  %i.e = alloca [184 x i8], align 8               ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
end_hunk_6
begin_hunk_7_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksIBN_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBb_6option6OptionINtB1S_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3T_B2B_EEE0s_0EENCINvB4f_32partitioned_files_to_file_groupsB1J_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !33640, !noalias !33643 ; 2 uses
  store i64 2, ptr %i.d, align 8, !alias.scope !33640, !noalias !33643
  %1 = load ptr, ptr %i.cd, align 8, !alias.scope !33632, !noalias !33645, !nonnull !8, !align !1742 ; 2 uses
  %2 = load i64, ptr %i.ce, align 8, !alias.scope !33632, !noalias !33645 ; 2 uses
  %.not.i.i.peel.i.i.i.i.i.i = icmp eq i64 %.promoted.i.i.i.i.i.i, 2
  br i1 %.not.i.i.peel.i.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEECs14kWLkQVSKO_14deltalake_core.exit.i.i.peel.i.i.i.i.i.i, label %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB13_6option6OptionINtB1N_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3P_B2w_EEE0s_0EENtNtNtB11_6traits8iterator8Iterator4nextB4j_.exit.thread.i.peel.i.i.i.i.i.i

end_hunk_7
begin_hunk_8_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksIBN_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBb_6option6OptionINtB1S_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3T_B2B_EEE0s_0EENCINvB4f_32partitioned_files_to_file_groupsB1J_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_:bb.a
.loopexit.i.i.i.i.i.i:                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEECs14kWLkQVSKO_14deltalake_core.exit.i.i.peel.i.i.i.i.i.i
end_hunk_8
begin_hunk_9_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksIBN_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBb_6option6OptionINtB1S_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3T_B2B_EEE0s_0EENCINvB4f_32partitioned_files_to_file_groupsB1J_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_:bb.a
_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB13_6option6OptionINtB1N_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3P_B2w_EEE0s_0EENtNtNtB11_6traits8iterator8Iterator4nextB4j_.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !33646
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit2.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB13_6option6OptionINtB1N_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3P_B2w_EEE0s_0EENtNtNtB11_6traits8iterator8Iterator4nextB4j_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !33649, !noalias !33648 ; 4 uses
end_hunk_9
begin_hunk_10_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksIBN_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBb_6option6OptionINtB1S_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3T_B2B_EEE0s_0EENCINvB4f_32partitioned_files_to_file_groupsB1J_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_:bb.a
  %i.ck = icmp eq i64 %.pre.i.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %bb.ah, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i

.loopexit2.i.i.i.i.i.i:                           ; preds = %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB13_6option6OptionINtB1N_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3P_B2w_EEE0s_0EENtNtNtB11_6traits8iterator8Iterator4nextB4j_.exit.i.i.i.i.i.i.i, %_RNvXsd_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB13_6option6OptionINtB1N_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3P_B2w_EEE0s_0EENtNtNtB11_6traits8iterator8Iterator4nextB4j_.exit.i.peel.i.i.i.i.i.i
  invoke void @_RNvXsc_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB13_6option6OptionINtB1N_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3P_B2w_EEE0s_0EENtNtNtB13_3ops4drop4Drop4dropB4j_(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.ad unwind label %bb.ab, !noalias !33599

end_hunk_10
begin_hunk_11_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksIBN_INtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBb_6option6OptionINtB1S_3VecbEEEENCNCINvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan13get_read_planINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlIB3T_B2B_EEE0s_0EENCINvB4f_32partitioned_files_to_file_groupsB1J_E0ENtNtNtB9_6traits8iterator8Iterator4nextB4n_:bb.a
bb.ag:                                            ; preds = %bb.ah
  %lpad.loopexit5.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(184) %i.b) #30
          to label %bb.z unwind label %bb.ai, !noalias !33648

end_hunk_11
