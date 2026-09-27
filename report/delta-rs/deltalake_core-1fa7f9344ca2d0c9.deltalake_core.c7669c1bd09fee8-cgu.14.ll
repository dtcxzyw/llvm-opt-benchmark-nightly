Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.14?download=true
inline.NumInlined: 8054
inline.NumDeleted: 3226
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g) #55
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !29 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !29
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !29, !noundef !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !29, !noundef !29
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.r, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2T_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !29, !noundef !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call fastcc noundef i8 @_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f) #55 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !29 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !29, !noundef !29
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !29 ; 2 uses
  %.sroa.0.0.i8 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.p, i64 range(i64 0, 82351536043346213) %i.l) ; 2 uses
  %exitcond.not11 = icmp eq i64 %.sroa.0.0.i8, 0
  br i1 %exitcond.not11, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.sroa.01.0.i12, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %.sroa.0.0.i8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.l, i64 %i.p)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i12 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.j, i64 %.sroa.01.0.i12
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %.sroa.01.0.i12
  %i.u = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.t) #55, !inline_history !7 ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.c, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge, %bb.a
  %.sroa.0.0 = phi i8 [ %i.g, %bb.a ], [ %i.r, %._crit_edge ], [ %i.u, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !38, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !38, !noundef !29
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !29, !noundef !29
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !29, !noundef !29
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.i) #55
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !29 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !29
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !29, !noundef !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !29, !noundef !29
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.s, ptr noundef nonnull %i.q, i64 noundef %i.l)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2Y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29
  %i.e = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #55 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !29, !noundef !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !29 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !29, !noundef !29
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !29 ; 3 uses
  %.sroa.0.0.i9 = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.n, i64 range(i64 0, 82351536043346213) %i.j) ; 2 uses
  %exitcond.not13 = icmp eq i64 %.sroa.0.0.i9, 0
  br i1 %exitcond.not13, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.o = add nuw i64 %.sroa.01.0.i14, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %.sroa.0.0.i9
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i14 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %.sroa.01.0.i14
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.l, i64 %.sroa.01.0.i14
  %i.r = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q) #55, !inline_history !7 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b
  %i.t = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.j, i64 %i.n)
  %i.u = icmp eq i64 %i.j, %i.n
  br i1 %i.u, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.d:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 8, !range !38, !noundef !29
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i8, ptr %i.x, align 8, !range !38, !noundef !29
  %i.z = sub nsw i8 %i.w, %i.y
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.lr.ph, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.a, %bb.d
  %.sroa.0.0 = phi i8 [ %i.z, %bb.d ], [ %i.t, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.e, %bb.a ], [ %i.r, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny6as_anyB1a_(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @729, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny7any_refB1a_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @729, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny8into_anyB1a_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @729, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_ENtB5_5AsAny9type_nameB1a_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @730, i64 56 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @731, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @731, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @731, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @732, i64 117 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @733, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @733, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @733, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtB5_6engine7default13DefaultEngineNtNtNtBA_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @734, i64 118 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @735, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @735, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @735, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @736, i64 141 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @737, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @737, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @737, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default10filesystem25ObjectStoreStorageHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @738, i64 142 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @739, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @739, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @739, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @740, i64 128 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @741, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @741, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @741, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default4json18DefaultJsonHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @742, i64 129 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @743, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @743, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @743, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio23TokioBackgroundExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @744, i64 134 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @745, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @745, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @745, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelINtNtNtNtB5_6engine7default7parquet21DefaultParquetHandlerNtNtNtBC_8executor5tokio24TokioMultiThreadExecutorENtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @746, i64 135 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine16arrow_expression22ArrowEvaluationHandlerNtB5_5AsAny6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @747, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine16arrow_expression22ArrowEvaluationHandlerNtB5_5AsAny7any_refCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @747, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine16arrow_expression22ArrowEvaluationHandlerNtB5_5AsAny8into_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @747, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtB5_6engine16arrow_expression22ArrowEvaluationHandlerNtB5_5AsAny9type_nameCs14kWLkQVSKO_14deltalake_core(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @748, i64 62 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB5_5AsAny6as_anyBD_(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @749, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB5_5AsAny7any_refBD_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @749, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB5_5AsAny8into_anyBD_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @749, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore16default_logstore15DefaultLogStoreNtB5_5AsAny9type_nameBD_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @750, i64 59 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !29
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot13EagerSnapshotNtB5_16DataFusionMixins11read_schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14131)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !14131, !nonnull !29, !noundef !29 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !14131
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvXs0_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot8SnapshotNtB5_16DataFusionMixins11read_schema.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs0_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot8SnapshotNtB5_16DataFusionMixins11read_schema.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14131, !nonnull !29, !noundef !29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 696
  %i.j = load ptr, ptr %i.i, align 8, !noalias !14131, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.l = load i64, ptr %i.k, align 8, !noalias !14131, !noundef !29
  %i.m = tail call noundef nonnull ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.l, i1 noundef zeroext true), !noalias !14131
  ret ptr %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot13EagerSnapshotNtB5_16DataFusionMixins12input_schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14134)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !14134, !nonnull !29, !noundef !29 ; 2 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !14134
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvXs0_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot8SnapshotNtB5_16DataFusionMixins12input_schema.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs0_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot8SnapshotNtB5_16DataFusionMixins12input_schema.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14134, !nonnull !29, !noundef !29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 696
  %i.j = load ptr, ptr %i.i, align 8, !noalias !14134, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.l = load i64, ptr %i.k, align 8, !noalias !14134, !noundef !29
  %i.m = tail call noundef nonnull ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef %i.l, i1 noundef zeroext false), !noalias !14134
  ret ptr %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTableNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14137)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !14137, !nonnull !29, !noundef !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !14137, !nonnull !29, !align !39, !noundef !29 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !47, !invariant.load !29, !noalias !14137
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.i, -16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !29, !noalias !14137, !nonnull !29
  %i.o = tail call noundef nonnull align 8 ptr %i.n(ptr noundef nonnull %i.l) #55, !noalias !14137, !inline_history !129
  store ptr %i.o, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtCseo6ZV82fEK1_3url3UrlNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.43.0..sroa_idx, align 8
  %i.p = load ptr, ptr %1, align 8, !nonnull !29, !noundef !29
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !29, !align !39, !noundef !29
  %i.s = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.r, ptr noundef nonnull @751, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.s
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [48 x i8], align 8               ; 9 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [8 x i8], align 8                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [8 x i8], align 8                ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = load i64, ptr %0, align 16, !range !64, !noundef !29
  %i.bm = tail call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 -9223372036854775744)
  switch i64 %i.bm, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

