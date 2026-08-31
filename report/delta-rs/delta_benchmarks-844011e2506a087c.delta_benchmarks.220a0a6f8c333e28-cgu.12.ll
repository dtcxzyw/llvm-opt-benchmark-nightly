Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.12?download=true
inline.NumInlined: 3464
inline.NumDeleted: 846
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading18FileStagingCommandECs2VbMhdeEr66_16delta_benchmarks:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void

bb.h:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.06 = phi ptr [ %i.z, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -8 ; 4 uses
  %.val9.i = load ptr, ptr %.sroa.0.06, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.val10.i = load ptr, ptr %i.d, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %i.e = getelementptr i8, ptr %.val9.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23
  %i.f = getelementptr i8, ptr %.val9.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.f, align 8, !noundef !23
  %i.g = getelementptr i8, ptr %.val10.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !23, !noundef !23
  %i.h = getelementptr i8, ptr %.val10.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.h, align 8, !noundef !23
  %i.i = tail call noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i.i, i64 noundef %.val3.i.i.i)
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %.sroa.0.06, align 8, !nonnull !23, !align !36, !noundef !23 ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i64, ptr %i.d, align 8
  store i64 %i.n, ptr %.sroa.0.06, align 8
  %i.o = icmp eq ptr %i.d, %0
  br i1 %i.o, label %._crit_edge17, label %.lr.ph16

bb.e:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.r, align 8
  store i64 %i.p, ptr %.sroa.0.0.i14, align 8
  %i.q = icmp eq ptr %i.r, %0
  br i1 %i.q, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.r, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -8 ; 4 uses
  %.val8.i = load ptr, ptr %i.r, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.val.i.i11.i = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23
  %.val1.i.i12.i = load i64, ptr %i.m, align 8, !noundef !23
  %i.s = getelementptr i8, ptr %.val8.i, i64 8
  %.val2.i.i13.i = load ptr, ptr %i.s, align 8, !nonnull !23, !noundef !23
  %i.t = getelementptr i8, ptr %.val8.i, i64 16
  %.val3.i.i14.i = load i64, ptr %i.t, align 8, !noundef !23
  %i.u = invoke noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i11.i, i64 noundef %.val1.i.i12.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.i13.i, i64 noundef %.val3.i.i14.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph16
  %i.v = icmp slt i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ]
  %i.w = ptrtoint ptr %i.k to i64
  store i64 %i.w, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1344
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %.lr.ph16
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = ptrtoint ptr %i.k to i64
  store i64 %i.y, ptr %.sroa.0.0.i14, align 8, !noalias !1349
  resume { ptr, i32 } %i.x

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailRNtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1o_NtB1X_4ExprEENCINvMNtB1s_5sliceSB1m_7sort_byNCINvMs_NtNtB1Z_12logical_plan7builderNtB3C_18LogicalPlanBuilder11window_planB2H_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 192153584101141163) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [24 x i8], align 8          ; 5 uses
  %i.c = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.c, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %.not14 = icmp samesign eq i64 %2, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %2
  %.val = load ptr, ptr %3, align 8, !nonnull !23, !align !36, !noundef !23 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.55.0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.66.0..sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.015 = phi ptr [ %i.e, %.lr.ph ], [ %i.an, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit ] ; 9 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.015, i64 -48 ; 3 uses
  %i.g = getelementptr i8, ptr %.sroa.0.015, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.015, i64 16 ; 2 uses
  %.val14.i = load i64, ptr %i.h, align 8, !noundef !23 ; 3 uses
  %i.i = getelementptr i8, ptr %.sroa.0.015, i64 -40
  %.val15.i = load ptr, ptr %i.i, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.0.015, i64 -32
  %.val16.i = load i64, ptr %i.j, align 8, !noundef !23 ; 3 uses
  %.val.i.i = load ptr, ptr %.val, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw [144 x i8], ptr %.val13.i, i64 %.val14.i
  %i.l = getelementptr inbounds nuw [144 x i8], ptr %.val15.i, i64 %.val16.i
  call void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %.val13.i, ptr noundef nonnull %i.k, ptr noundef nonnull %.val15.i, ptr noundef nonnull %i.l)
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i.i, i64 %.sroa.8.0.copyload.i.i.i)
  %exitcond.not.i.i.i53.not = icmp ult i64 %.sroa.66.0.copyload.i.i.i, %.sroa.8.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i53.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.m = add i64 %.sroa.66.0.i.i.i54, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader, %bb.e
  %.sroa.66.0.i.i.i54 = phi i64 [ %i.m, %bb.e ], [ %.sroa.66.0.copyload.i.i.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.66.0.i.i.i54
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %.sroa.55.0.copyload.i.i.i, i64 %.sroa.66.0.i.i.i54
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i.i)
  %i.q = tail call noundef i8 @_RNvNtCs8VI8w5SIoU4_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %bb.e, %bb.d
  %i.s = icmp ult i64 %.val16.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ult i64 %.val14.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign ult i64 %.val16.i, %.val14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.u, label %bb.f, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i
  %i.v = icmp eq i8 %i.q, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.v, label %bb.f, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.026.0.copyload.i = load i64, ptr %.sroa.0.015, align 8 ; 2 uses
  %.sroa.427.0.copyload.i = load ptr, ptr %i.g, align 8 ; 5 uses
  %.sroa.528.0.copyload.i = load i64, ptr %i.h, align 8 ; 5 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.015, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.w = icmp eq ptr %i.f, %0
  br i1 %i.w, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.427.0.copyload.i) ]
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %.sroa.427.0.copyload.i, i64 %.sroa.528.0.copyload.i
  %i.y = icmp ult i64 %.sroa.528.0.copyload.i, 64051194700380388
  br label %bb.g

