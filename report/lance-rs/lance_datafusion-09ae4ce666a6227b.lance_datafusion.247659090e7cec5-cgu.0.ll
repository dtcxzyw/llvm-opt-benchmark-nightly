Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECsc85D0lJ81Z_16lance_datafusion:.lr.ph
  %.sroa.0.04 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.a

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit
  ret void

bb.a:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.07 = phi ptr [ %.sroa.0.04, %.lr.ph ], [ %.sroa.0.0, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit ] ; 4 uses
  %.pn6 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.07, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit ] ; 8 uses
  %i.b = getelementptr i8, ptr %.pn6, i64 56      ; 2 uses
  %.val13.i = load ptr, ptr %i.b, align 8, !nonnull !315, !noundef !315
  %i.c = getelementptr i8, ptr %.pn6, i64 64      ; 2 uses
  %.val14.i = load i64, ptr %i.c, align 8, !noundef !315 ; 3 uses
  %i.d = getelementptr i8, ptr %.pn6, i64 8
  %.val15.i = load ptr, ptr %i.d, align 8, !nonnull !315, !noundef !315
  %i.e = getelementptr i8, ptr %.pn6, i64 16
  %.val16.i = load i64, ptr %i.e, align 8, !noundef !315 ; 3 uses
  %.val.i.i = load ptr, ptr %.0.val, align 8      ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val16.i, i64 %.val14.i) ; 2 uses
  %exitcond.not.i.i.i4 = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %exitcond.not.i.i.i4, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.preheader

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.preheader: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
  %i.f = add i64 %.sroa.9.0.i.i.i5, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.f, %.sroa.0.0.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.preheader, %bb.b
  %.sroa.9.0.i.i.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %.val13.i, i64 %.sroa.9.0.i.i.i5
  %i.h = getelementptr inbounds nuw [144 x i8], ptr %.val15.i, i64 %.sroa.9.0.i.i.i5
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i.i)
  %i.j = tail call noundef i8 @_RNvNtCs1Jc0oVeks7E_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
  switch i8 %i.j, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit [
    i8 0, label %bb.b
    i8 -1, label %.loopexit8.i
  ]

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i: ; preds = %bb.b, %bb.a
  %i.k = icmp ult i64 %.val16.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp ult i64 %.val14.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ult i64 %.val16.i, %.val14.i
  br i1 %i.m, label %.loopexit8.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit

.loopexit8.i:                                     ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.026.0.copyload.i = load i64, ptr %.sroa.0.07, align 8 ; 2 uses
  %.sroa.427.0.copyload.i = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.528.0.copyload.i = load i64, ptr %i.c, align 8 ; 5 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn6, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(48) %.pn6, i64 48, i1 false)
  %i.n = icmp eq ptr %.pn6, %0
  br i1 %i.n, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit8.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.427.0.copyload.i) ]
  %i.o = icmp ult i64 %.sroa.528.0.copyload.i, 64051194700380388
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.012.i = phi ptr [ %.pn6, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 10 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.012.i, i64 -48 ; 3 uses
  %i.q = getelementptr i8, ptr %.sroa.0.012.i, i64 -40
  %.val10.i = load ptr, ptr %i.q, align 8, !nonnull !315, !noundef !315
  %i.r = getelementptr i8, ptr %.sroa.0.012.i, i64 -32
  %.val11.i = load i64, ptr %i.r, align 8, !noundef !315 ; 3 uses
  %.val.i17.i = load ptr, ptr %.0.val, align 8    ; 2 uses
  %.sroa.0.0.i.i.i.i.i18.i = tail call noundef i64 @llvm.umin.i64(i64 %.val11.i, i64 %.sroa.528.0.copyload.i) ; 2 uses
  %exitcond.not.i.i20.i6 = icmp eq i64 %.sroa.0.0.i.i.i.i.i18.i, 0
  br i1 %exitcond.not.i.i20.i6, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i24.i, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i.preheader

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i.preheader: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i) ]
  br label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i

