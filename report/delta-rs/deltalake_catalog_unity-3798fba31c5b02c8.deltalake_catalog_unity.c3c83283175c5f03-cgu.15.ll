inline.NumInlined: 983
inline.NumDeleted: 505
begin_hunk_0_@_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE9remove_ifNCNCNvMsd_NtNtB9_6future10base_cacheINtB4s_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0s_0NCB4k_s0_0EB2U_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !noalias !31, !noundef !16 ; 2 uses
  %i.e = icmp eq i32 %i.d, 64
  %i.f = and i32 %i.d, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 %1, %i.g
  %.sroa.03.0.i = select i1 %i.e, i64 0, i64 %i.h ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !31, !noundef !16 ; 2 uses
  %i.k = icmp ult i64 %.sroa.03.0.i, %i.j
  br i1 %i.k, label %_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1M_NCNCNvMsd_NtNtB9_6future10base_cacheINtB4H_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0s_0NCB4z_s0_0NCINvB2_9remove_ifB4x_B6D_E0EB2U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !31
  unreachable

_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1M_NCNCNvMsd_NtNtB9_6future10base_cacheINtB4H_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0s_0NCB4z_s0_0NCINvB2_9remove_ifB4x_B6D_E0EB2U_.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !noalias !31, !nonnull !16, !noundef !16
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.03.0.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.b, align 8, !noalias !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.p, align 8, !noalias !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %i.q, align 8, !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !35
  %i.r = call noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19remove_entry_if_andB29_NCNCNvMsd_NtNtB9_6future10base_cacheINtB5R_5InnerB1M_B3d_B4u_E17remove_expired_ao0s_0NCB5J_s0_0NCINvMs_NtB7_7segmentINtB7m_7HashMapB1e_B29_E19remove_entry_if_andB29_B5H_B74_NCINvB7j_9remove_ifB5H_B74_E0E0EB3h_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0), !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31
  ret ptr %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE9remove_ifNCNCNvMsd_NtNtB9_6future10base_cacheINtB4s_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_wo0s_0NCB4k_s0_0EB2U_(ptr noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !noalias !37, !noundef !16 ; 2 uses
  %i.e = icmp eq i32 %i.d, 64
  %i.f = and i32 %i.d, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 %1, %i.g
  %.sroa.03.0.i = select i1 %i.e, i64 0, i64 %i.h ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !37, !noundef !16 ; 2 uses
  %i.k = icmp ult i64 %.sroa.03.0.i, %i.j
  br i1 %i.k, label %_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1M_NCNCNvMsd_NtNtB9_6future10base_cacheINtB4H_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_wo0s_0NCB4z_s0_0NCINvB2_9remove_ifB4x_B6D_E0EB2U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !37
  unreachable

_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1M_NCNCNvMsd_NtNtB9_6future10base_cacheINtB4H_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_wo0s_0NCB4z_s0_0NCINvB2_9remove_ifB4x_B6D_E0EB2U_.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !noalias !37, !nonnull !16, !noundef !16
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.03.0.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.b, align 8, !noalias !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.p, align 8, !noalias !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %i.q, align 8, !noalias !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !41
  %i.r = call noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19remove_entry_if_andB29_NCNCNvMsd_NtNtB9_6future10base_cacheINtB5R_5InnerB1M_B3d_B4u_E17remove_expired_wo0s_0NCB5J_s0_0NCINvMs_NtB7_7segmentINtB7m_7HashMapB1e_B29_E19remove_entry_if_andB29_B5H_B74_NCINvB7j_9remove_ifB5H_B74_E0E0EB3h_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0), !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37
  ret ptr %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE9remove_ifNCNCNvMsd_NtNtB9_6future10base_cacheINtB4s_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0s_0NCB4k_s0_0EB2U_(ptr noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !noalias !43, !noundef !16 ; 2 uses
  %i.d = icmp eq i32 %i.c, 64
  %i.e = and i32 %i.c, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 %1, %i.f
  %.sroa.03.0.i = select i1 %i.d, i64 0, i64 %i.g ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !43, !noundef !16 ; 2 uses
  %i.j = icmp ult i64 %.sroa.03.0.i, %i.i
  br i1 %i.j, label %_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1M_NCNCNvMsd_NtNtB9_6future10base_cacheINtB4H_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0s_0NCB4z_s0_0NCINvB2_9remove_ifB4x_B6U_E0EB2U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.03.0.i, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !43
  unreachable

_RINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1M_NCNCNvMsd_NtNtB9_6future10base_cacheINtB4H_5InnerB1q_B2Q_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0s_0NCB4z_s0_0NCINvB2_9remove_ifB4x_B6U_E0EB2U_.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !noalias !43, !nonnull !16, !noundef !16
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.sroa.03.0.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.a, align 8, !noalias !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.o, align 8, !noalias !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.p, align 8, !noalias !43
  %i.q = call noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19remove_entry_if_andB29_NCNCNvMsd_NtNtB9_6future10base_cacheINtB5R_5InnerB1M_B3d_B4u_E34evict_expired_entries_using_timers0s_0NCB5J_s0_0NCINvMs_NtB7_7segmentINtB7D_7HashMapB1e_B29_E19remove_entry_if_andB29_B5H_B7l_NCINvB7A_9remove_ifB5H_B7l_E0E0EB3h_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %3, ptr noundef nonnull align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43
  ret ptr %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1e_8snapshotNtB2o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4t_5error5ErrorEE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, align 8, !range !47
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !47
  %i.e = select i1 %i.d, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH.val, i64 %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.val
  %i.f = trunc nuw i64 %i.e to i1
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 8), align 8
  %.val14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8
  %i.g = select i1 %i.d, ptr %.val, ptr %.val14   ; 3 uses
  %.val15 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, i64 16), align 8
  %.val16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8
  %i.h = select i1 %i.d, ptr %.val15, ptr %.val16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !48
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i8, ptr %i.l, align 8, !range !52, !noalias !53, !noundef !16
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ], !prof !56

