Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.10?download=true
inline.NumInlined: 666
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENCNvNtNtNtB1u_4plot15gnuplot_backend7summary6violin0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callTINtNtB2h_5boxed3BoxSdEB4H_ENCINvMsj_B2f_IB2d_B4G_E14extend_trustedBN_E0E0EB1u_:bb.a
.lr.ph.i.i.i.preheader49:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.06.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader49, %.lr.ph.i.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.sroa.0.06.i.i.i.ph, %.lr.ph.i.i.i.preheader49 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 8 ; 2 uses
  %i.ap = load double, ptr %.sroa.0.06.i.i.i, align 8, !noalias !416, !noundef !8
  %i.aq = fdiv double %i.ap, %i.ad
  store double %i.aq, ptr %.sroa.0.06.i.i.i, align 8, !noalias !416
  %i.ar = icmp eq ptr %i.ao, %i.ae
  br i1 %i.ar, label %.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !409

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.as = icmp eq i64 %i.u, 0
  br i1 %i.as, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i
  %i.at = shl nuw nsw i64 %i.u, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef 8) #21, !noalias !416
  br label %bb.j

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %middle.block, %bb.h
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i ; 4 uses
  store ptr %i.t, ptr %i.au, align 8, !noalias !417
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.u, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !417
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.v, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !417
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.w, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !417
  %i.av = add i64 %.val15.i, 1                    ; 2 uses
  %i.aw = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.g
  br i1 %i.ax, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_TINtNtB1K_5boxed3BoxSdEB3E_EuNCNvNtNtNtBX_4plot15gnuplot_backend7summary6violin0NCINvNvB2f_8for_each4callB3D_NCINvMsj_B1I_IB1G_B3D_E14extend_trustedINtB35_3MapBF_B46_EE0E0E0EBX_.exit, label %bb.d

