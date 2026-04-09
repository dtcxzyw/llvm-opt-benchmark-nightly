inline.NumInlined: 9982
inline.NumDeleted: 4210
begin_hunk_0_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.val13.i, ptr noundef nonnull %i.k, ptr noundef nonnull %.val15.i, ptr noundef nonnull %i.l)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i.i, i64 %.sroa.8.0.copyload.i.i.i)
  %i.m = icmp ult i64 %.sroa.66.0.copyload.i.i.i, %.sroa.8.0.copyload.i.i.i
  br i1 %i.m, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.n = add i64 %.sroa.66.0.i.i.i53, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.n, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.preheader, %bb.e
  %.sroa.66.0.i.i.i53 = phi i64 [ %i.n, %bb.e ], [ %.sroa.66.0.copyload.i.i.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.preheader ] ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
.noexc.i:                                         ; preds = %bb.g
  %.sroa.0.0.copyload.i.i18.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i20.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i19.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i22.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i21.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i24.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i23.i, align 8 ; 2 uses
  %umax.i.i25.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i22.i, i64 %.sroa.8.0.copyload.i.i24.i)
  %i.ae = icmp ult i64 %.sroa.66.0.copyload.i.i22.i, %.sroa.8.0.copyload.i.i24.i
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i26.i

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i

bb.h:                                             ; preds = %.noexc31.i
  %exitcond.not.i.i27.i = icmp eq i64 %i.af, %umax.i.i25.i
  br i1 %exitcond.not.i.i27.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i26.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i.preheader, %bb.h
  %.sroa.66.0.i.i25.i54 = phi i64 [ %i.af, %bb.h ], [ %.sroa.66.0.copyload.i.i22.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i.preheader ] ; 3 uses
  %i.af = add i64 %.sroa.66.0.i.i25.i54, 1        ; 2 uses
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i17.i)
          to label %.noexc30.i unwind label %.loopexit.i

end_hunk_3