default.unreachable:                              ; preds = %bb.e
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.e
  %i.n = tail call noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.k), !noalias !53 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.e
  %.sroa.0.0.i.i4.i = phi ptr [ %i.n, %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %i.k, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !range !57, !noalias !58, !noundef !16
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 1, !noalias !58
  br i1 %i.r, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.s = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !47, !alias.scope !61, !noalias !64, !noundef !16
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !61, !noalias !64 ; 3 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !61, !noalias !64 ; 2 uses
  br i1 %i.t, label %bb.g, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.g:                                             ; preds = %bb.f
  %i.w = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !66
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread2.i
  %i.y = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !58, !noundef !16 ; 2 uses
  %i.z = icmp ult i64 %i.y, 9223372036854775807
  br i1 %i.z, label %bb.l, label %bb.j, !prof !67

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #33
          to label %.noexc.i.i unwind label %bb.k, !noalias !58

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.p, align 8, !noalias !58
  resume { ptr, i32 } %i.aa

bb.l:                                             ; preds = %bb.i
  %i.ab = add nuw nsw i64 %i.y, 1
  store i64 %i.ab, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !58
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.ad = load i64, ptr %i.ac, align 8, !range !71, !alias.scope !68, !noalias !58, !noundef !16 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !72
  %i.af = icmp eq i64 %i.ae, 2
  %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.af, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !47, !alias.scope !73, !noalias !76
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = phi i64 [ %i.ad, %bb.l ], [ %.pre.i.i, %bb.m ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.l ], [ %_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.m ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !73, !noalias !76 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !73, !noalias !76
  br i1 %i.ah, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !noalias !78
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.0.i6.i.i = phi i64 [ 1, %bb.o ], [ 0, %bb.n ]
  %i.ao = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !58, !noundef !16
  %i.ap = add i64 %i.ao, -1
  store i64 %i.ap, ptr %.sroa.0.0.i.i4.i, align 8, !noalias !58
  store i8 1, ptr %i.p, align 8, !noalias !58
  br label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.c, %bb.b, %bb.f, %bb.g, %bb.q, %bb.r, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.07.ph.sink = phi i64 [ 0, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i6.i.i, %bb.q ], [ 1, %bb.r ], [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.0.ph.sink = phi ptr [ %i.as, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.aj, %bb.q ], [ %i.as, %bb.r ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.7.0.ph.sink = phi ptr [ %i.at, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.al, %bb.q ], [ %i.at, %bb.r ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  store i64 %.sroa.0.07.ph.sink, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.ph.sink, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.ph.sink, ptr %.sroa.7.0..sroa_idx, align 8
  ret void

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.aq = load i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, align 8, !range !47, !alias.scope !79, !noalias !82, !noundef !16
  %i.ar = trunc nuw i64 %i.aq to i1
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !79, !noalias !82 ; 3 uses
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !79, !noalias !82 ; 2 uses
  br i1 %i.ar, label %bb.r, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2w_8snapshotNtB3G_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5L_5error5ErrorEE0E0B2d_ECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.au = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !84
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.s, label %_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit6

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsb2ODgYNwnRL_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !85, !alias.scope !86, !noundef !16
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %bb.h unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtB1k_7wrapper12MessageErrorNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.h, %bb.d ], [ %i.e, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #29
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplINtNtB1k_7wrapper12MessageErrorNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsb2ODgYNwnRL_6anyhow7wrapper12MessageErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #29
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsb2ODgYNwnRL_6anyhow5error11object_dropNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !85, !alias.scope !91, !noundef !16
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #31
          to label %bb.g unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !range !71, !alias.scope !96, !noundef !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  switch i64 %i.h, label %.invoke.i [
    i64 2, label %bb.d
    i64 0, label %.invoke1.i
  ]

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.j = load i64, ptr %i.i, align 8, !range !47, !alias.scope !99, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %.invoke1.i, label %.invoke.i

.invoke1.i:                                       ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.m = phi ptr [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.k, %bb.d ]
  invoke void @_RNvXs4_NtCsb2ODgYNwnRL_6anyhow5errorNtB7_5ErrorNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

.invoke.i:                                        ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.n = phi ptr [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %i.k, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.f:                                             ; preds = %.invoke.i, %.invoke1.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.e, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #29
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtCsb2ODgYNwnRL_6anyhow5error9ErrorImplNtCs5cfGYlCJjjB_13reqwest_retry10RetryErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.invoke1.i, %.invoke.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 80, i64 noundef 8) #29
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1N_8snapshotNtB2X_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB52_5error5ErrorEEs_0ENtNtB1b_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2N_8snapshotNtB3X_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5v_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2S_19UnityCatalogBuilder17execute_uc_futureNCNvB2O_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5s_B5s_EENtB2S_17UnityCatalogErrorEE0B4P_E00ENtNtB1b_8schedule16BlockingScheduleEB2S_(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.d = extractvalue { i1, i1 } %i.c, 0
  %i.e = extractvalue { i1, i1 } %i.c, 1
  br i1 %i.e, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %.thread.i, %bb.a
  br i1 %i.d, label %bb.s, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !885
  store i32 2, ptr %i.b, align 8, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !888
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !range !133, !noalias !888, !noundef !16
  %i.h = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.g)
          to label %bb.c unwind label %bb.f, !noalias !888

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.a, align 8, !noalias !888
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef align 8 dereferenceable(32) %i.i)
          to label %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB1h_7HarnessINtNtNtB1l_8blocking4task12BlockingTaskNCNCINvNtNtNtB1l_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB45_19UnityCatalogBuilder17execute_uc_futureNCNvB41_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6p_B6p_EENtB45_17UnityCatalogErrorEE0B62_E00ENtNtB2m_8schedule16BlockingScheduleE21drop_join_handle_slow0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB45_.exit.i.i unwind label %bb.d, !noalias !888

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !885
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body.i unwind label %bb.e, !noalias !888

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !885
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3j_19UnityCatalogBuilder17execute_uc_futureNCNvB3f_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5D_B5D_EENtB3j_17UnityCatalogErrorEE0B5g_E00EEEB3j_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #31
          to label %.body.i unwind label %bb.e, !noalias !885

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB1h_7HarnessINtNtNtB1l_8blocking4task12BlockingTaskNCNCINvNtNtNtB1l_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB45_19UnityCatalogBuilder17execute_uc_futureNCNvB41_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6p_B6p_EENtB45_17UnityCatalogErrorEE0B62_E00ENtNtB2m_8schedule16BlockingScheduleE21drop_join_handle_slow0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB45_.exit.i.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !885
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i unwind label %bb.g

bb.g:                                             ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB1h_7HarnessINtNtNtB1l_8blocking4task12BlockingTaskNCNCINvNtNtNtB1l_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB45_19UnityCatalogBuilder17execute_uc_futureNCNvB41_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6p_B6p_EENtB45_17UnityCatalogErrorEE0B62_E00ENtNtB2m_8schedule16BlockingScheduleE21drop_join_handle_slow0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB45_.exit.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.j, %bb.d ], [ %i.l, %bb.f ]
  %i.n = extractvalue { ptr, i32 } %eh.lpad-body.i, 0
  %i.o = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.n)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.h:                                             ; preds = %.body.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32
  unreachable

.thread.i:                                        ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB1h_7HarnessINtNtNtB1l_8blocking4task12BlockingTaskNCNCINvNtNtNtB1l_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB45_19UnityCatalogBuilder17execute_uc_futureNCNvB41_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6p_B6p_EENtB45_17UnityCatalogErrorEE0B62_E00ENtNtB2m_8schedule16BlockingScheduleE21drop_join_handle_slow0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB45_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !885
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.i:                                             ; preds = %.body.i
  %i.q = extractvalue { ptr, ptr } %i.o, 0        ; 4 uses
  %i.r = extractvalue { ptr, ptr } %i.o, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.r, align 8, !invariant.load !16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.t(ptr noundef nonnull %i.q)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !140, !invariant.load !16 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !141, !invariant.load !16
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.n:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !140, !invariant.load !16 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %common.resume.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !141, !invariant.load !16
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #29
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.r, %bb.o, %bb.n
  %common.resume.op.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.z, %bb.o ], [ %i.z, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

bb.p:                                             ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.af = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.af, label %bb.q, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowB2Q_.exit

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3i_19UnityCatalogBuilder17execute_uc_futureNCNvB3e_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5C_B5C_EENtB3i_17UnityCatalogErrorEE0B5f_E00ENtNtB1B_8schedule16BlockingScheduleEEB3i_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3T_19UnityCatalogBuilder17execute_uc_futureNCNvB3P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6d_B6d_EENtB3T_17UnityCatalogErrorEE0B5Q_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3T_.exit.i.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #29
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3T_19UnityCatalogBuilder17execute_uc_futureNCNvB3P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6d_B6d_EENtB3T_17UnityCatalogErrorEE0B5Q_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3T_.exit.i.i: ; preds = %bb.q
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #29
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowB2Q_.exit

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.p

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB2Q_19UnityCatalogBuilder17execute_uc_futureNCNvB2M_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5q_B5q_EENtB2Q_17UnityCatalogErrorEE0B4N_E00ENtNtB19_8schedule16BlockingScheduleE21drop_join_handle_slowB2Q_.exit: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3T_19UnityCatalogBuilder17execute_uc_futureNCNvB3P_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6d_B6d_EENtB3T_17UnityCatalogErrorEE0B5Q_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3T_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB24_8snapshotNtB3e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1v_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB53_5error5ErrorEEs_0EENtNtBT_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 8 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 8 uses
  %i.e = alloca [112 x i8], align 16              ; 9 uses
  %i.f = alloca [112 x i8], align 16              ; 4 uses
  %i.g = alloca [96 x i8], align 16               ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [112 x i8], align 16              ; 4 uses
  %i.j = alloca [96 x i8], align 16               ; 10 uses
  %.sroa.7.sroa.5.i.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.12.sroa.5.sroa.5.i.i.i = alloca [56 x i8], align 8 ; 5 uses
  %i.k = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.ae
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ]

default.unreachable:                              ; preds = %.thread.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !891
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 16, !range !275, !noalias !900, !noundef !16
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.i, !prof !67

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !900
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 16, !range !133, !noalias !900, !noundef !16
  %i.r = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.q)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.o, !noalias !903

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.r, ptr %i.h, align 8, !noalias !900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.t = load ptr, ptr %i.s, align 16, !alias.scope !904, !noalias !907, !align !285, !noundef !16 ; 5 uses
  store ptr null, ptr %i.s, align 16, !alias.scope !904, !noalias !907
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.u = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.f unwind label %bb.g, !noalias !909 ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #33
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !900

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  unreachable

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.t, i64 noundef 184, i64 noundef 8) #29, !noalias !910
  br label %.body.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !909
  invoke fastcc void @_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEEs_0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.t)
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i, !noalias !909

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1k_8snapshotNtB2u_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtBL_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB42_5error5ErrorEEs_0EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.t) #31
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.h, !noalias !909

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !909
  unreachable

