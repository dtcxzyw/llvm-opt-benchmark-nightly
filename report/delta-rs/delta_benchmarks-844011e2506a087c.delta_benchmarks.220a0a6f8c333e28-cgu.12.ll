inline.NumInlined: 3464
inline.NumDeleted: 846
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers17stmt_data_loading18FileStagingCommandECs2VbMhdeEr66_16delta_benchmarks:bb.a
bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.d) #30
          to label %common.resume unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !27, !alias.scope !1341, !noundef !23
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs2VbMhdeEr66_16delta_benchmarks.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i), "nonnull"(ptr %.sroa.55.0.copyload.i.i.i) ]
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i18.i), "nonnull"(ptr %.sroa.55.0.copyload.i.i20.i) ]
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
end_hunk_0
begin_hunk_1_@_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !10091, !noalias !10094, !noundef !23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !10094, !noalias !10091, !noundef !23
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.i, label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10091, !noalias !10094, !noundef !23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !10094, !noalias !10091, !noundef !23
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.k, label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !10094, !noalias !10091, !nonnull !23, !noundef !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !10091, !noalias !10094, !nonnull !23, !noundef !23
  %i.am = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj, i64 noundef %i.z), !noalias !10096
  br i1 %i.am, label %bb.j, label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10091, !noalias !10094, !noundef !23
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !10094, !noalias !10091, !noundef !23
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !10094, !noalias !10091, !nonnull !23, !noundef !23
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !10091, !noalias !10094, !nonnull !23, !noundef !23
  %i.aw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.av, ptr noundef nonnull %i.at, i64 noundef %i.ae), !noalias !10096
  br label %_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2Y_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_12PartitioningNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.x, %bb.f ], [ %i.ar, %bb.j ], [ false, %bb.c ], [ %i.aw, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7BetweenNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !1436, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !1436, !noundef !23
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23
  %i.g = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g) #34
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !23, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !23, !noundef !23
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l) #34
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !23, !noundef !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !23, !noundef !23
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.r, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr3udfNtB2_9ScalarUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !23 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !23
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !23, !noundef !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !23, !noundef !23
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !518, !noundef !23 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !518, !noundef !23 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv2 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv2, i64 2, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.k
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.h, %bb.f, %bb.b, %bb.a, %bb.i, %bb.j, %bb.k, %bb.e
  %.sroa.0.0 = phi i1 [ %i.n, %bb.e ], [ false, %bb.a ], [ %i.aa, %bb.j ], [ false, %bb.f ], [ %i.w, %bb.i ], [ true, %bb.b ], [ %i.af, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m) #34
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !23, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !23, !noundef !23
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r) #34
  br i1 %i.s, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.a to i1
  %i.v = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.w = xor i1 %i.v, true
  br label %bb.c

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.t, align 8, !noundef !23
  %i.z = load i64, ptr %i.x, align 8, !noundef !23
  %i.aa = icmp eq i64 %i.y, %i.z
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !23, !noundef !23
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !23, !noundef !23
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae) #34
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #5 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10100)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10097, !noalias !10100, !noundef !23 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10100, !noalias !10097, !noundef !23
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !10100, !noalias !10097, !nonnull !23, !noundef !23
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !10097, !noalias !10100, !nonnull !23, !noundef !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i
  %.sroa.01.07.i.i = phi i64 [ %i.t, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.01.07.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.01.07.i.i
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !10102, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.o, align 8, !noalias !10102, !nonnull !23, !noundef !23 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.p, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i: ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.s = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.r), !noalias !10102
  br i1 %i.s, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %i.t = add nuw i64 %.sroa.01.07.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.w = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
  br i1 %i.w, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val3) ]
  %i.x = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.x, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ true, %bb.d ], [ %i.bs, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10106)
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10103, !noalias !10106, !nonnull !23, !noundef !23 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10106, !noalias !10103, !nonnull !23, !noundef !23 ; 4 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10111)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10108, !noalias !10113, !noundef !23 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !10111, !noalias !10114, !noundef !23
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !10111, !noalias !10114, !nonnull !23, !noundef !23
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !10108, !noalias !10113, !nonnull !23, !noundef !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = icmp eq i64 %i.ae, 0
  br i1 %i.ao, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.av, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.01.07.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !10115, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !10115, !nonnull !23, !noundef !23 ; 2 uses
  %i.ar = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.ar, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.au = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.at), !noalias !10115
  br i1 %i.au, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %i.av = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ay = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax), !noalias !10116
  br i1 %i.ay, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10103, !noalias !10106, !noundef !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10106, !noalias !10103, !noundef !23
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !10106, !noalias !10103, !nonnull !23, !noundef !23
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10103, !noalias !10106, !nonnull !23, !noundef !23
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !10116
  br i1 %i.bi, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !10103, !noalias !10106, !noundef !23 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !10106, !noalias !10103, !noundef !23
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !10106, !noalias !10103, !nonnull !23, !noundef !23
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !10103, !noalias !10106, !nonnull !23, !noundef !23
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !10116
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1P_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1272, !noundef !23 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !1272, !noundef !23
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.ck, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr534 = phi ptr [ %i.cj, %tailrecurse ], [ %1, %bb.a ] ; 14 uses
  %.tr33 = phi ptr [ %i.ch, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  switch i8 %i.d, label %default.unreachable68 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %bb.u, %bb.t, %bb.d, %bb.a, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.g, %bb.f, %bb.e, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.i, %bb.b ], [ %i.n, %bb.c ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.p ], [ %i.ai, %bb.h ], [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ %i.ar, %bb.k ], [ false, %bb.f ], [ false, %bb.o ], [ false, %bb.m ], [ %i.af, %bb.g ], [ false, %bb.e ], [ %i.bx, %bb.s ], [ %.mux.i, %bb.q ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.t ], [ false, %bb.u ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable68:                            ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23
  %i.g = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !23, !noundef !23
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.h) #34
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !23, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXs1v_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.m) #34
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr33, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %.tr534, i64 2
  %.val = load i8, ptr %i.o, align 1, !range !186, !noundef !23
  %.val2 = load i8, ptr %i.p, align 1, !range !186, !noundef !23
  %i.q = icmp eq i8 %.val, %.val2
  br i1 %i.q, label %bb.t, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10120)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr33, i64 32
  %i.s = load i8, ptr %i.r, align 8, !range !1436, !alias.scope !10117, !noalias !10120, !noundef !23
  %i.t = getelementptr inbounds nuw i8, ptr %.tr534, i64 32
  %i.u = load i8, ptr %i.t, align 8, !range !1436, !alias.scope !10120, !noalias !10117, !noundef !23
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.tr33, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !10117, !noalias !10120, !noundef !23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.tr534, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !10120, !noalias !10117, !noundef !23
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr534, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !10120, !noalias !10117, !nonnull !23, !noundef !23
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr33, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !10117, !noalias !10120, !nonnull !23, !noundef !23
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ac, i64 noundef %i.x), !noalias !10122
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ah) #34
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.al = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ak) #34
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ao = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.an) #34
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aq) #34
  br label %_RNvXse7_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