bb.an:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.as

bb.ao:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.as

bb.ap:                                            ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.as

bb.aq:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.ay = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.bo, label %bb.bn

bb.ar:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.bq, label %bb.bp

bb.as:                                            ; preds = %bb.br, %bb.bn, %bb.bl, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.at:                                            ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noundef !29
  %i.bg = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.o
  %.sroa.5.0 = phi i64 [ undef, %bb.o ], [ %i.bf, %bb.at ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %i.bk, align 8
  store i8 13, ptr %0, align 8
  br label %bb.as

bb.av:                                            ; preds = %bb.at
  tail call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.bl, align 8
  store i8 27, ptr %0, align 8
  br label %bb.as

bb.ax:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.ad
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.bm, align 8
  store i8 28, ptr %0, align 8
  br label %bb.as

bb.az:                                            ; preds = %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %bb.ae
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !29
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bo, ptr %i.bq, align 4
  store i8 29, ptr %0, align 8
  br label %bb.as

bb.bb:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

bb.bc:                                            ; preds = %bb.af
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.br, align 8
  store i8 30, ptr %0, align 8
  br label %bb.as

bb.bd:                                            ; preds = %bb.af
  tail call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.bs, align 8
  store i8 31, ptr %0, align 8
  br label %bb.as

bb.bf:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.bg:                                            ; preds = %bb.ah
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.bu, align 8
  store i8 32, ptr %0, align 8
  br label %bb.as

bb.bh:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.bi:                                            ; preds = %bb.ai
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !range !38, !noundef !29
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bw, ptr %i.bz, align 1
  store i8 33, ptr %0, align 8
  br label %bb.as

bb.bj:                                            ; preds = %bb.ai
  tail call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.al, %bb.bk
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.bk ], [ %i.av, %bb.al ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #52
          to label %common.resume unwind label %bb.bm

bb.bl:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !14151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14151
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.cc, align 8
  store i8 34, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.as

bb.bm:                                            ; preds = %.body
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.bn:                                            ; preds = %bb.aq
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !38, !noundef !29
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cf, ptr %i.ch, align 1
  store i8 39, ptr %0, align 8
  br label %bb.as

bb.bo:                                            ; preds = %bb.aq
  tail call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.ar
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.ck = atomicrmw add ptr %i.cj, i64 1 monotonic, align 8
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.ar
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cj, ptr %i.cn, align 8
  store i8 40, ptr %0, align 8
  br label %bb.as

bb.bs:                                            ; preds = %bb.bp
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_NtCshmPyUV8PP35_6chrono6formatNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11description(ptr noalias readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @785, i64 41 }
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7plannerNtB5_21DeltaExtensionPlannerNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlanner14plan_extension(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noundef nonnull %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 1152921504606846976) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %7, i64 noundef range(i64 0, 576460752303423488) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1680) %9) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %5, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %6, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %7, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %8, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %9, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %i.k, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !14154
  %i.l = tail call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, 17) 8) #51, !noalias !14154 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7plannerNtBM_21DeltaExtensionPlannerNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlanner14plan_extension0E3newBQ_.exit, !prof !34

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7plannerNtBO_21DeltaExtensionPlannerNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlanner14plan_extension0EBS_(ptr noundef nonnull align 8 dereferenceable(120) %i.a) #52
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7plannerNtBM_21DeltaExtensionPlannerNtNtCs8Hz2sPNgbCO_10datafusion16physical_planner16ExtensionPlanner14plan_extension0E3newBQ_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.l, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @786, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array18logical_null_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !noundef !29
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array3len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !29
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array5nulls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !29
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @787, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array6offset(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array8is_empty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !29
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array9data_type(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !54, !noundef !29 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !54, !noundef !29 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775804
  tail call void @llvm.assume(i1 %i.g)
  %i.h = xor i64 %i.f, -9223372036854775808
  %i.i = icmp slt i64 %i.f, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 4
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %bb.r
    i64 6, label %bb.v
  ]

_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.a, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.0.i17, %bb.e ], [ false, %bb.a ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.p ], [ false, %bb.t ], [ %i.as, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ %i.ay, %bb.k ], [ false, %bb.m ], [ %i.ca, %bb.q ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.o ], [ %i.cu, %bb.u ], [ false, %bb.s ], [ false, %bb.r ], [ %i.da, %bb.w ], [ false, %bb.v ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load <2 x i8>, ptr %i.l, align 8
  %i.o = load <2 x i8>, ptr %i.m, align 8
  %i.p = icmp eq <2 x i8> %i.n, %i.o              ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %.sroa.0.0.i = select i1 %i.q, i1 %i.r, i1 false
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load <2 x i8>, ptr %i.s, align 8
  %i.v = load <2 x i8>, ptr %i.t, align 8
  %i.w = icmp eq <2 x i8> %i.u, %i.v              ; 2 uses
  %i.x = extractelement <2 x i1> %i.w, i64 0
  %i.y = extractelement <2 x i1> %i.w, i64 1
  %.sroa.0.0.i17 = select i1 %i.y, i1 %i.x, i1 false
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14166)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !14165, !noalias !14166, !noundef !29 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !14166, !noalias !14165, !noundef !29
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !14166, !noalias !14165, !nonnull !29, !noundef !29
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !14165, !noalias !14166, !nonnull !29, !noundef !29
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.af, i64 %i.aa), !noalias !14167
  %i.ai = icmp eq i32 %bcmp.i, 0
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan21maintains_input_order:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #50, !noalias !14626
  unreachable