bb.i:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #33
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.o, !noalias !903

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.j, %bb.g, %.body.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.w, %bb.g ], [ %i.v, %.body.i.i.i.i.i.i.i.i.i ]
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.body.i.i.i.i.i.i unwind label %bb.k, !noalias !900

bb.k:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !900
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.t, i64 noundef 184, i64 noundef 8) #29, !noalias !910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !909
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.o, !noalias !903

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !900
  %i.aa = load i64, ptr %i.j, align 16            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, -9223372036854775742
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i, label %bb.l

.thread.i.i:                                      ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !891
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.ab = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.ab, label %default.unreachable [
    i8 3, label %bb.ak
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 1, label %bb.aq
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2k_8snapshotNtB3u_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5j_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE10poll_innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ]

bb.l:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !891
  store i32 2, ptr %i.i, align 16, !noalias !891
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 16 %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.i)
          to label %bb.r unwind label %bb.m, !noalias !891

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB23_5error5ErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %i.j) #31
          to label %.body.i.i.i.i.i.i unwind label %bb.n, !noalias !891

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !891
  unreachable

bb.o:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2g_8snapshotNtB3q_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1H_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5f_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %bb.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.o, %bb.m, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !903
  store i32 2, ptr %i.f, align 16, !noalias !903
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 16 %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.f)
          to label %.body.i.i.i unwind label %bb.p, !noalias !903