bb.j:                                             ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.y, %bb.i ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSdEECs7NzLGBMhIGf_9criterion.exit.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !415
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterRTRNtNtCs7NzLGBMhIGf_9criterion6report11BenchmarkIdINtNtCscdodAO9FK5_5alloc3vec3VecdEEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2l_8adapters3map8map_foldRBQ_TINtNtB1K_5boxed3BoxSdEB3E_EuNCNvNtNtNtBX_4plot15gnuplot_backend7summary6violin0NCINvNvB2f_8for_each4callB3D_NCINvMsj_B1I_IB1G_B3D_E14extend_trustedINtB35_3MapBF_B46_EE0E0E0EBX_.exit: ; preds = %.loopexit.i, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.av, %.loopexit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !415
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRdyNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0EB1w_4foldTyB2k_ENCINvNvB1w_6max_by4foldB3C_INvB1u_7compareB2k_yEE0EB2x_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality !guid !424 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.05.0.i = phi i64 [ 0, %.new ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi ptr [ %3, %.new ], [ %.sroa.3.0.i.i.i.i.1, %bb.c ]
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i.i.i.i.1, %bb.c ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !alias.scope !425, !noalias !426, !noundef !8
  %i.i = tail call noundef i64 @llvm.fptoui.sat.i64.f64(double %i.h) ; 2 uses
  %i.j = icmp ugt i64 %.sroa.02.0.i, %i.i
  %.sroa.3.0.i.i.i.i = select i1 %i.j, ptr %.sroa.6.0.i, ptr %i.g
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.i, i64 %i.i) ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !alias.scope !425, !noalias !426, !noundef !8
  %i.n = tail call noundef i64 @llvm.fptoui.sat.i64.f64(double %i.m) ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.n
  %.sroa.3.0.i.i.i.i.1 = select i1 %i.o, ptr %.sroa.3.0.i.i.i.i, ptr %i.l ; 3 uses
  %.sroa.0.0.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 %i.n) ; 3 uses
  %i.p = add nuw i64 %.sroa.05.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.q = and i64 %i.d, 8
  %lcmp.mod.not = icmp eq i64 %i.q, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.05.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ]
  %.sroa.6.0.i.epil.init = phi ptr [ %3, %bb.b ], [ %.sroa.3.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i.epil.init ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !alias.scope !425, !noalias !426, !noundef !8
  %i.t = tail call noundef i64 @llvm.fptoui.sat.i64.f64(double %i.s) ; 2 uses
  %i.u = icmp ugt i64 %.sroa.02.0.i.epil.init, %i.t
  %.sroa.3.0.i.i.i.i.epil = select i1 %i.u, ptr %.sroa.6.0.i.epil.init, ptr %i.r
  %.sroa.0.0.i.i.i.i.epil = tail call i64 @llvm.umax.i64(i64 %.sroa.02.0.i.epil.init, i64 %i.t)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa, %bb.a
  %.pn20.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %.epil.preheader ]
  %.pn18.i = phi ptr [ %3, %bb.a ], [ %.sroa.3.0.i.i.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTyRdENCINvNtNtBY_8adapters3map8map_foldB1E_B1C_B1C_NCINvNvBS_10max_by_key3keyB1E_yNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend3pdf3pdf0E0NCINvNvBS_6max_by4foldB1C_INvB2w_7compareB1E_yEE0E0EB36_.exit.loopexit.unr-lcssa ], [ %.sroa.3.0.i.i.i.i.epil, %.epil.preheader ]
  %.pn.i = insertvalue { i64, ptr } poison, i64 %.pn20.i, 0
  %.merged.i = insertvalue { i64, ptr } %.pn.i, ptr %.pn18.i, 1
  ret { i64, ptr } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB1u_3KdedNtNtB1u_6kernel8GaussianE3map0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB31_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4e_3VecdE14extend_trustedBN_E0E0EB1A_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !435 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !11, !noundef !8
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2k_3KdedNtNtB2k_6kernel8GaussianE3map0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.n, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.k, align 8, !noalias !436, !noundef !8
  %i.l = invoke noundef double @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2_3KdedNtNtB2_6kernel8GaussianE8estimateB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, double noundef %.val16.i)
          to label %bb.d unwind label %bb.e, !noalias !436

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  store double %i.l, ptr %i.m, align 8, !noalias !437
  %i.n = add i64 %.val15.i, 1                     ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2k_3KdedNtNtB2k_6kernel8GaussianE3map0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !436
  resume { ptr, i32 } %i.q

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate3kdeINtB2k_3KdedNtNtB2k_6kernel8GaussianE3map0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4o_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.n, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !436
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1u_6SampledE14median_abs_devs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2X_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4a_3VecdE14extend_trustedBN_E0E0EB1A_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !452 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !11, !noundef !8 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %2 = getelementptr i8, ptr %i.e, i64 8
  %bound0.a = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0.a, %bound1
  %bound08 = icmp ult ptr %i.l, %2
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = load double, ptr %i.e, align 8, !alias.scope !453, !noalias !454
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !alias.scope !455, !noalias !456
  %wide.load11 = load <2 x double>, ptr %i.s, align 8, !alias.scope !455, !noalias !456
  %i.t = fsub <2 x double> %wide.load, %broadcast.splat
  %i.u = fsub <2 x double> %wide.load11, %broadcast.splat
  %i.v = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.t)
  %i.w = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.u)
  %i.x = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.v, ptr %i.x, align 8, !alias.scope !457, !noalias !458
  store <2 x double> %i.w, ptr %i.y, align 8, !alias.scope !457, !noalias !458
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !450

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.aa = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.ab, align 8, !noalias !456, !noundef !8
  %i.ac = load double, ptr %i.e, align 8, !noalias !454, !noundef !8
  %i.ad = fsub double %.val16.i.prol, %i.ac
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.ae, ptr %i.af, align 8, !noalias !459
  %i.ag = add i64 %.ph, 1                         ; 2 uses
  %i.ah = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.j, %.neg
  br i1 %i.ai, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aj = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.ak, align 8, !noalias !456, !noundef !8
  %i.al = load double, ptr %i.e, align 8, !noalias !454, !noundef !8
  %i.am = fsub double %.val16.i, %i.al
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.am)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  store double %i.an, ptr %i.ao, align 8, !noalias !459
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val16.i.1 = load double, ptr %i.aq, align 8, !noalias !456, !noundef !8
  %i.ar = load double, ptr %i.e, align 8, !noalias !454, !noundef !8
  %i.as = fsub double %.val16.i.1, %i.ar
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store double %i.at, ptr %i.av, align 8, !noalias !459
  %i.aw = add i64 %i.aj, 2                        ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.j
  br i1 %i.ay, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit, label %scalar.ph, !llvm.loop !451

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2k_6SampledE14median_abs_devs_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4k_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2q_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !456
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !474 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !11, !noundef !8 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %2 = getelementptr i8, ptr %i.e, i64 8
  %bound0.a = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0.a, %bound1
  %bound08 = icmp ult ptr %i.l, %2
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = load double, ptr %i.e, align 8, !alias.scope !475, !noalias !476
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !alias.scope !477, !noalias !478
  %wide.load11 = load <2 x double>, ptr %i.s, align 8, !alias.scope !477, !noalias !478
  %i.t = fmul <2 x double> %wide.load, splat (double 4.500000e-01)
  %i.u = fmul <2 x double> %wide.load11, splat (double 4.500000e-01)
  %i.v = fadd <2 x double> %i.t, %broadcast.splat
  %i.w = fadd <2 x double> %i.u, %broadcast.splat
  %i.x = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.v, ptr %i.x, align 8, !alias.scope !479, !noalias !480
  store <2 x double> %i.w, ptr %i.y, align 8, !alias.scope !479, !noalias !480
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.aa = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.ab, align 8, !noalias !478, !noundef !8
  %i.ac = load double, ptr %i.e, align 8, !noalias !476, !noundef !8
  %i.ad = fmul double %.val16.i.prol, 4.500000e-01
  %i.ae = fadd double %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.ae, ptr %i.af, align 8, !noalias !481
  %i.ag = add i64 %.ph, 1                         ; 2 uses
  %i.ah = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.j, %.neg
  br i1 %i.ai, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aj = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.ak, align 8, !noalias !478, !noundef !8
  %i.al = load double, ptr %i.e, align 8, !noalias !476, !noundef !8
  %i.am = fmul double %.val16.i, 4.500000e-01
  %i.an = fadd double %i.am, %i.al
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  store double %i.an, ptr %i.ao, align 8, !noalias !481
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val16.i.1 = load double, ptr %i.aq, align 8, !noalias !478, !noundef !8
  %i.ar = load double, ptr %i.e, align 8, !noalias !476, !noundef !8
  %i.as = fmul double %.val16.i.1, 4.500000e-01
  %i.at = fadd double %i.as, %i.ar
  %i.au = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store double %i.at, ptr %i.av, align 8, !noalias !481
  %i.aw = add i64 %i.aj, 2                        ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.j
  br i1 %i.ay, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !473

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins4_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !478
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !496 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !11, !noundef !8 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %2 = getelementptr i8, ptr %i.e, i64 8
  %bound0.a = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0.a, %bound1
  %bound08 = icmp ult ptr %i.l, %2
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = load double, ptr %i.e, align 8, !alias.scope !497, !noalias !498
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !alias.scope !499, !noalias !500
  %wide.load11 = load <2 x double>, ptr %i.s, align 8, !alias.scope !499, !noalias !500
  %i.t = fmul <2 x double> %wide.load, splat (double 4.500000e-01)
  %i.u = fmul <2 x double> %wide.load11, splat (double 4.500000e-01)
  %i.v = fsub <2 x double> %broadcast.splat, %i.t
  %i.w = fsub <2 x double> %broadcast.splat, %i.u
  %i.x = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.v, ptr %i.x, align 8, !alias.scope !501, !noalias !502
  store <2 x double> %i.w, ptr %i.y, align 8, !alias.scope !501, !noalias !502
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !494

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.aa = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.ab, align 8, !noalias !500, !noundef !8
  %i.ac = load double, ptr %i.e, align 8, !noalias !498, !noundef !8
  %i.ad = fmul double %.val16.i.prol, 4.500000e-01
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.ae, ptr %i.af, align 8, !noalias !503
  %i.ag = add i64 %.ph, 1                         ; 2 uses
  %i.ah = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ah, %scalar.ph.prol ]
  %i.ai = icmp eq i64 %i.j, %.neg
  br i1 %i.ai, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aj = phi i64 [ %i.aw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ax, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.ak, align 8, !noalias !500, !noundef !8
  %i.al = load double, ptr %i.e, align 8, !noalias !498, !noundef !8
  %i.am = fmul double %.val16.i, 4.500000e-01
  %i.an = fsub double %i.al, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  store double %i.an, ptr %i.ao, align 8, !noalias !503
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val16.i.1 = load double, ptr %i.aq, align 8, !noalias !500, !noundef !8
  %i.ar = load double, ptr %i.e, align 8, !noalias !498, !noundef !8
  %i.as = fmul double %.val16.i.1, 4.500000e-01
  %i.at = fsub double %i.ar, %i.as
  %i.au = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.aj
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store double %i.at, ptr %i.av, align 8, !noalias !503
  %i.aw = add i64 %i.aj, 2                        ; 2 uses
  %i.ax = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.j
  br i1 %i.ay, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !495

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins5_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aw, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !500
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2D_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3Q_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !518 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !11, !noundef !8 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 3                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 3           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %2 = getelementptr i8, ptr %i.e, i64 8
  %bound0.a = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0.a, %bound1
  %bound08 = icmp ult ptr %i.l, %2
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2305843009213693948      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.p = load double, ptr %i.e, align 8, !alias.scope !519, !noalias !520
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x double>, ptr %i.r, align 8, !alias.scope !521, !noalias !522
  %wide.load11 = load <2 x double>, ptr %i.s, align 8, !alias.scope !521, !noalias !522
  %i.t = fmul <2 x double> %wide.load, %broadcast.splat
  %i.u = fmul <2 x double> %wide.load11, %broadcast.splat
  %i.v = getelementptr [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> %i.t, ptr %i.v, align 8, !alias.scope !523, !noalias !524
  store <2 x double> %i.u, ptr %i.w, align 8, !alias.scope !523, !noalias !524
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !516

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.o, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.y = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val16.i.prol = load double, ptr %i.z, align 8, !noalias !522, !noundef !8
  %i.aa = load double, ptr %i.e, align 8, !noalias !520, !noundef !8
  %i.ab = fmul double %.val16.i.prol, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store double %i.ab, ptr %i.ac, align 8, !noalias !525
  %i.ad = add i64 %.ph, 1                         ; 2 uses
  %i.ae = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ad, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %i.af = icmp eq i64 %i.j, %.neg
  br i1 %i.af, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ag = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load double, ptr %i.ah, align 8, !noalias !522, !noundef !8
  %i.ai = load double, ptr %i.e, align 8, !noalias !520, !noundef !8
  %i.aj = fmul double %.val16.i, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag
  store double %i.aj, ptr %i.ak, align 8, !noalias !525
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val16.i.1 = load double, ptr %i.am, align 8, !noalias !522, !noundef !8
  %i.an = load double, ptr %i.e, align 8, !noalias !520, !noundef !8
  %i.ao = fmul double %.val16.i.1, %i.an
  %i.ap = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ag
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store double %i.ao, ptr %i.aq, align 8, !noalias !525
  %i.ar = add i64 %i.ag, 2                        ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.j
  br i1 %i.at, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !517

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCNvNtNtNtCs7NzLGBMhIGf_9criterion4plot15gnuplot_backend7summary6violins6_0NCINvNvBS_8for_each4calldNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB40_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ar, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !522
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECs7NzLGBMhIGf_9criterion(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !534 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %i.l = add i64 %i.i, -1
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.n = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ab, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val16.i = load i8, ptr %i.o, align 1, !noalias !535, !noundef !8 ; 2 uses
  %i.p = load i8, ptr %i.e, align 1, !noalias !536, !noundef !8
  %i.q = icmp eq i8 %.val16.i, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.g, align 1, !noalias !536, !noundef !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !537
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !535, !noundef !8 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !536, !noundef !8
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !536, !noundef !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !537
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !535, !noundef !8 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !536, !noundef !8
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !536, !noundef !8
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !537
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs7NzLGBMhIGf_9criterion.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !535
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionReEENCNvMs1_NtCs7NzLGBMhIGf_9criterion4htmlNtB2i_14BenchmarkGroup3news3_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_IB1L_NtNtBc_7convert10InfallibleEEB3i_8try_folduNCINvNvB3i_12try_for_each4callNtB2i_10ReportLinkINtNtNtBc_3ops12control_flow11ControlFlowB5M_ENcNtB64_5Break0E0B64_E0IB65_B64_EEB2k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !551 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
end_hunk_0