bb.d:                                             ; preds = %.noexc25.i
  %exitcond.not.i.i20.i = icmp eq i64 %i.s, %.sroa.0.0.i.i.i.i.i18.i
  br i1 %exitcond.not.i.i20.i, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i24.i, label %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i: ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i.preheader, %bb.d
  %.sroa.9.0.i.i19.i7 = phi i64 [ %i.s, %bb.d ], [ 0, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i.preheader ] ; 3 uses
  %i.s = add i64 %.sroa.9.0.i.i19.i7, 1           ; 2 uses
  %i.t = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs1Jc0oVeks7E_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i17.i)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i
  %i.u = getelementptr inbounds nuw [144 x i8], ptr %.val10.i, i64 %.sroa.9.0.i.i19.i7
  %i.v = getelementptr inbounds nuw [144 x i8], ptr %.sroa.427.0.copyload.i, i64 %.sroa.9.0.i.i19.i7
  %i.w = invoke noundef i8 @_RNvNtCs1Jc0oVeks7E_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t)
          to label %.noexc25.i unwind label %bb.e

.noexc25.i:                                       ; preds = %.noexc.i
  switch i8 %i.w, label %.loopexit.i [
    i8 0, label %bb.d
    i8 -1, label %.backedge.i
  ]

_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i24.i: ; preds = %bb.d, %bb.c
  %i.x = icmp ult i64 %.val11.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.x)
  tail call void @llvm.assume(i1 %i.o)
  %i.y = icmp samesign ult i64 %.val11.i, %.sroa.528.0.copyload.i
  br i1 %i.y, label %.backedge.i, label %.loopexit.i

.backedge.i:                                      ; preds = %.noexc25.i, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i24.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.012.i, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  %i.z = icmp eq ptr %i.p, %0
  br i1 %i.z, label %.loopexit.i, label %bb.c

.loopexit.i:                                      ; preds = %.backedge.i, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i24.i, %.noexc25.i, %.loopexit8.i
  %.sroa.0.011.i = phi ptr [ %.sroa.0.012.i, %.noexc25.i ], [ %0, %.loopexit8.i ], [ %0, %.backedge.i ], [ %.sroa.0.012.i, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i24.i ] ; 4 uses
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.011.i, align 8, !noalias !29622
  %.sroa.5.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.011.sroa_idx.i, align 8, !noalias !29622
  %.sroa.6.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.011.sroa_idx.i, align 8, !noalias !29622
  %.sroa.7.0..sroa.0.011.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.011.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !29622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit

bb.e:                                             ; preds = %.noexc.i, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i21.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.012.i, align 8, !noalias !29623
  %.sroa.5.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.012.lcssa.sroa_idx.i, align 8, !noalias !29623
  %.sroa.6.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.012.lcssa.sroa_idx.i, align 8, !noalias !29623
  %.sroa.7.0..sroa.0.012.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.012.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !29623
  resume { ptr, i32 } %i.aa

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs1Jc0oVeks7E_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i, %.loopexit.i
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 48 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB13_5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2J_18TrackConsumersPoolNtB2J_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
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
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ec, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ea, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1a_5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2R_18TrackConsumersPoolNtB2R_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1a_5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2R_18TrackConsumersPoolNtB2R_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1a_5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2R_18TrackConsumersPoolNtB2R_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph63, label %._crit_edge