bb.p:                                             ; preds = %.body.i.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !903
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !903
  %i.ag = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %.thread.i.i.i unwind label %bb.q ; 2 uses

bb.q:                                             ; preds = %.body.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.aj = extractvalue { ptr, ptr } %i.ah, 0
  %i.ak = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !891
  %.sroa.482.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.482.0.copyload.i.i.i = load ptr, ptr %.sroa.482.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16 ; 2 uses
  %.sroa.683.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.al = load <2 x i64>, ptr %.sroa.683.0..sroa_idx.i.i.i, align 8
  %.sroa.884.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.884.0..sroa_idx.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !891
  %cond.i.i = icmp eq i64 %i.aa, -9223372036854775741
  br i1 %cond.i.i, label %bb.s, label %bb.t, !prof !914

bb.s:                                             ; preds = %bb.r, %.thread.i.i.i
  %.sroa.8.0103.i.i.i = phi ptr [ %i.aj, %.thread.i.i.i ], [ %.sroa.482.0.copyload.i.i.i, %bb.r ] ; 2 uses
  %.sroa.10.0102.i.i.i = phi ptr [ %i.ak, %.thread.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.r ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0103.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0102.i.i.i) ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load i64, ptr %i.am, align 16, !range !133, !noundef !16
  %i.ao = ptrtoint ptr %.sroa.10.0102.i.i.i to i64
  %i.ap = inttoptr i64 %i.an to ptr
  %i.aq = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ao, i64 0
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i.i, i64 56, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.6.sroa.0.0.i.i.i = phi ptr [ %.sroa.482.0.copyload.i.i.i, %bb.t ], [ %i.ap, %bb.s ]
  %.sroa.6.sroa.6.0.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i, %bb.t ], [ %.sroa.8.0103.i.i.i, %bb.s ]
  %.sroa.012.0.i.i.i = phi i64 [ %i.aa, %bb.t ], [ -9223372036854775742, %bb.s ]
  %i.ar = phi <2 x i64> [ %i.al, %bb.t ], [ %i.aq, %bb.s ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !915
  store i64 %.sroa.012.0.i.i.i, ptr %i.as, align 16
  %.sroa.679.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.6.sroa.0.0.i.i.i, ptr %.sroa.679.0..sroa_idx.i.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.6.sroa.6.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 16
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store <2 x i64> %i.ar, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.sroa.5.i.i.i, i64 56, i1 false)
  store i32 1, ptr %i.e, align 16, !noalias !915
  invoke fastcc void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB1F_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 16 %i.l, ptr noalias noundef align 16 captures(address) dereferenceable(112) %i.e)
          to label %.thread107.i.i.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  %i.av = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.au)
          to label %bb.x unwind label %bb.w       ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB39_19UnityCatalogBuilder17execute_uc_futureNCNvB35_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1v_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5J_B5J_EENtB39_17UnityCatalogErrorEE0B56_E00EENtNtBT_8schedule16BlockingScheduleEB39_:bb.a