end_hunk_1
begin_hunk_2_@_RNvXs1v_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  br i1 %i.cz, label %bb.ap, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !range !29, !noundef !23
  %.not21 = icmp eq i64 %i.db, -9223372036854775807
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !range !29, !noundef !23
  %i.de = icmp eq i64 %i.dd, -9223372036854775807 ; 2 uses
  br i1 %.not21, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.de, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  br i1 %i.de, label %bb.at, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.df = tail call fastcc noundef zeroext i1 @_RNvXseL_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dc) #34
  br i1 %i.df, label %bb.at, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !23 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.dj = load i64, ptr %i.di, align 8, !noundef !23
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.au, label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.o, %bb.l, %bb.j, %bb.u, %bb.r, %bb.n, %_RNvXsb5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.q, %bb.e, %bb.d, %bb.as, %bb.ao, %bb.aj, %bb.ad, %bb.z, %bb.v, %_RNvXsbf_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.at, %bb.c, %bb.f, %bb.i, %bb.y, %bb.ac, %bb.af, %bb.ai, %bb.am, %bb.ar, %bb.b, %bb.h, %bb.x, %bb.ab, %bb.ae, %bb.ah, %bb.al, %bb.an, %bb.aq, %bb.au
  %.sroa.0.0 = phi i1 [ %i.dp, %bb.au ], [ false, %bb.c ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.ar ], [ false, %bb.am ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.y ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.at ], [ false, %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.as ], [ false, %_RNvXsbf_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.e ], [ false, %bb.v ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.aj ], [ false, %bb.ao ], [ false, %bb.d ], [ false, %bb.q ], [ false, %_RNvXsb5_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_11OrderByKindNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.n ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.o ]
  ret i1 %.sroa.0.0