_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan8children.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.f, ptr %i.d, align 8, !noalias !14626
  store i64 1, ptr %i.c, align 8, !alias.scope !14625, !noalias !14627
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.g, align 8, !alias.scope !14625, !noalias !14627
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.h, align 8, !alias.scope !14625, !noalias !14627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14628
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan8children.exit
  %i.i = load i64, ptr %i.a, align 8, !range !30, !noalias !14628, !noundef !29
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !31, !noalias !14628, !noundef !29 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.c, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !32

bb.c:                                             ; preds = %.noexc
  %i.n = load i64, ptr %i.m, align 8, !noalias !14628
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #50
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %bb.c
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.o = load ptr, ptr %i.m, align 8, !noalias !14628, !nonnull !29, !noundef !29
  %i.p = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14628
  store i64 %i.l, ptr %i.b, align 8, !noalias !14628
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !14628
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.r, align 8, !noalias !14628
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbE11extend_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.d, !noalias !14628

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %.body unwind label %bb.e, !noalias !14628

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !14628
  unreachable

bb.f:                                             ; preds = %bb.c, %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan8children.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.s, %bb.d ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #52
          to label %common.resume unwind label %bb.j

bb.g:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14628
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan23supports_limit_pushdown(ptr noalias noundef readonly align 8 captures(none) dereferenceable(384) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !align !39, !noundef !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !47, !invariant.load !29
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !29, !nonnull !29
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull %i.j) #55
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan27gather_filters_for_pushdown(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1, i1 zeroext %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14632)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !14633
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 8) #51, !noalias !14633 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #50
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.e, ptr %i.c, align 8, !noalias !14633
  store i64 1, ptr %i.a, align 8, !alias.scope !14632, !noalias !14634
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8, !alias.scope !14632, !noalias !14634
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.g, align 8, !alias.scope !14632, !noalias !14634
  invoke void @_RNvMs5_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_17FilterDescription13from_children(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %.thread unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.h:                                             ; preds = %bb.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.thread:                                          ; preds = %bb.f, %bb.d, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.l, %bb.i ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn6

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %.thread unwind label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan4name(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @974, i64 18 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %0) unnamed_addr #5 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @975, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(384) %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !29, !align !39, !noundef !29 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !47, !invariant.load !29
  %i.i = add nsw i64 %i.h, -1
  %i.j = and i64 %i.i, -16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !29, !nonnull !29
  call void %i.n(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.l, i64 noundef %2, ptr noundef nonnull %3) #55
  %i.o = load i64, ptr %i.a, align 8, !range !53, !noundef !29 ; 2 uses
  %.not = icmp eq i64 %i.o, 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.o, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %.sroa.316.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !14639)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !14639, !nonnull !29, !noundef !29 ; 2 uses
  %i.v = atomicrmw add ptr %i.u, i64 1 monotonic, align 8, !noalias !14639
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaB8_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaB8_.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !29, !noundef !29
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaB8_.exit
  store <2 x ptr> %i.y, ptr %i.b, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.u, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.q, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.s, ptr %i.ae, align 16
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !14640
  %i.af = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 17) 8) #51, !noalias !14640 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation20DataValidationStreamINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB2f_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB2f_6marker4SendEL_EEEE3newBL_.exit, !prof !34

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #50
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation20DataValidationStreamINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEEBN_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #52
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ah

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation20DataValidationStreamINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB2f_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB2f_6marker4SendEL_EEEE3newBL_.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 16 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @976, ptr %i.ak, align 8
  store i64 20, ptr %0, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaB8_.exit
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation20DataValidationStreamINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB2f_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB2f_6marker4SendEL_EEEE3newBL_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan8children(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 8) #51 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #50
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.c, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core6kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = load i64, ptr %0, align 8, !range !86, !noundef !29 ; 3 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775786
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nsw i64 %i.r, 9223372036854775790
  %i.u = icmp ugt i64 %i.r, -9223372036854775791
  %i.v = select i1 %i.u, i64 %i.t, i64 4
  switch i64 %i.v, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  unreachable