bb.g:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.09.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.z, %.backedge.i ] ; 10 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -48 ; 3 uses
  %i.aa = getelementptr i8, ptr %.sroa.0.09.i, i64 -40
  %.val10.i = load ptr, ptr %i.aa, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.0.09.i, i64 -32
  %.val11.i = load i64, ptr %i.ab, align 8, !noundef !23 ; 3 uses
  %.val.i17.i = load ptr, ptr %.val, align 8      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %.val10.i, i64 %.val11.i
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E3newCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.sroa.427.0.copyload.i, ptr noundef nonnull %i.x, ptr noundef nonnull %.val10.i, ptr noundef nonnull %i.ac)
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.g
  %.sroa.0.0.copyload.i.i18.i = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.55.0.copyload.i.i20.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i19.i, align 8 ; 2 uses
  %.sroa.66.0.copyload.i.i22.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i21.i, align 8 ; 3 uses
  %.sroa.8.0.copyload.i.i24.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i23.i, align 8 ; 2 uses
  %umax.i.i25.i = tail call i64 @llvm.umax.i64(i64 %.sroa.66.0.copyload.i.i22.i, i64 %.sroa.8.0.copyload.i.i24.i)
  %exitcond.not.i.i27.i55.not = icmp ult i64 %.sroa.66.0.copyload.i.i22.i, %.sroa.8.0.copyload.i.i24.i
  br i1 %exitcond.not.i.i27.i55.not, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader: ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i18.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload.i.i20.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i17.i) ]
  br label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i

bb.h:                                             ; preds = %.noexc33.i
  %exitcond.not.i.i27.i = icmp eq i64 %i.ad, %umax.i.i25.i
  br i1 %exitcond.not.i.i27.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader, %bb.h
  %.sroa.66.0.i.i26.i56 = phi i64 [ %i.ad, %bb.h ], [ %.sroa.66.0.copyload.i.i22.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i.preheader ] ; 3 uses
  %i.ad = add i64 %.sroa.66.0.i.i26.i56, 1        ; 2 uses
  %i.ae = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i17.i)
          to label %.noexc32.i unwind label %.loopexit.i