bb.x:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !944
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body41.i.i.i unwind label %bb.y, !noalias !937

bb.y:                                             ; preds = %bb.z, %bb.x
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !937
  unreachable

bb.z:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3S_19UnityCatalogBuilder17execute_uc_futureNCNvB3O_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2e_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6c_B6c_EENtB3S_17UnityCatalogErrorEE0B5P_E00EEEEB3S_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b) #31
          to label %.body41.i.i.i unwind label %bb.y, !noalias !944

_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB1i_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB4z_19UnityCatalogBuilder17execute_uc_futureNCNvB4v_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtB2U_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6T_B6T_EENtB4z_17UnityCatalogErrorEE0B6w_E00EENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB4z_.exit.i.i.i.i: ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !944
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread.i.i.i unwind label %bb.aa

bb.aa:                                            ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB1i_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB4z_19UnityCatalogBuilder17execute_uc_futureNCNvB4v_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtB2U_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6T_B6T_EENtB4z_17UnityCatalogErrorEE0B6w_E00EENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB4z_.exit.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %.body41.i.i.i

.body41.i.i.i:                                    ; preds = %bb.aa, %bb.z, %bb.x
  %eh.lpad-body42.i.i.i = phi { ptr, i32 } [ %i.au, %bb.aa ], [ %i.ar, %bb.x ], [ %i.at, %bb.z ]
  %i.av = extractvalue { ptr, i32 } %eh.lpad-body42.i.i.i, 0
  %i.aw = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.av)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %.body41.i.i.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32
  unreachable