end_hunk_2
begin_hunk_3_@_RNvYNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBe_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 144) acquire, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 144), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17948
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA), !noalias !17949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17948
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 24))
          to label %bb.e unwind label %bb.d, !noalias !17949

bb.c:                                             ; preds = %bb.f, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %common.resume.i unwind label %bb.g, !noalias !17949

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17948
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields10LOG_SCHEMA, i64 96))
          to label %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.f, !noalias !17949

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #52
          to label %bb.c unwind label %bb.g, !noalias !17949

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17949
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i, %bb.c ], [ %i.s, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !17950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !17950
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !17950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !17951
  %i.q = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 160, i64 noundef range(i64 1, 17) 8) #51, !noalias !17951 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %_RNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0Bb_.exit, !prof !34

bb.h:                                             ; preds = %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #50
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.p)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RNCNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref14LOG_SCHEMA_REF0Bb_.exit: ; preds = %_RNvXs17_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret ptr %i.q
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i64 1, 0) i64 @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt19checkpoint_interval16DEFAULT_INTERVAL0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #30 personality ptr @rust_eh_personality {
bb.a:
  ret i64 100
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i32 } @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config14parse_interval(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17955)
  %i.c = load i64, ptr %i.b, align 8, !range !31, !alias.scope !17955, !noalias !17956, !noundef !29
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i, label %_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0Bd_.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17956
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @415, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @351) #50
          to label %bb.d unwind label %bb.c, !noalias !17955

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table6config16DeltaConfigErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !noalias !17955

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17955
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt22log_retention_duration16DEFAULT_DURATION0Bd_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17955, !noalias !17956, !noundef !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !93, !alias.scope !17955, !noalias !17956, !noundef !29
  %i.j = insertvalue { i64, i32 } poison, i64 %i.g, 0
  %i.k = insertvalue { i64, i32 } %i.j, i32 %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i32 } %i.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i32 } @_RNvYNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtBc_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBg_() unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core5table6config14parse_interval(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17961)
  %i.c = load i64, ptr %i.b, align 8, !range !31, !alias.scope !17961, !noalias !17962, !noundef !29
  %.not.i.i = icmp eq i64 %i.c, -9223372036854775808
  br i1 %.not.i.i, label %_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0Bd_.exit, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17963
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !17962
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @415, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #50
          to label %bb.d unwind label %bb.c, !noalias !17961

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table6config16DeltaConfigErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #52
          to label %bb.f unwind label %bb.e, !noalias !17961

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !17961
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNCNvNvXs0_NtNtCs14kWLkQVSKO_14deltalake_core5table6configNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties15TablePropertiesNtB9_18TablePropertiesExt31deleted_file_retention_duration16DEFAULT_DURATION0Bd_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17961, !noalias !17962, !noundef !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8, !range !93, !alias.scope !17961, !noalias !17962, !noundef !29
  %i.j = insertvalue { i64, i32 } poison, i64 %i.g, 0
  %i.k = insertvalue { i64, i32 } %i.j, i32 %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i32 } %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsjyY8HP3IvQ6_12object_store5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsjyY8HP3IvQ6_12object_store5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsjyY8HP3IvQ6_12object_store5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1237, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB6_(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeB6_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !64, !alias.scope !17966, !noundef !29
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 -9223372036854775744)
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.f
    i64 6, label %bb.f
    i64 7, label %bb.g
    i64 8, label %bb.f
    i64 9, label %bb.f
    i64 10, label %bb.f
    i64 11, label %bb.f
    i64 12, label %bb.f
    i64 13, label %bb.f
    i64 14, label %bb.h
    i64 16, label %bb.i
    i64 17, label %bb.f
    i64 18, label %bb.f
    i64 19, label %bb.f
    i64 20, label %bb.f
    i64 21, label %bb.f
    i64 22, label %bb.f
    i64 23, label %bb.j
    i64 24, label %bb.k
    i64 25, label %bb.f
    i64 26, label %bb.f
    i64 27, label %bb.f
    i64 28, label %bb.f
    i64 29, label %bb.f
    i64 30, label %bb.f
    i64 31, label %bb.f
    i64 32, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !17966, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !alias.scope !17966, !nonnull !29, !align !39, !noundef !29
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