bb.au:                                            ; preds = %bb.at
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !23, !noundef !23
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !23, !noundef !23
  %i.dp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dm, i64 noundef %i.dh)
  br label %_RNvXs3l_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !23, !noundef !23
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #34
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !1436, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !1436, !noundef !23
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #34
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !23, !noundef !23 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !23, !noundef !23 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bk, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10334, !noalias !10337, !nonnull !23, !noundef !23 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !10337, !noalias !10334, !nonnull !23, !noundef !23 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10342)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10339, !noalias !10344, !noundef !23 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !10342, !noalias !10345, !noundef !23
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !10342, !noalias !10345, !nonnull !23, !noundef !23
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !10339, !noalias !10344, !nonnull !23, !noundef !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = icmp eq i64 %i.w, 0
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.an, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.01.07.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !10346, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !10346, !nonnull !23, !noundef !23 ; 2 uses
  %i.aj = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.aj, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.am = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.al), !noalias !10346
  br i1 %i.am, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %i.an = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.w
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aq = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap), !noalias !10347
  br i1 %i.aq, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !10334, !noalias !10337, !noundef !23 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10337, !noalias !10334, !noundef !23
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !10337, !noalias !10334, !nonnull !23, !noundef !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !10334, !noalias !10337, !nonnull !23, !noundef !23
  %i.ba = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ax, i64 noundef %i.as), !noalias !10347
  br i1 %i.ba, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10334, !noalias !10337, !noundef !23 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !10337, !noalias !10334, !noundef !23
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10337, !noalias !10334, !nonnull !23, !noundef !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !10334, !noalias !10337, !nonnull !23, !noundef !23
  %i.bk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh, i64 noundef %i.bc), !noalias !10347
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !414, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !414, !noundef !23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10351)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !1436, !alias.scope !10348, !noalias !10351, !noundef !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !1436, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !10351, !noalias !10348, !nonnull !23, !noundef !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !10348, !noalias !10351, !nonnull !23, !noundef !23
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !10353, !inline_history !10354
  br i1 %i.ab, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !10351, !noalias !10348, !nonnull !23, !noundef !23
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !10348, !noalias !10351, !nonnull !23, !noundef !23
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !10353, !inline_history !10354
  br i1 %i.al, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = load i64, ptr %i.am, align 16, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !10351, !noalias !10348, !noundef !23
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !10351, !noalias !10348, !nonnull !23, !noundef !23
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !10348, !noalias !10351, !nonnull !23, !noundef !23
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an), !noalias !10353, !inline_history !10354
  br i1 %i.av, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #34, !inline_history !10354
  br i1 %i.aw, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !10348, !noalias !10351, !align !1488, !noundef !23 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !10351, !noalias !10348, !align !1488, !noundef !23 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba) #34, !inline_history !10354
  br i1 %i.bc, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.be = load i8, ptr %i.bd, align 1, !range !1557, !alias.scope !10348, !noalias !10351, !noundef !23 ; 2 uses
  %.not5.i = icmp eq i8 %i.be, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bg = load i8, ptr %i.bf, align 1, !range !1557, !alias.scope !10351, !noalias !10348, !noundef !23 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.be, %i.bg
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bg, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bi, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bh, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !23 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !23
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !23, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !23, !noundef !23
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.b)
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.q) #34
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = load i64, ptr %0, align 8, !range !414, !noundef !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.s to i1
  %i.v = load i64, ptr %1, align 8, !range !414, !noundef !23
  %i.w = trunc nuw i64 %i.v to i1                 ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.a, %bb.h, %bb.i
  %.sroa.0.0 = phi i1 [ %i.ab, %bb.i ], [ false, %bb.b ], [ %i.x, %bb.h ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.i, label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = xor i1 %i.w, true
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.t, align 8, !noundef !23
  %i.aa = load i64, ptr %i.y, align 8, !noundef !23
  %i.ab = icmp eq i64 %i.z, %i.aa
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.b = load i8, ptr %i.a, align 8, !range !1436, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.d = load i8, ptr %i.c, align 8, !range !1436, !noundef !23
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsdD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2425
  %i.g = load i8, ptr %i.f, align 1, !range !1436, !noundef !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2425
  %i.i = load i8, ptr %i.h, align 1, !range !1436, !noundef !23
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXsdD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.g = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f)
  br i1 %i.g, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit._crit_edge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit._crit_edge: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit ], [ true, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread ]
  ret i1 %.lcssa

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %.lr.ph, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.h = add nuw i64 %.sroa.01.07, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %2
  br i1 %exitcond.not, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread
  %.sroa.01.06 = phi i64 [ %i.j, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.06
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10397)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !10394, !noalias !10397, !nonnull !23, !noundef !23 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !10397, !noalias !10394, !nonnull !23, !noundef !23 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.h) #34, !noalias !10399, !inline_history !10400
  br i1 %i.i, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit._crit_edge

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit._crit_edge: ; preds = %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit ], [ true, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread ]
  ret i1 %.lcssa

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %.lr.ph, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.j = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6
  %.sroa.01.09 = phi i64 [ %i.bd, %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [336 x i8], ptr %0, i64 %.sroa.01.09 ; 11 uses
  %i.c = getelementptr inbounds nuw [336 x i8], ptr %1, i64 %.sroa.01.09 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10404)
  %i.d = load i8, ptr %i.b, align 8, !range !6293, !alias.scope !10401, !noalias !10404, !noundef !23 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !6293, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !1436, !alias.scope !10401, !noalias !10404, !noundef !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !1436, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !1436, !alias.scope !10401, !noalias !10404, !noundef !23
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.o = load i8, ptr %i.n, align 1, !range !1436, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !1436, !alias.scope !10401, !noalias !10404, !noundef !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !range !1436, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !1436, !alias.scope !10401, !noalias !10404, !noundef !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.y = load i8, ptr %i.x, align 1, !range !1436, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !1436, !alias.scope !10401, !noalias !10404, !noundef !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !1436, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10409)
  %i.ah = load i64, ptr %i.af, align 8, !range !131, !alias.scope !10411, !noalias !10412, !noundef !23
  %i.ai = icmp eq i64 %i.ah, 69                   ; 2 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !131, !alias.scope !10412, !noalias !10411, !noundef !23
  %i.ak = icmp eq i64 %i.aj, 69                   ; 2 uses
  %i.al = xor i1 %i.ai, %i.ak
  br i1 %i.al, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond.i.i = or i1 %i.ai, %i.ak
  br i1 %or.cond.i.i, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ag) #34, !inline_history !10413
  br i1 %i.am, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !range !1436, !alias.scope !10401, !noalias !10404, !noundef !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !1436, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.ar = icmp eq i8 %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.at = load i8, ptr %i.as, align 1, !range !1436, !alias.scope !10401, !noalias !10404, !noundef !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !1436, !alias.scope !10404, !noalias !10401, !noundef !23
  %i.aw = icmp eq i8 %i.at, %i.av
  br i1 %i.aw, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ay) #34, !inline_history !10414
  br i1 %i.az, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.bb) #34, !inline_history !10414
  br i1 %i.bc, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6, %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.lr.ph, %bb.h, %bb.c, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.c ], [ false, %bb.h ], [ false, %.lr.ph ], [ false, %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ true, %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6 ]
  ret i1 %.lcssa