.thread.i.i.i:                                    ; preds = %_RNvXsl_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB1i_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB1i_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB4z_19UnityCatalogBuilder17execute_uc_futureNCNvB4v_25get_uc_location_and_token0INtNtB9_6result6ResultTNtNtB2U_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6T_B6T_EENtB4z_17UnityCatalogErrorEE0B6w_E00EENtNtB2h_8schedule16BlockingScheduleEs_0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB4z_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !944
  br label %bb.al

bb.ac:                                            ; preds = %.body41.i.i.i
  %i.ay = extractvalue { ptr, ptr } %i.aw, 0      ; 4 uses
  %i.az = extractvalue { ptr, ptr } %i.aw, 1      ; 6 uses
  %.not34.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not34.i.i.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void %i.ba(ptr noundef nonnull %i.ay)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !140, !invariant.load !16 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !141, !invariant.load !16
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, 0) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #29
  br label %bb.al

bb.ah:                                            ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !140, !invariant.load !16 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %common.resume.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !141, !invariant.load !16
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef range(i64 1, 0) %i.bi, i64 noundef range(i64 1, 536870913) %i.bl) #29
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.ap, %bb.ao, %bb.ai, %bb.ah
  %common.resume.op.i = phi { ptr, i32 } [ %i.bq, %bb.ap ], [ %i.bp, %bb.ao ], [ %i.bg, %bb.ai ], [ %i.bg, %bb.ah ]
  resume { ptr, i32 } %common.resume.op.i

bb.aj:                                            ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_(ptr noundef nonnull align 8 %i.bm)
  br label %bb.al

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_.exit.i.i: ; preds = %bb.u
  %i.bn = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.bn, label %default.unreachable [
    i8 3, label %bb.ak
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE4pollB3p_.exit
    i8 1, label %bb.am
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE10poll_innerB3p_.exit.i
  ]