_RNvXs1_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.33.0.i = phi ptr [ @688, %bb.h ], [ @647, %bb.c ], [ @645, %bb.d ], [ @643, %bb.e ], [ undef, %bb.f ], [ @561, %bb.a ], [ @690, %bb.i ], [ @686, %bb.g ], [ @692, %bb.k ], [ %i.l, %bb.j ]
  %.sroa.0.0.i = phi ptr [ %i.g, %bb.h ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ null, %bb.f ], [ %0, %bb.a ], [ %i.h, %bb.i ], [ %i.f, %bb.g ], [ %i.m, %bb.k ], [ %i.j, %bb.j ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.33.0.i, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB6_(ptr noalias readonly align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1238, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2y6mmZ7bjoM_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #31 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1239, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1240, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1241, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan11reset_stateCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRB13_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan5emptyNtB5_9EmptyExecNtNtB7_14execution_plan13ExecutionPlan17with_new_children(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !17971
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan14with_new_stateCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(368) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !17976
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #54
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan16check_invariantsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(368) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan24check_default_invariantsNtNtB4_5empty9EmptyExecECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(368) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan21maintains_input_orderCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(368) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !17981
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !17981
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !17981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17982
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !range !30, !noalias !17982, !noundef !29
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !31, !noalias !17982, !noundef !29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d, !prof !32

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8, !noalias !17982
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #50
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %common.resume unwind label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %i.i, align 8, !noalias !17982, !nonnull !29, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17982
  store i64 %i.h, ptr %0, align 8, !alias.scope !17982
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !17982
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.n, align 8, !alias.scope !17982
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan23required_input_orderingCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(368) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !17985
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !17985
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !17985
  invoke void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_3
begin_hunk_4_@_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan23required_input_orderingCs14kWLkQVSKO_14deltalake_core:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan27gather_filters_for_pushdownCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(368) %1, i1 noundef zeroext %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(880) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !17988
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !17988
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !17988
  invoke void @_RNvMs5_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_17FilterDescription15all_unsupported(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.e, %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ], [ %i.l, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %3) #52
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %.body unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
  ret void

bb.j:                                             ; preds = %bb.c, %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan27required_input_distributionCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !alias.scope !17991
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8, !alias.scope !17991
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !alias.scope !17991
  invoke void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %.body unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.body:                                            ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan28handle_child_pushdown_resultCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(368) %1, i1 noundef zeroext %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(880) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB5_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_14execution_plan13ExecutionPlanEL_EE6if_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %3)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan32benefits_from_input_partitioningCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(368) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan27required_input_distributionCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !29 ; 2 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %i.i = load i64, ptr %i.a, align 8, !range !45, !noundef !29
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecbEINtNtB6_14spec_from_iter12SpecFromIterbINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENCNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB4c_14execution_plan13ExecutionPlan32benefits_from_input_partitioning0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan6schemaCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(368) %0) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1242, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseo6ZV82fEK1_3url6parser10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1243, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1244, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1245, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshmPyUV8PP35_6chrono6format10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1246, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1247, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1248, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1249, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_delta5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB8_(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_delta5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB8_(ptr noalias readonly align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_delta5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1250, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB8_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1251, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB8_(ptr noalias readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceB8_(ptr noalias readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB8_(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6create11CreateErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1252, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB8_(ptr noalias readonly align 16 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeB8_(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !33, !alias.scope !17996, !noundef !29 ; 2 uses
  %.not.i = icmp eq i64 %i.a, -9223372036854775711
  br i1 %.not.i, label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 -9223372036854775744)
  switch i64 %i.b, label %bb.c [
    i64 0, label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.g
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.g
    i64 9, label %bb.g
    i64 10, label %bb.g
    i64 11, label %bb.g
    i64 12, label %bb.g
    i64 13, label %bb.g
    i64 14, label %bb.i
    i64 16, label %bb.j
    i64 17, label %bb.g
    i64 18, label %bb.g
    i64 19, label %bb.g
    i64 20, label %bb.g
    i64 21, label %bb.g
    i64 22, label %bb.g
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.g
    i64 26, label %bb.g
    i64 27, label %bb.g
    i64 28, label %bb.g
    i64 29, label %bb.g
    i64 30, label %bb.g
    i64 31, label %bb.g
    i64 32, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !17997, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !alias.scope !17997, !nonnull !29, !align !39, !noundef !29
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

bb.l:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit

_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB5_11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.3.0.i = phi ptr [ undef, %bb.a ], [ @688, %bb.i ], [ @647, %bb.d ], [ @645, %bb.e ], [ @643, %bb.f ], [ undef, %bb.g ], [ @561, %bb.b ], [ @690, %bb.j ], [ @686, %bb.h ], [ @692, %bb.l ], [ %i.l, %bb.k ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.i ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ null, %bb.g ], [ %0, %bb.b ], [ %i.h, %bb.j ], [ %i.f, %bb.h ], [ %i.m, %bb.l ], [ %i.j, %bb.k ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB8_(ptr noalias readonly align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuum11VacuumErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 16 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1253, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore12RestoreErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore12RestoreErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore12RestoreErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore12RestoreErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB8_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core10operations7restore12RestoreErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1254, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan11reset_stateB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !18005
  %i.d = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 8) #51, !noalias !18005 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #50
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.f, ptr %i.d, align 8, !noalias !18005
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRB13_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan17with_new_children(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecEEB1k_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %lpad.thr_comm

bb.e:                                             ; preds = %bb.c, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !18006
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecEEB1k_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecEEB1k_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan14with_new_stateB8_(ptr noalias readonly align 8 captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !18011
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs4m0Tg8nAduX_20datafusion_execution(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #54
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1w_4SendEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan16check_invariantsB8_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan24check_default_invariantsNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecEB1u_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan17try_pushdown_sortB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias nonnull readonly align 8 captures(none) %2, i64 range(i64 0, 384307168202282326) %3) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan23required_input_orderingB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18015)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !18016
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 8) #51, !noalias !18016 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #50
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.e, ptr %i.c, align 8, !noalias !18016
  store i64 1, ptr %i.a, align 8, !alias.scope !18015, !noalias !18017
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8, !alias.scope !18015, !noalias !18017
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.g, align 8, !alias.scope !18015, !noalias !18017
  invoke void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %.thread unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.h:                                             ; preds = %bb.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.thread:                                          ; preds = %bb.f, %bb.d, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.l, %bb.i ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn6

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.b) #52
          to label %.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan27required_input_distributionB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18021)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !18022
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 8) #51, !noalias !18022 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !34

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #50
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.e, ptr %i.c, align 8, !noalias !18022
  store i64 1, ptr %i.a, align 8, !alias.scope !18021, !noalias !18023
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8, !alias.scope !18021, !noalias !18023
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.g, align 8, !alias.scope !18021, !noalias !18023
  invoke void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %.thread unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.thread unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRINtNtBL_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.h:                                             ; preds = %bb.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

.thread:                                          ; preds = %bb.f, %bb.d, %bb.i
  %.pn6 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.l, %bb.i ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn6

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %.thread unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan28handle_child_pushdown_resultB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias readonly align 8 captures(none) %1, i1 zeroext %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias readonly align 8 captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB5_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_14execution_plan13ExecutionPlanEL_EE6if_allCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %3)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan28try_swapping_with_projectionB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan32benefits_from_input_partitioningB8_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan27required_input_distributionB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !29 ; 2 uses
  %i.g = icmp ult i64 %i.f, 384307168202282326
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.f
  %i.i = load i64, ptr %i.a, align 8, !range !45, !noundef !29
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecbEINtNtB6_14spec_from_iter12SpecFromIterbINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan32benefits_from_input_partitioning0EE9from_iterB4e_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan5fetchB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaB8_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(384) %0) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan7metricsB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  store i64 -9223372036854775808, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB8_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1255, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionB8_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideB8_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1256, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1257, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtB8_5table13TableProvider14scan_with_argsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !18026
  %i.f = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef range(i64 1, 17) 8) #51, !noalias !18026 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBP_5table13TableProvider14scan_with_args0E3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !34

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #50
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBR_5table13TableProvider14scan_with_args0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #52
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtBP_5table13TableProvider14scan_with_args0E3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1258, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtNtB8_5table13TableProvider25supports_filters_pushdownCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef 0, i64 noundef %3)
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1259, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1260, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1261, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionBa_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideBa_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer10WriteErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1262, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionBa_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideBa_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1263, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform19recurse_into_structBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.04.sroa.6.sroa.5.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.04.sroa.6.sroa.6.i.i.i = alloca [48 x i8], align 8 ; 7 uses
  %.sroa.8.i.i.i = alloca [7 x i8], align 1       ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [104 x i8], align 8               ; 4 uses
  %i.f = alloca [96 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 8                ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [72 x i8], align 8                ; 11 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load i64, ptr %i.s, align 8, !noundef !29
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %i.r, i64 %i.t
  store ptr %i.r, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.p, ptr %i.v, align 8
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7inspect7InspectINtNtB2x_10filter_map9FilterMapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB6_6string6StringB1d_ENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB1f_15SchemaTransform19recurse_into_struct0ENCB55_s_0EE9from_iterB5g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !29 ; 3 uses
  %i.y = icmp ult i64 %i.x, 96076792050570582
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %i.p, align 8, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !29
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.g, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.ah, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %.pn.pn.pn.i, %bb.i ], [ %.pn.pn.pn.pn25.i, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %bb.ai

bb.g:                                             ; preds = %bb.c
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.45.0..sroa_idx, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.ai = load i64, ptr %i.o, align 8, !range !45, !noundef !29
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.ah, i64 %i.x
  store ptr %i.ah, ptr %i.m, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ah, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ai, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.aj, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18055
  %i.ak = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.j unwind label %.thread.i, !noalias !18055 ; 2 uses

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs14kWLkQVSKO_14deltalake_core.exit.i
  br i1 %.sroa.03.1.i, label %bb.ah, label %common.resume

.thread.i:                                        ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.j:                                             ; preds = %bb.h
  %i.am = extractvalue { i64, i64 } %i.ak, 0
  %i.an = extractvalue { i64, i64 } %i.ak, 1
  store i64 0, ptr %i.l, align 8, !alias.scope !18056, !noalias !18055
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !18056, !noalias !18055
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !18056, !noalias !18055
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !18055
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %i.am, ptr %i.ao, align 8, !alias.scope !18056, !noalias !18055
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %i.an, ptr %i.ap, align 8, !alias.scope !18056, !noalias !18055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18055
  %i.aq = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37)
          to label %bb.m unwind label %bb.k, !noalias !18055 ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1N_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB2Q_15SchemaTransform19recurse_into_structs0_0EEEB3T_.exit.i, %bb.k
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1N_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB2Q_15SchemaTransform19recurse_into_structs0_0EEEB3T_.exit.i ] ; 2 uses
  %.sroa.03.1.i = phi i1 [ true, %bb.k ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1N_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB2Q_15SchemaTransform19recurse_into_structs0_0EEEB3T_.exit.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l) #52
          to label %bb.i unwind label %bb.ag, !noalias !18055