.lr.ph63:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread96, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 104
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !29661, !noalias !29662, !noundef !315 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 48
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !29661, !noalias !29662, !noundef !315
  %i.s = icmp ult i64 %.val11.i, %.val10.i        ; 2 uses
  %.not70 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader48
  %smax = tail call i64 @llvm.smax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not70, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread96, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %.preheader
  %smax77 = tail call i64 @llvm.smax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph57

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.lr.ph.preheader ]
  %.sroa.01.0.i.i53 = phi i64 [ %i.w, %bb.l ], [ 2, %.lr.ph.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i53
  %i.u = getelementptr i8, ptr %i.t, i64 48
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !29661, !noalias !29662, !noundef !315 ; 2 uses
  %i.v = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.v, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.sroa.01.0.i.i53, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.lr.ph57.preheader ]
  %.sroa.01.1.i.i56 = phi i64 [ %i.aa, %bb.m ], [ 2, %.lr.ph57.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i56
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !29661, !noalias !29662, !noundef !315 ; 2 uses
  %i.z = icmp ult i64 %.val7.i, %.val.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.m:                                             ; preds = %.lr.ph57
  %i.aa = add nuw nsw i64 %.sroa.01.1.i.i56, 1    ; 2 uses
  %exitcond77.not = icmp eq i64 %i.aa, %smax77
  br i1 %exitcond77.not, label %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i, label %.lr.ph57

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph57
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i56, %.lr.ph57 ], [ %smax77, %bb.m ], [ %.sroa.01.0.i.i53, %.lr.ph ], [ %smax, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.preheader.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit

bb.n:                                             ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1a_5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2R_18TrackConsumersPoolNtB2R_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1c_5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2T_18TrackConsumersPoolNtB2T_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !29628
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1a_5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2R_18TrackConsumersPoolNtB2R_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1a_5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2R_18TrackConsumersPoolNtB2R_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29663), !noalias !29662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29664), !noalias !29662
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.preheader.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared17find_existing_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB19_5sliceSB12_11sort_by_keyINtNtB8_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2Q_18TrackConsumersPoolNtB2Q_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i.thread96 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105
  br label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.i.i