bb.ak:                                            ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_.exit.i.i
  call fastcc void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_(ptr noundef nonnull align 8 %i.g)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ac, %.thread.i.i.i
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE8completeB3p_(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE4pollB3p_.exit

bb.am:                                            ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_.exit.i.i
  call void @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noundef nonnull %0)
  %i.bo = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.bo, label %bb.an, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE4pollB3p_.exit

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3R_19UnityCatalogBuilder17execute_uc_futureNCNvB3N_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2d_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6b_B6b_EENtB3R_17UnityCatalogErrorEE0B5O_E00EENtNtB1B_8schedule16BlockingScheduleEEB3R_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #29
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i.i: ; preds = %bb.an
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #29
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE4pollB3p_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE10poll_innerB3p_.exit.i: ; preds = %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_.exit.i.i, %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3R_19UnityCatalogBuilder17execute_uc_futureNCNvB3N_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtB2d_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6b_B6b_EENtB3R_17UnityCatalogErrorEE0B5O_E00EENtNtB1B_8schedule16BlockingScheduleEEB3R_(ptr noundef nonnull align 128 %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE10poll_innerB3p_.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #29
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i: ; preds = %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE10poll_innerB3p_.exit.i
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 256, i64 noundef 128) #29
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE4pollB3p_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3p_19UnityCatalogBuilder17execute_uc_futureNCNvB3l_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1L_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5Z_B5Z_EENtB3p_17UnityCatalogErrorEE0B5m_E00EENtNtB19_8schedule16BlockingScheduleE4pollB3p_.exit: ; preds = %bb.a, %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_futureINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3l_19UnityCatalogBuilder17execute_uc_futureNCNvB3h_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtB1H_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB5V_B5V_EENtB3l_17UnityCatalogErrorEE0B5i_E00EENtNtB15_8schedule16BlockingScheduleEB3l_.exit.i.i, %bb.al, %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB3X_19UnityCatalogBuilder17execute_uc_futureNCNvB3T_25get_uc_location_and_token0INtNtB4_6result6ResultTNtNtBL_6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB6h_B6h_EENtB3X_17UnityCatalogErrorEE0B5U_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3X_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw4pollINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1v_8snapshotNtB2F_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4K_5error5ErrorEEs_0ENtNtBT_8schedule16BlockingScheduleECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [208 x i8], align 16              ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [184 x i8], align 8               ; 4 uses
  %i.e = alloca [184 x i8], align 8               ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [208 x i8], align 16              ; 6 uses
  %i.h = alloca [96 x i8], align 16               ; 10 uses
  %.sroa.7.sroa.5.i.i.i = alloca [56 x i8], align 8 ; 5 uses
  %.sroa.12.sroa.5.sroa.5.i.i.i = alloca [56 x i8], align 8 ; 5 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.am
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 3, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ]

default.unreachable:                              ; preds = %.thread.i.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !945
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.l = load i32, ptr %i.k, align 16, !range !275, !noalias !954, !noundef !16
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.i, !prof !67

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !954
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.o = load i64, ptr %i.n, align 16, !range !133, !noalias !954, !noundef !16
  %i.p = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.o)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.s, !noalias !957

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.p, ptr %i.f, align 8, !noalias !954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !961
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 16, !alias.scope !958, !noalias !963 ; 2 uses
  store i64 2, ptr %i.q, align 16, !alias.scope !958, !noalias !963
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d, !prof !10

bb.d:                                             ; preds = %.noexc.i.i.i.i.i.i
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !961
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 176, i1 false), !noalias !963
  %i.r = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.f unwind label %bb.g, !noalias !961 ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i.i.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #33
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.j, !noalias !954

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 dereferenceable(184) %i.e, i64 184, i1 false), !noalias !961
  invoke fastcc void @_RNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB4_8snapshotNtB1e_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3i_5error5ErrorEEs_0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(184) %i.d)
          to label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i unwind label %bb.j, !noalias !945

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtBL_8snapshotNtB1V_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB3J_5error5ErrorEEs_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(184) %i.e) #31
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.h, !noalias !961

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !961
  unreachable

bb.i:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #33
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.s, !noalias !957

.noexc1.i.i.i.i.i.i:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.j, %bb.g
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.s, %bb.g ]
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i.i.i.i.i.i unwind label %bb.k, !noalias !954

bb.k:                                             ; preds = %.body.i.i.i.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !954
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !961
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc2.i.i.i.i.i.i unwind label %bb.s, !noalias !957