bb.k:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1N_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB2Q_15SchemaTransform19recurse_into_structs0_0EEEB3T_.exit.i: ; preds = %.body.i, %bb.l
  %.pn.pn.i = phi { ptr, i32 } [ %i.as, %bb.l ], [ %.pn.i, %.body.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ag, !noalias !18055

bb.l:                                             ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1N_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB2Q_15SchemaTransform19recurse_into_structs0_0EEEB3T_.exit18.i, %._crit_edge.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBL_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB1N_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB2Q_15SchemaTransform19recurse_into_structs0_0EEEB3T_.exit.i

bb.m:                                             ; preds = %bb.j
  %i.at = extractvalue { i64, i64 } %i.aq, 0
  %i.au = extractvalue { i64, i64 } %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !18055
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.at, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !18055
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.au, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !18055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !18057
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !18055
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.sroa.6.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.sroa.6.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.ax = load ptr, ptr %i.av, align 8, !alias.scope !18058, !noalias !18059, !nonnull !29, !noundef !29
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !18058, !noalias !18059, !nonnull !29, !noundef !29 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ax
  br i1 %i.az, label %._crit_edge.i, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.lr.ph.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.lr.ph.i: ; preds = %bb.m
  %.sroa.04.sroa.5.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.04.sroa.6.0..sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.12.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.13.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.14.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 89
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
end_hunk_4
begin_hunk_5_@_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform9transformBa_:bb.a
  %i.i = alloca [144 x i8], align 8               ; 2 uses
  %i.j = alloca [144 x i8], align 8               ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = alloca [144 x i8], align 8               ; 2 uses
  %i.n = alloca [144 x i8], align 8               ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = alloca [16 x i8], align 8                ; 3 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = load i8, ptr %2, align 8, !range !43, !noundef !29
  switch i8 %i.s, label %default.unreachable31 [
    i8 0, label %bb.m
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.l
  ]

default.unreachable31:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !29, !noundef !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18205
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call fastcc void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform9transformBa_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v), !noalias !18206, !inline_history !18192
  %i.w = load i8, ptr %i.h, align 8, !range !57, !noalias !18205, !noundef !29
  %.not.i = icmp eq i8 %i.w, 6
  br i1 %.not.i, label %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform18recurse_into_arrayBa_.exit.thread, label %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform18recurse_into_arrayBa_.exit