_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread6: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.c, %bb.i, %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.bd = add nuw i64 %.sroa.01.09, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %2
  br i1 %exitcond.not, label %_RNvXs5_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_10RoleOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9
  %.sroa.01.011 = phi i64 [ %i.j, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.011 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.011 ; 2 uses
  %.val = load i8, ptr %i.b, align 1, !noundef !23
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val5 = load ptr, ptr %i.d, align 8            ; 3 uses
  %.val6 = load i8, ptr %i.c, align 1, !noundef !23
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val7 = load ptr, ptr %i.e, align 8            ; 3 uses
  %.not.i = icmp eq i8 %.val, %.val6
  br i1 %.not.i, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5), "nonnull"(ptr %.val7) ]
  %i.f = icmp eq ptr %.val5, %.val7
  br i1 %i.f, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.i = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.h)
  br i1 %i.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit ], [ true, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9 ]
  ret i1 %.lcssa

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit
  %i.j = add nuw i64 %.sroa.01.011, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2f_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1 = load i64, ptr %i.a, align 8, !noundef !23 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val3 = load i64, ptr %i.b, align 8, !noundef !23
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !23, !noundef !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.e, align 8, !nonnull !23, !noundef !23
  %i.f = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %.val, ptr noundef nonnull %.val2, i64 noundef %.val1)
  br i1 %i.f, label %bb.b, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10418)
  %i.g = load i64, ptr %0, align 8, !range !518, !alias.scope !10415, !noalias !10418, !noundef !23 ; 4 uses
  %i.h = icmp ne i64 %i.g, 4
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i64 %i.g, -3
  %i.j = icmp samesign ugt i64 %i.g, 2
  %i.k = select i1 %i.j, i64 %i.i, i64 1          ; 2 uses
  %i.l = load i64, ptr %1, align 8, !range !518, !alias.scope !10418, !noalias !10415, !noundef !23 ; 4 uses
  %i.m = icmp ne i64 %i.l, 4
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i64 %i.l, -3
  %i.o = icmp samesign ugt i64 %i.l, 2
  %i.p = select i1 %i.o, i64 %i.n, i64 1
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %bb.c, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  switch i64 %i.k, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !10415, !noalias !10418, !noundef !23 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !10418, !noalias !10415, !noundef !23
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.x, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10423)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load i8, ptr %i.w, align 8, !range !1436, !alias.scope !10425, !noalias !10426, !noundef !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = load i8, ptr %i.y, align 8, !range !1436, !alias.scope !10426, !noalias !10425, !noundef !23
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10425, !noalias !10426, !noundef !23 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10426, !noalias !10425, !noundef !23
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !10426, !noalias !10425, !nonnull !23, !noundef !23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !10425, !noalias !10426, !nonnull !23, !noundef !23
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.ah, i64 %i.ac), !noalias !10427
  %i.ak = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ak, label %bb.i, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load i32, ptr %i.al, align 8, !range !1443, !alias.scope !10425, !noalias !10426, !noundef !23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 1114112
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !range !1443, !alias.scope !10426, !noalias !10425, !noundef !23 ; 2 uses
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.l, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = icmp eq i32 %i.ao, 1114112
  br i1 %i.aq, label %bb.l, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not4.i.i = icmp eq i64 %i.g, 2                ; 2 uses
  %i.ar = icmp eq i64 %i.l, 2                     ; 2 uses
  %brmerge.i.i = or i1 %.not4.i.i, %i.ar
  %.mux.i.i = and i1 %.not4.i.i, %i.ar
  br i1 %brmerge.i.i, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = tail call fastcc noundef zeroext i1 @_RNvXs2T_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_25AlterTypeAddValuePositionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) #34
  br label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10431)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10433, !noalias !10434, !noundef !23 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !10434, !noalias !10433, !noundef !23
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.o, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !10434, !noalias !10433, !nonnull !23, !noundef !23
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !10433, !noalias !10434, !nonnull !23, !noundef !23
  %bcmp.i6.i = tail call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull %i.az, i64 %i.au), !noalias !10435
  %i.bc = icmp eq i32 %bcmp.i6.i, 0
  br i1 %i.bc, label %bb.p, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load i32, ptr %i.bd, align 8, !range !1443, !alias.scope !10433, !noalias !10434, !noundef !23 ; 2 uses
  %.not.i7.i = icmp eq i32 %i.be, 1114112
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !range !1443, !alias.scope !10434, !noalias !10433, !noundef !23 ; 2 uses
  br i1 %.not.i7.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.s, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = icmp eq i32 %i.bg, 1114112
  br i1 %i.bi, label %bb.s, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !10433, !noalias !10434, !noundef !23 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !10434, !noalias !10433, !noundef !23
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.t, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !10434, !noalias !10433, !nonnull !23, !noundef !23
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !10433, !noalias !10434, !nonnull !23, !noundef !23
  %bcmp6.i.i = tail call i32 @bcmp(ptr nonnull %i.br, ptr nonnull %i.bp, i64 %i.bk), !noalias !10435
  %i.bs = icmp eq i32 %bcmp6.i.i, 0
  br i1 %i.bs, label %bb.u, label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bu = load i32, ptr %i.bt, align 8, !range !1443, !alias.scope !10433, !noalias !10434, !noundef !23 ; 2 uses
  %.not7.i.i = icmp eq i32 %i.bu, 1114112
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bw = load i32, ptr %i.bv, align 8, !range !1443, !alias.scope !10434, !noalias !10433, !noundef !23 ; 2 uses
  br i1 %.not7.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.u
  %i.by = icmp eq i32 %i.bw, 1114112
  br label %_RNvXs2p_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !10418, !noalias !10415, !nonnull !23, !noundef !23
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !10415, !noalias !10418, !nonnull !23, !noundef !23
end_hunk_3
begin_hunk_4_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !3946, !noundef !23 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !3946, !noundef !23
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.r, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i28, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.y, %bb.a, %bb.o, %bb.n, %bb.m, %bb.ao, %bb.an, %bb.al, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.l, %bb.k, %bb.ad, %bb.j, %bb.i, %bb.h, %bb.z, %bb.b, %bb.ap, %bb.am, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.m ], [ %i.ei, %bb.aa ], [ %.mux, %bb.y ], [ false, %bb.b ], [ true, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i ], [ true, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.z ], [ %i.el, %bb.ab ], [ true, %bb.h ], [ %i.eo, %bb.ac ], [ false, %bb.j ], [ %i.ew, %bb.ae ], [ true, %bb.i ], [ true, %bb.ad ], [ %i.ez, %bb.af ], [ true, %bb.k ], [ %i.fc, %bb.ag ], [ true, %bb.ao ], [ %i.fh, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ true, %bb.l ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ false, %bb.o ], [ %i.ft, %bb.ah ], [ false, %bb.a ], [ %i.fy, %bb.ai ], [ false, %bb.s ], [ %i.gd, %bb.aj ], [ false, %bb.t ], [ %i.gi, %bb.ak ], [ false, %bb.u ], [ false, %bb.w ], [ %i.gq, %bb.am ], [ false, %bb.v ], [ false, %bb.an ], [ %i.hb, %bb.ap ], [ true, %bb.al ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i ], [ false, %.lr.ph.i.i.i28 ], [ true, %.lr.ph ], [ false, %tailrecurse ], [ false, %bb.r ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.fm, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr3376 = phi ptr [ %i.fl, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr75 = phi ptr [ %i.fj, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.r
    i8 35, label %bb.s
    i8 36, label %bb.t
    i8 37, label %bb.u
    i8 38, label %bb.v
    i8 39, label %bb.w
    i8 40, label %bb.x
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !186, !noundef !23
  %i.g = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !186, !noundef !23
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !186, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !186, !noundef !23
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !186, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !186, !noundef !23
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !186, !noundef !23
  %i.v = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !186, !noundef !23
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !1557, !noundef !23
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !1557, !noundef !23
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr75, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !23
  %i.af = getelementptr inbounds nuw i8, ptr %.tr3376, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !23
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr75, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !23
  %i.au = getelementptr inbounds nuw i8, ptr %.tr3376, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !23
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ad, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.af

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !23, !noundef !23
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %.val20 = load i64, ptr %i.bj, align 8, !noundef !23 ; 3 uses
  %.val21 = load ptr, ptr %i.bi, align 8, !nonnull !23, !noundef !23
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %.val22 = load i64, ptr %i.bk, align 8, !noundef !23
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10521)
  %i.bn = icmp eq i64 %.val20, %.val22
  br i1 %i.bn, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = icmp eq i64 %.val20, 0
  br i1 %i.bo, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.bv, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.01.07.i.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !10518, !noalias !10521, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !10521, !noalias !10518, !nonnull !23, !noundef !23 ; 2 uses
  %i.br = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.br, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.bu = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bt), !noalias !10523
  br i1 %i.bu, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %.lr.ph.i.i.i
  %i.bv = add nuw nsw i64 %.sroa.01.07.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bv, %.val20
  br i1 %exitcond.not.i.i.i, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %.val23 = load ptr, ptr %i.bw, align 8, !nonnull !23, !noundef !23
  %i.by = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %.val24 = load i64, ptr %i.by, align 8, !noundef !23 ; 3 uses
  %.val25 = load ptr, ptr %i.bx, align 8, !nonnull !23, !noundef !23
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %.val26 = load i64, ptr %i.bz, align 8, !noundef !23
  %i.ca = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10527)
  %i.cc = icmp eq i64 %.val24, %.val26
  br i1 %i.cc, label %bb.p, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp eq i64 %.val24, 0
  br i1 %i.cd, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %bb.p, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9.i.i.i
  %.sroa.01.011.i.i.i = phi i64 [ %i.cm, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9.i.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %.sroa.01.011.i.i.i ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.sroa.01.011.i.i.i ; 2 uses
  %.val.i.i.i29 = load i8, ptr %i.ce, align 1, !alias.scope !10524, !noalias !10527, !noundef !23
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  %.val5.i.i.i30 = load ptr, ptr %i.cg, align 8, !alias.scope !10524, !noalias !10527 ; 3 uses
  %.val6.i.i.i = load i8, ptr %i.cf, align 1, !alias.scope !10527, !noalias !10524, !noundef !23
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  %.val7.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !10527, !noalias !10524 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i29, %.val6.i.i.i
  br i1 %.not.i.i.i.i, label %bb.q, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i30), "nonnull"(ptr %.val7.i.i.i) ]
  %i.ci = icmp eq ptr %.val5.i.i.i30, %.val7.i.i.i
  br i1 %i.ci, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9.i.i.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i: ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %.val5.i.i.i30, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.val7.i.i.i, i64 16
  %i.cl = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ck), !noalias !10529
  br i1 %i.cl, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9.i.i.i, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9.i.i.i: ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i, %bb.q
  %i.cm = add nuw nsw i64 %.sroa.01.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i31 = icmp eq i64 %i.cm, %.val24
  br i1 %exitcond.not.i.i.i31, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i28

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !23, !noundef !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !23, !noundef !23
  %i.cr = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #34
  br i1 %i.cr, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !23
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !23
  %i.cw = icmp eq i8 %i.ct, %i.cv
  br i1 %i.cw, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !23
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !noundef !23
  %i.db = icmp eq i8 %i.cy, %i.da
  br i1 %i.db, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !noundef !23
  %i.de = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.df = load i8, ptr %i.de, align 1, !noundef !23
  %i.dg = icmp eq i8 %i.dd, %i.df
  br i1 %i.dg, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !noundef !23
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !23
  %i.dl = icmp eq i8 %i.di, %i.dk
  br i1 %i.dl, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !range !1436, !noundef !23
  %i.do = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !range !1436, !noundef !23
  %i.dq = icmp eq i8 %i.dn, %i.dp
  br i1 %i.dq, label %bb.al, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.ao, label %bb.an

