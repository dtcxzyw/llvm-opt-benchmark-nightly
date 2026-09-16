Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.13?download=true
inline.NumInlined: 5997
inline.NumDeleted: 1809
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1r_5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB1r_11collections5btree3mapINtB3l_8BTreeMapB1n_B1Z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4o_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1n_B1n_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6R_:bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit
  %.sroa.0.05 = phi ptr [ %i.v, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit ], [ %i.c, %.lr.ph.preheader ] ; 11 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val11.i = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 16
  %.val12.i = load i64, ptr %i.e, align 8, !noundef !12 ; 5 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -48
  %.val13.i = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.g = getelementptr i8, ptr %.sroa.0.05, i64 -40
  %.val14.i = load i64, ptr %i.g, align 8, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.h = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !5818 ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp eq i32 %i.h, 0
  %i.k = sub nsw i64 %.val12.i, %.val14.i
  %spec.select.i.i.i.i.i.i = select i1 %i.j, i64 %i.k, i64 %i.i
  %i.l = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.l, label %bb.d, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.05, align 8
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.615.0..sroa_idx.i, i64 32, i1 false)
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -56 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i8, i64 56, i1 false)
  %i.m = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.m, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -56 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i, i64 56, i1 false)
  %i.n = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.n, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.5.0.i9, i64 -104
  %.val9.i = load ptr, ptr %i.o, align 8, !nonnull !12, !noundef !12
  %i.p = getelementptr i8, ptr %.sroa.5.0.i9, i64 -96
  %.val10.i = load i64, ptr %i.p, align 8, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i, i64 range(i64 0, -9223372036854775808) %.val10.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i.i.i.i15.i), !alias.scope !5819 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub nsw i64 %.val12.i, %.val10.i
  %spec.select.i.i.i.i.i16.i = select i1 %i.s, i64 %i.t, i64 %i.r
  %i.u = icmp slt i64 %spec.select.i.i.i.i.i16.i, 0
  br i1 %i.u, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 3 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  store i64 %.sroa.012.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !5820
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -48
  store ptr %.val11.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !5820
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -40
  store i64 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !5820
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !5820
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1d_5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1d_11collections5btree3mapINtB37_8BTreeMapB19_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4a_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB19_B19_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6D_.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1t_5sliceSB1m_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs7p2uQeJxui2_9deltalake.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs7p2uQeJxui2_9deltalake.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !noundef !12 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !noundef !12
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.48.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -32 ; 4 uses
  %.val8.i = load i64, ptr %i.h, align 8, !noundef !12
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !5825
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !5825
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB2U_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBX_BX_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6s_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6s_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6E_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6E_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6E_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6E_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6E_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6E_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5841)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread93, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 64
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !5841, !noalias !5842, !nonnull !12, !noundef !12 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 72
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !5841, !noalias !5842, !noundef !12 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !5841, !noalias !5842, !nonnull !12, !noundef !12
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !5841, !noalias !5842, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i39), !alias.scope !5843, !noalias !5844 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i40 = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i40, -1 ; 2 uses
  %.not68 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.x, label %.preheader49, label %.preheader