.noexc2.i.i.i.i.i.i:                              ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !954
  %i.w = load i64, ptr %i.h, align 16             ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.w, -9223372036854775742
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i, label %bb.l

.thread.i.i:                                      ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !945
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.5.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5.i.i.i)
  %i.x = call noundef i8 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State18transition_to_idle(ptr noundef nonnull align 8 %0)
  switch i8 %i.x, label %default.unreachable [
    i8 3, label %bb.ao
    i8 0, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE4pollCsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i8 1, label %bb.aq
    i8 2, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1L_8snapshotNtB2V_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB50_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE10poll_innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  ]

bb.l:                                             ; preds = %.noexc2.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !945
  store i32 2, ptr %i.g, align 16, !noalias !945
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !964
  %i.y = load i64, ptr %i.n, align 16, !range !133, !noalias !964, !noundef !16
  %i.z = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.y)
          to label %bb.m unwind label %bb.p, !noalias !964

bb.m:                                             ; preds = %bb.l
  store i64 %i.z, ptr %i.c, align 8, !noalias !964
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(208) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !964

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.k, ptr noundef nonnull align 16 dereferenceable(208) %i.g, i64 208, i1 false), !noalias !945
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.body.i.i.i.i.i.i.i unwind label %bb.o, !noalias !964

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i.i.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.k, ptr noundef nonnull align 16 dereferenceable(208) %i.g, i64 208, i1 false), !noalias !945
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.v unwind label %bb.q, !noalias !945

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !945
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2e_8snapshotNtB3o_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5d_5error5ErrorEEs_0EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(208) %i.g) #31
          to label %.body.i.i.i.i.i.i.i unwind label %bb.o, !noalias !945

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.q, %bb.p, %bb.n
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ad, %bb.q ], [ %i.aa, %bb.n ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB23_5error5ErrorEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %i.h) #31
          to label %.body.i.i.i.i.i.i unwind label %bb.r, !noalias !945

bb.r:                                             ; preds = %.body.i.i.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !945
  unreachable

bb.s:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB1H_8snapshotNtB2R_8Snapshot19try_new_with_engine00INtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB4W_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE4poll0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %bb.i, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.s, %.body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.s ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNCNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11poll_future05GuardINtNtNtBR_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvMNtB2z_8snapshotNtB3J_8Snapshot19try_new_with_engine00INtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotENtNtB5y_5error5ErrorEEs_0ENtNtB1X_8schedule16BlockingScheduleEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull align 16 %i.j) #31
          to label %.body.i.i.i unwind label %bb.t, !noalias !957

bb.t:                                             ; preds = %.body.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #32, !noalias !957
  unreachable

.body.i.i.i:                                      ; preds = %.body.i.i.i.i.i.i
  %i.ah = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %.thread.i.i.i unwind label %bb.u ; 2 uses

bb.u:                                             ; preds = %.body.i.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #32
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i
  %i.ak = extractvalue { ptr, ptr } %i.ai, 0
  %i.al = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %bb.w

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core11TaskIdGuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !945
  %.sroa.484.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.484.0.copyload.i.i.i = load ptr, ptr %.sroa.484.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16 ; 2 uses
  %.sroa.685.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.am = load <2 x i64>, ptr %.sroa.685.0..sroa_idx.i.i.i, align 8
  %.sroa.886.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.5.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.886.0..sroa_idx.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !945
  %cond.i.i = icmp eq i64 %i.w, -9223372036854775741
  br i1 %cond.i.i, label %bb.w, label %bb.x, !prof !914

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i
  %.sroa.8.0105.i.i.i = phi ptr [ %i.ak, %.thread.i.i.i ], [ %.sroa.484.0.copyload.i.i.i, %bb.v ] ; 2 uses
  %.sroa.10.0104.i.i.i = phi ptr [ %i.al, %.thread.i.i.i ], [ %.sroa.5.0.copyload.i.i.i, %bb.v ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0105.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0104.i.i.i) ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 16, !range !133, !noundef !16 ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.10.0104.i.i.i to i64
  %i.aq = inttoptr i64 %i.ao to ptr
  %i.ar = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %i.ap, i64 0
end_hunk_2