_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.i.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.i.i, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.az, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.i.i ], [ 0, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.preheader.i.i ] ; 3 uses
  %i.ak = xor i64 %.sroa.0.016.i.i, -1
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 5 uses
  %i.am = getelementptr [56 x i8], ptr %i.aj, i64 %i.ak ; 5 uses
  %i.an = load <2 x i64>, ptr %i.al, align 8, !alias.scope !29665, !noalias !29666
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !29667, !noalias !29668
  store <2 x i64> %i.ao, ptr %i.al, align 8, !alias.scope !29665, !noalias !29666
  store <2 x i64> %i.an, ptr %i.am, align 8, !alias.scope !29667, !noalias !29668
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !29669, !noalias !29666
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !29670, !noalias !29668
  store <2 x i64> %i.as, ptr %i.ap, align 8, !alias.scope !29669, !noalias !29666
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !29670, !noalias !29668
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.at, align 8, !alias.scope !29671, !noalias !29666
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !alias.scope !29672, !noalias !29668
  store <2 x i64> %i.aw, ptr %i.at, align 8, !alias.scope !29671, !noalias !29666
  store <2 x i64> %i.av, ptr %i.au, align 8, !alias.scope !29672, !noalias !29668
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29673), !noalias !29662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29674), !noalias !29662
  %.sroa.0.0.copyload.i.i.i.6.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !29675, !noalias !29676
  %.sroa.02.0.copyload.i.i.i.6.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !29677, !noalias !29678
  store i64 %.sroa.02.0.copyload.i.i.i.6.i.i.i.i, ptr %i.ax, align 8, !alias.scope !29675, !noalias !29676
  store i64 %.sroa.0.0.copyload.i.i.i.6.i.i.i.i, ptr %i.ay, align 8, !alias.scope !29677, !noalias !29678
  %i.az = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE12split_at_mutCsc85D0lJ81Z_16lance_datafusion.exit11.i.i

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift10create_runTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1a_5sliceSB13_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2R_18TrackConsumersPoolNtB2R_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscI6d9CVNmLh_4core5sliceSTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjE7reverseCsc85D0lJ81Z_16lance_datafusion.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1
  %i.bb = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba
  %i.bd = add nuw nsw i64 %i.bb, %factor
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false)
  %i.bi = trunc nuw nsw i64 %i.bh to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph63, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1d_5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2U_18TrackConsumersPoolNtB2U_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit
  %.sroa.02.162 = phi i64 [ %.sroa.02.0, %.lr.ph63 ], [ %i.bj, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1d_5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2U_18TrackConsumersPoolNtB2U_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit ] ; 2 uses
  %.sroa.023.161 = phi i64 [ %.sroa.023.0, %.lr.ph63 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1d_5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2U_18TrackConsumersPoolNtB2U_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit ] ; 4 uses
  %i.bj = add i64 %.sroa.02.162, -1               ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !315
  %.not29 = icmp ult i8 %i.bl, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1d_5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2U_18TrackConsumersPoolNtB2U_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1d_5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2U_18TrackConsumersPoolNtB2U_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1d_5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2U_18TrackConsumersPoolNtB2U_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bn, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !315 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1                       ; 8 uses
  %i.br = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.bs = add nuw i64 %i.bq, %i.br                ; 4 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bt ; 6 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3
  %i.bw = trunc i64 %.sroa.023.161 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.161
  %i.by = trunc i64 %i.bx to i1
  %or.cond3.i = or i1 %i.bv, %i.by
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ca = shl nuw nsw i64 %i.bs, 1
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift13logical_mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1d_5sliceSB16_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2U_18TrackConsumersPoolNtB2U_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bw, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cb = or i64 %i.bq, 1
  %i.cc = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB1c_5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2T_18TrackConsumersPoolNtB2T_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bq, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !29649
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29680)
  %i.cg = icmp eq i64 %i.bq, 0
  %i.ch = icmp eq i64 %i.br, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB14_5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2K_18TrackConsumersPoolNtB2K_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.br, i64 range(i64 0, -9223372036854775808) %i.bq) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.ci, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5merge5mergeTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjENCINvMNtB14_5sliceSBX_11sort_by_keyINtNtBa_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB2K_18TrackConsumersPoolNtB2K_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.bu, i64 %i.bq ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bq, %i.br  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cj, ptr %i.bu
  %i.ck = mul nuw nsw i64 %.sroa.0.0.i.i35, 56    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !29681
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cm = phi ptr [ %i.cy, %.preheader.i ], [ %i.cl, %.critedge.i ] ; 2 uses
  %i.cn = phi ptr [ %i.cw, %.preheader.i ], [ %i.cj, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -56 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -56 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -56 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cm, i64 -8
  %.val.i.i = load i64, ptr %i.cr, align 8, !alias.scope !29680, !noalias !29682, !noundef !315
  %i.cs = getelementptr i8, ptr %i.cn, i64 -8
  %.val10.i.i = load i64, ptr %i.cs, align 8, !alias.scope !29679, !noalias !29683, !noundef !315
  %i.ct = icmp ult i64 %.val10.i.i, %.val.i.i     ; 3 uses
  %..i.i = select i1 %i.ct, ptr %i.co, ptr %i.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(56) %..i.i, i64 56, i1 false), !alias.scope !29681, !noalias !29684
  %i.cu = xor i1 %i.ct, true
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %i.cv ; 3 uses
  %i.cx = zext i1 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [56 x i8], ptr %i.cp, i64 %i.cx ; 3 uses
  %i.cz = icmp eq ptr %i.cw, %i.bu
  %i.da = icmp eq ptr %i.cy, %2
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5mergeINtB3_10MergeStateTTjNtNtCs40k4W9msRzi_5alloc6string6StringbjEjEE10merge_downNCINvMNtB1h_5sliceSB1a_11sort_by_keyINtNtBb_3cmp7ReversejENCNvMs9_NtNtCs5ncyOgBbgdO_20datafusion_execution11memory_pool4poolINtB3b_18TrackConsumersPoolNtB3b_13FairSpillPoolE10report_tops_0E0ECsc85D0lJ81Z_16lance_datafusion.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.db = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.bu, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cj, %.critedge.i ] ; 3 uses
  %i.dc = phi ptr [ %i.di, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dd = getelementptr i8, ptr %.sroa.0.02.i.i, i64 48
  %.sroa.0.0.val.i.i = load i64, ptr %i.dd, align 8, !alias.scope !29679, !noalias !29685, !noundef !315
  %i.de = getelementptr i8, ptr %i.dc, i64 48
  %.val.i19.i = load i64, ptr %i.de, align 8, !alias.scope !29680, !noalias !29686, !noundef !315
  %i.df = icmp ult i64 %.val.i19.i, %.sroa.0.0.val.i.i ; 3 uses
end_hunk_0