.preheader49:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader49
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread93, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader
  %smax71 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph55

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.lr.ph.preheader ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.ag, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i.i51 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !5841, !noalias !5842, !nonnull !12, !noundef !12 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !5841, !noalias !5842, !noundef !12 ; 3 uses
  %spec.store.select.i.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i37), !alias.scope !5845, !noalias !5844 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i38 = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i38, 0
  br i1 %i.af, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ag = add nuw nsw i64 %.sroa.01.0.i.i51, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.lr.ph55.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.lr.ph55.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.ap, %bb.m ], [ 2, %.lr.ph55.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i.i54 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !5841, !noalias !5842, !nonnull !12, !noundef !12 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !5841, !noalias !5842, !noundef !12 ; 3 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !5846, !noalias !5844 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.ap = add nuw nsw i64 %.sroa.01.1.i.i54, 1    ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ap, %smax71
  br i1 %exitcond71.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i, label %.lr.ph55

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i: ; preds = %bb.m, %.lr.ph55, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i51, %.lr.ph ], [ %smax, %bb.l ], [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %smax71, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread93: ; preds = %.preheader
  br i1 %.not5.i95, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i90, label %bb.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ar, 0
  %or.cond = or i1 %i.x, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %.sroa.0.0.i36, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6E_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6E_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6G_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6G_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i35, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5839
  %i.at = shl nuw nsw i64 %.sroa.0.0.i35, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6E_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6E_.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread ], [ %.sroa.0.0.i.i9198102, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6E_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6E_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread93
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread93 ]
  %.sroa.0.0.i.i9198102 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6D_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6D_.exit.i.thread93 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i.i9198102
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bd, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i, -1
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.bb = getelementptr [56 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 7)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.q, !noalias !5842

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !5842
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6E_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6E_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0.i34 = phi i64 [ %i.aw, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph61:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit
  %.sroa.02.160 = phi i64 [ %i.bn, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit, %.lr.ph61, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %.lr.ph61 ], [ 1, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph61
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !12 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.159, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.159 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.159
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6G_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6G_(ptr noalias noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bu, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5840
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2V_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBY_BY_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6t_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6t_(ptr noalias noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ck = shl nuw nsw i64 %i.bw, 1
  %i.cl = or disjoint i64 %i.ck, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit

bb.x:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %i.bu
  %i.cn = or i64 %i.bv, 1
  %i.co = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6G_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6G_(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef range(i64 0, 164703072086692426) %i.bv, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5840
  br label %bb.w

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6H_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6H_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cl, %bb.w ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph61, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cw, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6G_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6G_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5840
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB11_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB11_11collections5btree3mapINtB2U_8BTreeMapBX_B1z_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3W_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBX_BX_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6m_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i90 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i95 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cv, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ct, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6y_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5862)
  %.not.i33 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread93, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 64
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !5862, !noalias !5863, !nonnull !12, !noundef !12 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 72
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !5862, !noalias !5863, !noundef !12 ; 4 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val16.i = load ptr, ptr %i.r, align 8, !alias.scope !5862, !noalias !5863, !nonnull !12, !noundef !12
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i64, ptr %i.s, align 8, !alias.scope !5862, !noalias !5863, !noundef !12 ; 2 uses
  %spec.store.select.i.i.i.i.i39 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val15.i, i64 range(i64 0, -9223372036854775808) %.val17.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %spec.store.select.i.i.i.i.i39), !alias.scope !5864, !noalias !5865 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub nsw i64 %.val15.i, %.val17.i
  %spec.select.i.i.i.i.i40 = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp sgt i64 %spec.select.i.i.i.i.i40, -1 ; 2 uses
  %.not68 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.x, label %.preheader49, label %.preheader

.preheader49:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader49
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread93, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader
  %smax71 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph55

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.lr.ph.preheader ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.ag, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i.i51 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val10.i = load ptr, ptr %i.z, align 8, !alias.scope !5862, !noalias !5863, !nonnull !12, !noundef !12 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val11.i = load i64, ptr %i.aa, align 8, !alias.scope !5862, !noalias !5863, !noundef !12 ; 3 uses
  %spec.store.select.i.i.i.i.i37 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i37), !alias.scope !5866, !noalias !5865 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i38 = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp slt i64 %spec.select.i.i.i.i.i38, 0
  br i1 %i.af, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ag = add nuw nsw i64 %.sroa.01.0.i.i51, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.lr.ph55.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.lr.ph55.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.ap, %bb.m ], [ 2, %.lr.ph55.preheader ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i.i54 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !5862, !noalias !5863, !nonnull !12, !noundef !12 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val7.i = load i64, ptr %i.aj, align 8, !alias.scope !5862, !noalias !5863, !noundef !12 ; 3 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val7.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !5867, !noalias !5865 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub nsw i64 %.val7.i, %.val9.i
  %spec.select.i.i.i.i.i = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.ao, label %bb.m, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.ap = add nuw nsw i64 %.sroa.01.1.i.i54, 1    ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ap, %smax71
  br i1 %exitcond71.not, label %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i, label %.lr.ph55

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i: ; preds = %bb.m, %.lr.ph55, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i51, %.lr.ph ], [ %smax, %bb.l ], [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %smax71, %bb.m ] ; 5 uses
  %i.aq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread93: ; preds = %.preheader
  br i1 %.not5.i95, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread: ; preds = %.preheader49
  br i1 %.not5.i90, label %bb.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ar, 0
  %or.cond = or i1 %i.x, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.as = shl nuw nsw i64 %.sroa.0.0.i36, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6y_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6A_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i35, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5860
  %i.at = shl nuw nsw i64 %.sroa.0.0.i35, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6y_.exit

_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread ], [ %.sroa.0.0.i.i9198102, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6y_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread93
  %i.ax = phi i64 [ %i.ar, %bb.n ], [ 1, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread93 ]
  %.sroa.0.0.i.i9198102 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared17find_existing_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB17_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB17_11collections5btree3mapINtB31_8BTreeMapB13_B1F_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB44_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB13_B13_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6x_.exit.i.thread93 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i.i9198102
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bd, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = xor i64 %.sroa.0.017.i.i, -1
  %i.ba = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.bb = getelementptr [56 x i8], ptr %i.ay, i64 %i.az
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, i64 noundef 7)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.q, !noalias !5863

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #49, !noalias !5863
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bd = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.ax
  br i1 %exitcond.not.i.i, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift10create_runTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB18_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB32_8BTreeMapB14_B1G_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB45_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB14_B14_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6y_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0.i34 = phi i64 [ %i.aw, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE7reverseCs7p2uQeJxui2_9deltalake.exit ], [ %i.au, %bb.p ], [ %i.as, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

.lr.ph61:                                         ; preds = %bb.g, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit
  %.sroa.02.160 = phi i64 [ %i.bn, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bn = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !12
  %.not29 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit, %.lr.ph61, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %.lr.ph61 ], [ 1, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph61
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !12 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 5 uses
  %i.bv = lshr i64 %.sroa.023.159, 1              ; 3 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 5 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bx ; 3 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.159 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.159
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ca, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.cf = or i64 %i.bu, 1
  %i.cg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6A_(ptr noalias noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bu, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5861
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2V_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBY_BY_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6n_(ptr noalias noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 164703072086692426) %i.bw, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ck = shl nuw nsw i64 %i.bw, 1
  %i.cl = or disjoint i64 %i.ck, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit

bb.x:                                             ; preds = %bb.u
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %i.bu
  %i.cn = or i64 %i.bv, 1
  %i.co = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6A_(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef range(i64 0, 164703072086692426) %i.bv, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5861
  br label %bb.w

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB35_8BTreeMapB17_B1J_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB48_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB17_B17_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6B_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.cl, %bb.w ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cs = icmp ugt i64 %i.bn, 1
  br i1 %i.cs, label %.lr.ph61, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ct = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cu = lshr i64 %.sroa.018.0, 1
  %i.cv = add nuw i64 %i.cu, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cw = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cw, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = or i64 %1, 1
  %i.cy = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6A_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #51, !inline_history !5861
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1a_11collections5btree3mapINtB34_8BTreeMapB16_B1I_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB16_B16_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6G_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6G_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef range(i32 0, 115) %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(56) %5, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph114 = phi ptr [ %i.ho, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph113 = phi i64 [ %i.gz, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph112 = phi i32 [ %i.dd, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph111 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph114, i64 8
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph114, i64 16
  %i.e = ptrtoint ptr %.sroa.0.0.ph114 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph111, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph111, i64 8
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph111, i64 16
  %i.h = icmp eq i32 %.sroa.025.0.ph112, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph260

bb.b:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE12split_at_mutCs7p2uQeJxui2_9deltalake.exit
  %i.i = icmp eq i32 %i.dd, 0
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast11RenameTableINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast11RenameTableINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15RaisErrorOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArceENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArceENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast6ActionENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast6ActionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE16into_boxed_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19GroupByWithModifierENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefEENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl9ColumnDefENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type15CharacterLengthENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionyENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type12BinaryLengthENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type15ExactNumberInfoNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type12TimezoneInfoNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type16ArrayElemTypeDefNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type10EnumMemberENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type17StructBracketKindNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type17GeometricTypeKindNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query18XmlPassingArgumentENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type10EnumMemberINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast5value18DollarQuotedStringNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsz_NtCs4lawaffTVVK_9sqlparser3astNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsbvkFyIu7lgC_4core3anyDNtB5_3AnyNtNtB7_6marker4SendEL_NtNtB7_3fmt5Debug3fmt(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs2pqxYH9ZEk8_3std9backtraceNtB2_9BacktraceNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsjhHCjzi9uUI_17datafusion_common6columnNtB2_6ColumnNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5errorNtB5_9JoinErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11DecimalTypeNtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger12TriggerEventINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs4lawaffTVVK_9sqlparser3ast7trigger18TriggerReferencingINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB15_EINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB15_EINtNtNtBa_5slice4iter4IterB14_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB14_EENtB6_5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

attributes #0 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse noreturn nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #29 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #38 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #46 = { nounwind }
attributes #47 = { noreturn }
attributes #48 = { cold }
attributes #49 = { cold noreturn nounwind }
attributes #50 = { noinline noreturn }
attributes #51 = { noinline }
attributes #52 = { inlinehint }
attributes #53 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null, ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12TableVersionEECs7p2uQeJxui2_9deltalake}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 2, !"RtLibUseGOT", i32 1}
!10 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{}
!13 = !{i64 8}
!14 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!15 = !{i64 0, i64 -9223372036854775808}
!16 = !{i64 1, i64 536870913}
!17 = !{!"branch_weights", !"expected", i32 2144049392, i32 3434256}
!18 = !{i8 0, i8 3}
!19 = !{i64 0, i64 2}
!20 = !{i8 0, i8 2}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{i64 1, i64 0}
!23 = !{!"branch_weights", i32 1, i32 4001}
!24 = !{i64 0, i64 3}
!25 = !{i64 0, i64 -9223372036854775807}
!26 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake}
!27 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs7p2uQeJxui2_9deltalake}
!28 = !{i64 0, i64 -9223372036854775806}
!29 = !{i64 0, i64 -9223372036854775785}
!30 = !{i64 0, i64 4}
!31 = !{i64 0, i64 29}
!32 = !{i64 0, i64 -9223372036854775805}
!33 = !{i64 0, i64 74}
!34 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast19ShowStatementFilterECs7p2uQeJxui2_9deltalake}
!35 = !{i64 0, i64 70}
!36 = !{i64 0, i64 71}
!37 = !{i64 0, i64 -9223372036854775800}
!38 = !{i64 0, i64 5}
!39 = !{i64 0, i64 72}
!40 = !{i64 0, i64 -9223372036854775786}
!41 = !{i64 0, i64 7}
!42 = !{i8 0, i8 117}
!43 = !{i64 0, i64 -9223372036854775804}
!44 = !{i64 0, i64 -9223372036854775741}
!45 = !{i64 0, i64 -9223372036854775788}
!46 = !{i64 0, i64 -9223372036854775782}
!47 = !{i64 0, i64 25}
!48 = !{i64 0, i64 -9223372036854775710}
!49 = !{i64 0, i64 22}
!50 = !{i32 0, i32 -1}
!51 = !{i32 0, i32 3}
!52 = !{i64 0, i64 -9223372036854775709}
!53 = !{i8 0, i8 4}
!54 = !{i8 0, i8 6}
!55 = !{i8 0, i8 5}
!56 = !{i128 0, i128 3}
!57 = !{i64 0, i64 -9223372036854775790}
!58 = !{i8 0, i8 104}
!59 = !{i64 0, i64 28}
!60 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake}
!61 = !{i64 0, i64 45}
!62 = !{i64 0, i64 12}
!63 = !{i64 0, i64 75}
!64 = !{i64 0, i64 73}
!65 = !{i64 0, i64 78}
!66 = !{i64 0, i64 69}
!67 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEECs7p2uQeJxui2_9deltalake}
!68 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake, ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEECs7p2uQeJxui2_9deltalake}
!69 = !{i64 0, i64 6}
!70 = !{i64 0, i64 120}
!71 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEEECs7p2uQeJxui2_9deltalake}
!72 = !{i64 0, i64 8}
!73 = !{i64 0, i64 -9223372036854775743}
!74 = !{i8 0, i8 41}
!75 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs7p2uQeJxui2_9deltalake}
!76 = !{i64 0, i64 20}
!77 = !{i64 16}
!78 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEECs7p2uQeJxui2_9deltalake}
!79 = !{i64 0, i64 77}
!80 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEECs7p2uQeJxui2_9deltalake, ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryEEECs7p2uQeJxui2_9deltalake}
!81 = !{i64 0, i64 76}
!82 = !{i64 0, i64 15}
!83 = !{i32 0, i32 7}
!84 = !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs7p2uQeJxui2_9deltalake}
!85 = !{i8 0, i8 9}
!86 = !{i64 0, i64 44}
!87 = !{i64 0, i64 -9223372036854775787}
!88 = !{i8 0, i8 116}
!89 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!90 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!91 = !{!"branch_weights", i32 4001, i32 4000000}
!92 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2001, i32 2001, i32 2001, i32 2001, i32 2001, i32 2001, i32 2001, i32 2001, i32 2000}
!93 = !{i64 0, i64 9}
!94 = !{i64 0, i64 37}
!95 = !{i8 0, i8 42}
!96 = !{i32 0, i32 1114113}
!97 = !{i64 0, i64 38}
!98 = !{i64 0, i64 21}
!99 = !{i8 0, i8 15}
!100 = !{i8 0, i8 7}
!101 = !{i8 0, i8 8}
!102 = !{ptr @_RINvXs9V_NtCs4lawaffTVVK_9sqlparser3astNtB7_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake}
!103 = !{i64 0, i64 36}
!104 = !{i8 0, i8 10}
!105 = !{i64 0, i64 -9223372036854775801}
!106 = !{i8 0, i8 12}
!107 = !{i8 0, i8 13}
!108 = !{i8 0, i8 14}
!109 = !{ptr @_RNvXs9R_NtCs4lawaffTVVK_9sqlparser3astNtB6_25ConditionalStatementBlockNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq}
!110 = distinct !{!110, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB18_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0EB3U_"}
!111 = distinct !{!111, !110, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextEE10initializeNCINvB18_11get_or_initNCNvCs7p2uQeJxui2_9deltalake41fallback_datafusion_task_context_provider0E0zE0EB3U_: argument 0"}
!112 = !{!111}
!113 = distinct !{!113, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtNtB8_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB18_11get_or_initNCNvB2b_22global_tracer_provider0E0zE0ECs7p2uQeJxui2_9deltalake"}
!114 = distinct !{!114, !113, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtNtB8_6poison6rwlock6RwLockNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace20GlobalTracerProviderEE10initializeNCINvB18_11get_or_initNCNvB2b_22global_tracer_provider0E0zE0ECs7p2uQeJxui2_9deltalake: argument 0"}
!115 = !{!114}
!116 = distinct !{!116, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0EB37_"}
!117 = distinct !{!117, !116, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zE0EB37_: argument 0"}
!118 = !{!117}
!119 = distinct !{!119, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs7p2uQeJxui2_9deltalake"}
!120 = distinct !{!120, !119, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockbE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs7p2uQeJxui2_9deltalake: argument 0"}
!121 = !{!120}
!122 = distinct !{!122, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockmE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0EB2k_"}
!123 = distinct !{!123, !122, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockmE10initializeNCINvB18_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zE0EB2k_: argument 0"}
!124 = !{!123}
!125 = distinct !{!125, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake"}
!126 = distinct !{!126, !125, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 2"}
!127 = distinct !{!127, !125, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 1"}
!128 = distinct !{!128, !125, !"_RINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 0"}
!129 = distinct !{!129, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE3newCs7p2uQeJxui2_9deltalake"}
!130 = distinct !{!130, !129, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE3newCs7p2uQeJxui2_9deltalake: argument 0"}
!131 = distinct !{!131, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake"}
!132 = distinct !{!132, !131, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!133 = distinct !{!133, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake"}
!134 = distinct !{!134, !133, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 1"}
!135 = distinct !{!135, !131, !"_RNCINvMs1_NtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!136 = distinct !{!136, !133, !"_RINvMsa_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB8_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyEL_E8downcastNtCs73bmgzuZ8Mg_21tracing_opentelemetry8OtelDataECs7p2uQeJxui2_9deltalake: argument 0"}
!137 = !{!130, !128, !127, !126}
!138 = !{!128, !127, !126}
!139 = !{!128, !127}
!140 = !{!128, !126}
!141 = !{!132}
end_hunk_1