bb.y:                                             ; preds = %bb.b
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noundef !23 ; 2 uses
  %.not = icmp eq ptr %i.dx, null                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noundef !23 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.ea
  %.mux = and i1 %.not, %i.ea
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %i.ed = load i64, ptr %i.eb, align 8, !noundef !23 ; 2 uses
  %i.ee = load i64, ptr %i.ec, align 8, !noundef !23
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.aa, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.eh, ptr nonnull %i.eg, i64 %i.ed)
  %i.ei = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.el = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eo = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.en)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.et = icmp eq ptr %i.eq, %i.es
  br i1 %i.et, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ew = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ev)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ez = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ey)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fc = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fb)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread9.i.i.i, %bb.p
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !range !1436, !noundef !23
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !range !1436, !noundef !23
  %i.fh = icmp eq i8 %i.fe, %i.fg
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.fm = load i8, ptr %i.fj, align 8, !range !3946, !noundef !23 ; 2 uses
  %i.fn = load i8, ptr %i.fl, align 8, !range !3946, !noundef !23
  %i.fo = icmp eq i8 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.s
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !noundef !23
  %i.fr = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.fs = load i8, ptr %i.fr, align 2, !noundef !23
  %i.ft = icmp eq i8 %i.fq, %i.fs
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.t
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.fv = load i8, ptr %i.fu, align 2, !noundef !23
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.fx = load i8, ptr %i.fw, align 2, !noundef !23
  %i.fy = icmp eq i8 %i.fv, %i.fx
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.ga = load i8, ptr %i.fz, align 2, !noundef !23
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.gc = load i8, ptr %i.gb, align 2, !noundef !23
  %i.gd = icmp eq i8 %i.ga, %i.gc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.v
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.gf = load i8, ptr %i.ge, align 2, !noundef !23
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.gh = load i8, ptr %i.gg, align 2, !noundef !23
  %i.gi = icmp eq i8 %i.gf, %i.gh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.gn = icmp eq ptr %i.gk, %i.gm
  br i1 %i.gn, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gq = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gp)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.x
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
end_hunk_4
begin_hunk_5_@_RNvXsJ_NtNtCs4lawaffTVVK_9sqlparser3ast3dclNtB5_3UseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.p, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !10749, !noalias !10746, !nonnull !23, !noundef !23
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !10746, !noalias !10749, !nonnull !23, !noundef !23
  %i.bc = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.az, i64 noundef %i.au), !noalias !10751
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.bd, align 8, !noundef !23 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4 = load i64, ptr %i.be, align 8, !noundef !23
  %i.bf = icmp eq i64 %.val2, %.val4
  br i1 %i.bf, label %bb.r, label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load ptr, ptr %i.bg, align 8, !nonnull !23, !noundef !23
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !23, !noundef !23
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %.val, ptr noundef nonnull %.val3, i64 noundef %.val2)
  br label %_RNvXs3Z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10ObjectNameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !6213, !noundef !23 ; 3 uses
  %i.b = icmp ne i64 %i.a, 31
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -11
  %i.d = icmp samesign ugt i64 %i.a, 10
  %i.e = select i1 %i.d, i64 %i.c, i64 20         ; 2 uses
  %i.f = load i64, ptr %1, align 16, !range !6213, !noundef !23 ; 3 uses
  %i.g = icmp ne i64 %i.f, 31
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.em, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1490 = phi ptr [ %.tr14.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr89 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.w
    i64 11, label %bb.x
    i64 12, label %bb.y
    i64 13, label %bb.ah
    i64 14, label %bb.ai
    i64 15, label %bb.aj
    i64 16, label %bb.as
    i64 17, label %bb.at
    i64 18, label %bb.au
    i64 19, label %bb.av
    i64 20, label %bb.aw
    i64 21, label %bb.ax
    i64 22, label %bb.ay
    i64 23, label %bb.az
    i64 24, label %bb.ba
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.af, %bb.ab, %bb.z, %bb.aa, %bb.ad, %bb.ae, %bb.ag, %bb.ba, %bb.bb, %bb.bc, %bb.be, %bb.bf, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i, %bb.a, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %bb.v, %bb.u, %bb.t, %bb.s, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.q, %bb.o, %bb.n, %bb.l, %._crit_edge, %bb.j, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ai, %bb.ah, %bb.x, %bb.w, %bb.m, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.an ], [ %i.bj, %bb.m ], [ false, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i ], [ %i.dn, %bb.w ], [ %i.dq, %bb.x ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i ], [ %i.ev, %bb.ah ], [ %i.ey, %bb.ai ], [ false, %bb.al ], [ %i.gq, %bb.as ], [ %i.gt, %bb.at ], [ %i.gw, %bb.au ], [ %i.gz, %bb.av ], [ %i.ha, %bb.aw ], [ %i.hd, %bb.ax ], [ %i.hi, %bb.ay ], [ %i.hl, %bb.az ], [ true, %bb.aq ], [ true, %._crit_edge ], [ %i.bg, %bb.l ], [ false, %bb.j ], [ false, %bb.n ], [ true, %bb.o ], [ %i.dk, %bb.v ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.q ], [ %i.gn, %bb.ar ], [ false, %bb.ao ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ap ], [ false, %bb.a ], [ false, %bb.ba ], [ false, %bb.bc ], [ false, %bb.bb ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.be ], [ false, %bb.z ], [ false, %tailrecurse.backedge ], [ true, %bb.ag ], [ true, %bb.bf ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr89, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1490, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr89, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1490, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10755)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr89, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !10752, !noalias !10755, !noundef !23 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1490, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10755, !noalias !10752, !noundef !23
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1490, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !10755, !noalias !10752, !nonnull !23, !noundef !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr89, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !10752, !noalias !10755, !nonnull !23, !noundef !23
  %.not114.not = icmp eq i64 %i.ai, 0
  br i1 %.not114.not, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.k, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.thread
  %.sroa.01.0.i115 = phi i64 [ %i.ay, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.thread ], [ 0, %bb.k ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.01.0.i115
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.0.i115
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10757), !noalias !10760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10761), !noalias !10760
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !10757, !noalias !10763, !nonnull !23, !noundef !23 ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !10761, !noalias !10764, !nonnull !23, !noundef !23 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.thread, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %.lr.ph116
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.av, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.aw) #34, !noalias !10765, !inline_history !10766
  br i1 %i.ax, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.thread, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.thread: ; preds = %.lr.ph116, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.ay = add nuw i64 %.sroa.01.0.i115, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph116