_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform18recurse_into_arrayBa_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform18recurse_into_arrayBa_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !18205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18205
  call void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema8DataTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_9ArrayTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtB1f_15SchemaTransform18recurse_into_array0EB2F_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u), !inline_history !18193
  %.sroa.06.0.copyload7 = load i64, ptr %i.f, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not3 = icmp eq i64 %.sroa.06.0.copyload7, -9223372036854775807
  br i1 %.not3, label %bb.p, label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !29, !noundef !29
  call fastcc void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform19recurse_into_structBa_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(144) %i.n, ptr noalias noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.y)
  %i.z = load i64, ptr %i.n, align 8, !range !36, !noundef !29
  %.not2 = icmp eq i64 %i.z, -9223372036854775807
  br i1 %.not2, label %bb.r, label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !29, !noundef !29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18207
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call fastcc void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform9transformBa_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.d, ptr noalias noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac), !noalias !18208, !inline_history !18198
  %i.ad = load i8, ptr %i.d, align 8, !range !57, !noalias !18207, !noundef !29
  %.not.i5 = icmp eq i8 %i.ad, 6
  br i1 %.not.i5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !18207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18207
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  invoke fastcc void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform9transformBa_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ae)
          to label %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform19transform_map_valueBa_.exit.i unwind label %bb.i, !noalias !18208, !inline_history !18199

_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform19transform_map_valueBa_.exit.i: ; preds = %bb.e
  %i.af = load i8, ptr %i.c, align 8, !range !57, !noalias !18207, !noundef !29
  %.not2.i = icmp eq i8 %i.af, 6
  br i1 %.not2.i, label %bb.g, label %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18207
  br label %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit.thread

_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit.thread: ; preds = %bb.f, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18207
  br label %bb.t

_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit: ; preds = %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform19transform_map_valueBa_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !18207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !18207
  call void @_RINvXs_NtCs8ulvy0Wg6Ot_12delta_kernel5utilsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB7_6schema8DataTypeEBG_EINtB5_6CowExtBF_E17map_owned_or_elseNtB1i_7MapTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtB1i_15SchemaTransform16recurse_into_map0EB2J_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ab), !inline_history !18200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18207
  %.sroa.010.0.copyload11 = load i64, ptr %i.b, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18207
  %.not1 = icmp eq i64 %.sroa.010.0.copyload11, -9223372036854775807
  br i1 %.not1, label %bb.t, label %bb.s