.noexc32.i:                                       ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i
  %i.af = getelementptr inbounds nuw [144 x i8], ptr %.sroa.55.0.copyload.i.i20.i, i64 %.sroa.66.0.i.i26.i56
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0.copyload.i.i18.i, i64 %.sroa.66.0.i.i26.i56
  %i.ah = invoke noundef i8 @_RNvNtCs8VI8w5SIoU4_15datafusion_expr5utils17compare_sort_expr(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.ag, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %.noexc33.i unwind label %.loopexit.i ; 2 uses

.noexc33.i:                                       ; preds = %.noexc32.i
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.i

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i: ; preds = %bb.h, %.noexc.i
  %i.aj = icmp ult i64 %.val11.i, 64051194700380388
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.y)
  %i.ak = icmp samesign ult i64 %.val11.i, %.sroa.528.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ak, label %.backedge.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i

bb.i:                                             ; preds = %.noexc33.i
  %i.al = icmp eq i8 %i.ah, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.al, label %.backedge.i, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i

.backedge.i:                                      ; preds = %bb.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.09.i, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  %i.am = icmp eq ptr %i.z, %0
  br i1 %i.am, label %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i, label %bb.g

_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i: ; preds = %.backedge.i, %bb.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i, %bb.f
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.f ], [ %0, %.backedge.i ], [ %.sroa.0.09.i, %bb.i ], [ %.sroa.0.09.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31.i ] ; 4 uses
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !1354
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1354
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !1354
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

.loopexit.i:                                      ; preds = %.noexc32.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.i.i28.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.026.0.copyload.i, ptr %.sroa.0.09.i, align 8, !noalias !1359
  %.sroa.5.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8
  store ptr %.sroa.427.0.copyload.i, ptr %.sroa.5.0..sroa.0.0915.sroa_idx.i, align 8, !noalias !1359
  %.sroa.6.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 16
  store i64 %.sroa.528.0.copyload.i, ptr %.sroa.6.0..sroa.0.0915.sroa_idx.i, align 8, !noalias !1359
  %.sroa.7.0..sroa.0.0915.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.0.0915.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !1359
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIB1a_NtB1J_4ExprEENCINvMNtB1e_5sliceSB18_7sort_byNCINvMs_NtNtB1L_12logical_plan7builderNtB3o_18LogicalPlanBuilder11window_planB2t_E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, %_RNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSTINtNtB7_3vec3VecTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEIBA_NtBS_4ExprEE7sort_byNCINvMs_NtNtBU_12logical_plan7builderNtB28_18LogicalPlanBuilder11window_planB1C_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortbEEBW_EINtB5_7ZipImplBW_BW_E4nextCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i31._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.d
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1t_5sliceSB1m_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !noundef !23 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !noundef !23
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

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
  %.val8.i = load i64, ptr %i.h, align 8, !noundef !23
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !1364
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort11insert_tailTjINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMNtB1f_5sliceSB18_11sort_by_keyjNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s_0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #4 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep5 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !1374, !noalias !1377
  %wide.load6 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !1374, !noalias !1377
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !1377, !noalias !1369
  %wide.load8 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !1377, !noalias !1369
  store <2 x i64> %wide.load7, ptr %i.b, align 1, !alias.scope !1374, !noalias !1377
  store <2 x i64> %wide.load8, ptr %i.d, align 1, !alias.scope !1374, !noalias !1377
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !1377, !noalias !1369
  store <2 x i64> %wide.load6, ptr %i.e, align 1, !alias.scope !1377, !noalias !1369
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !1379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.g = or disjoint i64 %.sroa.0.04.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1, !alias.scope !1369, !noalias !1372
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1, !alias.scope !1372, !noalias !1369
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1, !alias.scope !1369, !noalias !1372
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1, !alias.scope !1372, !noalias !1369
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.g, %scalar.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.n, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1, !alias.scope !1369, !noalias !1372
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1, !alias.scope !1372, !noalias !1369
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1, !alias.scope !1369, !noalias !1372
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1, !alias.scope !1372, !noalias !1369
  %i.n = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1, !alias.scope !1382, !noalias !1384
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1, !alias.scope !1384, !noalias !1382
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1, !alias.scope !1382, !noalias !1384
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1, !alias.scope !1384, !noalias !1382
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !1386
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs11_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB7_4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_0