._crit_edge:                                      ; preds = %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.thread, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.tr89, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !10752, !noalias !10755, !nonnull !23, !noundef !23 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1490, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !10755, !noalias !10752, !nonnull !23, !noundef !23 ; 2 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bf) #34, !noalias !10760, !inline_history !10767
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.bj = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bi)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %.val = load ptr, ptr %i.bk, align 8            ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr89, i64 16
  %.val2 = load i8, ptr %i.bm, align 8, !range !1436, !noundef !23
  %.val3 = load ptr, ptr %i.bl, align 8           ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr1490, i64 16
  %.val4 = load i8, ptr %i.bn, align 8, !range !1436, !noundef !23
  %i.bo = icmp eq i8 %.val2, %.val4
  br i1 %i.bo, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  %i.bp = icmp eq ptr %.val, %.val3
  br i1 %i.bp, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10771)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !10768, !noalias !10771, !nonnull !23, !noundef !23 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !10771, !noalias !10768, !nonnull !23, !noundef !23 ; 4 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10776)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !10773, !noalias !10778, !noundef !23 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !10776, !noalias !10779, !noundef !23
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cc = load ptr, ptr %i.ca, align 8, !alias.scope !10776, !noalias !10779, !nonnull !23, !noundef !23
  %i.cd = load ptr, ptr %i.cb, align 8, !alias.scope !10773, !noalias !10778, !nonnull !23, !noundef !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = icmp eq i64 %i.bw, 0
  br i1 %i.cg, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i
  %.sroa.01.07.i.i.i.i = phi i64 [ %i.cn, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.01.07.i.i.i.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.01.07.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !10780, !nonnull !23, !noundef !23 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.ci, align 8, !noalias !10780, !nonnull !23, !noundef !23 ; 2 uses
  %i.cj = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.cj, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.cm = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cl), !noalias !10780
  br i1 %i.cm, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = add nuw i64 %.sroa.01.07.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cn, %i.bw
  br i1 %exitcond.not.i.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs2VbMhdeEr66_16delta_benchmarks.exit.thread.i.i.i.i, %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cq = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cp), !noalias !10781
  br i1 %i.cq, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !10768, !noalias !10771, !noundef !23 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !10771, !noalias !10768, !noundef !23
  %i.cv = icmp eq i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.t, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !10771, !noalias !10768, !nonnull !23, !noundef !23
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !10768, !noalias !10771, !nonnull !23, !noundef !23
  %i.da = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cx, i64 noundef %i.cs), !noalias !10781
  br i1 %i.da, label %bb.u, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !10768, !noalias !10771, !noundef !23 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !10771, !noalias !10768, !noundef !23
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !10771, !noalias !10768, !nonnull !23, !noundef !23
  %i.di = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !10768, !noalias !10771, !nonnull !23, !noundef !23
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, i64 noundef %i.dc), !noalias !10781
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.dn = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dm) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.do = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.dq = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dp) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10785)
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr89, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !10782, !noalias !10785, !align !1488, !noundef !23 ; 2 uses
  %.not.i = icmp eq ptr %i.du, null
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr1490, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !10785, !noalias !10782, !align !1488, !noundef !23 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null                 ; 2 uses
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.dx, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  br i1 %i.dx, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.du, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dw) #34, !noalias !10787, !inline_history !10788
  br i1 %i.dy, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr89, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !10782, !noalias !10785, !align !1488, !noundef !23 ; 2 uses
  %.not5.i = icmp eq ptr %i.ea, null
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr1490, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !10785, !noalias !10782, !align !1488, !noundef !23 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null                 ; 2 uses
  br i1 %.not5.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ed, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.ed, label %bb.ag, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.ad
  %i.ee = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ec) #34, !noalias !10787, !inline_history !10788
  br i1 %i.ee, label %bb.ag, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ef = load ptr, ptr %i.dr, align 8, !alias.scope !10782, !noalias !10785, !nonnull !23, !noundef !23 ; 2 uses
  %i.eg = load ptr, ptr %i.ds, align 8, !alias.scope !10785, !noalias !10782, !nonnull !23, !noundef !23 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bf, %bb.ag
  %.pn = phi ptr [ %i.ef, %bb.ag ], [ %i.ik, %bb.bf ]
  %.pn117 = phi ptr [ %i.eg, %bb.ag ], [ %i.im, %bb.bf ]
  %.tr14.be = getelementptr inbounds nuw i8, ptr %.pn117, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.ei = load i64, ptr %.tr.be, align 16, !range !6213, !noundef !23 ; 3 uses
  %i.ej = icmp ne i64 %i.ei, 31
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = add nsw i64 %i.ei, -11
  %i.el = icmp samesign ugt i64 %i.ei, 10
  %i.em = select i1 %i.el, i64 %i.ek, i64 20      ; 2 uses
  %i.en = load i64, ptr %.tr14.be, align 16, !range !6213, !noundef !23 ; 3 uses
  %i.eo = icmp ne i64 %i.en, 31
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add nsw i64 %i.en, -11
  %i.eq = icmp samesign ugt i64 %i.en, 10
  %i.er = select i1 %i.eq, i64 %i.ep, i64 20
  %i.es = icmp eq i64 %i.em, %i.er
  br i1 %i.es, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.ev = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eu) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %.lr.ph
  %i.ew = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1490, i64 8
  %i.ey = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ex) #34
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10789)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10792)
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr89, i64 48
  %i.fa = load i8, ptr %i.ez, align 8, !range !1436, !alias.scope !10789, !noalias !10792, !noundef !23
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr1490, i64 48
  %i.fc = load i8, ptr %i.fb, align 8, !range !1436, !alias.scope !10792, !noalias !10789, !noundef !23
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br i1 %i.fd, label %bb.ak, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr89, i64 49
  %i.ff = load i8, ptr %i.fe, align 1, !range !1436, !alias.scope !10789, !noalias !10792, !noundef !23
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr1490, i64 49
  %i.fh = load i8, ptr %i.fg, align 1, !range !1436, !alias.scope !10792, !noalias !10789, !noundef !23
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br i1 %i.fi, label %bb.al, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
end_hunk_5