bb.g:                                             ; preds = %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform19transform_map_valueBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18207
  %i.ah = load i8, ptr %i.e, align 8, !range !59, !alias.scope !18209, !noalias !18207, !noundef !29
  %i.ai = icmp eq i8 %i.ah, 5
  br i1 %i.ai, label %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.e), !noalias !18208, !inline_history !18200
  br label %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit3.i: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %i.aj

bb.i:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i8, ptr %i.e, align 8, !range !59, !alias.scope !18210, !noalias !18207, !noundef !29
  %i.al = icmp eq i8 %i.ak, 5
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit3.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeEECs14kWLkQVSKO_14deltalake_core.exit3.i unwind label %bb.k, !noalias !18208, !inline_history !18200

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18208, !inline_history !18200
  unreachable

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !29, !noundef !29
  call fastcc void @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform19recurse_into_structBa_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(144) %i.j, ptr noalias noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ao)
  %i.ap = load i64, ptr %i.j, align 8, !range !36, !noundef !29
  %.not = icmp eq i64 %i.ap, -9223372036854775807
  br i1 %.not, label %bb.v, label %bb.u

bb.m:                                             ; preds = %bb.a
  store i8 1, ptr %i.q, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.516.0..sroa_idx, align 1
  call void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema13PrimitiveTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2i_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  br label %bb.w

bb.o:                                             ; preds = %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform18recurse_into_arrayBa_.exit
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.521.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  store i64 %.sroa.06.0.copyload7, ptr %i.o, align 8
  call void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema9ArrayTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2d_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br label %bb.n

bb.p:                                             ; preds = %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform18recurse_into_arrayBa_.exit.thread, %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform18recurse_into_arrayBa_.exit
  store i8 6, ptr %0, align 8
  br label %bb.w

bb.q:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(144) %i.n, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema10StructTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2f_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br label %bb.n

bb.r:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i8 6, ptr %0, align 8
  br label %bb.w

bb.s:                                             ; preds = %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  store i64 %.sroa.010.0.copyload11, ptr %i.k, align 8
  call void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema7MapTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2b_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br label %bb.n

bb.t:                                             ; preds = %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit.thread, %_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema15SchemaTransform16recurse_into_mapBa_.exit
  store i8 6, ptr %0, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema10StructTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtB1f_15SchemaTransform9transform0EB2H_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br label %bb.n

bb.v:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 6, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %bb.r, %bb.t, %bb.v, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @1236, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #16 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1264, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #34

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5_11ScanBuilder14with_predicateINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB7_11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB2_11ScanBuilder5build(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB6_4Scan18scan_metadata_fromINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEBc_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), i64 noundef, ptr noalias noundef nonnull align 8, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_rowINtB2_16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2D_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBa_6errors15DeltaTableErrorENtNtB2D_6marker4SendEL_EENCINvMB6_NtB6_8Snapshot10files_fromINtNtNtB39_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EE7try_newBa_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_rowINtB4_16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2F_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBc_6errors15DeltaTableErrorENtNtB2F_6marker4SendEL_EENCINvMB8_NtB8_8Snapshot10files_fromINtNtNtB3b_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EEB3G_9poll_nextBc_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_rowINtB4_16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2F_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBc_6errors15DeltaTableErrorENtNtB2F_6marker4SendEL_EENCINvMB8_NtB8_8Snapshot10files_fromINtNtNtB3b_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EEB3G_9size_hintBc_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs8CRAYtH5WmW_12futures_util6stream4onceINtB4_4OnceINtNtNtB8_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB32_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef align 16 dereferenceable(96), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #35

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util4iterNtB3_8Searcher30handle_overlapping_empty_matchNCNvXs6_NtNtB7_4meta5regexNtB1D_11FindMatchesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0EB7_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #36

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util4iterNtB3_8Searcher30handle_overlapping_empty_matchNCNvXs9_NtNtB7_4meta5regexNtB1D_15CapturesMatchesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next0ECscYNcALI69lp_20datafusion_optimizer(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #36

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsl_NtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB5_10MatchErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #37

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB5_4SpanNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEE14insert_no_growB1v_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEE14insert_no_growB1v_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtCs38QnobOTBn2_4zmij7privatedNtB4_6Sealed20write_to_zmij_buffer(double noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsjyY8HP3IvQ6_12object_store4path4PathuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXst_NtNtCsonPGffhQyS_5regex5regex6stringReNtB5_8Replacer12no_expansion(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #37

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #38

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #37

; Function Attrs: nonlazybind uwtable
declare void @_RNvXst_NtNtCsonPGffhQyS_5regex5regex6stringReNtB5_8Replacer14replace_append(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs1gOyXocuPRE_10serde_core2deNtNvXsU_NtB4_5implsxNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsC_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_8DataTypeINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_10StructTypeE4from(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvCseo6ZV82fEK1_3url25path_to_file_url_segments(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #39

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 5) i8 @_RNvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_11StructField24get_metadata_column_spec(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48), i8 noundef range(i8 0, 4), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE8get_fulleECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE3geteECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsH_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_15GetSchemaLeaves3new(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly captures(address, read_provenance), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_10StructType35ensure_no_metadata_columns_in_field(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB3_5Error6schemaNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

end_hunk_5
