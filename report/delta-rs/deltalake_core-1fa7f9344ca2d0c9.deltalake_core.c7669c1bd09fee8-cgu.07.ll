inline.NumInlined: 9995
inline.NumDeleted: 4212
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g) #56
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.r, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2T_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call fastcc noundef i8 @_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f) #56 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !3 ; 2 uses
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.p, i64 range(i64 0, 82351536043346213) %i.l) ; 2 uses
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
  %i.u = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.t) #56, !inline_history !16529 ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.c, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge, %bb.a
  %.sroa.0.0 = phi i8 [ %i.g, %bb.a ], [ %i.r, %._crit_edge ], [ %i.u, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !804, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !804, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.i) #56
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !3
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.s, ptr noundef nonnull %i.q, i64 noundef %i.l)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2Y_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #56 ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 3 uses
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.n, i64 range(i64 0, 82351536043346213) %i.j) ; 2 uses
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
  %i.r = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.p, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q) #56, !inline_history !16529 ; 2 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b
  %i.t = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.j, i64 %i.n)
  %i.u = icmp eq i64 %i.j, %i.n
  br i1 %i.u, label %bb.d, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.d:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 8, !range !804, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i8, ptr %i.x, align 8, !range !804, !noundef !3
  %i.z = sub nsw i8 %i.w, %i.y
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %.lr.ph, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.a, %bb.d
  %.sroa.0.0 = phi i8 [ %i.z, %bb.d ], [ %i.t, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.e, %bb.a ], [ %i.r, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_Cseo6ZV82fEK1_3urlNtB5_3UrlNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsbvkFyIu7lgC_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered14FuturesOrderedINtNtNtNtBN_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EENtB5_9TryStream13try_poll_nextB31_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.863.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.357.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 16 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 16               ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 5 uses
  %i.q = alloca [56 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %2, align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !17185, !noalias !17182, !noundef !3 ; 2 uses
  %i.u = icmp ult i64 %i.t, 164703072086692426
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17187
  store ptr %1, ptr %i.r, align 8, !noalias !17187
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.w, align 8, !noalias !17187
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !17185, !noalias !17182, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !noalias !17182, !noundef !3 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !17185, !noalias !17182, !noundef !3
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.12.0..sroa_idx47.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.357.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.360.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.l, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r), !noalias !17182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17187
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.ar = add i64 %i.aa, 1
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !17185, !noalias !17182
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i64 noundef 0), !noalias !17182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !17185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17187
  br label %_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2t_.exit

bb.f:                                             ; preds = %bb.da, %bb.c
  %.sroa.11.0.i = phi i64 [ undef, %bb.c ], [ %.sroa.11.1.i, %bb.da ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !17188)
  %i.as = load atomic ptr, ptr %i.af acquire, align 8, !alias.scope !17191, !noalias !17192 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE28atomic_load_head_and_len_allB3a_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.ae, align 8, !alias.scope !17191, !noalias !17192, !nonnull !3, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !17192, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8, !noalias !17192
  %.not.i.i.i = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !17192, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE28atomic_load_head_and_len_allB3a_.exit.i.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE28atomic_load_head_and_len_allB3a_.exit.i.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i.i = phi i64 [ %i.bb, %bb.i ], [ 0, %bb.f ]
  %i.bc = load ptr, ptr %i.ae, align 8, !alias.scope !17191, !noalias !17192, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val), !noalias !17192
  br label %.outer

.outer:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtNtNtBT_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB4V_.exit38.i.i, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE28atomic_load_head_and_len_allB3a_.exit.i.i
  %.sroa.010.0.i.i.ph = phi i64 [ %i.ht, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtNtNtBT_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB4V_.exit38.i.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE28atomic_load_head_and_len_allB3a_.exit.i.i ]
  %.sroa.08.0.i.i.ph = phi i64 [ %i.hp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtNtNtBT_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB4V_.exit38.i.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE28atomic_load_head_and_len_allB3a_.exit.i.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEEB4c_.exit.i.i
  %i.be = load ptr, ptr %i.ae, align 8, !alias.scope !17191, !noalias !17192, !nonnull !3, !noundef !3 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 56 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !17192, !noundef !3 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bj = load atomic ptr, ptr %i.bi acquire, align 8, !noalias !17192 ; 5 uses
  %i.bk = load ptr, ptr %i.bf, align 8, !noalias !17192, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = icmp eq ptr %i.bh, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = icmp eq ptr %i.bj, null
  br i1 %i.bn, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i.i = phi ptr [ %i.bq, %bb.m ], [ %i.bj, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i.i = phi ptr [ %i.bj, %bb.m ], [ %i.bh, %bb.j ] ; 40 uses
  %i.bo = icmp eq ptr %.sroa.07.0.i.i.i, null
  br i1 %i.bo, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.bj, ptr %i.bg, align 8, !noalias !17192
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 152
  %i.bq = load atomic ptr, ptr %i.bp acquire, align 8, !noalias !17192
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bs = load atomic ptr, ptr %i.br acquire, align 8, !noalias !17192
  %i.bt = icmp eq ptr %i.bs, %.sroa.01.0.i.i.i
  br i1 %i.bt, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bu = load ptr, ptr %i.bf, align 8, !noalias !17192, !nonnull !3, !noundef !3 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  store atomic ptr null, ptr %i.bw monotonic, align 8, !noalias !17192
  %i.bx = atomicrmw xchg ptr %i.br, ptr %i.bv acq_rel, align 8, !noalias !17192
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 152
  store atomic ptr %i.bv, ptr %i.by release, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 152
  %i.ca = load atomic ptr, ptr %i.bz acquire, align 8, !noalias !17192 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i.i = phi ptr [ %.sroa.07.0.i.i.i, %bb.l ], [ %i.ca, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i.i, ptr %i.bg, align 8, !noalias !17192
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !381, !noalias !17192, !noundef !3
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.cf = load atomic ptr, ptr %i.af monotonic, align 8, !alias.scope !17191, !noalias !17192
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.cy, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB3a_.exit.thread.i

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.ch = load ptr, ptr %.val, align 8, !noalias !17195, !nonnull !3, !align !356, !noundef !3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !17192, !nonnull !3, !noundef !3
  %i.ck = load ptr, ptr %i.ap, align 8, !noalias !17195, !noundef !3
  call void %i.cj(ptr noundef %i.ck), !noalias !17192, !inline_history !17196
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB3a_.exit.thread.i

bb.s:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17197
  call void @llvm.experimental.noalias.scope.decl(metadata !17198)
  %i.cm = load ptr, ptr %i.af, align 8, !alias.scope !17201, !noalias !17192, !noundef !3 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 144
  %i.co = load i64, ptr %i.cn, align 8, !noalias !17202, !noundef !3
  %i.cp = add i64 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 128 ; 4 uses
  %i.cr = load atomic ptr, ptr %i.cq monotonic, align 8, !noalias !17202 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 136 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !17202, !noundef !3 ; 4 uses
  %i.cu = load ptr, ptr %i.ae, align 8, !alias.scope !17201, !noalias !17192, !nonnull !3, !noundef !3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !17202, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store atomic ptr %i.cx, ptr %i.cq monotonic, align 8, !noalias !17202
  store ptr null, ptr %i.cs, align 8, !noalias !17202
  %i.cy = icmp eq ptr %i.cr, null
  br i1 %i.cy, label %.thread3.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 136
  store ptr %i.ct, ptr %i.cz, align 8, !noalias !17202
  %i.da = icmp eq ptr %i.ct, null
  br i1 %i.da, label %bb.u, label %.thread.i.i.i

.thread3.i.i.i:                                   ; preds = %bb.s
  %i.db = icmp eq ptr %i.ct, null
  br i1 %i.db, label %.thread4.i.i.i, label %.thread.i.i.i

.thread4.i.i.i:                                   ; preds = %.thread3.i.i.i
  store ptr null, ptr %i.af, align 8, !alias.scope !17201, !noalias !17192
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE6unlinkB3a_.exit.i.i

.thread.i.i.i:                                    ; preds = %.thread3.i.i.i, %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  store atomic ptr %i.cr, ptr %i.dc monotonic, align 8, !noalias !17202
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cr, ptr %i.af, align 8, !alias.scope !17201, !noalias !17192
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i.i
  %i.dd = phi ptr [ %i.cm, %.thread.i.i.i ], [ %i.cr, %bb.u ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  store i64 %i.cp, ptr %i.de, align 8, !noalias !17202
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE6unlinkB3a_.exit.i.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE6unlinkB3a_.exit.i.i: ; preds = %bb.v, %.thread4.i.i.i
  %i.df = getelementptr inbounds i8, ptr %.sroa.01.0.i.i.i, i64 -16 ; 4 uses
  store ptr %i.df, ptr %i.n, align 8, !noalias !17197
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 160
  %i.dh = atomicrmw xchg ptr %i.dg, i8 0 seq_cst, align 1, !noalias !17192
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.y, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17197
  %i.dj = getelementptr inbounds i8, ptr %.sroa.01.0.i.i.i, i64 -16 ; 2 uses
  store ptr %i.dj, ptr %i.o, align 8, !noalias !17197
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !17203
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEEB4c_.exit.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtNtNtBP_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEE9drop_slowB3C_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o) #58, !noalias !17192
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEEB4c_.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtNtNtB1n_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEEB4c_.exit.i.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17197
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE6unlinkB3a_.exit.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.cv, !noalias !17192

bb.z:                                             ; preds = %bb.y
  unreachable

.body.i.i:                                        ; preds = %bb.cf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %bb.aa
  %.pn.i.i = phi { ptr, i32 } [ %.pn17.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ], [ %i.ho, %bb.cf ], [ %i.dm, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtNtNtBT_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB4V_(ptr noalias noundef align 8 dereferenceable(16) %i.m) #54
          to label %.thread.i.i unwind label %bb.cu, !noalias !17192

bb.aa:                                            ; preds = %bb.ar, %bb.aq
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ab:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtNtNtB9_6future10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE6unlinkB3a_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17197
  store ptr %i.ae, ptr %i.m, align 8, !noalias !17197
  store ptr %i.df, ptr %i.ag, align 8, !noalias !17197
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 161 ; 2 uses
  store atomic i8 0, ptr %i.dn monotonic, align 1, !noalias !17192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17197
  store ptr @14, ptr %i.l, align 8, !noalias !17197
  store ptr %.sroa.01.0.i.i.i, ptr %i.ah, align 8, !noalias !17197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17197
  store <2 x ptr> %4, ptr %i.k, align 16, !noalias !17197
  store ptr null, ptr %i.ai, align 16, !noalias !17197
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 120
  %i.dp = load i64, ptr %i.do, align 8, !noalias !17208, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17212
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.357.i.i.i.i.i.i)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 114 ; 4 uses
  %i.dr = load i8, ptr %i.dq, align 2, !range !342, !noalias !17219, !noundef !3
  switch i8 %i.dr, label %default.unreachable [
    i8 0, label %bb.ad
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.ac
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.at

bb.ad:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 112 ; 3 uses
  store i8 0, ptr %i.ds, align 8, !noalias !17219
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17223
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 32
  %.val20.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !noalias !17219, !nonnull !3, !noundef !3
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 40
  %.val21.i.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !17219, !nonnull !3, !align !356, !noundef !3 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i.i, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !range !645, !invariant.load !3, !noalias !17224
  %i.dy = add nsw i64 %i.dx, -1
  %i.dz = and i64 %i.dy, -16
  %i.ea = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i.i.i, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 48
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !17219, !noundef !3
  store i8 0, ptr %i.dt, align 1, !noalias !17219
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !17219, !nonnull !3, !noundef !3
  %i.eg = getelementptr inbounds nuw i8, ptr %.val21.i.i.i.i.i.i, i64 152
  %i.eh = load ptr, ptr %i.eg, align 8, !invariant.load !3, !noalias !17224, !nonnull !3
  invoke void %i.eh(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.j, ptr noundef nonnull %i.eb, i64 noundef %i.ed, ptr noundef nonnull %i.ef)
          to label %bb.af unwind label %bb.ae, !noalias !17224

bb.ae:                                            ; preds = %bb.ad
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17223
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !17225)
  %i.ej = load i64, ptr %i.j, align 8, !range !12995, !alias.scope !17228, !noalias !17230, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ej, 20
  %i.ek = load ptr, ptr %i.aj, align 8, !alias.scope !17231, !noalias !17223 ; 2 uses
  %i.el = load ptr, ptr %i.ak, align 8, !alias.scope !17231, !noalias !17223 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17223
  store i8 1, ptr %i.ds, align 8, !noalias !17219
  store ptr %i.ek, ptr %i.cl, align 8, !noalias !17219
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !noalias !17219
  %i.en = invoke { ptr, ptr } @_RNvXsb_NtCsbvkFyIu7lgC_4core3pinINtB5_3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB7_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB7_6marker4SendEL_EENtNtNtB7_3ops5deref5Deref5derefCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cl)
          to label %bb.ai unwind label %bb.ah, !noalias !17224 ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ep = extractvalue { ptr, ptr } %i.en, 0
  %i.eq = extractvalue { ptr, ptr } %i.en, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !invariant.load !3, !noalias !17224, !nonnull !3
  %i.et = invoke noundef nonnull ptr %i.es(ptr noundef %i.ep)
          to label %bb.aj unwind label %.loopexit.i.i, !noalias !17224

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.bg, %.body.i.i.i.i.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.ah
  %.pn12.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn9.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.eo, %bb.ah ], [ %.pn9.pn.i.i.i.i.i.i, %bb.bg ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 112
  %i.ev = load i8, ptr %i.eu, align 8, !range !804, !noalias !17219, !noundef !3
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.bt, label %bb.ao

.loopexit.i.i:                                    ; preds = %bb.ai
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.bq, %bb.bi
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 56
  store ptr %i.et, ptr %i.ex, align 8, !noalias !17219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17223
  store i8 0, ptr %i.ds, align 8, !noalias !17219
  %i.ey = load ptr, ptr %i.cl, align 8, !noalias !17219, !nonnull !3, !noundef !3
  %i.ez = load ptr, ptr %i.em, align 8, !noalias !17219, !nonnull !3, !align !356, !noundef !3
  invoke void @_RINvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB8_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB8_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream12TryStreamExt11try_collectINtNtBE_3vec3VecB2F_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noundef nonnull %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ez)
          to label %bb.al unwind label %bb.ak, !noalias !17224

bb.ak:                                            ; preds = %bb.aj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17223
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.g, i64 40, i1 false), !alias.scope !17232, !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17223
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fb, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !17219
  br label %bb.at

bb.am:                                            ; preds = %bb.aw, %bb.as, %bb.ak
  %.pn9.i.i.i.i.i.i = phi { ptr, i32 } [ %i.fq, %bb.aw ], [ %i.fm, %bb.as ], [ %i.fa, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.body.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx47.i.i.i.i.i.i, i64 16, i1 false), !noalias !17223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17223
  store i64 %i.ej, ptr %i.al, align 8, !alias.scope !17236, !noalias !17223
  store ptr %i.ek, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !17236, !noalias !17223
  store ptr %i.el, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !17236, !noalias !17223
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit40.i.i.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit40.i.i.i.i.i.i: ; preds = %bb.bq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit38.i.i.i.i.i.i, %bb.an
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 112
  store i8 0, ptr %i.fc, align 8, !noalias !17219
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17240)
  call void @llvm.experimental.noalias.scope.decl(metadata !17243)
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !17246, !noalias !17219, !nonnull !3, !noundef !3
  %i.ff = atomicrmw sub ptr %i.fe, i64 1 release, align 8, !noalias !17247
  %i.fg = icmp eq i64 %i.ff, 1
  br i1 %i.fg, label %.invoke.i.i.i.i.i.i, label %.thread281.i.i

bb.ao:                                            ; preds = %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %bb.ae
  %.pn14.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ei, %bb.ae ], [ %.pn12.i.i.i.i.i.i, %bb.bt ], [ %.pn12.i.i.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 112
  store i8 0, ptr %i.fh, align 8, !noalias !17219
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17248)
  call void @llvm.experimental.noalias.scope.decl(metadata !17251)
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !17254, !noalias !17219, !nonnull !3, !noundef !3
  %i.fk = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !17255
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.fi) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit25.i.i.i.i.i.i unwind label %bb.br, !noalias !17224

bb.aq:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #55
          to label %.noexc.i.i unwind label %bb.aa, !noalias !17192

.noexc.i.i:                                       ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #55
          to label %.noexc28.i.i unwind label %bb.aa, !noalias !17192

.noexc28.i.i:                                     ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.at
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17223
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEINtNtB2k_3vec3VecB4l_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.fn) #54
          to label %bb.am unwind label %bb.br, !noalias !17224

bb.at:                                            ; preds = %bb.al, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17223
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 64 ; 3 uses
  invoke void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB1w_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB1w_6marker4SendEL_EEINtNtB22_3vec3VecB44_EENtNtNtB1w_6future6future6Future4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.au unwind label %bb.as, !noalias !17224

bb.au:                                            ; preds = %bb.at
  %i.fo = load i64, ptr %i.f, align 8, !range !17256, !noalias !17223, !noundef !3 ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 21
  br i1 %i.fp, label %bb.cg, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.357.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.357.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !17223
  %.sroa.5.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !17223
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsNtB5_10StatisticsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i17, ptr %.sroa.498.0..sroa_idx, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.599.0..sroa_idx, align 8
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.i, i64 24, i1 false)
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.01.0.i19, ptr %.sroa.7101.0..sroa_idx, align 8
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.52.0.i18, ptr %.sroa.8102.0..sroa_idx, align 8
  %.sroa.9103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.03.0.i, ptr %.sroa.9103.0..sroa_idx, align 8
  %.sroa.10104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.54.0.i20, ptr %.sroa.10104.0..sroa_idx, align 8
  %.sroa.11105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.ha, ptr %.sroa.11105.0..sroa_idx, align 8
  %.sroa.12106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %i.hc, ptr %.sroa.12106.0..sroa_idx, align 1
  %.sroa.13107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %i.he, ptr %.sroa.13107.0..sroa_idx, align 2
  br label %bb.ao

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18545
  %i.hj = load i64, ptr %i.h, align 8, !range !381, !noalias !18545, !noundef !3
  %i.hk = trunc nuw i64 %i.hj to i1               ; 2 uses
  br i1 %i.hk, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !18548, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i, label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !18548, !nonnull !3, !noundef !3
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !18548, !noundef !3
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !18548, !noundef !3
  call void %i.hn(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.ho, ptr noundef %i.hq, i64 noundef %i.hs), !noalias !18545, !inline_history !18553
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !noalias !18545
  br label %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.ab ], [ null, %bb.aa ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.0.0.i.i.i, ptr %i.ht, align 8, !noalias !18545
  %.sroa.4.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i33, ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i64 24, i1 false), !noalias !18545
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.z
  %.sink.i23 = phi i64 [ 1, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %bb.z ]
  %i.hu = phi ptr [ %.sroa.0.0.i.i.i, %_RNvXsN_NtCs4tdlwR1I4n2_7parquet9data_typeNtB5_17FixedLenByteArrayNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %bb.z ] ; 2 uses
  store i64 %.sink.i23, ptr %i.c, align 8, !noalias !18545
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hw = load i64, ptr %i.hv, align 8, !range !381, !noalias !18545, !noundef !3
  %i.hx = trunc nuw i64 %i.hw to i1
  br i1 %i.hx, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18545
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !18554, !noundef !3 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i6.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !18554, !nonnull !3, !noundef !3
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !18554, !noundef !3
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.if = load i64, ptr %i.ie, align 8, !noalias !18554, !noundef !3
  invoke void %i.ia(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.ib, ptr noundef %i.id, i64 noundef %i.if)
          to label %.noexc.i32 unwind label %bb.ag, !noalias !18545, !inline_history !18559

.noexc.i32:                                       ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i7.i = load ptr, ptr %i.a, align 8, !noalias !18560
  br label %bb.aj

bb.af:                                            ; preds = %bb.aj, %bb.ac
  %.sroa.5.sroa.0.0.i24 = phi ptr [ %.sroa.0.0.i.i8.i, %bb.aj ], [ undef, %bb.ac ]
  %.sroa.0.0.i25 = phi i64 [ 1, %bb.aj ], [ 0, %bb.ac ]
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ih = load i64, ptr %i.ig, align 8, !range !381, !noalias !18545, !noundef !3
  %i.ii = trunc nuw i64 %i.ih to i1
  br i1 %i.ii, label %bb.ak, label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18561)
  br i1 %i.hk, label %bb.ah, label %common.resume

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !18564)
  call void @llvm.experimental.noalias.scope.decl(metadata !18567)
  call void @llvm.experimental.noalias.scope.decl(metadata !18570)
  %i.ik = icmp eq ptr %i.hu, null
  br i1 %i.ik, label %common.resume, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !18573)
  call void @llvm.experimental.noalias.scope.decl(metadata !18576)
  %i.il = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !noalias !18579, !nonnull !3, !noundef !3
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !18580, !noalias !18545, !noundef !3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !18580, !noalias !18545, !noundef !3
  invoke void %i.im(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.in, ptr noundef %i.ip, i64 noundef %i.ir)
          to label %common.resume unwind label %bb.an, !noalias !18545, !inline_history !915

bb.aj:                                            ; preds = %.noexc.i32, %bb.ad
  %.sroa.0.0.i.i8.i = phi ptr [ %.sroa.0.0.copyload.i.i7.i, %.noexc.i32 ], [ null, %bb.ad ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.i22, ptr noundef nonnull align 8 dereferenceable(24) %i.is, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18545
  br label %bb.af

bb.ak:                                            ; preds = %bb.af
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.iu = load i64, ptr %i.it, align 8, !noalias !18545, !noundef !3
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %.sroa.52.0.i26 = phi i64 [ %i.iu, %bb.ak ], [ undef, %bb.af ]
  %.sroa.01.0.i27 = phi i64 [ 1, %bb.ak ], [ 0, %bb.af ]
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.iw = load i64, ptr %i.iv, align 8, !range !381, !noalias !18545, !noundef !3
  %i.ix = trunc nuw i64 %i.iw to i1
  br i1 %i.ix, label %bb.am, label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.am:                                            ; preds = %bb.al
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.iz = load i64, ptr %i.iy, align 8, !noalias !18545, !noundef !3
  br label %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.an:                                            ; preds = %bb.ai
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18545
  unreachable

_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.al, %bb.am
  %.sroa.54.0.i28 = phi i64 [ %i.iz, %bb.am ], [ undef, %bb.al ]
  %.sroa.03.0.i29 = phi i64 [ 1, %bb.am ], [ 0, %bb.al ]
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.jc = load i8, ptr %i.jb, align 8, !range !804, !noalias !18545, !noundef !3
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.je = load i8, ptr %i.jd, align 1, !range !804, !noalias !18545, !noundef !3
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.jg = load i8, ptr %i.jf, align 2, !range !804, !noalias !18545, !noundef !3
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 123
  %i.ji = load i8, ptr %i.jh, align 1, !range !804, !noalias !18545, !noundef !3
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jj, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i25, ptr %.sroa.4111.0..sroa_idx, align 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.5.sroa.0.0.i24, ptr %.sroa.5112.0..sroa_idx, align 8
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.i22, i64 24, i1 false)
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.01.0.i27, ptr %.sroa.7114.0..sroa_idx, align 8
  %.sroa.8115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.52.0.i26, ptr %.sroa.8115.0..sroa_idx, align 8
  %.sroa.9116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.03.0.i29, ptr %.sroa.9116.0..sroa_idx, align 8
  %.sroa.10117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.54.0.i28, ptr %.sroa.10117.0..sroa_idx, align 8
  %.sroa.11118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.jc, ptr %.sroa.11118.0..sroa_idx, align 8
  %.sroa.12119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %i.je, ptr %.sroa.12119.0..sroa_idx, align 1
  %.sroa.13120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 122
  store i8 %i.jg, ptr %.sroa.13120.0..sroa_idx, align 2
  br label %bb.ao

bb.ao:                                            ; preds = %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %bb.j, %bb.i, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, %bb.d, %bb.c, %bb.b
  %.sink130 = phi i64 [ 123, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ], [ 123, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ], [ 75, %bb.j ], [ 59, %bb.i ], [ 75, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ], [ 75, %bb.d ], [ 59, %bb.c ], [ 45, %bb.b ]
  %.sink129 = phi i8 [ %i.ji, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type17FixedLenByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.hg, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type9ByteArrayENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.fe, %bb.j ], [ %i.ec, %bb.i ], [ %i.da, %_RNvXs9_NtNtCs4tdlwR1I4n2_7parquet4file10statisticsINtB5_15ValueStatisticsNtNtB9_9data_type5Int96ENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ca, %bb.d ], [ %i.ay, %bb.c ], [ %i.l, %bb.b ]
  %.sroa.14121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink130
  store i8 %.sink129, ptr %.sroa.14121.0..sroa_idx, align 1
  store i64 %i.g, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1q_6future6future6Futurep6OutputINtNtB1q_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1q_6marker4SendEL_EEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [64 x i8], align 8            ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  %i.k = icmp ult i64 %i.j, 115292150460684698
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !3
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.w = load ptr, ptr %2, align 8, !alias.scope !18581, !noalias !18584, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.aa = add i64 %i.q, 1
  store i64 %i.aa, ptr %i.r, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aq

bb.f:                                             ; preds = %bb.ao, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !18587)
  call void @llvm.experimental.noalias.scope.decl(metadata !18581)
  %i.ab = load atomic ptr, ptr %i.v acquire, align 8, !alias.scope !18587, !noalias !18588 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.u, align 8, !alias.scope !18587, !noalias !18588, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !18589, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8, !noalias !18589
  %.not.i.i = icmp eq ptr %i.ai, %i.ag
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !18589, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.ak, %bb.i ], [ 0, %bb.f ]
  %i.al = load ptr, ptr %i.u, align 8, !alias.scope !18587, !noalias !18588, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w), !noalias !18589
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.an = phi ptr [ %i.al, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.pre.i, %bb.y ] ; 3 uses
  %.sroa.010.0.i = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.010.1.i, %bb.y ] ; 2 uses
  %.sroa.08.0.i = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.08.1.i, %bb.y ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !18589, !noundef !3 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8, !noalias !18589 ; 5 uses
  %i.at = load ptr, ptr %i.ao, align 8, !noalias !18589, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = icmp eq ptr %i.aq, %i.au
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = icmp eq ptr %i.as, null
  br i1 %i.aw, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.az, %bb.m ], [ %i.as, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.as, %bb.m ], [ %i.aq, %bb.j ] ; 9 uses
  %i.ax = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.ax, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.as, ptr %i.ap, align 8, !noalias !18589
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8, !noalias !18589
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.bb = load atomic ptr, ptr %i.ba acquire, align 8, !noalias !18589
  %i.bc = icmp eq ptr %i.bb, %.sroa.01.0.i.i
  br i1 %i.bc, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.ao, align 8, !noalias !18589, !nonnull !3, !noundef !3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store atomic ptr null, ptr %i.bf monotonic, align 8, !noalias !18589
  %i.bg = atomicrmw xchg ptr %i.ba, ptr %i.be acq_rel, align 8, !noalias !18589
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store atomic ptr %i.be, ptr %i.bh release, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 56
  %i.bj = load atomic ptr, ptr %i.bi acquire, align 8, !noalias !18589 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bj, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.ap, align 8, !noalias !18589
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !18589, !noundef !3
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %bb.w, label %bb.s

bb.q:                                             ; preds = %bb.k
  %i.bn = load atomic ptr, ptr %i.v monotonic, align 8, !alias.scope !18587, !noalias !18588
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.am, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bp = load ptr, ptr %i.w, align 8, !noalias !18589, !nonnull !3, !align !356, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !18589, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !18589, !noundef !3
  call void %i.br(ptr noundef %i.bt), !noalias !18589, !inline_history !18590
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18589
  call void @llvm.experimental.noalias.scope.decl(metadata !18591)
  %i.bu = load ptr, ptr %i.v, align 8, !alias.scope !18594, !noalias !18588, !noundef !3 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !18595, !noundef !3
  %i.bx = add i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 32 ; 2 uses
  %i.bz = load atomic ptr, ptr %i.by monotonic, align 8, !noalias !18595 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !18595, !noundef !3 ; 4 uses
  %i.cc = load ptr, ptr %i.u, align 8, !alias.scope !18594, !noalias !18588, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !18595, !nonnull !3, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store atomic ptr %i.cf, ptr %i.by monotonic, align 8, !noalias !18595
  store ptr null, ptr %i.ca, align 8, !noalias !18595
  %i.cg = icmp eq ptr %i.bz, null
  br i1 %i.cg, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr %i.cb, ptr %i.ch, align 8, !noalias !18595
  %i.ci = icmp eq ptr %i.cb, null
  br i1 %i.ci, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cj = icmp eq ptr %i.cb, null
  br i1 %i.cj, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.v, align 8, !alias.scope !18594, !noalias !18588
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store atomic ptr %i.bz, ptr %i.ck monotonic, align 8, !noalias !18595
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.bz, ptr %i.v, align 8, !alias.scope !18594, !noalias !18588
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cl = phi ptr [ %i.bu, %.thread.i.i ], [ %i.bz, %bb.u ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store i64 %i.bx, ptr %i.cm, align 8, !noalias !18595
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.cn = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.cn, ptr %i.d, align 8, !noalias !18589
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 64
  %i.cp = atomicrmw xchg ptr %i.co, i8 0 seq_cst, align 1, !noalias !18589
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.z, label %bb.ac, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18589
  %i.cr = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.cr, ptr %i.e, align 8, !noalias !18589
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !18596
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #58, !noalias !18589
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18589
  br label %bb.y

bb.y:                                             ; preds = %bb.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.1.i = phi i64 [ %i.dg, %bb.ah ], [ %.sroa.010.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.1.i = phi i64 [ %i.dc, %bb.ah ], [ %.sroa.08.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.pre.i = load ptr, ptr %i.u, align 8, !alias.scope !18587, !noalias !18588
  br label %bb.j

bb.z:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.aa unwind label %bb.aj, !noalias !18589

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.ac
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.cv)
          to label %.thread.i unwind label %bb.ai, !noalias !18589

bb.ac:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cv = load ptr, ptr %i.d, align 8, !noalias !18589, !nonnull !3, !noundef !3 ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 81 ; 2 uses
  store atomic i8 0, ptr %i.cw monotonic, align 1, !noalias !18589
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18589
  store ptr @13, ptr %i.c, align 8, !noalias !18589
  store ptr %i.cx, ptr %i.x, align 8, !noalias !18589
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18589
  store <2 x ptr> %4, ptr %i.b, align 16, !noalias !18589
  store ptr null, ptr %i.y, align 16, !noalias !18589
  call void @llvm.experimental.noalias.scope.decl(metadata !18601)
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !18601, !noalias !18604, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18607
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc29.i unwind label %bb.ab, !noalias !18589

.noexc29.i:                                       ; preds = %bb.ac
  %i.da = load i64, ptr %i.a, align 8, !range !866, !noalias !18607, !noundef !3 ; 2 uses
  %i.db = icmp eq i64 %i.da, -9223372036854775789
  br i1 %i.db, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18589
  %i.dc = add i64 %.sroa.08.0.i, 1                ; 2 uses
  %i.dd = load atomic i8, ptr %i.cw monotonic, align 1, !noalias !18589
  %i.de = icmp ne i8 %i.dd, 0
  %i.df = zext i1 %i.de to i64
  %i.dg = add nuw nsw i64 %.sroa.010.0.i, %i.df   ; 2 uses
  %i.dh = atomicrmw xchg ptr %i.v, ptr %i.cx acq_rel, align 8, !alias.scope !18587, !noalias !18588 ; 5 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.critedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load ptr, ptr %i.cd, align 8, !noalias !18589, !nonnull !3, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %i.dm = load atomic ptr, ptr %i.dl acquire, align 8
  %.not.i33.i = icmp eq ptr %i.dm, %i.dk
  br i1 %.not.i33.i, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.do = load i64, ptr %i.dn, align 8, !noundef !3
  %i.dp = add i64 %i.do, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  store i64 %i.dp, ptr %i.dq, align 8, !noalias !18589
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store atomic ptr %i.dh, ptr %i.dr release, align 8, !noalias !18589
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store ptr %i.cx, ptr %i.ds, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  store i64 1, ptr %i.dt, align 8, !noalias !18589
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store atomic ptr null, ptr %i.du release, align 8, !noalias !18589
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.ag
  %i.dv = icmp ugt i64 %i.dg, 1
  %i.dw = icmp eq i64 %i.dc, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.dv, i1 true, i1 %i.dw
  br i1 %or.cond.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18589
  br label %bb.y

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.dx = load ptr, ptr %i.w, align 8, !noalias !18589, !nonnull !3, !align !356, !noundef !3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !18589, !nonnull !3, !noundef !3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !18589, !noundef !3
  call void %i.dz(ptr noundef %i.eb), !noalias !18589, !inline_history !18590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18589
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ai:                                            ; preds = %bb.ak, %bb.ab
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18589
  unreachable

.thread.i:                                        ; preds = %bb.ak, %bb.aj, %bb.ab
  %.pn2559.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.aj ], [ %i.cu, %bb.ab ], [ %lpad.thr_comm.split-lp.i, %bb.ak ]
  resume { ptr, i32 } %.pn2559.i

bb.aj:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18608)
  call void @llvm.experimental.noalias.scope.decl(metadata !18611)
  %i.ed = load ptr, ptr %i.d, align 8, !alias.scope !18614, !noalias !18589, !nonnull !3, !noundef !3
  %i.ee = atomicrmw sub ptr %i.ed, i64 1 release, align 8, !noalias !18615
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.ak, label %.thread.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #58
          to label %.thread.i unwind label %bb.ai, !noalias !18589

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.an

bb.al:                                            ; preds = %.noexc29.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx46.i, i64 64, i1 false), !noalias !18616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18589
  call fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.cv), !noalias !18589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18589
  store i64 %i.da, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  store i64 %i.cz, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %i.eg = load i64, ptr %i.z, align 8, !noundef !3
  %i.eh = icmp eq i64 %i.cz, %i.eg
  br i1 %i.eh, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.ei, align 8, !alias.scope !18587, !noalias !18588
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.ap:                                            ; preds = %bb.al
  %i.ej = add i64 %i.cz, 1
  store i64 %i.ej, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  br label %bb.an

bb.aq:                                            ; preds = %bb.an, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB1x_11DeltaWriter5close000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8.i.i.i.i = alloca [24 x i8], align 8    ; 7 uses
  %.sroa.3.i.i.i.i = alloca [200 x i8], align 8   ; 10 uses
  %i.e = alloca [200 x i8], align 8               ; 6 uses
  %i.f = alloca [208 x i8], align 16              ; 8 uses
  %i.g = alloca [1432 x i8], align 8              ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.521.i.i.i = alloca [64 x i8], align 16   ; 6 uses
  %.sroa.3.i.i.i = alloca [88 x i8], align 8      ; 6 uses
  %.sroa.813.i.i.i = alloca [88 x i8], align 8    ; 7 uses
  %i.i = alloca [32 x i8], align 16               ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.9 = alloca [88 x i8], align 8            ; 6 uses
  %i.n = alloca [112 x i8], align 16              ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.r = icmp ult i64 %i.q, 82351536043346213
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %1, ptr %i.o, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load i64, ptr %i.w, align 16, !noundef !3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !3
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ad = load ptr, ptr %2, align 8, !alias.scope !18617, !noalias !18620, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.580.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.681.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.782.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.587.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.688.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i.i.i, i64 8
  %.sroa.3.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i.i.i, i64 24
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 24
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB8_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3h_6errors15DeltaTableErrorEEENtNtNtB2m_3ops4drop4Drop4dropB3h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.am = add i64 %i.x, 1
  store i64 %i.am, ptr %i.y, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3i_6errors15DeltaTableErrorEEE3popB3i_(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.n, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.eb

bb.f:                                             ; preds = %bb.dz, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !18623)
  call void @llvm.experimental.noalias.scope.decl(metadata !18617)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.521.i.i.i)
  %i.an = load atomic ptr, ptr %i.ac acquire, align 8, !alias.scope !18623, !noalias !18624 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ab, align 8, !alias.scope !18623, !noalias !18624, !nonnull !3, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !18625, !nonnull !3, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 3136
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.au = load atomic ptr, ptr %i.at acquire, align 8, !noalias !18625
  %.not.i.i = icmp eq ptr %i.au, %i.as
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 3152
  %i.aw = load i64, ptr %i.av, align 8, !noalias !18625, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.aw, %bb.i ], [ 0, %bb.f ]
  %i.ax = load ptr, ptr %i.ab, align 8, !alias.scope !18623, !noalias !18624, !nonnull !3, !noundef !3 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad), !noalias !18625
  br label %bb.j

bb.j:                                             ; preds = %bb.y, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_.exit.i
  %i.az = phi ptr [ %i.ax, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_.exit.i ], [ %.pre.i, %bb.y ] ; 3 uses
  %.sroa.010.0.i = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_.exit.i ], [ %.sroa.010.1.i, %bb.y ] ; 2 uses
  %.sroa.08.0.i = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE28atomic_load_head_and_len_allB2k_.exit.i ], [ %.sroa.08.1.i, %bb.y ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !18625, !noundef !3 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 3160
  %i.be = load atomic ptr, ptr %i.bd acquire, align 8, !noalias !18625 ; 5 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !noalias !18625, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = icmp eq ptr %i.bc, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp eq ptr %i.be, null
  br i1 %i.bi, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.bl, %bb.m ], [ %i.be, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.be, %bb.m ], [ %i.bc, %bb.j ] ; 74 uses
  %i.bj = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.bj, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.be, ptr %i.bb, align 8, !noalias !18625
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 3160
  %i.bl = load atomic ptr, ptr %i.bk acquire, align 8, !noalias !18625
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bn = load atomic ptr, ptr %i.bm acquire, align 8, !noalias !18625
  %i.bo = icmp eq ptr %i.bn, %.sroa.01.0.i.i
  br i1 %i.bo, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.ba, align 8, !noalias !18625, !nonnull !3, !noundef !3 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 3176
  store atomic ptr null, ptr %i.br monotonic, align 8, !noalias !18625
  %i.bs = atomicrmw xchg ptr %i.bm, ptr %i.bq acq_rel, align 8, !noalias !18625
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 3160
  store atomic ptr %i.bq, ptr %i.bt release, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3160
  %i.bv = load atomic ptr, ptr %i.bu acquire, align 8, !noalias !18625 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bv, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.bb, align 8, !noalias !18625
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !381, !noalias !18625, !noundef !3
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.ca = load atomic ptr, ptr %i.ac monotonic, align 8, !alias.scope !18623, !noalias !18624
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.dx, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.cc = load ptr, ptr %i.ad, align 8, !noalias !18625, !nonnull !3, !align !356, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !18625, !nonnull !3, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !18625, !noundef !3
  call void %i.ce(ptr noundef %i.cg), !noalias !18625, !inline_history !18626
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18625
  call void @llvm.experimental.noalias.scope.decl(metadata !18627)
  %i.ci = load ptr, ptr %i.ac, align 8, !alias.scope !18630, !noalias !18624, !noundef !3 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 3152
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !18631, !noundef !3
  %i.cl = add i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3136 ; 4 uses
  %i.cn = load atomic ptr, ptr %i.cm monotonic, align 8, !noalias !18631 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3144 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !18631, !noundef !3 ; 4 uses
  %i.cq = load ptr, ptr %i.ab, align 8, !alias.scope !18630, !noalias !18624, !nonnull !3, !noundef !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !18631, !nonnull !3, !noundef !3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store atomic ptr %i.ct, ptr %i.cm monotonic, align 8, !noalias !18631
  store ptr null, ptr %i.co, align 8, !noalias !18631
  %i.cu = icmp eq ptr %i.cn, null
  br i1 %i.cu, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 3144
  store ptr %i.cp, ptr %i.cv, align 8, !noalias !18631
  %i.cw = icmp eq ptr %i.cp, null
  br i1 %i.cw, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cx = icmp eq ptr %i.cp, null
  br i1 %i.cx, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.ac, align 8, !alias.scope !18630, !noalias !18624
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE6unlinkB2k_.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 3136
  store atomic ptr %i.cn, ptr %i.cy monotonic, align 8, !noalias !18631
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cn, ptr %i.ac, align 8, !alias.scope !18630, !noalias !18624
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cz = phi ptr [ %i.ci, %.thread.i.i ], [ %i.cn, %bb.u ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 3152
  store i64 %i.cl, ptr %i.da, align 8, !noalias !18631
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE6unlinkB2k_.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE6unlinkB2k_.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.db = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.db, ptr %i.k, align 8, !noalias !18625
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3168
  %i.dd = atomicrmw xchg ptr %i.dc, i8 0 seq_cst, align 1, !noalias !18625
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.z, label %bb.ac, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18625
  %i.df = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.df, ptr %i.l, align 8, !noalias !18625
  %i.dg = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !18632
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2G_11DeltaWriter5close000EEE9drop_slowB2M_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.l) #58, !noalias !18625
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18625
  br label %bb.y

bb.y:                                             ; preds = %bb.dt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit.i
  %.sroa.010.1.i = phi i64 [ %i.jg, %bb.dt ], [ %.sroa.010.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit.i ]
  %.sroa.08.1.i = phi i64 [ %i.jc, %bb.dt ], [ %.sroa.08.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3f_11DeltaWriter5close000EEEEB3l_.exit.i ]
  %.pre.i = load ptr, ptr %i.ab, align 8, !alias.scope !18623, !noalias !18624
  br label %bb.j

bb.z:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE6unlinkB2k_.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.aa unwind label %.thread60.i, !noalias !18625

.thread60.i:                                      ; preds = %bb.z
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !18637
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.dv, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  unreachable

.thread73.i:                                      ; preds = %bb.ae, %bb.ad
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  %i.dm = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  br label %bb.ab

bb.ab:                                            ; preds = %.thread66.i, %.thread73.i
  %i.dn = phi ptr [ %i.du, %.thread66.i ], [ %i.dm, %.thread73.i ]
  %eh.lpad-body71.i = phi { ptr, i32 } [ %.pn2.i.i.i, %.thread66.i ], [ %lpad.thr_comm.i, %.thread73.i ]
  invoke fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE12release_taskB2k_(ptr noundef nonnull %i.dn)
          to label %.thread.i unwind label %bb.du, !noalias !18625

bb.ac:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE6unlinkB2k_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3169 ; 2 uses
  store atomic i8 0, ptr %i.do monotonic, align 1, !noalias !18625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !18625
  store ptr @15, ptr %i.j, align 8, !noalias !18625
  store ptr %.sroa.01.0.i.i, ptr %i.ae, align 8, !noalias !18625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !18625
  store <2 x ptr> %4, ptr %i.i, align 16, !noalias !18625
  store ptr null, ptr %i.af, align 16, !noalias !18625
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3128
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !18642, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i)
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3120 ; 4 uses
  %i.ds = load i8, ptr %i.dr, align 8, !range !342, !noalias !18646, !noundef !3
  switch i8 %i.ds, label %default.unreachable [
    i8 0, label %.thread31.i.i.i
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.ag
  ]

default.unreachable:                              ; preds = %bb.au, %bb.ag, %bb.ac
  unreachable

.thread31.i.i.i:                                  ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1032 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.dt, ptr noundef nonnull align 8 dereferenceable(1016) %i.ch, i64 1016, i1 false), !noalias !18646
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3112 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.813.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i), !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18646
  br label %bb.ah

.thread66.i:                                      ; preds = %bb.dl, %.body.i.i.i
  %i.du = phi ptr [ %i.iz, %bb.dl ], [ %i.dx, %.body.i.i.i ]
  %.pn2.i.i.i = phi { ptr, i32 } [ %i.ja, %bb.dl ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  store i8 2, ptr %i.dr, align 8, !noalias !18646
  br label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #55
          to label %.noexc28.i unwind label %.thread73.i, !noalias !18625

.noexc28.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #55
          to label %.noexc29.i unwind label %.thread73.i, !noalias !18625

.noexc29.i:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.as, %bb.ar
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cf, %bb.af
  %i.dw = phi ptr [ %i.dy, %bb.af ], [ %i.hl, %bb.cf ]
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.dv, %bb.af ], [ %.pn45.i.i.i.i, %bb.cf ]
  %i.dx = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.813.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtBO_15PartitionWriter5close0EBU_(ptr noundef nonnull align 8 %i.dw) #54
          to label %.thread66.i unwind label %bb.do, !noalias !18650

bb.ag:                                            ; preds = %bb.ac
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3112 ; 5 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !342, !noalias !18651
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.813.i.i.i)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1032 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i), !noalias !18646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18646
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %bb.ah
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.au
  ]

bb.ah:                                            ; preds = %bb.ag, %.thread31.i.i.i
  %i.dz = phi ptr [ %.sroa.8.0..sroa_idx.i.i.i, %.thread31.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.ag ] ; 2 uses
  %i.ea = phi ptr [ %i.dt, %.thread31.i.i.i ], [ %i.dy, %bb.ag ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3113 ; 2 uses
  store i8 0, ptr %i.eb, align 1, !noalias !18651
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 2048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1016) %i.ec, ptr noundef nonnull align 8 dereferenceable(1016) %i.ea, i64 1016, i1 false), !noalias !18651
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 2440
  %i.ee = load i64, ptr %i.ed, align 8, !range !128, !noalias !18651, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.ee, 2
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18651
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !noalias !18651
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 1424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.g, ptr noundef nonnull align 8 dereferenceable(520) %i.eh, i64 520, i1 false), !noalias !18651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18651
  store i8 0, ptr %i.ah, align 8, !alias.scope !18655, !noalias !18658
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3024
  %i.ej = invoke noundef nonnull ptr @_RINvMs_NtNtCskQDtHcQtBkN_5tokio4task8join_setINtB5_7JoinSetINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCsjyY8HP3IvQ6_12object_store4path4PathjNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5spawnNCNvNtNtNtB3h_10operations5write6writer19upload_parquet_file0EB3h_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1432) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93)
          to label %bb.ak unwind label %bb.ai, !noalias !18661

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ej, ptr %i.h, align 8, !noalias !18651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18651
  invoke void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.am, !noalias !18661

bb.al:                                            ; preds = %bb.am, %bb.ai
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ek, %bb.am ], [ %i.ef, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18651
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !18651
  br label %bb.aq

bb.an:                                            ; preds = %.body64.i.i.i.i, %bb.al
  %i.el = phi ptr [ %i.er, %.body64.i.i.i.i ], [ %i.dz, %bb.al ]
  %i.em = phi ptr [ %i.es, %.body64.i.i.i.i ], [ %i.ea, %bb.al ]
  %.pn33.pn.i.i.i.i = phi { ptr, i32 } [ %.pn33.i.i.i.i, %.body64.i.i.i.i ], [ %.pn.i.i.i.i, %bb.al ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3008 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18662)
  call void @llvm.experimental.noalias.scope.decl(metadata !18665)
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !18668, !noalias !18651, !nonnull !3, !noundef !3
  %i.ep = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !18669
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.en) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ch, !noalias !18661

.body64.i.i.i.i:                                  ; preds = %bb.de, %.body52.i.i.i.i, %bb.co, %bb.ap
  %i.er = phi ptr [ %i.in, %.body52.i.i.i.i ], [ %i.in, %bb.de ], [ %i.fg, %bb.ap ], [ %i.fg, %bb.co ]
  %i.es = phi ptr [ %i.io, %.body52.i.i.i.i ], [ %i.io, %bb.de ], [ %i.fh, %bb.ap ], [ %i.fh, %bb.co ]
  %.pn33.i.i.i.i = phi { ptr, i32 } [ %.pn29.pn.pn.i.i.i.i, %.body52.i.i.i.i ], [ %.pn29.pn.pn.i.i.i.i, %bb.de ], [ %i.eu, %bb.ap ], [ %i.hv, %bb.co ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3113
  store i8 0, ptr %i.et, align 1, !noalias !18651
  br label %bb.an

bb.ap:                                            ; preds = %bb.cp
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i.i.i.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abort11AbortHandleECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3064
  store i64 0, ptr %i.ev, align 8, !alias.scope !18670, !noalias !18651
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3072
  store ptr inttoptr (i64 8 to ptr), ptr %i.ew, align 8, !alias.scope !18670, !noalias !18651
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3080
  store i64 0, ptr %i.ex, align 8, !alias.scope !18670, !noalias !18651
  store i8 1, ptr %i.eb, align 1, !noalias !18651
  br label %.thread.i.i.i.i

bb.ar:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #55
          to label %.noexc.i.i.i unwind label %bb.af, !noalias !18650

.noexc.i.i.i:                                     ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #55
          to label %.noexc4.i.i.i unwind label %bb.af, !noalias !18650

.noexc4.i.i.i:                                    ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ax, %bb.aw
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body49.i.i.i.i

.body49.i.i.i.i:                                  ; preds = %bb.az, %bb.at
  %i.ez = phi ptr [ %.phi.trans.insert.i.i.i, %bb.at ], [ %i.fg, %bb.az ]
  %i.fa = phi ptr [ %i.dy, %bb.at ], [ %i.fh, %bb.az ]
  %eh.lpad-body50.i.i.i.i = phi { ptr, i32 } [ %i.ey, %bb.at ], [ %i.fk, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18651
  br label %.body52.i.i.i.i

bb.au:                                            ; preds = %bb.ag
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3104 ; 3 uses
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !342, !noalias !18673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18651
  call void @llvm.experimental.noalias.scope.decl(metadata !18677)
  switch i8 %.pre.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i
    i8 1, label %bb.aw
    i8 2, label %bb.ax
    i8 3, label %bb.ay
end_hunk_1
begin_hunk_2_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB1x_11DeltaWriter5close000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1D_:bb.a

bb.dm:                                            ; preds = %bb.dk
  %.not.i5.i.i.i = icmp eq i64 %.sroa.011.0.copyload12.i.i.i, -9223372036854775711
  br i1 %.not.i5.i.i.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.32..sroa_idx.i.i.i, i64 64, i1 false), !noalias !18625
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit

bb.do:                                            ; preds = %.body.i.i.i
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18650
  unreachable

bb.dp:                                            ; preds = %bb.dj, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.813.i.i.i)
  store i8 3, ptr %i.dr, align 8, !noalias !18646
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !18625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18625
  %i.jc = add i64 %.sroa.08.0.i, 1                ; 2 uses
  %i.jd = load atomic i8, ptr %i.do monotonic, align 1, !noalias !18625
  %i.je = icmp ne i8 %i.jd, 0
  %i.jf = zext i1 %i.je to i64
  %i.jg = add nuw nsw i64 %.sroa.010.0.i, %i.jf   ; 2 uses
  %i.jh = atomicrmw xchg ptr %i.ac, ptr %.sroa.01.0.i.i acq_rel, align 8, !alias.scope !18623, !noalias !18624 ; 5 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %.critedge.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.jj = load ptr, ptr %i.ab, align 8, !alias.scope !18623, !noalias !18624, !nonnull !3, !noundef !3
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !18625, !nonnull !3, !noundef !3
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 3136
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %bb.dq
  %i.jo = load atomic ptr, ptr %i.jn acquire, align 8
  %.not.i33.i = icmp eq ptr %i.jo, %i.jm
  br i1 %.not.i33.i, label %bb.dr, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 3152
  %i.jq = load i64, ptr %i.jp, align 8, !noundef !3
  %i.jr = add i64 %i.jq, 1
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3152
  store i64 %i.jr, ptr %i.js, align 8, !noalias !18625
  store atomic ptr %i.jh, ptr %i.cm release, align 8, !noalias !18625
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 3144
  store ptr %.sroa.01.0.i.i, ptr %i.jt, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE4linkB2k_.exit.i

.critedge.i.i:                                    ; preds = %bb.dp
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 3152
  store i64 1, ptr %i.ju, align 8, !noalias !18625
  store atomic ptr null, ptr %i.cm release, align 8, !noalias !18625
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE4linkB2k_.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE4linkB2k_.exit.i: ; preds = %.critedge.i.i, %bb.ds
  %i.jv = icmp ugt i64 %i.jg, 1
  %i.jw = icmp eq i64 %i.jc, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.jv, i1 true, i1 %i.jw
  br i1 %or.cond.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit.thread14, label %bb.dt

bb.dt:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE4linkB2k_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18625
  br label %bb.y

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit.thread14: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE4linkB2k_.exit.i
  %i.jx = load ptr, ptr %i.ad, align 8, !noalias !18625, !nonnull !3, !align !356, !noundef !3
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !18625, !nonnull !3, !noundef !3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !18625, !noundef !3
  call void %i.jz(ptr noundef %i.kb), !noalias !18625, !inline_history !18626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18625
  br label %.loopexit.sink.split

bb.du:                                            ; preds = %bb.dv, %bb.ab
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18625
  unreachable

.thread.i:                                        ; preds = %bb.dv, %bb.ab, %.thread60.i
  %.pn2459.i = phi { ptr, i32 } [ %i.di, %bb.dv ], [ %eh.lpad-body71.i, %bb.ab ], [ %i.di, %.thread60.i ]
  resume { ptr, i32 } %.pn2459.i

bb.dv:                                            ; preds = %.thread60.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2G_11DeltaWriter5close000EEE9drop_slowB2M_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.k) #58
          to label %.thread.i unwind label %bb.du, !noalias !18625

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit: ; preds = %bb.dm, %bb.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.i.i.i, i64 24, i1 false), !noalias !18734
  store i8 1, ptr %i.dr, align 8, !noalias !18646
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !18625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !18625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.32..sroa_idx, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.521.i.i.i, i64 64, i1 false), !noalias !18734
  call fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EE12release_taskB2k_(ptr noundef nonnull %i.iz), !noalias !18625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18625
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  %i.kd = icmp eq i64 %.sroa.011.0.copyload12.i.i.i, -9223372036854775709
  br i1 %i.kd, label %.loopexit, label %bb.dw

.loopexit.sink.split:                             ; preds = %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit, %.loopexit.sink.split
  store i64 -9223372036854775709, ptr %0, align 16
  br label %bb.dy

bb.dw:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs0_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB2e_11DeltaWriter5close000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2k_.exit
  store i64 %.sroa.011.0.copyload12.i.i.i, ptr %i.m, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, i64 88, i1 false)
  store i64 %i.dq, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 16
  %i.ke = load i64, ptr %i.al, align 8, !noundef !3
  %i.kf = icmp eq i64 %i.dq, %i.ke
  br i1 %i.kf, label %bb.ea, label %bb.dz

bb.dx:                                            ; preds = %bb.q
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.kg, align 8, !alias.scope !18623, !noalias !18624
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.521.i.i.i)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ea, %bb.dx, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dw
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB9_3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtB3m_6errors15DeltaTableErrorEEE4pushB3m_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.ea:                                            ; preds = %bb.dw
  %i.kh = add i64 %i.dq, 1
  store i64 %i.kh, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.m, i64 96, i1 false)
  br label %bb.dy

bb.eb:                                            ; preds = %bb.dy, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.431.i.i.i.i = alloca [16 x i8], align 8  ; 6 uses
  %.sroa.524.i.i.i.i = alloca [104 x i8], align 8 ; 6 uses
  %i.g = alloca [128 x i8], align 8               ; 9 uses
  %i.h = alloca [128 x i8], align 8               ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.4.i.i.i.i = alloca [120 x i8], align 8   ; 6 uses
  %i.j = alloca [136 x i8], align 8               ; 8 uses
  %i.k = alloca [88 x i8], align 8                ; 5 uses
  %i.l = alloca [1016 x i8], align 8              ; 5 uses
  %i.m = alloca [272 x i8], align 8               ; 7 uses
  %i.n = alloca [88 x i8], align 8                ; 11 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [96 x i8], align 16               ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  %i.v = alloca [96 x i8], align 16               ; 18 uses
  %.sroa.3219.i.i.i = alloca [32 x i8], align 8   ; 6 uses
  %.sroa.5220.i.i.i = alloca [32 x i8], align 8   ; 5 uses
  %i.w = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.3195.i.i.i = alloca [72 x i8], align 8   ; 6 uses
  %.sroa.5196.i.i.i = alloca [112 x i8], align 8  ; 5 uses
  %i.x = alloca [192 x i8], align 8               ; 8 uses
  %.sroa.3183.i.i.i = alloca [32 x i8], align 8   ; 6 uses
  %.sroa.5184.i.i.i = alloca [32 x i8], align 8   ; 5 uses
  %i.y = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.10169.i.i.i = alloca [16 x i8], align 8  ; 5 uses
  %.sroa.5165.i.i.i = alloca [120 x i8], align 8  ; 5 uses
  %.sroa.9.i.i.i = alloca [120 x i8], align 8     ; 7 uses
  %.sroa.0151.i.i.i = alloca [416 x i8], align 8  ; 8 uses
  %.sroa.0153.i.i.i = alloca [416 x i8], align 8  ; 10 uses
  %.sroa.8135.i.i.i = alloca [24 x i8], align 8   ; 7 uses
  %i.z = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.6141.i.i.i = alloca [24 x i8], align 8   ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.7.i.i.i = alloca [24 x i8], align 8      ; 8 uses
  %.sroa.8.i.i.i = alloca [24 x i8], align 8      ; 8 uses
  %.sroa.10.i.i = alloca [88 x i8], align 8       ; 5 uses
  %i.ac = alloca [32 x i8], align 16              ; 10 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 6 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [112 x i8], align 16             ; 5 uses
  %.sroa.9 = alloca [88 x i8], align 8            ; 5 uses
  %i.ah = alloca [112 x i8], align 16             ; 2 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 82351536043346213
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %1, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.ar = load i64, ptr %i.aq, align 16, !noundef !3 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !3
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ax = load ptr, ptr %2, align 8, !alias.scope !18735, !noalias !18738, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.42.0..sroa_idx.i.i61.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2144.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.10131.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.3195.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5196.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %.sroa.3219.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5220.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.3223.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.2222.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3183.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5184.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.sroa.3187.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.2186.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.0..sroa_idx19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %.sroa.3.0..sroa_idx.i72.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx.i73.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.524.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.3.0..sroa_idx20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.524.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.phi.trans.insert33.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.3175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.2174.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.ad, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.bi = add i64 %i.ar, 1
  store i64 %i.bi, ptr %i.as, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.ah, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.hv

bb.f:                                             ; preds = %bb.ht, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !18741)
  call void @llvm.experimental.noalias.scope.decl(metadata !18735)
  %i.bj = load atomic ptr, ptr %i.aw acquire, align 8, !alias.scope !18741, !noalias !18742 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %i.av, align 8, !alias.scope !18741, !noalias !18742, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !18742, !nonnull !3, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 848
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.bq = load atomic ptr, ptr %i.bp acquire, align 8, !noalias !18742
  %.not.i.i = icmp eq ptr %i.bq, %i.bo
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 864
  %i.bs = load i64, ptr %i.br, align 8, !noalias !18742, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.f ]
  %i.bt = load ptr, ptr %i.av, align 8, !alias.scope !18741, !noalias !18742, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ax), !noalias !18742
  br label %.outer

.outer:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.pq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.pm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bv = load ptr, ptr %i.av, align 8, !alias.scope !18741, !noalias !18742, !nonnull !3, !noundef !3 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !18742, !noundef !3 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 872
  %i.ca = load atomic ptr, ptr %i.bz acquire, align 8, !noalias !18742 ; 5 uses
  %i.cb = load ptr, ptr %i.bw, align 8, !noalias !18742, !nonnull !3, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = icmp eq ptr %i.by, %i.cc
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ce = icmp eq ptr %i.ca, null
  br i1 %i.ce, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.ch, %bb.m ], [ %i.ca, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ca, %bb.m ], [ %i.by, %bb.j ] ; 95 uses
  %i.cf = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.cf, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.ca, ptr %i.bx, align 8, !noalias !18742
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 872
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8, !noalias !18742
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 2 uses
  %i.cj = load atomic ptr, ptr %i.ci acquire, align 8, !noalias !18742
  %i.ck = icmp eq ptr %i.cj, %.sroa.01.0.i.i
  br i1 %i.ck, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %i.bw, align 8, !noalias !18742, !nonnull !3, !noundef !3 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 888
  store atomic ptr null, ptr %i.cn monotonic, align 8, !noalias !18742
  %i.co = atomicrmw xchg ptr %i.ci, ptr %i.cm acq_rel, align 8, !noalias !18742
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 872
  store atomic ptr %i.cm, ptr %i.cp release, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 872
  %i.cr = load atomic ptr, ptr %i.cq acquire, align 8, !noalias !18742 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.cr, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.bx, align 8, !noalias !18742
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !range !381, !noalias !18742, !noundef !3
  %i.cv = trunc nuw i64 %i.cu to i1
  br i1 %i.cv, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.cw = load atomic ptr, ptr %i.aw monotonic, align 8, !alias.scope !18741, !noalias !18742
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.hr, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.cy = load ptr, ptr %i.ax, align 8, !noalias !18742, !nonnull !3, !align !356, !noundef !3
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !18742, !nonnull !3, !noundef !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !18742, !noundef !3
  call void %i.da(ptr noundef %i.dc), !noalias !18742, !inline_history !18743
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !18744
  call void @llvm.experimental.noalias.scope.decl(metadata !18745)
  %i.de = load ptr, ptr %i.aw, align 8, !alias.scope !18748, !noalias !18742, !noundef !3 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 864
  %i.dg = load i64, ptr %i.df, align 8, !noalias !18749, !noundef !3
  %i.dh = add i64 %i.dg, -1
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 848 ; 4 uses
  %i.dj = load atomic ptr, ptr %i.di monotonic, align 8, !noalias !18749 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 856 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !18749, !noundef !3 ; 4 uses
  %i.dm = load ptr, ptr %i.av, align 8, !alias.scope !18748, !noalias !18742, !nonnull !3, !noundef !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !18749, !nonnull !3, !noundef !3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store atomic ptr %i.dp, ptr %i.di monotonic, align 8, !noalias !18749
  store ptr null, ptr %i.dk, align 8, !noalias !18749
  %i.dq = icmp eq ptr %i.dj, null
  br i1 %i.dq, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 856
  store ptr %i.dl, ptr %i.dr, align 8, !noalias !18749
  %i.ds = icmp eq ptr %i.dl, null
  br i1 %i.ds, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.dt = icmp eq ptr %i.dl, null
  br i1 %i.dt, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.aw, align 8, !alias.scope !18748, !noalias !18742
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 848
  store atomic ptr %i.dj, ptr %i.du monotonic, align 8, !noalias !18749
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.dj, ptr %i.aw, align 8, !alias.scope !18748, !noalias !18742
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.dv = phi ptr [ %i.de, %.thread.i.i ], [ %i.dj, %bb.u ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 864
  store i64 %i.dh, ptr %i.dw, align 8, !noalias !18749
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.dx = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.dx, ptr %i.ae, align 8, !noalias !18744
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 880 ; 3 uses
  %i.dz = atomicrmw xchg ptr %i.dy, i8 0 seq_cst, align 1, !noalias !18742
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %bb.y, label %bb.ai, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !18744
  %i.eb = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.eb, ptr %i.af, align 8, !noalias !18744
  %i.ec = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !18750
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.af) #58, !noalias !18742
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !18744
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.ho, !noalias !18742

bb.z:                                             ; preds = %bb.y
  unreachable

.body.i.thread22:                                 ; preds = %bb.cb, %bb.cc
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.body.i.thread22, %.body.i.thread16
  %.pn.i21 = phi { ptr, i32 } [ %.pn39.i.i.i, %.body.i.thread16 ], [ %lpad.thr_comm, %.body.i.thread22 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18755
  store ptr %i.ef, ptr %i.a, align 8, !noalias !18755
  %i.eg = atomicrmw xchg ptr %i.dy, i8 1 seq_cst, align 1, !noalias !18755
  %i.eh = icmp eq i8 %i.eg, 0                     ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ee)
          to label %bb.ac unwind label %bb.ab, !noalias !18755

bb.ab:                                            ; preds = %bb.aa
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  store i64 0, ptr %i.ee, align 8, !noalias !18755
  br i1 %i.eh, label %bb.af, label %.body

bb.ac:                                            ; preds = %bb.aa
  store i64 0, ptr %i.ee, align 8, !noalias !18755
  br i1 %i.eh, label %bb.ad, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.ej = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !18760
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.ae, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !noalias !18742
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
          to label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.hn

bb.af:                                            ; preds = %bb.ab
  %i.el = atomicrmw sub ptr %i.ef, i64 1 release, align 8, !noalias !18765
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  fence acquire, !noalias !18742
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
          to label %.body unwind label %bb.ah, !noalias !18755

bb.ah:                                            ; preds = %bb.ag
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18755
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18755
  br label %.thread.i

bb.ai:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 881 ; 2 uses
  store atomic i8 0, ptr %i.eo monotonic, align 1, !noalias !18742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !18744
  store ptr @16, ptr %i.ad, align 8, !noalias !18744
  store ptr %.sroa.01.0.i.i, ptr %i.ay, align 8, !noalias !18744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !18744
  store <2 x ptr> %4, ptr %i.ac, align 16, !noalias !18744
  store ptr null, ptr %i.az, align 16, !noalias !18744
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 840
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !18770, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !18774
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3219.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5220.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3195.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5196.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3183.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5184.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10169.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5165.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8135.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !18774
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 168 ; 4 uses
  %i.es = load i8, ptr %i.er, align 8, !range !789, !noalias !18775, !noundef !3
  switch i8 %i.es, label %default.unreachable [
    i8 0, label %bb.aj
    i8 1, label %bb.cb
    i8 2, label %bb.cc
    i8 3, label %bb.cd
    i8 4, label %bb.dq
    i8 5, label %bb.fd
    i8 6, label %bb.fp
    i8 7, label %bb.gb
  ]

default.unreachable:                              ; preds = %bb.dq, %bb.cd, %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 169 ; 2 uses
  store i8 1, ptr %i.et, align 1, !noalias !18775
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 40 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18779)
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 84 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !alias.scope !18779, !noalias !18775, !noundef !3 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !18779, !noalias !18775, !nonnull !3, !noundef !3 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 56 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !18779, !noalias !18775, !noundef !3 ; 3 uses
  %i.ez = zext i32 %i.ew to i64                   ; 5 uses
  %i.fa = icmp eq i32 %i.ew, 0
  br i1 %i.fa, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %.val1.i.i.i.i, %i.ez
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp eq i64 %.val1.i.i.i.i, %i.ez
  br i1 %i.fb, label %bb.ap, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ez
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !18782, !noalias !18789, !noundef !3
  %i.fe = icmp sgt i8 %i.fd, -65
  br i1 %i.fe, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.ez, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #55
          to label %.noexc.i.i.i unwind label %bb.ao, !noalias !18790

.noexc.i.i.i:                                     ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i.i.i

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.fg = icmp eq i32 %i.ew, 4
  br i1 %i.fg, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.ap
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly @67, i64 %i.ez), !alias.scope !18791, !noalias !18790
  %i.fh = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.fh, label %bb.aq, label %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i

_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.ap, %bb.aj
  %i.fi = invoke { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.eu)
          to label %bb.bb unwind label %bb.ba, !noalias !18790 ; 2 uses

bb.aq:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !18795
  call void @llvm.experimental.noalias.scope.decl(metadata !18796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !18795
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.eu)
          to label %.noexc54.i.i.i unwind label %.loopexit.i, !noalias !18790

.noexc54.i.i.i:                                   ; preds = %bb.aq
  %i.fj = load i32, ptr %i.ba, align 4, !range !7827, !noalias !18799, !noundef !3
  %.not.i.i.i.i = icmp eq i32 %i.fj, 1114112
  br i1 %.not.i.i.i.i, label %.thread225.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc54.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !18799
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4host(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.eu)
          to label %.noexc55.i.i.i unwind label %.loopexit.i, !noalias !18790

.noexc55.i.i.i:                                   ; preds = %bb.ar
  %i.fk = load i8, ptr %i.t, align 8, !range !342, !noalias !18799, !noundef !3
  switch i8 %i.fk, label %bb.ay [
    i8 3, label %bb.as
    i8 0, label %bb.ax
  ]

bb.as:                                            ; preds = %bb.az, %.noexc55.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !18799
  %i.fl = load i64, ptr %i.ey, align 8, !alias.scope !18796, !noalias !18801, !noundef !3 ; 4 uses
  %i.fm = load i32, ptr %i.ev, align 4, !alias.scope !18796, !noalias !18801, !noundef !3 ; 2 uses
  %.val.i52.i.i.i = load ptr, ptr %i.ex, align 8, !alias.scope !18796, !noalias !18801, !nonnull !3, !noundef !3 ; 2 uses
  %i.fn = zext i32 %i.fm to i64                   ; 5 uses
  %i.fo = icmp eq i32 %i.fm, 0
  br i1 %i.fo, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i.i.i.i.i53.i.i.i = icmp ugt i64 %i.fl, %i.fn
  br i1 %.not.i.i.i.i.i53.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = icmp eq i64 %i.fl, %i.fn
  br i1 %i.fp, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i52.i.i.i, i64 %i.fn
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !18802, !noalias !18809, !noundef !3
  %i.fs = icmp sgt i8 %i.fr, -65
  br i1 %i.fs, label %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i52.i.i.i, i64 noundef %i.fl, i64 noundef 0, i64 noundef range(i64 0, 4294967296) %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #55
          to label %.noexc56.i.i.i unwind label %.loopexit.split-lp.i, !noalias !18790

.noexc56.i.i.i:                                   ; preds = %bb.aw
  unreachable

_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.av, %bb.au, %bb.as
  %i.ft = add nuw nsw i64 %i.fn, 3
  %i.fu = call i64 @llvm.usub.sat.i64(i64 %i.fl, i64 %i.ft)
  invoke void @_RNvCseo6ZV82fEK1_3url28file_url_segments_to_pathbuf(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef %i.fu, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %i.u)
          to label %bb.be unwind label %.loopexit.i, !noalias !18790

bb.ax:                                            ; preds = %.noexc55.i.i.i
  %i.fv = load i64, ptr %i.bb, align 8, !noalias !18799, !noundef !3
  %i.fw = icmp eq i64 %i.fv, 9
  br i1 %i.fw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax, %.noexc55.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !18799
  br label %.thread225.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fx = load ptr, ptr %i.bc, align 8, !noalias !18799, !nonnull !3, !noundef !3 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 1
  %i.fz = xor i64 %i.fy, 8317981851476258668
  %i.ga = getelementptr i8, ptr %i.fx, i64 8
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = zext i8 %i.gb to i64
  %i.gd = xor i64 %i.gc, 116
  %i.ge = or i64 %i.fz, %i.gd
  %i.gf = icmp ne i64 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.as, label %bb.ay

bb.ba:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i.i.i

bb.bb:                                            ; preds = %_RNvXs7_NtNtCsbvkFyIu7lgC_4core3cmp5implsReNtB7_9PartialEq2eqCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %i.gj = extractvalue { ptr, i64 } %i.fi, 0
  %i.gk = extractvalue { ptr, i64 } %i.fi, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  invoke void @_RNvXs0_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathINtNtCsbvkFyIu7lgC_4core7convert4FromReE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.gl, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gj, i64 noundef %i.gk)
          to label %bb.bd unwind label %bb.bc, !noalias !18790

bb.bc:                                            ; preds = %bb.bb
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body82.i.i.i

bb.bd:                                            ; preds = %bb.bn, %bb.bb
  %i.gn = invoke noundef zeroext i1 @_RNvXs2_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7defaultNtCseo6ZV82fEK1_3url3UrlNtB5_6UrlExt12is_presigned(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.eu)
          to label %bb.bp unwind label %bb.bo, !noalias !18790

.loopexit.i:                                      ; preds = %_RINvMs_Cseo6ZV82fEK1_3urlNtB5_3Url5sliceINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ar, %bb.aq
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp.i:                             ; preds = %bb.aw
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

end_hunk_2
begin_hunk_3_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18976
  store ptr %i.pd, ptr %i.b, align 8, !noalias !18976
  %i.pe = atomicrmw xchg ptr %i.dy, i8 1 seq_cst, align 1, !noalias !18981
  %i.pf = icmp eq i8 %i.pe, 0                     ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.pc)
          to label %bb.hd unwind label %bb.hc, !noalias !18981

bb.hc:                                            ; preds = %bb.hb
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.pc, align 8, !noalias !18981
  br i1 %i.pf, label %bb.hg, label %.thread.i

bb.hd:                                            ; preds = %bb.hb
  store i64 0, ptr %i.pc, align 8, !noalias !18981
  br i1 %i.pf, label %bb.he, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.he:                                            ; preds = %bb.hd
  %i.ph = atomicrmw sub ptr %i.pd, i64 1 release, align 8, !noalias !18982
  %i.pi = icmp eq i64 %i.ph, 1
  br i1 %i.pi, label %bb.hf, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.hf:                                            ; preds = %bb.he
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b) #58, !noalias !18742
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.hg:                                            ; preds = %bb.hc
  %i.pj = atomicrmw sub ptr %i.pd, i64 1 release, align 8, !noalias !18987
  %i.pk = icmp eq i64 %i.pj, 1
  br i1 %i.pk, label %bb.hh, label %.thread.i

bb.hh:                                            ; preds = %bb.hg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b) #58
          to label %.thread.i unwind label %bb.hi, !noalias !18981

bb.hi:                                            ; preds = %bb.hh
  %i.pl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18981
  unreachable

bb.hj:                                            ; preds = %_RNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %_RNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !18744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !18744
  %i.pm = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  %i.pn = load atomic i8, ptr %i.eo monotonic, align 1, !noalias !18742
  %i.po = icmp ne i8 %i.pn, 0
  %i.pp = zext i1 %i.po to i64
  %i.pq = add nuw nsw i64 %.sroa.010.0.i.ph, %i.pp ; 2 uses
  %i.pr = atomicrmw xchg ptr %i.aw, ptr %.sroa.01.0.i.i acq_rel, align 8, !noalias !18742 ; 5 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %.critedge.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.pt = load ptr, ptr %i.av, align 8, !noalias !18742, !nonnull !3, !noundef !3
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !noalias !18742, !nonnull !3, !noundef !3
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 848
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hl, %bb.hk
  %i.py = load atomic ptr, ptr %i.px acquire, align 8
  %.not.i32.i = icmp eq ptr %i.py, %i.pw
  br i1 %.not.i32.i, label %bb.hl, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pr, i64 864
  %i.qa = load i64, ptr %i.pz, align 8, !noundef !3
  %i.qb = add i64 %i.qa, 1
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 864
  store i64 %i.qb, ptr %i.qc, align 8, !noalias !18742
  store atomic ptr %i.pr, ptr %i.di release, align 8, !noalias !18742
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pr, i64 856
  store ptr %.sroa.01.0.i.i, ptr %i.qd, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.hj
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 864
  store i64 1, ptr %i.qe, align 8, !noalias !18742
  store atomic ptr null, ptr %i.di release, align 8, !noalias !18742
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.hm
  %i.qf = icmp samesign ugt i64 %i.pq, 1
  %i.qg = icmp eq i64 %i.pm, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.qf, i1 true, i1 %i.qg
  br i1 %or.cond.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18744
  br label %.outer

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.qh = load ptr, ptr %i.ax, align 8, !noalias !18742, !nonnull !3, !align !356, !noundef !3
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !noalias !18742, !nonnull !3, !noundef !3
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !noalias !18742, !noundef !3
  call void %i.qj(ptr noundef %i.ql), !noalias !18742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18744
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.hn:                                            ; preds = %bb.ae, %bb.hp
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.af, %bb.ag, %bb.hn
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18742
  unreachable

.thread.i:                                        ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.hp, %bb.ho, %bb.hh, %bb.hg, %bb.hc
  %.pn2454.i = phi { ptr, i32 } [ %i.pg, %bb.hh ], [ %.pn.i21, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.ho ], [ %lpad.thr_comm.split-lp.i, %bb.hp ], [ %i.pg, %bb.hc ], [ %i.pg, %bb.hg ]
  resume { ptr, i32 } %.pn2454.i

bb.ho:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  %i.qo = atomicrmw sub ptr %i.qn, i64 1 release, align 8, !noalias !18992
  %i.qp = icmp eq i64 %i.qo, 1
  br i1 %i.qp, label %bb.hp, label %.thread.i

bb.hp:                                            ; preds = %bb.ho
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ae) #58
          to label %.thread.i unwind label %bb.hn, !noalias !18742

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.hd, %bb.he, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18744
  %i.qq = icmp eq i64 %.sroa.01.0.copyload2.i.i, -9223372036854775741
  br i1 %i.qq, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.hq

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.hs

bb.hq:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.01.0.copyload2.i.i, ptr %i.ag, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, i64 88, i1 false)
  store i64 %i.eq, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 16
  %i.qr = load i64, ptr %i.bh, align 8, !noundef !3
  %i.qs = icmp eq i64 %i.eq, %i.qr
  br i1 %i.qs, label %bb.hu, label %bb.ht

bb.hr:                                            ; preds = %bb.q
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.qt, align 8, !alias.scope !18741, !noalias !18742
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hu, %bb.hr, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.hv

bb.ht:                                            ; preds = %bb.hq
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.hu:                                            ; preds = %bb.hq
  %i.qu = add i64 %i.eq, 1
  store i64 %i.qu, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.ag, i64 96, i1 false)
  br label %bb.hs

bb.hv:                                            ; preds = %bb.hs, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 16               ; 13 uses
  %i.e = alloca [200 x i8], align 8               ; 12 uses
  %.sroa.8136.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.f = alloca [152 x i8], align 8               ; 8 uses
  %i.g = alloca [304 x i8], align 16              ; 11 uses
  %i.h = alloca [200 x i8], align 8               ; 5 uses
  %i.i = alloca [200 x i8], align 8               ; 8 uses
  %.sroa.8128.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [200 x i8], align 8               ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.3121.i.i.i.i = alloca [72 x i8], align 8 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [112 x i8], align 8   ; 6 uses
  %i.n = alloca [192 x i8], align 8               ; 8 uses
  %i.o = alloca [192 x i8], align 8               ; 19 uses
  %.sroa.8.i.i.i.i = alloca [24 x i8], align 8    ; 7 uses
  %i.p = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7.i.i = alloca [88 x i8], align 8        ; 5 uses
  %i.q = alloca [32 x i8], align 16               ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.9 = alloca [88 x i8], align 8            ; 5 uses
  %i.v = alloca [112 x i8], align 16              ; 2 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = icmp ult i64 %i.y, 82351536043346213
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %1, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load i64, ptr %i.ae, align 16, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !3
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.al = load ptr, ptr %2, align 8, !alias.scope !18997, !noalias !19000, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10.0..sroa_idx113.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.2.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.3121.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.sroa.5123.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 120 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10130.0..sroa_idx131.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.10130.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.8128.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 298
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 297
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.10138.0..sroa_idx139.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.0148.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0148.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %.sroa.5149.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %.sroa.8151.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 5 uses
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2m_3pin3PinINtNtB8_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2i_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2m_6marker4SendEL_EEB5k_EEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.bd = add i64 %i.af, 1
  store i64 %i.bd, ptr %i.ag, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2j_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2n_6marker4SendEL_EEB5l_EEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ey

bb.f:                                             ; preds = %bb.ew, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19003)
  call void @llvm.experimental.noalias.scope.decl(metadata !18997)
  %i.be = load atomic ptr, ptr %i.ak acquire, align 8, !alias.scope !19003, !noalias !19004 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.aj, align 8, !alias.scope !19003, !noalias !19004, !nonnull !3, !noundef !3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !19004, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 488
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.bl = load atomic ptr, ptr %i.bk acquire, align 8, !noalias !19004
  %.not.i.i = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 504
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !19004, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.bn, %bb.i ], [ 0, %bb.f ]
  %i.bo = load ptr, ptr %i.aj, align 8, !alias.scope !19003, !noalias !19004, !nonnull !3, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al), !noalias !19004
  br label %.outer

.outer:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.mu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.mq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bq = load ptr, ptr %i.aj, align 8, !alias.scope !19003, !noalias !19004, !nonnull !3, !noundef !3 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !19004, !noundef !3 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 512
  %i.bv = load atomic ptr, ptr %i.bu acquire, align 8, !noalias !19004 ; 5 uses
  %i.bw = load ptr, ptr %i.br, align 8, !noalias !19004, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = icmp eq ptr %i.bt, %i.bx
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = icmp eq ptr %i.bv, null
  br i1 %i.bz, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.cc, %bb.m ], [ %i.bv, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.bv, %bb.m ], [ %i.bt, %bb.j ] ; 69 uses
  %i.ca = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.ca, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.bv, ptr %i.bs, align 8, !noalias !19004
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 512
  %i.cc = load atomic ptr, ptr %i.cb acquire, align 8, !noalias !19004
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.ce = load atomic ptr, ptr %i.cd acquire, align 8, !noalias !19004
  %i.cf = icmp eq ptr %i.ce, %.sroa.01.0.i.i
  br i1 %i.cf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.br, align 8, !noalias !19004, !nonnull !3, !noundef !3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 528
  store atomic ptr null, ptr %i.ci monotonic, align 8, !noalias !19004
  %i.cj = atomicrmw xchg ptr %i.cd, ptr %i.ch acq_rel, align 8, !noalias !19004
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 512
  store atomic ptr %i.ch, ptr %i.ck release, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 512
  %i.cm = load atomic ptr, ptr %i.cl acquire, align 8, !noalias !19004 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.cm, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.bs, align 8, !noalias !19004
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !range !381, !noalias !19004, !noundef !3
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.cr = load atomic ptr, ptr %i.ak monotonic, align 8, !alias.scope !19003, !noalias !19004
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.eu, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.ct = load ptr, ptr %i.al, align 8, !noalias !19004, !nonnull !3, !align !356, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !19004, !nonnull !3, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !19004, !noundef !3
  call void %i.cv(ptr noundef %i.cx), !noalias !19004, !inline_history !19005
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !19006
  call void @llvm.experimental.noalias.scope.decl(metadata !19007)
  %i.cz = load ptr, ptr %i.ak, align 8, !alias.scope !19010, !noalias !19004, !noundef !3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 504
  %i.db = load i64, ptr %i.da, align 8, !noalias !19011, !noundef !3
  %i.dc = add i64 %i.db, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 488 ; 4 uses
  %i.de = load atomic ptr, ptr %i.dd monotonic, align 8, !noalias !19011 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 496 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !19011, !noundef !3 ; 4 uses
  %i.dh = load ptr, ptr %i.aj, align 8, !alias.scope !19010, !noalias !19004, !nonnull !3, !noundef !3
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !19011, !nonnull !3, !noundef !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store atomic ptr %i.dk, ptr %i.dd monotonic, align 8, !noalias !19011
  store ptr null, ptr %i.df, align 8, !noalias !19011
  %i.dl = icmp eq ptr %i.de, null
  br i1 %i.dl, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 496
  store ptr %i.dg, ptr %i.dm, align 8, !noalias !19011
  %i.dn = icmp eq ptr %i.dg, null
  br i1 %i.dn, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.do = icmp eq ptr %i.dg, null
  br i1 %i.do, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.ak, align 8, !alias.scope !19010, !noalias !19004
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 488
  store atomic ptr %i.de, ptr %i.dp monotonic, align 8, !noalias !19011
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.de, ptr %i.ak, align 8, !alias.scope !19010, !noalias !19004
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.dq = phi ptr [ %i.cz, %.thread.i.i ], [ %i.de, %bb.u ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 504
  store i64 %i.dc, ptr %i.dr, align 8, !noalias !19011
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.ds = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.ds, ptr %i.s, align 8, !noalias !19006
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 520 ; 3 uses
  %i.du = atomicrmw xchg ptr %i.dt, i8 0 seq_cst, align 1, !noalias !19004
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.y, label %bb.ai, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !19006
  %i.dw = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.dw, ptr %i.t, align 8, !noalias !19006
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !19012
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.t) #58, !noalias !19004
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !19006
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.er, !noalias !19004

bb.z:                                             ; preds = %bb.y
  unreachable

.body.i.thread22:                                 ; preds = %bb.aj, %bb.ak
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.ea = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  br label %bb.aa

bb.aa:                                            ; preds = %.body.i.thread22, %.body.i.thread16
  %i.eb = phi ptr [ %i.ez, %.body.i.thread16 ], [ %i.ea, %.body.i.thread22 ] ; 3 uses
  %i.ec = phi ptr [ %i.fa, %.body.i.thread16 ], [ %i.dz, %.body.i.thread22 ] ; 3 uses
  %.pn.i21 = phi { ptr, i32 } [ %.pn4.i.i.i, %.body.i.thread16 ], [ %lpad.thr_comm, %.body.i.thread22 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19017
  store ptr %i.eb, ptr %i.a, align 8, !noalias !19017
  %i.ed = atomicrmw xchg ptr %i.dt, i8 1 seq_cst, align 1, !noalias !19017
  %i.ee = icmp eq i8 %i.ed, 0                     ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ec)
          to label %bb.ac unwind label %bb.ab, !noalias !19017

bb.ab:                                            ; preds = %bb.aa
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  store i64 0, ptr %i.ec, align 8, !noalias !19017
  br i1 %i.ee, label %bb.af, label %.body

bb.ac:                                            ; preds = %bb.aa
  store i64 0, ptr %i.ec, align 8, !noalias !19017
  br i1 %i.ee, label %bb.ad, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.eg = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !19022
  %i.eh = icmp eq i64 %i.eg, 1
  br i1 %i.eh, label %bb.ae, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  fence acquire, !noalias !19004
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
          to label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.eq

bb.af:                                            ; preds = %bb.ab
  %i.ei = atomicrmw sub ptr %i.eb, i64 1 release, align 8, !noalias !19027
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  fence acquire, !noalias !19004
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
          to label %.body unwind label %bb.ah, !noalias !19017

bb.ah:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19017
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19017
  br label %.thread.i

bb.ai:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 521 ; 2 uses
  store atomic i8 0, ptr %i.el monotonic, align 1, !noalias !19004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !19006
  store ptr @17, ptr %i.r, align 8, !noalias !19006
  store ptr %.sroa.01.0.i.i, ptr %i.am, align 8, !noalias !19006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !19006
  store <2 x ptr> %4, ptr %i.q, align 16, !noalias !19006
  store ptr null, ptr %i.an, align 16, !noalias !19006
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 480
  %i.en = load i64, ptr %i.em, align 8, !noalias !19032, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 472 ; 4 uses
  %i.ep = load i8, ptr %i.eo, align 8, !range !342, !noalias !19036, !noundef !3
  switch i8 %i.ep, label %default.unreachable [
    i8 0, label %.thread.i.i.i
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 3, label %bb.al
  ]

default.unreachable:                              ; preds = %bb.al, %bb.ai
  unreachable

.thread.i.i.i:                                    ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !19036, !nonnull !3, !noundef !3 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 128
  %i.et = load ptr, ptr %i.es, align 8, !noalias !19036, !nonnull !3, !align !356, !noundef !3 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 136
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !19036, !nonnull !3, !noundef !3 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !19036, !noundef !3 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ey, ptr noundef nonnull align 8 dereferenceable(104) %i.cy, i64 104, i1 false), !noalias !19036
  %.sroa.79.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 256
  store ptr %i.er, ptr %.sroa.79.0..sroa_idx.i.i.i, align 8, !noalias !19036
  %.sroa.810.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 264
  store ptr %i.et, ptr %.sroa.810.0..sroa_idx.i.i.i, align 8, !noalias !19036
  %.sroa.911.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 272
  store ptr %i.ev, ptr %.sroa.911.0..sroa_idx.i.i.i, align 8, !noalias !19036
  %.sroa.1012.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 280
  store i64 %i.ex, ptr %.sroa.1012.0..sroa_idx.i.i.i, align 8, !noalias !19036
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 464 ; 2 uses
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !19036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8136.i.i.i.i), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8128.i.i.i.i), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3121.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  br label %bb.am

.body.i.thread16:                                 ; preds = %bb.ec, %.body.i.i.i
  %i.ez = phi ptr [ %i.mc, %bb.ec ], [ %i.mg, %.body.i.i.i ]
  %i.fa = phi ptr [ %i.mb, %bb.ec ], [ %i.mf, %.body.i.i.i ]
  %.pn4.i.i.i = phi { ptr, i32 } [ %i.md, %bb.ec ], [ %.pn2.i.i.i, %.body.i.i.i ]
  store i8 2, ptr %i.eo, align 8, !noalias !19036
  br label %bb.aa

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #55
          to label %.noexc.i unwind label %.body.i.thread22, !noalias !19004

.noexc.i:                                         ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @71) #55
          to label %.noexc28.i unwind label %.body.i.thread22, !noalias !19004

.noexc28.i:                                       ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ai
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 464 ; 3 uses
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !342, !noalias !19041
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8136.i.i.i.i), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8128.i.i.i.i), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !19040
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3121.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  switch i8 %.pre.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i
    i8 1, label %bb.az
    i8 2, label %bb.ba
    i8 3, label %bb.an
  ]

._crit_edge.i.i:                                  ; preds = %bb.al
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 256
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !19041
  %.phi.trans.insert7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 264
  %.pre8.i.i = load ptr, ptr %.phi.trans.insert7.i.i, align 8, !noalias !19041
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 272
  %.pre10.i.i = load ptr, ptr %.phi.trans.insert9.i.i, align 8, !noalias !19041
  %.phi.trans.insert11.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 280
  %.pre12.i.i = load i64, ptr %.phi.trans.insert11.i.i, align 8, !noalias !19041
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i.i, %.thread.i.i.i
  %i.fc = phi i64 [ %i.ex, %.thread.i.i.i ], [ %.pre12.i.i, %._crit_edge.i.i ]
  %i.fd = phi ptr [ %i.ev, %.thread.i.i.i ], [ %.pre10.i.i, %._crit_edge.i.i ]
  %i.fe = phi ptr [ %i.et, %.thread.i.i.i ], [ %.pre8.i.i, %._crit_edge.i.i ]
  %i.ff = phi ptr [ %i.er, %.thread.i.i.i ], [ %.pre.i.i, %._crit_edge.i.i ]
  %i.fg = phi ptr [ %.sroa.12.0..sroa_idx.i.i.i, %.thread.i.i.i ], [ %.phi.trans.insert.i.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.fh = phi ptr [ %i.ey, %.thread.i.i.i ], [ %i.fb, %._crit_edge.i.i ] ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 465
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 288 ; 2 uses
  store ptr %i.ff, ptr %i.fj, align 8, !noalias !19041
  %i.fk = getelementptr i8, ptr %.sroa.01.0.i.i, i64 296 ; 2 uses
  store ptr %i.fe, ptr %i.fk, align 8, !noalias !19041
  store i8 1, ptr %i.fi, align 1, !noalias !19041
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 304
  store ptr %i.fd, ptr %i.fl, align 8, !noalias !19041
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 312
  store i64 %i.fc, ptr %i.fm, align 8, !noalias !19041
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 320 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fn, ptr noundef nonnull align 8 dereferenceable(104) %i.fh, i64 104, i1 false), !noalias !19041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !19045
  %i.fo = invoke { ptr, i64 } @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url4path(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.fn)
          to label %bb.ap unwind label %bb.ao, !noalias !19046 ; 2 uses

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !19045
  br label %bb.bb

bb.ao:                                            ; preds = %bb.am
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.fq = extractvalue { ptr, i64 } %i.fo, 0
  %i.fr = extractvalue { ptr, i64 } %i.fo, 1
  invoke void @_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path13from_url_pathReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef %i.fr)
          to label %bb.ar unwind label %bb.aq, !noalias !19046

bb.aq:                                            ; preds = %bb.ap
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ft = load i64, ptr %i.p, align 8, !range !4585, !alias.scope !19047, !noalias !19050, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ft, -9223372036854775802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !19045
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.aw

bb.as:                                            ; preds = %bb.aq, %bb.ao
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fp, %bb.ao ], [ %i.fs, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19045
  br label %.body71.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19045
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 424 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !19041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !19045
  %.val54.i.i.i.i = load ptr, ptr %i.fj, align 8, !noalias !19041, !nonnull !3, !noundef !3
  %.val55.i.i.i.i = load ptr, ptr %i.fk, align 8, !noalias !19041, !nonnull !3, !align !356, !noundef !3 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val55.i.i.i.i, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !range !645, !invariant.load !3, !noalias !19046
  %i.fx = add nsw i64 %i.fw, -1
  %i.fy = and i64 %i.fx, -16
  %i.fz = getelementptr inbounds nuw i8, ptr %.val54.i.i.i.i, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.val55.i.i.i.i, i64 80
  %i.gc = load ptr, ptr %i.gb, align 8, !invariant.load !3, !noalias !19046, !nonnull !3
  %i.gd = invoke { ptr, ptr } %i.gc(ptr noundef nonnull %i.ga, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fu)
          to label %bb.av unwind label %bb.au, !noalias !19046 ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.gf = extractvalue { ptr, ptr } %i.gd, 0
  %i.gg = extractvalue { ptr, ptr } %i.gd, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 448
  store ptr %i.gf, ptr %i.gh, align 8, !noalias !19041
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 456
  store ptr %i.gg, ptr %i.gi, align 8, !noalias !19041
  br label %bb.bb

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx113.i.i.i.i, i64 40, i1 false), !noalias !19045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !19045
  call void @llvm.experimental.noalias.scope.decl(metadata !19052)
  store i64 -9223372036854775776, ptr %i.d, align 16, !alias.scope !19055, !noalias !19057
  store i64 %i.ft, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !19058, !noalias !19045
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit101.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit101.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i, %bb.aw
  %i.gj = phi ptr [ %i.gr, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i ], [ %i.fg, %bb.aw ] ; 5 uses
  %i.gk = phi ptr [ %i.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i ], [ %i.fh, %bb.aw ] ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 320 ; 3 uses
end_hunk_3
begin_hunk_4_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json14open_json_file0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.me) #54
          to label %.body.i.thread16 unwind label %bb.ed, !noalias !19059

bb.ed:                                            ; preds = %.body.i.i.i
  %i.mh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19059
  unreachable

bb.ee:                                            ; preds = %bb.eb
  store i8 1, ptr %i.eo, align 8, !noalias !19036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i.i, i64 88, i1 false), !noalias !19142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !19006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !19006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19143
  store ptr %i.mc, ptr %i.b, align 8, !noalias !19143
  %i.mi = atomicrmw xchg ptr %i.dt, i8 1 seq_cst, align 1, !noalias !19148
  %i.mj = icmp eq i8 %i.mi, 0                     ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.mb)
          to label %bb.eg unwind label %bb.ef, !noalias !19148

bb.ef:                                            ; preds = %bb.ee
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.mb, align 8, !noalias !19148
  br i1 %i.mj, label %bb.ej, label %.thread.i

bb.eg:                                            ; preds = %bb.ee
  store i64 0, ptr %i.mb, align 8, !noalias !19148
  br i1 %i.mj, label %bb.eh, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.eh:                                            ; preds = %bb.eg
  %i.ml = atomicrmw sub ptr %i.mc, i64 1 release, align 8, !noalias !19149
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.ei, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.ei:                                            ; preds = %bb.eh
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b) #58, !noalias !19004
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.ej:                                            ; preds = %bb.ef
  %i.mn = atomicrmw sub ptr %i.mc, i64 1 release, align 8, !noalias !19154
  %i.mo = icmp eq i64 %i.mn, 1
  br i1 %i.mo, label %bb.ek, label %.thread.i

bb.ek:                                            ; preds = %bb.ej
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b) #58
          to label %.thread.i unwind label %bb.el, !noalias !19148

bb.el:                                            ; preds = %bb.ek
  %i.mp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19148
  unreachable

bb.em:                                            ; preds = %.thread25.i.i.i, %bb.ea
  store i8 3, ptr %i.eo, align 8, !noalias !19036
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !19006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !19006
  %i.mq = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  %i.mr = load atomic i8, ptr %i.el monotonic, align 1, !noalias !19004
  %i.ms = icmp ne i8 %i.mr, 0
  %i.mt = zext i1 %i.ms to i64
  %i.mu = add nuw nsw i64 %.sroa.010.0.i.ph, %i.mt ; 2 uses
  %i.mv = atomicrmw xchg ptr %i.ak, ptr %.sroa.01.0.i.i acq_rel, align 8, !noalias !19004 ; 5 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %.critedge.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.mx = load ptr, ptr %i.aj, align 8, !noalias !19004, !nonnull !3, !noundef !3
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !noalias !19004, !nonnull !3, !noundef !3
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 488
  br label %bb.eo

bb.eo:                                            ; preds = %bb.eo, %bb.en
  %i.nc = load atomic ptr, ptr %i.nb acquire, align 8
  %.not.i32.i = icmp eq ptr %i.nc, %i.na
  br i1 %.not.i32.i, label %bb.eo, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 504
  %i.ne = load i64, ptr %i.nd, align 8, !noundef !3
  %i.nf = add i64 %i.ne, 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 504
  store i64 %i.nf, ptr %i.ng, align 8, !noalias !19004
  store atomic ptr %i.mv, ptr %i.dd release, align 8, !noalias !19004
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mv, i64 496
  store ptr %.sroa.01.0.i.i, ptr %i.nh, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.em
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 504
  store i64 1, ptr %i.ni, align 8, !noalias !19004
  store atomic ptr null, ptr %i.dd release, align 8, !noalias !19004
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.ep
  %i.nj = icmp samesign ugt i64 %i.mu, 1
  %i.nk = icmp eq i64 %i.mq, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.nj, i1 true, i1 %i.nk
  br i1 %or.cond.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !19006
  br label %.outer

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.nl = load ptr, ptr %i.al, align 8, !noalias !19004, !nonnull !3, !align !356, !noundef !3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !noalias !19004, !nonnull !3, !noundef !3
  %i.no = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !noalias !19004, !noundef !3
  call void %i.nn(ptr noundef %i.np), !noalias !19004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !19006
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.eq:                                            ; preds = %bb.ae, %bb.es
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.af, %bb.ag, %bb.eq
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19004
  unreachable

.thread.i:                                        ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.es, %bb.er, %bb.ek, %bb.ej, %bb.ef
  %.pn2454.i = phi { ptr, i32 } [ %i.mk, %bb.ek ], [ %.pn.i21, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.er ], [ %lpad.thr_comm.split-lp.i, %bb.es ], [ %i.mk, %bb.ef ], [ %i.mk, %bb.ej ]
  resume { ptr, i32 } %.pn2454.i

bb.er:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  %i.ns = atomicrmw sub ptr %i.nr, i64 1 release, align 8, !noalias !19159
  %i.nt = icmp eq i64 %i.ns, 1
  br i1 %i.nt, label %bb.es, label %.thread.i

bb.es:                                            ; preds = %bb.er
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.s) #58
          to label %.thread.i unwind label %bb.eq, !noalias !19004

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.eg, %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !19006
  %i.nu = icmp eq i64 %.sroa.01.0.copyload2.i.i, -9223372036854775741
  br i1 %i.nu, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.et

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.ev

bb.et:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.01.0.copyload2.i.i, ptr %i.u, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, i64 88, i1 false)
  store i64 %i.en, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 16
  %i.nv = load i64, ptr %i.bc, align 8, !noundef !3
  %i.nw = icmp eq i64 %i.en, %i.nv
  br i1 %i.nw, label %bb.ex, label %bb.ew

bb.eu:                                            ; preds = %bb.q
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.nx, align 8, !alias.scope !19003, !noalias !19004
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ex, %bb.eu, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.ey

bb.ew:                                            ; preds = %bb.et
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2r_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2n_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2r_6marker4SendEL_EEB5p_EEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.ex:                                            ; preds = %bb.et
  %i.ny = add i64 %i.en, 1
  store i64 %i.ny, ptr %i.bc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.u, i64 96, i1 false)
  br label %bb.ev

bb.ey:                                            ; preds = %bb.ev, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1x_11ObjectStoreEL_EEB2S_13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.4.i.i.i = alloca [64 x i8], align 8      ; 10 uses
  %.sroa.325.i.i.i = alloca [64 x i8], align 8    ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [64 x i8], align 8            ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 2 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %i.n = icmp ult i64 %i.m, 115292150460684698
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %1, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.z = load ptr, ptr %2, align 8, !alias.scope !19164, !noalias !19167, !nonnull !3, !align !356, !noundef !3 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 24
  %.sroa.325.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.af = add i64 %i.t, 1
  store i64 %i.af, ptr %i.u, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cb

bb.f:                                             ; preds = %bb.bz, %bb.c
  %.sroa.11.0 = phi i64 [ undef, %bb.c ], [ %.sroa.11.1, %bb.bz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19170)
  call void @llvm.experimental.noalias.scope.decl(metadata !19164)
  %i.ag = load atomic ptr, ptr %i.y acquire, align 8, !alias.scope !19170, !noalias !19171 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.x, align 8, !alias.scope !19170, !noalias !19171, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !19171, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.an = load atomic ptr, ptr %i.am acquire, align 8, !noalias !19171
  %.not.i.i = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !19171, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.f ]
  %i.aq = load ptr, ptr %i.x, align 8, !alias.scope !19170, !noalias !19171, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z), !noalias !19171
  br label %.outer

.outer:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3Z_11ObjectStoreEL_EEB5k_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core.exit38.i, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.fe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3Z_11ObjectStoreEL_EEB5k_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.fa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3Z_11ObjectStoreEL_EEB5k_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBH_DNtB3f_11ObjectStoreEL_EEB46_13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.as = load ptr, ptr %i.x, align 8, !alias.scope !19170, !noalias !19171, !nonnull !3, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !noalias !19171, !noundef !3 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 176
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8, !noalias !19171 ; 5 uses
  %i.ay = load ptr, ptr %i.at, align 8, !noalias !19171, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = icmp eq ptr %i.av, %i.az
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq ptr %i.ax, null
  br i1 %i.bb, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.be, %bb.m ], [ %i.ax, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ax, %bb.m ], [ %i.av, %bb.j ] ; 28 uses
  %i.bc = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.bc, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.ax, ptr %i.au, align 8, !noalias !19171
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.be = load atomic ptr, ptr %i.bd acquire, align 8, !noalias !19171
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8, !noalias !19171
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.i.i
  br i1 %i.bh, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.at, align 8, !noalias !19171, !nonnull !3, !noundef !3 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  store atomic ptr null, ptr %i.bk monotonic, align 8, !noalias !19171
  %i.bl = atomicrmw xchg ptr %i.bf, ptr %i.bj acq_rel, align 8, !noalias !19171
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  store atomic ptr %i.bj, ptr %i.bm release, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 176
  %i.bo = load atomic ptr, ptr %i.bn acquire, align 8, !noalias !19171 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bo, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.au, align 8, !noalias !19171
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !381, !noalias !19171, !noundef !3
  %i.bs = trunc nuw i64 %i.br to i1
  br i1 %i.bs, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.bt = load atomic ptr, ptr %i.y monotonic, align 8, !alias.scope !19170, !noalias !19171
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.bx, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bv = load ptr, ptr %i.z, align 8, !noalias !19171, !nonnull !3, !align !356, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !19171, !nonnull !3, !noundef !3
  %i.by = load ptr, ptr %i.ad, align 8, !noalias !19171, !noundef !3
  call void %i.bx(ptr noundef %i.by), !noalias !19171, !inline_history !19172
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19173
  call void @llvm.experimental.noalias.scope.decl(metadata !19174)
  %i.ca = load ptr, ptr %i.y, align 8, !alias.scope !19177, !noalias !19171, !noundef !3 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !19178, !noundef !3
  %i.cd = add i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 4 uses
  %i.cf = load atomic ptr, ptr %i.ce monotonic, align 8, !noalias !19178 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 160 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !19178, !noundef !3 ; 4 uses
  %i.ci = load ptr, ptr %i.x, align 8, !alias.scope !19177, !noalias !19171, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !19178, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store atomic ptr %i.cl, ptr %i.ce monotonic, align 8, !noalias !19178
  store ptr null, ptr %i.cg, align 8, !noalias !19178
  %i.cm = icmp eq ptr %i.cf, null
  br i1 %i.cm, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  store ptr %i.ch, ptr %i.cn, align 8, !noalias !19178
  %i.co = icmp eq ptr %i.ch, null
  br i1 %i.co, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cp = icmp eq ptr %i.ch, null
  br i1 %i.cp, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.y, align 8, !alias.scope !19177, !noalias !19171
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 152
  store atomic ptr %i.cf, ptr %i.cq monotonic, align 8, !noalias !19178
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cf, ptr %i.y, align 8, !alias.scope !19177, !noalias !19171
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cr = phi ptr [ %i.ca, %.thread.i.i ], [ %i.cf, %bb.u ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 168
  store i64 %i.cd, ptr %i.cs, align 8, !noalias !19178
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 4 uses
  store ptr %i.ct, ptr %i.g, align 8, !noalias !19173
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 184
  %i.cv = atomicrmw xchg ptr %i.cu, i8 0 seq_cst, align 1, !noalias !19171
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.y, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19173
  %i.cx = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.cx, ptr %i.h, align 8, !noalias !19173
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !19179
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBH_DNtB3f_11ObjectStoreEL_EEB46_13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB2G_11ObjectStoreEL_EEB3x_13delete_stream00EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h) #58, !noalias !19171
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBH_DNtB3f_11ObjectStoreEL_EEB46_13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBH_DNtB3f_11ObjectStoreEL_EEB46_13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19173
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.bu, !noalias !19171

bb.z:                                             ; preds = %bb.y
  unreachable

.body.i:                                          ; preds = %bb.be, %.body12.i.i.i, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %.pn5.pn.i.i.i, %.body12.i.i.i ], [ %i.ez, %bb.be ], [ %i.da, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3Z_11ObjectStoreEL_EEB5k_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.f) #54
          to label %.thread.i unwind label %bb.bt, !noalias !19171

bb.aa:                                            ; preds = %bb.ah, %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19173
  store ptr %i.x, ptr %i.f, align 8, !noalias !19173
  store ptr %i.ct, ptr %i.aa, align 8, !noalias !19173
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 185 ; 2 uses
  store atomic i8 0, ptr %i.db monotonic, align 1, !noalias !19171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19173
  store ptr @18, ptr %i.e, align 8, !noalias !19173
  store ptr %.sroa.01.0.i.i, ptr %i.ab, align 8, !noalias !19173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19173
  store <2 x ptr> %4, ptr %i.d, align 16, !noalias !19173
  store ptr null, ptr %i.ac, align 16, !noalias !19173
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !19184, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 136 ; 5 uses
  %i.df = load i8, ptr %i.de, align 8, !range !342, !noalias !19188, !noundef !3
  switch i8 %i.df, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %.sroa.017.0.copyload.i.i.i = load i64, ptr %i.bz, align 8, !noalias !19188 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775790
  br i1 %.not.i.i.i.i, label %bb.ad, label %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19188
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !19188, !nonnull !3, !align !356, !noundef !3
  %i.dj = invoke { ptr, ptr } @_RNvXs2_NtCsjyY8HP3IvQ6_12object_store6prefixINtB5_11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_11ObjectStoreEL_EEB1y_6deleteCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.af unwind label %bb.ae, !noalias !19188 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !19188
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 128
  store ptr %i.dm, ptr %i.do, align 8, !noalias !19188
  br label %bb.ai

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ao, %bb.aj, %bb.ae
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.ae ], [ %i.dr, %bb.aj ], [ %i.ec, %bb.ao ], [ %i.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dp) #54
          to label %.body12.i.i.i unwind label %bb.au, !noalias !19192

.body12.i.i.i:                                    ; preds = %bb.at, %bb.ar, %.body.i.i.i
  %.pn5.pn.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.ar ], [ %.pn3.i.i.i, %.body.i.i.i ], [ %i.el, %bb.at ]
  store i8 2, ptr %i.de, align 8, !noalias !19188
  br label %.body.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc.i unwind label %bb.aa, !noalias !19171

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc28.i unwind label %bb.aa, !noalias !19171

.noexc28.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19193
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.ak unwind label %bb.aj, !noalias !19192

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19193
  %.val.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19188
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val8.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !19188, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val.i.i.i, ptr nonnull %.val8.i.i.i) #54
          to label %.body.i.i.i unwind label %bb.au, !noalias !19192

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.c, align 8, !range !866, !noalias !19193, !noundef !3 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -9223372036854775789
  br i1 %i.du, label %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %bb.al

_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19193
  store i8 3, ptr %i.de, align 8, !noalias !19188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %bb.bf

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !19193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19193
  %.val9.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19188 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val10.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !19188, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val10.i.i.i, align 8, !invariant.load !3, !noalias !19192 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val9.i.i.i)
          to label %bb.an unwind label %bb.ao, !noalias !19192

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !658, !invariant.load !3, !noalias !19192 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !645, !invariant.load !3, !noalias !19192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #48, !noalias !19192
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !658, !invariant.load !3, !noalias !19192 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !645, !invariant.load !3, !noalias !19192
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #48, !noalias !19192
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.an
  %.not.i11.i.i.i = icmp eq i64 %i.dt, -9223372036854775790
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 4 uses
  br i1 %.not.i11.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !19188
  br label %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, i64 64, i1 false), !noalias !19193
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ar, !noalias !19192

bb.ar:                                            ; preds = %bb.aq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %.body12.i.i.i unwind label %bb.as, !noalias !19192

bb.as:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19192
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i unwind label %bb.at, !noalias !19192

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i

bb.au:                                            ; preds = %bb.aj, %.body.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19192
  unreachable

_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19194
  store i8 1, ptr %i.de, align 8, !noalias !19188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %.thread186.i

_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ac
  %.sroa.818.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.818.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !19188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19194
  store i8 1, ptr %i.de, align 8, !noalias !19188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.en = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775789
  br i1 %i.en, label %bb.bf, label %.thread186.i

.thread186.i:                                     ; preds = %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i
end_hunk_4
begin_hunk_5_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1x_11ObjectStoreEL_EEB2S_13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
bb.be:                                            ; preds = %bb.bs
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bf:                                            ; preds = %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBb_11ObjectStoreEL_EEB1w_13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19173
  %i.fa = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  store ptr null, ptr %i.aa, align 8, !noalias !19173
  %i.fb = load atomic i8, ptr %i.db monotonic, align 1, !noalias !19171
  %i.fc = icmp ne i8 %i.fb, 0
  %i.fd = zext i1 %i.fc to i64
  %i.fe = add nuw nsw i64 %.sroa.010.0.i.ph, %i.fd ; 2 uses
  %i.ff = atomicrmw xchg ptr %i.y, ptr %.sroa.01.0.i.i acq_rel, align 8, !alias.scope !19170, !noalias !19171 ; 5 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %.critedge.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fh = load ptr, ptr %i.x, align 8, !alias.scope !19170, !noalias !19171, !nonnull !3, !noundef !3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !19171, !nonnull !3, !noundef !3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 152
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %i.fm = load atomic ptr, ptr %i.fl acquire, align 8
  %.not.i32.i = icmp eq ptr %i.fm, %i.fk
  br i1 %.not.i32.i, label %bb.bh, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !3
  %i.fp = add i64 %i.fo, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 168
  store i64 %i.fp, ptr %i.fq, align 8, !noalias !19171
  store atomic ptr %i.ff, ptr %i.ce release, align 8, !noalias !19171
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 160
  store ptr %.sroa.01.0.i.i, ptr %i.fr, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.bf
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 168
  store i64 1, ptr %i.fs, align 8, !noalias !19171
  store atomic ptr null, ptr %i.ce release, align 8, !noalias !19171
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.bi
  %i.ft = icmp samesign ugt i64 %i.fe, 1
  %i.fu = icmp eq i64 %i.fa, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %or.cond.i, label %bb.bs, label %bb.bj

bb.bj:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19215)
  call void @llvm.experimental.noalias.scope.decl(metadata !19218)
  %i.fv = load ptr, ptr %i.aa, align 8, !alias.scope !19221, !noalias !19173, !noundef !3 ; 6 uses
  %.not.i.i33.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i33.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3Z_11ObjectStoreEL_EEB5k_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core.exit38.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19222
  store ptr %i.fv, ptr %i.a, align 8, !noalias !19222
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 200
  %i.fx = atomicrmw xchg ptr %i.fw, i8 1 seq_cst, align 1, !noalias !19223
  %i.fy = icmp eq i8 %i.fx, 0                     ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2p_11ObjectStoreEL_EEB3K_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.fz)
          to label %bb.bm unwind label %bb.bl, !noalias !19223

bb.bl:                                            ; preds = %bb.bk
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.fz, align 8, !noalias !19223
  br i1 %i.fy, label %bb.bp, label %.thread.i

bb.bm:                                            ; preds = %bb.bk
  store i64 0, ptr %i.fz, align 8, !noalias !19223
  br i1 %i.fy, label %bb.bn, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i34.i

bb.bn:                                            ; preds = %bb.bm
  %i.gb = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !19224
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.bo, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i34.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB2G_11ObjectStoreEL_EEB3x_13delete_stream00EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58, !noalias !19171
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i34.i

bb.bp:                                            ; preds = %bb.bl
  %i.gd = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !19229
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.bq, label %.thread.i

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB2G_11ObjectStoreEL_EEB3x_13delete_stream00EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
          to label %.thread.i unwind label %bb.br, !noalias !19223

bb.br:                                            ; preds = %bb.bq
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19223
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i34.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19222
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3Z_11ObjectStoreEL_EEB5k_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core.exit38.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB3Z_11ObjectStoreEL_EEB5k_13delete_stream00EEECs14kWLkQVSKO_14deltalake_core.exit38.i: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i34.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19173
  br label %.outer

bb.bs:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.gg = load ptr, ptr %i.z, align 8, !noalias !19171, !nonnull !3, !align !356, !noundef !3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !19171, !nonnull !3, !noundef !3
  %i.gj = load ptr, ptr %i.ad, align 8, !noalias !19171, !noundef !3
  invoke void %i.gi(ptr noundef %i.gj)
          to label %bb.av unwind label %bb.be, !noalias !19171

bb.bt:                                            ; preds = %bb.bv, %.body.i
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19171
  unreachable

.thread.i:                                        ; preds = %bb.bv, %bb.bu, %bb.bq, %bb.bp, %bb.bl, %bb.bc, %bb.bb, %bb.ax, %.body.i
  %.pn2453.i = phi { ptr, i32 } [ %i.et, %bb.bc ], [ %i.ga, %bb.bq ], [ %lpad.thr_comm.split-lp.i, %bb.bu ], [ %.pn.i, %.body.i ], [ %i.et, %bb.ax ], [ %i.et, %bb.bb ], [ %i.ga, %bb.bl ], [ %i.ga, %bb.bp ], [ %lpad.thr_comm.split-lp.i, %bb.bv ]
  resume { ptr, i32 } %.pn2453.i

bb.bu:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !19234
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.bv, label %.thread.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreIBx_DNtB2G_11ObjectStoreEL_EEB3x_13delete_stream00EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g) #58
          to label %.thread.i unwind label %bb.bt, !noalias !19171

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19173
  %i.gn = icmp eq i64 %.sroa.0.0, -9223372036854775788
  br i1 %i.gn, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.bw

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.by

bb.bw:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.0.0, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  store i64 %.sroa.11.1, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %i.go = load i64, ptr %i.ae, align 8, !noundef !3
  %i.gp = icmp eq i64 %.sroa.11.1, %i.go
  br i1 %i.gp, label %bb.ca, label %bb.bz

bb.bx:                                            ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.gq, align 8, !alias.scope !19170, !noalias !19171
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %bb.bx, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtCsjyY8HP3IvQ6_12object_store6prefix11PrefixStoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2e_11ObjectStoreEL_EEB3z_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bw
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.ca:                                            ; preds = %bb.bw
  %i.gr = add i64 %.sroa.11.1, 1
  store i64 %i.gr, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  br label %bb.by

bb.cb:                                            ; preds = %bb.by, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB3q_13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.4.i.i.i = alloca [64 x i8], align 8      ; 10 uses
  %.sroa.325.i.i.i = alloca [64 x i8], align 8    ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [64 x i8], align 8            ; 5 uses
  %i.j = alloca [80 x i8], align 8                ; 2 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !3 ; 2 uses
  %i.n = icmp ult i64 %i.m, 115292150460684698
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %1, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.z = load ptr, ptr %2, align 8, !alias.scope !19239, !noalias !19242, !nonnull !3, !align !356, !noundef !3 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 24
  %.sroa.325.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.af = add i64 %i.t, 1
  store i64 %i.af, ptr %i.u, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.cb

bb.f:                                             ; preds = %bb.bz, %bb.c
  %.sroa.11.0 = phi i64 [ undef, %bb.c ], [ %.sroa.11.1, %bb.bz ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19245)
  call void @llvm.experimental.noalias.scope.decl(metadata !19239)
  %i.ag = load atomic ptr, ptr %i.y acquire, align 8, !alias.scope !19245, !noalias !19246 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allB2i_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.x, align 8, !alias.scope !19245, !noalias !19246, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !19246, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.an = load atomic ptr, ptr %i.am acquire, align 8, !noalias !19246
  %.not.i.i = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !19246, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allB2i_.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allB2i_.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.f ]
  %i.aq = load ptr, ptr %i.x, align 8, !alias.scope !19245, !noalias !19246, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z), !noalias !19246
  br label %.outer

.outer:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5S_13delete_stream00EEEB43_.exit38.i, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allB2i_.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.fe, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5S_13delete_stream00EEEB43_.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allB2i_.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.fa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5S_13delete_stream00EEEB43_.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE28atomic_load_head_and_len_allB2i_.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEEB3j_.exit.i
  %i.as = load ptr, ptr %i.x, align 8, !alias.scope !19245, !noalias !19246, !nonnull !3, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !noalias !19246, !noundef !3 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 176
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8, !noalias !19246 ; 5 uses
  %i.ay = load ptr, ptr %i.at, align 8, !noalias !19246, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = icmp eq ptr %i.av, %i.az
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq ptr %i.ax, null
  br i1 %i.bb, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.be, %bb.m ], [ %i.ax, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.ax, %bb.m ], [ %i.av, %bb.j ] ; 28 uses
  %i.bc = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.bc, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.ax, ptr %i.au, align 8, !noalias !19246
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.be = load atomic ptr, ptr %i.bd acquire, align 8, !noalias !19246
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8, !noalias !19246
  %i.bh = icmp eq ptr %i.bg, %.sroa.01.0.i.i
  br i1 %i.bh, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.at, align 8, !noalias !19246, !nonnull !3, !noundef !3 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  store atomic ptr null, ptr %i.bk monotonic, align 8, !noalias !19246
  %i.bl = atomicrmw xchg ptr %i.bf, ptr %i.bj acq_rel, align 8, !noalias !19246
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  store atomic ptr %i.bj, ptr %i.bm release, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 176
  %i.bo = load atomic ptr, ptr %i.bn acquire, align 8, !noalias !19246 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bo, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.au, align 8, !noalias !19246
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !381, !noalias !19246, !noundef !3
  %i.bs = trunc nuw i64 %i.br to i1
  br i1 %i.bs, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.bt = load atomic ptr, ptr %i.y monotonic, align 8, !alias.scope !19245, !noalias !19246
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.bx, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bv = load ptr, ptr %i.z, align 8, !noalias !19246, !nonnull !3, !align !356, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !19246, !nonnull !3, !noundef !3
  %i.by = load ptr, ptr %i.ad, align 8, !noalias !19246, !noundef !3
  call void %i.bx(ptr noundef %i.by), !noalias !19246, !inline_history !19247
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19248
  call void @llvm.experimental.noalias.scope.decl(metadata !19249)
  %i.ca = load ptr, ptr %i.y, align 8, !alias.scope !19252, !noalias !19246, !noundef !3 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !19253, !noundef !3
  %i.cd = add i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 4 uses
  %i.cf = load atomic ptr, ptr %i.ce monotonic, align 8, !noalias !19253 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 160 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !19253, !noundef !3 ; 4 uses
  %i.ci = load ptr, ptr %i.x, align 8, !alias.scope !19252, !noalias !19246, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !19253, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store atomic ptr %i.cl, ptr %i.ce monotonic, align 8, !noalias !19253
  store ptr null, ptr %i.cg, align 8, !noalias !19253
  %i.cm = icmp eq ptr %i.cf, null
  br i1 %i.cm, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  store ptr %i.ch, ptr %i.cn, align 8, !noalias !19253
  %i.co = icmp eq ptr %i.ch, null
  br i1 %i.co, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cp = icmp eq ptr %i.ch, null
  br i1 %i.cp, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.y, align 8, !alias.scope !19252, !noalias !19246
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkB2i_.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 152
  store atomic ptr %i.cf, ptr %i.cq monotonic, align 8, !noalias !19253
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cf, ptr %i.y, align 8, !alias.scope !19252, !noalias !19246
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cr = phi ptr [ %i.ca, %.thread.i.i ], [ %i.cf, %bb.u ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 168
  store i64 %i.cd, ptr %i.cs, align 8, !noalias !19253
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkB2i_.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkB2i_.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 4 uses
  store ptr %i.ct, ptr %i.g, align 8, !noalias !19248
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 184
  %i.cv = atomicrmw xchg ptr %i.cu, i8 0 seq_cst, align 1, !noalias !19246
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.y, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19248
  %i.cx = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.cx, ptr %i.h, align 8, !noalias !19248
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !19254
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEEB3j_.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB45_13delete_stream00EEE9drop_slowB2K_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h) #58, !noalias !19246
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEEB3j_.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBH_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4E_13delete_stream00EEEEB3j_.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19248
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkB2i_.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.bu, !noalias !19246

bb.z:                                             ; preds = %bb.y
  unreachable

.body.i:                                          ; preds = %bb.be, %.body12.i.i.i, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %.pn5.pn.i.i.i, %.body12.i.i.i ], [ %i.ez, %bb.be ], [ %i.da, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5S_13delete_stream00EEEB43_(ptr noalias noundef align 8 dereferenceable(16) %i.f) #54
          to label %.thread.i unwind label %bb.bt, !noalias !19246

bb.aa:                                            ; preds = %bb.ah, %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE6unlinkB2i_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19248
  store ptr %i.x, ptr %i.f, align 8, !noalias !19248
  store ptr %i.ct, ptr %i.aa, align 8, !noalias !19248
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 185 ; 2 uses
  store atomic i8 0, ptr %i.db monotonic, align 1, !noalias !19246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19248
  store ptr @19, ptr %i.e, align 8, !noalias !19248
  store ptr %.sroa.01.0.i.i, ptr %i.ab, align 8, !noalias !19248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19248
  store <2 x ptr> %4, ptr %i.d, align 16, !noalias !19248
  store ptr null, ptr %i.ac, align 16, !noalias !19248
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !19259, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 136 ; 5 uses
  %i.df = load i8, ptr %i.de, align 8, !range !342, !noalias !19263, !noundef !3
  switch i8 %i.df, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %.sroa.017.0.copyload.i.i.i = load i64, ptr %i.bz, align 8, !noalias !19263 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775790
  br i1 %.not.i.i.i.i, label %bb.ad, label %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19263
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !19263, !nonnull !3, !align !356, !noundef !3
  %i.dj = invoke { ptr, ptr } @_RNvXsc_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeINtB5_21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB26_6deleteBb_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.af unwind label %bb.ae, !noalias !19263 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !19263
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 128
  store ptr %i.dm, ptr %i.do, align 8, !noalias !19263
  br label %bb.ai

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ao, %bb.aj, %bb.ae
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.ae ], [ %i.dr, %bb.aj ], [ %i.ec, %bb.ao ], [ %i.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dp) #54
          to label %.body12.i.i.i unwind label %bb.au, !noalias !19267

.body12.i.i.i:                                    ; preds = %bb.at, %bb.ar, %.body.i.i.i
  %.pn5.pn.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.ar ], [ %.pn3.i.i.i, %.body.i.i.i ], [ %i.el, %bb.at ]
  store i8 2, ptr %i.de, align 8, !noalias !19263
  br label %.body.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc.i unwind label %bb.aa, !noalias !19246

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc28.i unwind label %bb.aa, !noalias !19246

.noexc28.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19268
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.ak unwind label %bb.aj, !noalias !19267

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19268
  %.val.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19263
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val8.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !19263, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val.i.i.i, ptr nonnull %.val8.i.i.i) #54
          to label %.body.i.i.i unwind label %bb.au, !noalias !19267

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.c, align 8, !range !866, !noalias !19268, !noundef !3 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -9223372036854775789
  br i1 %i.du, label %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.thread.i.i, label %bb.al

_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.thread.i.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19268
  store i8 3, ptr %i.de, align 8, !noalias !19263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %bb.bf

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !19268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19268
  %.val9.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19263 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val10.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !19263, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val10.i.i.i, align 8, !invariant.load !3, !noalias !19267 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val9.i.i.i)
          to label %bb.an unwind label %bb.ao, !noalias !19267

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !658, !invariant.load !3, !noalias !19267 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !645, !invariant.load !3, !noalias !19267
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #48, !noalias !19267
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !658, !invariant.load !3, !noalias !19267 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !645, !invariant.load !3, !noalias !19267
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #48, !noalias !19267
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.an
  %.not.i11.i.i.i = icmp eq i64 %i.dt, -9223372036854775790
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 4 uses
  br i1 %.not.i11.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !19263
  br label %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.thread5.i.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, i64 64, i1 false), !noalias !19268
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ar, !noalias !19267

bb.ar:                                            ; preds = %bb.aq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %.body12.i.i.i unwind label %bb.as, !noalias !19267

bb.as:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19267
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.thread5.i.i unwind label %bb.at, !noalias !19267

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i

bb.au:                                            ; preds = %bb.aj, %.body.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19267
  unreachable

_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.thread5.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19269
  store i8 1, ptr %i.de, align 8, !noalias !19263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %.thread186.i

_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.i.i: ; preds = %bb.ac
  %.sroa.818.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.818.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !19263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19269
  store i8 1, ptr %i.de, align 8, !noalias !19263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.en = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775789
  br i1 %i.en, label %bb.bf, label %.thread186.i

.thread186.i:                                     ; preds = %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.i.i, %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.thread5.i.i
end_hunk_5
begin_hunk_6_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB3q_13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB1B_:bb.a
  unreachable

bb.be:                                            ; preds = %bb.bs
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bf:                                            ; preds = %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.i.i, %_RNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB24_13delete_stream00Bf_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19248
  %i.fa = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  store ptr null, ptr %i.aa, align 8, !noalias !19248
  %i.fb = load atomic i8, ptr %i.db monotonic, align 1, !noalias !19246
  %i.fc = icmp ne i8 %i.fb, 0
  %i.fd = zext i1 %i.fc to i64
  %i.fe = add nuw nsw i64 %.sroa.010.0.i.ph, %i.fd ; 2 uses
  %i.ff = atomicrmw xchg ptr %i.y, ptr %.sroa.01.0.i.i acq_rel, align 8, !alias.scope !19245, !noalias !19246 ; 5 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %.critedge.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fh = load ptr, ptr %i.x, align 8, !alias.scope !19245, !noalias !19246, !nonnull !3, !noundef !3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !19246, !nonnull !3, !noundef !3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ff, i64 152
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %i.fm = load atomic ptr, ptr %i.fl acquire, align 8
  %.not.i32.i = icmp eq ptr %i.fm, %i.fk
  br i1 %.not.i32.i, label %bb.bh, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 168
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !3
  %i.fp = add i64 %i.fo, 1
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 168
  store i64 %i.fp, ptr %i.fq, align 8, !noalias !19246
  store atomic ptr %i.ff, ptr %i.ce release, align 8, !noalias !19246
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 160
  store ptr %.sroa.01.0.i.i, ptr %i.fr, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE4linkB2i_.exit.i

.critedge.i.i:                                    ; preds = %bb.bf
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 168
  store i64 1, ptr %i.fs, align 8, !noalias !19246
  store atomic ptr null, ptr %i.ce release, align 8, !noalias !19246
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE4linkB2i_.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE4linkB2i_.exit.i: ; preds = %.critedge.i.i, %bb.bi
  %i.ft = icmp samesign ugt i64 %i.fe, 1
  %i.fu = icmp eq i64 %i.fa, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.ft, i1 true, i1 %i.fu
  br i1 %or.cond.i, label %bb.bs, label %bb.bj

bb.bj:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE4linkB2i_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !19290)
  call void @llvm.experimental.noalias.scope.decl(metadata !19293)
  %i.fv = load ptr, ptr %i.aa, align 8, !alias.scope !19296, !noalias !19248, !noundef !3 ; 6 uses
  %.not.i.i33.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i33.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5S_13delete_stream00EEEB43_.exit38.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19297
  store ptr %i.fv, ptr %i.a, align 8, !noalias !19297
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 200
  %i.fx = atomicrmw xchg ptr %i.fw, i8 1 seq_cst, align 1, !noalias !19298
  %i.fy = icmp eq i8 %i.fx, 0                     ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB4i_13delete_stream00EEEB2t_(ptr noundef nonnull align 8 %i.fz)
          to label %bb.bm unwind label %bb.bl, !noalias !19298

bb.bl:                                            ; preds = %bb.bk
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.fz, align 8, !noalias !19298
  br i1 %i.fy, label %bb.bp, label %.thread.i

bb.bm:                                            ; preds = %bb.bk
  store i64 0, ptr %i.fz, align 8, !noalias !19298
  br i1 %i.fy, label %bb.bn, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskB2i_.exit.i.i34.i

bb.bn:                                            ; preds = %bb.bm
  %i.gb = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !19299
  %i.gc = icmp eq i64 %i.gb, 1
  br i1 %i.gc, label %bb.bo, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskB2i_.exit.i.i34.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB45_13delete_stream00EEE9drop_slowB2K_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58, !noalias !19246
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskB2i_.exit.i.i34.i

bb.bp:                                            ; preds = %bb.bl
  %i.gd = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !19304
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.bq, label %.thread.i

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB45_13delete_stream00EEE9drop_slowB2K_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a) #58
          to label %.thread.i unwind label %bb.br, !noalias !19298

bb.br:                                            ; preds = %bb.bq
  %i.gf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19298
  unreachable

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskB2i_.exit.i.i34.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19297
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5S_13delete_stream00EEEB43_.exit38.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB5S_13delete_stream00EEEB43_.exit38.i: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE12release_taskB2i_.exit.i.i34.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19248
  br label %.outer

bb.bs:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EE4linkB2i_.exit.i
  %i.gg = load ptr, ptr %i.z, align 8, !noalias !19246, !nonnull !3, !align !356, !noundef !3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !19246, !nonnull !3, !noundef !3
  %i.gj = load ptr, ptr %i.ad, align 8, !noalias !19246, !noundef !3
  invoke void %i.gi(ptr noundef %i.gj)
          to label %bb.av unwind label %bb.be, !noalias !19246

bb.bt:                                            ; preds = %bb.bv, %.body.i
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19246
  unreachable

.thread.i:                                        ; preds = %bb.bv, %bb.bu, %bb.bq, %bb.bp, %bb.bl, %bb.bc, %bb.bb, %bb.ax, %.body.i
  %.pn2453.i = phi { ptr, i32 } [ %i.et, %bb.bc ], [ %i.ga, %bb.bq ], [ %lpad.thr_comm.split-lp.i, %bb.bu ], [ %.pn.i, %.body.i ], [ %i.et, %bb.ax ], [ %i.et, %bb.bb ], [ %i.ga, %bb.bl ], [ %i.ga, %bb.bp ], [ %lpad.thr_comm.split-lp.i, %bb.bv ]
  resume { ptr, i32 } %.pn2453.i

bb.bu:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !19309
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %bb.bv, label %.thread.i

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendIBx_DNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB45_13delete_stream00EEE9drop_slowB2K_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g) #58
          to label %.thread.i unwind label %bb.bt, !noalias !19246

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit: ; preds = %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19248
  %i.gn = icmp eq i64 %.sroa.0.0, -9223372036854775788
  br i1 %i.gn, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit.thread, label %bb.bw

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit.thread14
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.by

bb.bw:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit
  store i64 %.sroa.0.0, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  store i64 %.sroa.11.1, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %i.go = load i64, ptr %i.ae, align 8, !noundef !3
  %i.gp = icmp eq i64 %.sroa.11.1, %i.go
  br i1 %i.gp, label %bb.ca, label %bb.bz

bb.bx:                                            ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.gq, align 8, !alias.scope !19245, !noalias !19246
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %bb.bx, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB47_13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2i_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bw
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.ca:                                            ; preds = %bb.bw
  %i.gr = add i64 %.sroa.11.1, 1
  store i64 %i.gr, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false)
  br label %bb.by

bb.cb:                                            ; preds = %bb.by, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [64 x i8], align 8      ; 10 uses
  %.sroa.325.i.i.i = alloca [64 x i8], align 8    ; 6 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [64 x i8], align 8            ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = icmp ult i64 %i.k, 115292150460684698
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !3
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.x = load ptr, ptr %2, align 8, !alias.scope !19314, !noalias !19317, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 24
  %.sroa.325.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.r, 1
  store i64 %i.ac, ptr %i.s, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bm

bb.f:                                             ; preds = %bb.bk, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19320)
  call void @llvm.experimental.noalias.scope.decl(metadata !19314)
  %i.ad = load atomic ptr, ptr %i.w acquire, align 8, !alias.scope !19320, !noalias !19321 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.v, align 8, !alias.scope !19320, !noalias !19321, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !19321, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8, !noalias !19321
  %.not.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.am = load i64, ptr %i.al, align 8, !noalias !19321, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.am, %bb.i ], [ 0, %bb.f ]
  %i.an = load ptr, ptr %i.v, align 8, !alias.scope !19320, !noalias !19321, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !19321
  br label %.outer

.outer:                                           ; preds = %bb.bc, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.ew, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.er, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ap = load ptr, ptr %i.v, align 8, !alias.scope !19320, !noalias !19321, !nonnull !3, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !19321, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  %i.au = load atomic ptr, ptr %i.at acquire, align 8, !noalias !19321 ; 5 uses
  %i.av = load ptr, ptr %i.aq, align 8, !noalias !19321, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = icmp eq ptr %i.as, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq ptr %i.au, null
  br i1 %i.ay, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.bb, %bb.m ], [ %i.au, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.au, %bb.m ], [ %i.as, %bb.j ] ; 22 uses
  %i.az = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.az, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.au, ptr %i.ar, align 8, !noalias !19321
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.bb = load atomic ptr, ptr %i.ba acquire, align 8, !noalias !19321
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8, !noalias !19321
  %i.be = icmp eq ptr %i.bd, %.sroa.01.0.i.i
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.aq, align 8, !noalias !19321, !nonnull !3, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  store atomic ptr null, ptr %i.bh monotonic, align 8, !noalias !19321
  %i.bi = atomicrmw xchg ptr %i.bc, ptr %i.bg acq_rel, align 8, !noalias !19321
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store atomic ptr %i.bg, ptr %i.bj release, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 176
  %i.bl = load atomic ptr, ptr %i.bk acquire, align 8, !noalias !19321 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bl, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.ar, align 8, !noalias !19321
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !381, !noalias !19321, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.bq = load atomic ptr, ptr %i.w monotonic, align 8, !alias.scope !19320, !noalias !19321
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.bi, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bs = load ptr, ptr %i.x, align 8, !noalias !19321, !nonnull !3, !align !356, !noundef !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !19321, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !19321, !noundef !3
  call void %i.bu(ptr noundef %i.bw), !noalias !19321, !inline_history !19322
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19323
  call void @llvm.experimental.noalias.scope.decl(metadata !19324)
  %i.by = load ptr, ptr %i.w, align 8, !alias.scope !19327, !noalias !19321, !noundef !3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !19328, !noundef !3
  %i.cb = add i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 2 uses
  %i.cd = load atomic ptr, ptr %i.cc monotonic, align 8, !noalias !19328 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 160 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !19328, !noundef !3 ; 4 uses
  %i.cg = load ptr, ptr %i.v, align 8, !alias.scope !19327, !noalias !19321, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !19328, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store atomic ptr %i.cj, ptr %i.cc monotonic, align 8, !noalias !19328
  store ptr null, ptr %i.ce, align 8, !noalias !19328
  %i.ck = icmp eq ptr %i.cd, null
  br i1 %i.ck, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  store ptr %i.cf, ptr %i.cl, align 8, !noalias !19328
  %i.cm = icmp eq ptr %i.cf, null
  br i1 %i.cm, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cn = icmp eq ptr %i.cf, null
  br i1 %i.cn, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.w, align 8, !alias.scope !19327, !noalias !19321
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  store atomic ptr %i.cd, ptr %i.co monotonic, align 8, !noalias !19328
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cd, ptr %i.w, align 8, !alias.scope !19327, !noalias !19321
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cp = phi ptr [ %i.by, %.thread.i.i ], [ %i.cd, %bb.u ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  store i64 %i.cb, ptr %i.cq, align 8, !noalias !19328
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.cr = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.cr, ptr %i.e, align 8, !noalias !19323
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 184
  %i.ct = atomicrmw xchg ptr %i.cs, i8 0 seq_cst, align 1, !noalias !19321
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.y, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19323
  %i.cv = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.cv, ptr %i.f, align 8, !noalias !19323
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !19329
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2F_11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #58, !noalias !19321
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19323
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.bf, !noalias !19321

bb.z:                                             ; preds = %bb.aw, %bb.y
  unreachable

.body.i:                                          ; preds = %bb.ax, %.body12.i.i.i, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %.pn5.pn.i.i.i, %.body12.i.i.i ], [ %i.eo, %bb.ax ], [ %i.cy, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #54
          to label %.thread.i unwind label %bb.be, !noalias !19321

bb.aa:                                            ; preds = %bb.aw, %bb.ah, %bb.ag
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19323
  %i.cz = load ptr, ptr %i.e, align 8, !noalias !19323, !nonnull !3, !noundef !3 ; 4 uses
  store ptr %i.v, ptr %i.d, align 8, !noalias !19323
  store ptr %i.cz, ptr %i.y, align 8, !noalias !19323
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 201
  store atomic i8 0, ptr %i.da monotonic, align 1, !noalias !19321
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19323
  store ptr @20, ptr %i.c, align 8, !noalias !19323
  store ptr %i.db, ptr %i.z, align 8, !noalias !19323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19323
  store <2 x ptr> %4, ptr %i.b, align 16, !noalias !19323
  store ptr null, ptr %i.aa, align 16, !noalias !19323
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !19334, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 136 ; 5 uses
  %i.df = load i8, ptr %i.de, align 8, !range !342, !noalias !19338, !noundef !3
  switch i8 %i.df, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %.sroa.017.0.copyload.i.i.i = load i64, ptr %i.bx, align 8, !noalias !19338 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775790
  br i1 %.not.i.i.i.i, label %bb.ad, label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19338
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !19338, !nonnull !3, !align !356, !noundef !3
  %i.dj = invoke { ptr, ptr } @_RNvXs5_NtCsjyY8HP3IvQ6_12object_store3gcpNtB5_18GoogleCloudStorageNtB7_11ObjectStore6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.af unwind label %bb.ae, !noalias !19338 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !19338
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 128
  store ptr %i.dm, ptr %i.do, align 8, !noalias !19338
  br label %bb.ai

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ao, %bb.aj, %bb.ae
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.ae ], [ %i.dr, %bb.aj ], [ %i.ec, %bb.ao ], [ %i.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dp) #54
          to label %.body12.i.i.i unwind label %bb.au, !noalias !19342

.body12.i.i.i:                                    ; preds = %bb.at, %bb.ar, %.body.i.i.i
  %.pn5.pn.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.ar ], [ %.pn3.i.i.i, %.body.i.i.i ], [ %i.el, %bb.at ]
  store i8 2, ptr %i.de, align 8, !noalias !19338
  br label %.body.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc.i unwind label %bb.aa, !noalias !19321

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc28.i unwind label %bb.aa, !noalias !19321

.noexc28.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19343
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.ak unwind label %bb.aj, !noalias !19342

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19343
  %.val.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19338
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val8.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !19338, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val.i.i.i, ptr nonnull %.val8.i.i.i) #54
          to label %.body.i.i.i unwind label %bb.au, !noalias !19342

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.a, align 8, !range !866, !noalias !19343, !noundef !3 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -9223372036854775789
  br i1 %i.du, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !19343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19343
  %.val9.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19338 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val10.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !19338, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val10.i.i.i, align 8, !invariant.load !3, !noalias !19342 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val9.i.i.i)
          to label %bb.an unwind label %bb.ao, !noalias !19342

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !658, !invariant.load !3, !noalias !19342 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !645, !invariant.load !3, !noalias !19342
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #48, !noalias !19342
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !658, !invariant.load !3, !noalias !19342 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !645, !invariant.load !3, !noalias !19342
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #48, !noalias !19342
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.an
  %.not.i11.i.i.i = icmp eq i64 %i.dt, -9223372036854775790
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 4 uses
  br i1 %.not.i11.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !19338
  br label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, i64 64, i1 false), !noalias !19343
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ar, !noalias !19342

bb.ar:                                            ; preds = %bb.aq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %.body12.i.i.i unwind label %bb.as, !noalias !19342

bb.as:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19342
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i unwind label %bb.at, !noalias !19342

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i

bb.au:                                            ; preds = %bb.aj, %.body.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19342
  unreachable

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19344
  store i8 1, ptr %i.de, align 8, !noalias !19338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ac
  %.sroa.818.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.818.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !19338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19344
  store i8 1, ptr %i.de, align 8, !noalias !19338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.en = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775789
  br i1 %i.en, label %.thread128.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

.thread128.i:                                     ; preds = %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19323
  store ptr null, ptr %i.y, align 8, !noalias !19323
  br label %bb.ay

bb.av:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19343
  store i8 3, ptr %i.de, align 8, !noalias !19338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %.pre.i = load ptr, ptr %i.y, align 8, !noalias !19323 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19323
  store ptr null, ptr %i.y, align 8, !noalias !19323
  %.not.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i, label %bb.aw, label %._crit_edge, !prof !19345

._crit_edge:                                      ; preds = %bb.av
  %.pre = load ptr, ptr %i.d, align 8, !noalias !19323
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #57
          to label %bb.z unwind label %bb.aa, !noalias !19321

bb.ax:                                            ; preds = %bb.bd
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ay:                                            ; preds = %._crit_edge, %.thread128.i
  %i.ep = phi ptr [ %i.v, %.thread128.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.eq = phi ptr [ %i.cz, %.thread128.i ], [ %.pre.i, %._crit_edge ] ; 6 uses
  %i.er = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 201
  %i.et = load atomic i8, ptr %i.es monotonic, align 1, !noalias !19321
  %i.eu = icmp ne i8 %i.et, 0
  %i.ev = zext i1 %i.eu to i64
  %i.ew = add nuw nsw i64 %.sroa.010.0.i.ph, %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ez = atomicrmw xchg ptr %i.ey, ptr %i.ex acq_rel, align 8, !noalias !19321 ; 5 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.critedge.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load ptr, ptr %i.ep, align 8, !noalias !19321, !nonnull !3, !noundef !3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !19321, !nonnull !3, !noundef !3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 152
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %i.fg = load atomic ptr, ptr %i.ff acquire, align 8
  %.not.i29.i = icmp eq ptr %i.fg, %i.fe
  br i1 %.not.i29.i, label %bb.ba, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 168
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !3
  %i.fj = add i64 %i.fi, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store i64 %i.fj, ptr %i.fk, align 8, !noalias !19321
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 168
  store atomic ptr %i.ez, ptr %i.fl release, align 8, !noalias !19321
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 160
  store ptr %i.ex, ptr %i.fm, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.ay
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store i64 1, ptr %i.fn, align 8, !noalias !19321
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eq, i64 168
  store atomic ptr null, ptr %i.fo release, align 8, !noalias !19321
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.bb
  %i.fp = icmp samesign ugt i64 %i.ew, 1
  %i.fq = icmp eq i64 %i.er, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19323
  br label %.outer

bb.bd:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fr = load ptr, ptr %i.x, align 8, !noalias !19321, !nonnull !3, !align !356, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !19321, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !19321, !noundef !3
  invoke void %i.ft(ptr noundef %i.fv)
          to label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14 unwind label %bb.ax, !noalias !19321

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14: ; preds = %bb.bd
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19323
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.be:                                            ; preds = %bb.bg, %.body.i
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19321
  unreachable

.thread.i:                                        ; preds = %bb.bg, %bb.bf, %.body.i
  %.pn2444.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.bf ], [ %.pn.i, %.body.i ], [ %lpad.thr_comm.split-lp.i, %bb.bg ]
  resume { ptr, i32 } %.pn2444.i

bb.bf:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19346)
  call void @llvm.experimental.noalias.scope.decl(metadata !19349)
  %i.fx = load ptr, ptr %i.e, align 8, !alias.scope !19352, !noalias !19323, !nonnull !3, !noundef !3
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !19353
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2F_11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #58
          to label %.thread.i unwind label %bb.be, !noalias !19321

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i
  %.sroa.028.0.i7.i.i = phi i64 [ %i.dt, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i ], [ %.sroa.017.0.copyload.i.i.i, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, i64 64, i1 false), !noalias !19354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19323
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19323
  %i.ga = icmp eq i64 %.sroa.028.0.i7.i.i, -9223372036854775788
  br i1 %i.ga, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.bh

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.bj

bb.bh:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.028.0.i7.i.i, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  store i64 %i.dd, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %i.gb = load i64, ptr %i.ab, align 8, !noundef !3
  %i.gc = icmp eq i64 %i.dd, %i.gb
  br i1 %i.gc, label %bb.bl, label %bb.bk

bb.bi:                                            ; preds = %bb.q
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.gd, align 8, !alias.scope !19320, !noalias !19321
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store3gcp18GoogleCloudStorageNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.bl:                                            ; preds = %bb.bh
  %i.ge = add i64 %i.dd, 1
  store i64 %i.ge, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  br label %bb.bj

bb.bm:                                            ; preds = %bb.bj, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [64 x i8], align 8      ; 10 uses
  %.sroa.325.i.i.i = alloca [64 x i8], align 8    ; 6 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [64 x i8], align 8            ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = icmp ult i64 %i.k, 115292150460684698
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !3
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.x = load ptr, ptr %2, align 8, !alias.scope !19355, !noalias !19358, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 24
  %.sroa.325.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.r, 1
  store i64 %i.ac, ptr %i.s, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bm

bb.f:                                             ; preds = %bb.bk, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19361)
  call void @llvm.experimental.noalias.scope.decl(metadata !19355)
  %i.ad = load atomic ptr, ptr %i.w acquire, align 8, !alias.scope !19361, !noalias !19362 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.v, align 8, !alias.scope !19361, !noalias !19362, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !19362, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8, !noalias !19362
  %.not.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.am = load i64, ptr %i.al, align 8, !noalias !19362, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.am, %bb.i ], [ 0, %bb.f ]
  %i.an = load ptr, ptr %i.v, align 8, !alias.scope !19361, !noalias !19362, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !19362
  br label %.outer

.outer:                                           ; preds = %bb.bc, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.ew, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.er, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ap = load ptr, ptr %i.v, align 8, !alias.scope !19361, !noalias !19362, !nonnull !3, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !19362, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  %i.au = load atomic ptr, ptr %i.at acquire, align 8, !noalias !19362 ; 5 uses
  %i.av = load ptr, ptr %i.aq, align 8, !noalias !19362, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = icmp eq ptr %i.as, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq ptr %i.au, null
  br i1 %i.ay, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.bb, %bb.m ], [ %i.au, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.au, %bb.m ], [ %i.as, %bb.j ] ; 22 uses
  %i.az = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.az, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.au, ptr %i.ar, align 8, !noalias !19362
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.bb = load atomic ptr, ptr %i.ba acquire, align 8, !noalias !19362
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8, !noalias !19362
  %i.be = icmp eq ptr %i.bd, %.sroa.01.0.i.i
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.aq, align 8, !noalias !19362, !nonnull !3, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  store atomic ptr null, ptr %i.bh monotonic, align 8, !noalias !19362
  %i.bi = atomicrmw xchg ptr %i.bc, ptr %i.bg acq_rel, align 8, !noalias !19362
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store atomic ptr %i.bg, ptr %i.bj release, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 176
  %i.bl = load atomic ptr, ptr %i.bk acquire, align 8, !noalias !19362 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bl, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.ar, align 8, !noalias !19362
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !381, !noalias !19362, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.bq = load atomic ptr, ptr %i.w monotonic, align 8, !alias.scope !19361, !noalias !19362
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.bi, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bs = load ptr, ptr %i.x, align 8, !noalias !19362, !nonnull !3, !align !356, !noundef !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !19362, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !19362, !noundef !3
  call void %i.bu(ptr noundef %i.bw), !noalias !19362, !inline_history !19363
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19364
  call void @llvm.experimental.noalias.scope.decl(metadata !19365)
  %i.by = load ptr, ptr %i.w, align 8, !alias.scope !19368, !noalias !19362, !noundef !3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !19369, !noundef !3
  %i.cb = add i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 2 uses
  %i.cd = load atomic ptr, ptr %i.cc monotonic, align 8, !noalias !19369 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 160 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !19369, !noundef !3 ; 4 uses
  %i.cg = load ptr, ptr %i.v, align 8, !alias.scope !19368, !noalias !19362, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !19369, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store atomic ptr %i.cj, ptr %i.cc monotonic, align 8, !noalias !19369
  store ptr null, ptr %i.ce, align 8, !noalias !19369
  %i.ck = icmp eq ptr %i.cd, null
  br i1 %i.ck, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  store ptr %i.cf, ptr %i.cl, align 8, !noalias !19369
  %i.cm = icmp eq ptr %i.cf, null
  br i1 %i.cm, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cn = icmp eq ptr %i.cf, null
  br i1 %i.cn, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.w, align 8, !alias.scope !19368, !noalias !19362
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  store atomic ptr %i.cd, ptr %i.co monotonic, align 8, !noalias !19369
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cd, ptr %i.w, align 8, !alias.scope !19368, !noalias !19362
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cp = phi ptr [ %i.by, %.thread.i.i ], [ %i.cd, %bb.u ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  store i64 %i.cb, ptr %i.cq, align 8, !noalias !19369
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.cr = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.cr, ptr %i.e, align 8, !noalias !19364
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 184
  %i.ct = atomicrmw xchg ptr %i.cs, i8 0 seq_cst, align 1, !noalias !19362
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.y, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19364
  %i.cv = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.cv, ptr %i.f, align 8, !noalias !19364
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !19370
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2F_11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #58, !noalias !19362
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19364
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.bf, !noalias !19362

bb.z:                                             ; preds = %bb.aw, %bb.y
  unreachable

.body.i:                                          ; preds = %bb.ax, %.body12.i.i.i, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %.pn5.pn.i.i.i, %.body12.i.i.i ], [ %i.eo, %bb.ax ], [ %i.cy, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #54
          to label %.thread.i unwind label %bb.be, !noalias !19362

bb.aa:                                            ; preds = %bb.aw, %bb.ah, %bb.ag
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19364
  %i.cz = load ptr, ptr %i.e, align 8, !noalias !19364, !nonnull !3, !noundef !3 ; 4 uses
  store ptr %i.v, ptr %i.d, align 8, !noalias !19364
  store ptr %i.cz, ptr %i.y, align 8, !noalias !19364
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 201
  store atomic i8 0, ptr %i.da monotonic, align 1, !noalias !19362
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19364
  store ptr @21, ptr %i.c, align 8, !noalias !19364
  store ptr %i.db, ptr %i.z, align 8, !noalias !19364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19364
  store <2 x ptr> %4, ptr %i.b, align 16, !noalias !19364
  store ptr null, ptr %i.aa, align 16, !noalias !19364
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !19375, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 136 ; 5 uses
  %i.df = load i8, ptr %i.de, align 8, !range !342, !noalias !19379, !noundef !3
  switch i8 %i.df, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %.sroa.017.0.copyload.i.i.i = load i64, ptr %i.bx, align 8, !noalias !19379 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775790
  br i1 %.not.i.i.i.i, label %bb.ad, label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19379
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !19379, !nonnull !3, !align !356, !noundef !3
  %i.dj = invoke { ptr, ptr } @_RNvXs5_NtCsjyY8HP3IvQ6_12object_store4httpNtB5_9HttpStoreNtB7_11ObjectStore6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.af unwind label %bb.ae, !noalias !19379 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !19379
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 128
  store ptr %i.dm, ptr %i.do, align 8, !noalias !19379
  br label %bb.ai

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ao, %bb.aj, %bb.ae
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.ae ], [ %i.dr, %bb.aj ], [ %i.ec, %bb.ao ], [ %i.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dp) #54
          to label %.body12.i.i.i unwind label %bb.au, !noalias !19383

.body12.i.i.i:                                    ; preds = %bb.at, %bb.ar, %.body.i.i.i
  %.pn5.pn.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.ar ], [ %.pn3.i.i.i, %.body.i.i.i ], [ %i.el, %bb.at ]
  store i8 2, ptr %i.de, align 8, !noalias !19379
  br label %.body.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc.i unwind label %bb.aa, !noalias !19362

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc28.i unwind label %bb.aa, !noalias !19362

.noexc28.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19384
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.ak unwind label %bb.aj, !noalias !19383

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19384
  %.val.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19379
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val8.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !19379, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val.i.i.i, ptr nonnull %.val8.i.i.i) #54
          to label %.body.i.i.i unwind label %bb.au, !noalias !19383

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.a, align 8, !range !866, !noalias !19384, !noundef !3 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -9223372036854775789
  br i1 %i.du, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !19384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19384
  %.val9.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19379 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val10.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !19379, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val10.i.i.i, align 8, !invariant.load !3, !noalias !19383 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val9.i.i.i)
          to label %bb.an unwind label %bb.ao, !noalias !19383

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !658, !invariant.load !3, !noalias !19383 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !645, !invariant.load !3, !noalias !19383
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #48, !noalias !19383
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !658, !invariant.load !3, !noalias !19383 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !645, !invariant.load !3, !noalias !19383
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #48, !noalias !19383
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.an
  %.not.i11.i.i.i = icmp eq i64 %i.dt, -9223372036854775790
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 4 uses
  br i1 %.not.i11.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !19379
  br label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, i64 64, i1 false), !noalias !19384
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ar, !noalias !19383

bb.ar:                                            ; preds = %bb.aq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %.body12.i.i.i unwind label %bb.as, !noalias !19383

bb.as:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19383
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i unwind label %bb.at, !noalias !19383

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i

bb.au:                                            ; preds = %bb.aj, %.body.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19383
  unreachable

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19385
  store i8 1, ptr %i.de, align 8, !noalias !19379
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ac
  %.sroa.818.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.818.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !19379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19385
  store i8 1, ptr %i.de, align 8, !noalias !19379
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.en = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775789
  br i1 %i.en, label %.thread128.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

.thread128.i:                                     ; preds = %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19364
  store ptr null, ptr %i.y, align 8, !noalias !19364
  br label %bb.ay

bb.av:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19384
  store i8 3, ptr %i.de, align 8, !noalias !19379
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %.pre.i = load ptr, ptr %i.y, align 8, !noalias !19364 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19364
  store ptr null, ptr %i.y, align 8, !noalias !19364
  %.not.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i, label %bb.aw, label %._crit_edge, !prof !19345

._crit_edge:                                      ; preds = %bb.av
  %.pre = load ptr, ptr %i.d, align 8, !noalias !19364
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #57
          to label %bb.z unwind label %bb.aa, !noalias !19362

bb.ax:                                            ; preds = %bb.bd
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ay:                                            ; preds = %._crit_edge, %.thread128.i
  %i.ep = phi ptr [ %i.v, %.thread128.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.eq = phi ptr [ %i.cz, %.thread128.i ], [ %.pre.i, %._crit_edge ] ; 6 uses
  %i.er = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 201
  %i.et = load atomic i8, ptr %i.es monotonic, align 1, !noalias !19362
  %i.eu = icmp ne i8 %i.et, 0
  %i.ev = zext i1 %i.eu to i64
  %i.ew = add nuw nsw i64 %.sroa.010.0.i.ph, %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ez = atomicrmw xchg ptr %i.ey, ptr %i.ex acq_rel, align 8, !noalias !19362 ; 5 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.critedge.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load ptr, ptr %i.ep, align 8, !noalias !19362, !nonnull !3, !noundef !3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !19362, !nonnull !3, !noundef !3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 152
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %i.fg = load atomic ptr, ptr %i.ff acquire, align 8
  %.not.i29.i = icmp eq ptr %i.fg, %i.fe
  br i1 %.not.i29.i, label %bb.ba, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 168
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !3
  %i.fj = add i64 %i.fi, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store i64 %i.fj, ptr %i.fk, align 8, !noalias !19362
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 168
  store atomic ptr %i.ez, ptr %i.fl release, align 8, !noalias !19362
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 160
  store ptr %i.ex, ptr %i.fm, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.ay
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store i64 1, ptr %i.fn, align 8, !noalias !19362
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eq, i64 168
  store atomic ptr null, ptr %i.fo release, align 8, !noalias !19362
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.bb
  %i.fp = icmp samesign ugt i64 %i.ew, 1
  %i.fq = icmp eq i64 %i.er, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19364
  br label %.outer

bb.bd:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fr = load ptr, ptr %i.x, align 8, !noalias !19362, !nonnull !3, !align !356, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !19362, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !19362, !noundef !3
  invoke void %i.ft(ptr noundef %i.fv)
          to label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14 unwind label %bb.ax, !noalias !19362

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14: ; preds = %bb.bd
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19364
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.be:                                            ; preds = %bb.bg, %.body.i
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19362
  unreachable

.thread.i:                                        ; preds = %bb.bg, %bb.bf, %.body.i
  %.pn2444.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.bf ], [ %.pn.i, %.body.i ], [ %lpad.thr_comm.split-lp.i, %bb.bg ]
  resume { ptr, i32 } %.pn2444.i

bb.bf:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19386)
  call void @llvm.experimental.noalias.scope.decl(metadata !19389)
  %i.fx = load ptr, ptr %i.e, align 8, !alias.scope !19392, !noalias !19364, !nonnull !3, !noundef !3
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !19393
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2F_11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #58
          to label %.thread.i unwind label %bb.be, !noalias !19362

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i
  %.sroa.028.0.i7.i.i = phi i64 [ %i.dt, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i ], [ %.sroa.017.0.copyload.i.i.i, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, i64 64, i1 false), !noalias !19394
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19364
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19364
  %i.ga = icmp eq i64 %.sroa.028.0.i7.i.i, -9223372036854775788
  br i1 %i.ga, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.bh

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.bj

bb.bh:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.028.0.i7.i.i, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  store i64 %i.dd, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %i.gb = load i64, ptr %i.ab, align 8, !noundef !3
  %i.gc = icmp eq i64 %i.dd, %i.gb
  br i1 %i.gc, label %bb.bl, label %bb.bk

bb.bi:                                            ; preds = %bb.q
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.gd, align 8, !alias.scope !19361, !noalias !19362
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store4http9HttpStoreNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.bl:                                            ; preds = %bb.bh
  %i.ge = add i64 %i.dd, 1
  store i64 %i.ge, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  br label %bb.bj

bb.bm:                                            ; preds = %bb.bj, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [64 x i8], align 8      ; 10 uses
  %.sroa.325.i.i.i = alloca [64 x i8], align 8    ; 6 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [64 x i8], align 8            ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = icmp ult i64 %i.k, 115292150460684698
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !3
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.x = load ptr, ptr %2, align 8, !alias.scope !19395, !noalias !19398, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 24
  %.sroa.325.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.r, 1
  store i64 %i.ac, ptr %i.s, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bm

bb.f:                                             ; preds = %bb.bk, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19401)
  call void @llvm.experimental.noalias.scope.decl(metadata !19395)
  %i.ad = load atomic ptr, ptr %i.w acquire, align 8, !alias.scope !19401, !noalias !19402 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.v, align 8, !alias.scope !19401, !noalias !19402, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !19402, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8, !noalias !19402
  %.not.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.am = load i64, ptr %i.al, align 8, !noalias !19402, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.am, %bb.i ], [ 0, %bb.f ]
  %i.an = load ptr, ptr %i.v, align 8, !alias.scope !19401, !noalias !19402, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !19402
  br label %.outer

.outer:                                           ; preds = %bb.bc, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.ew, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.er, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ap = load ptr, ptr %i.v, align 8, !alias.scope !19401, !noalias !19402, !nonnull !3, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !19402, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  %i.au = load atomic ptr, ptr %i.at acquire, align 8, !noalias !19402 ; 5 uses
  %i.av = load ptr, ptr %i.aq, align 8, !noalias !19402, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = icmp eq ptr %i.as, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq ptr %i.au, null
  br i1 %i.ay, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.bb, %bb.m ], [ %i.au, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.au, %bb.m ], [ %i.as, %bb.j ] ; 22 uses
  %i.az = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.az, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.au, ptr %i.ar, align 8, !noalias !19402
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.bb = load atomic ptr, ptr %i.ba acquire, align 8, !noalias !19402
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8, !noalias !19402
  %i.be = icmp eq ptr %i.bd, %.sroa.01.0.i.i
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.aq, align 8, !noalias !19402, !nonnull !3, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  store atomic ptr null, ptr %i.bh monotonic, align 8, !noalias !19402
  %i.bi = atomicrmw xchg ptr %i.bc, ptr %i.bg acq_rel, align 8, !noalias !19402
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store atomic ptr %i.bg, ptr %i.bj release, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 176
  %i.bl = load atomic ptr, ptr %i.bk acquire, align 8, !noalias !19402 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bl, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.ar, align 8, !noalias !19402
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !381, !noalias !19402, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.bq = load atomic ptr, ptr %i.w monotonic, align 8, !alias.scope !19401, !noalias !19402
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.bi, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bs = load ptr, ptr %i.x, align 8, !noalias !19402, !nonnull !3, !align !356, !noundef !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !19402, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !19402, !noundef !3
  call void %i.bu(ptr noundef %i.bw), !noalias !19402, !inline_history !19403
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19404
  call void @llvm.experimental.noalias.scope.decl(metadata !19405)
  %i.by = load ptr, ptr %i.w, align 8, !alias.scope !19408, !noalias !19402, !noundef !3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !19409, !noundef !3
  %i.cb = add i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 2 uses
  %i.cd = load atomic ptr, ptr %i.cc monotonic, align 8, !noalias !19409 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 160 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !19409, !noundef !3 ; 4 uses
  %i.cg = load ptr, ptr %i.v, align 8, !alias.scope !19408, !noalias !19402, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !19409, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store atomic ptr %i.cj, ptr %i.cc monotonic, align 8, !noalias !19409
  store ptr null, ptr %i.ce, align 8, !noalias !19409
  %i.ck = icmp eq ptr %i.cd, null
  br i1 %i.ck, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  store ptr %i.cf, ptr %i.cl, align 8, !noalias !19409
  %i.cm = icmp eq ptr %i.cf, null
  br i1 %i.cm, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cn = icmp eq ptr %i.cf, null
  br i1 %i.cn, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.w, align 8, !alias.scope !19408, !noalias !19402
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  store atomic ptr %i.cd, ptr %i.co monotonic, align 8, !noalias !19409
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cd, ptr %i.w, align 8, !alias.scope !19408, !noalias !19402
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cp = phi ptr [ %i.by, %.thread.i.i ], [ %i.cd, %bb.u ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  store i64 %i.cb, ptr %i.cq, align 8, !noalias !19409
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.cr = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.cr, ptr %i.e, align 8, !noalias !19404
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 184
  %i.ct = atomicrmw xchg ptr %i.cs, i8 0 seq_cst, align 1, !noalias !19402
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.y, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19404
  %i.cv = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.cv, ptr %i.f, align 8, !noalias !19404
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !19410
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2F_11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #58, !noalias !19402
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19404
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.bf, !noalias !19402

bb.z:                                             ; preds = %bb.aw, %bb.y
  unreachable

.body.i:                                          ; preds = %bb.ax, %.body12.i.i.i, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %.pn5.pn.i.i.i, %.body12.i.i.i ], [ %i.eo, %bb.ax ], [ %i.cy, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #54
          to label %.thread.i unwind label %bb.be, !noalias !19402

bb.aa:                                            ; preds = %bb.aw, %bb.ah, %bb.ag
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19404
  %i.cz = load ptr, ptr %i.e, align 8, !noalias !19404, !nonnull !3, !noundef !3 ; 4 uses
  store ptr %i.v, ptr %i.d, align 8, !noalias !19404
  store ptr %i.cz, ptr %i.y, align 8, !noalias !19404
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 201
  store atomic i8 0, ptr %i.da monotonic, align 1, !noalias !19402
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19404
  store ptr @22, ptr %i.c, align 8, !noalias !19404
  store ptr %i.db, ptr %i.z, align 8, !noalias !19404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19404
  store <2 x ptr> %4, ptr %i.b, align 16, !noalias !19404
  store ptr null, ptr %i.aa, align 16, !noalias !19404
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !19415, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 136 ; 5 uses
  %i.df = load i8, ptr %i.de, align 8, !range !342, !noalias !19419, !noundef !3
  switch i8 %i.df, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %.sroa.017.0.copyload.i.i.i = load i64, ptr %i.bx, align 8, !noalias !19419 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775790
  br i1 %.not.i.i.i.i, label %bb.ad, label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19419
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !19419, !nonnull !3, !align !356, !noundef !3
  %i.dj = invoke { ptr, ptr } @_RNvXsb_NtCsjyY8HP3IvQ6_12object_store5localNtB5_15LocalFileSystemNtB7_11ObjectStore6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.af unwind label %bb.ae, !noalias !19419 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !19419
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 128
  store ptr %i.dm, ptr %i.do, align 8, !noalias !19419
  br label %bb.ai

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ao, %bb.aj, %bb.ae
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.ae ], [ %i.dr, %bb.aj ], [ %i.ec, %bb.ao ], [ %i.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dp) #54
          to label %.body12.i.i.i unwind label %bb.au, !noalias !19423

.body12.i.i.i:                                    ; preds = %bb.at, %bb.ar, %.body.i.i.i
  %.pn5.pn.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.ar ], [ %.pn3.i.i.i, %.body.i.i.i ], [ %i.el, %bb.at ]
  store i8 2, ptr %i.de, align 8, !noalias !19419
  br label %.body.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc.i unwind label %bb.aa, !noalias !19402

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc28.i unwind label %bb.aa, !noalias !19402

.noexc28.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19424
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.ak unwind label %bb.aj, !noalias !19423

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19424
  %.val.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19419
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val8.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !19419, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val.i.i.i, ptr nonnull %.val8.i.i.i) #54
          to label %.body.i.i.i unwind label %bb.au, !noalias !19423

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.a, align 8, !range !866, !noalias !19424, !noundef !3 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -9223372036854775789
  br i1 %i.du, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !19424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19424
  %.val9.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19419 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val10.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !19419, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val10.i.i.i, align 8, !invariant.load !3, !noalias !19423 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val9.i.i.i)
          to label %bb.an unwind label %bb.ao, !noalias !19423

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !658, !invariant.load !3, !noalias !19423 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !645, !invariant.load !3, !noalias !19423
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #48, !noalias !19423
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !658, !invariant.load !3, !noalias !19423 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !645, !invariant.load !3, !noalias !19423
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #48, !noalias !19423
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.an
  %.not.i11.i.i.i = icmp eq i64 %i.dt, -9223372036854775790
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 4 uses
  br i1 %.not.i11.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !19419
  br label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, i64 64, i1 false), !noalias !19424
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ar, !noalias !19423

bb.ar:                                            ; preds = %bb.aq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %.body12.i.i.i unwind label %bb.as, !noalias !19423

bb.as:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19423
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i unwind label %bb.at, !noalias !19423

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i

bb.au:                                            ; preds = %bb.aj, %.body.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19423
  unreachable

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19425
  store i8 1, ptr %i.de, align 8, !noalias !19419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ac
  %.sroa.818.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.818.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !19419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19425
  store i8 1, ptr %i.de, align 8, !noalias !19419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.en = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775789
  br i1 %i.en, label %.thread128.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

.thread128.i:                                     ; preds = %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19404
  store ptr null, ptr %i.y, align 8, !noalias !19404
  br label %bb.ay

bb.av:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19424
  store i8 3, ptr %i.de, align 8, !noalias !19419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %.pre.i = load ptr, ptr %i.y, align 8, !noalias !19404 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19404
  store ptr null, ptr %i.y, align 8, !noalias !19404
  %.not.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i, label %bb.aw, label %._crit_edge, !prof !19345

._crit_edge:                                      ; preds = %bb.av
  %.pre = load ptr, ptr %i.d, align 8, !noalias !19404
  br label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #57
          to label %bb.z unwind label %bb.aa, !noalias !19402

bb.ax:                                            ; preds = %bb.bd
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ay:                                            ; preds = %._crit_edge, %.thread128.i
  %i.ep = phi ptr [ %i.v, %.thread128.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.eq = phi ptr [ %i.cz, %.thread128.i ], [ %.pre.i, %._crit_edge ] ; 6 uses
  %i.er = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 201
  %i.et = load atomic i8, ptr %i.es monotonic, align 1, !noalias !19402
  %i.eu = icmp ne i8 %i.et, 0
  %i.ev = zext i1 %i.eu to i64
  %i.ew = add nuw nsw i64 %.sroa.010.0.i.ph, %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ez = atomicrmw xchg ptr %i.ey, ptr %i.ex acq_rel, align 8, !noalias !19402 ; 5 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.critedge.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fb = load ptr, ptr %i.ep, align 8, !noalias !19402, !nonnull !3, !noundef !3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !19402, !nonnull !3, !noundef !3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 152
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %i.fg = load atomic ptr, ptr %i.ff acquire, align 8
  %.not.i29.i = icmp eq ptr %i.fg, %i.fe
  br i1 %.not.i29.i, label %bb.ba, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 168
  %i.fi = load i64, ptr %i.fh, align 8, !noundef !3
  %i.fj = add i64 %i.fi, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store i64 %i.fj, ptr %i.fk, align 8, !noalias !19402
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 168
  store atomic ptr %i.ez, ptr %i.fl release, align 8, !noalias !19402
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 160
  store ptr %i.ex, ptr %i.fm, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.ay
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 184
  store i64 1, ptr %i.fn, align 8, !noalias !19402
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eq, i64 168
  store atomic ptr null, ptr %i.fo release, align 8, !noalias !19402
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.bb
  %i.fp = icmp samesign ugt i64 %i.ew, 1
  %i.fq = icmp eq i64 %i.er, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.fp, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19404
  br label %.outer

bb.bd:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fr = load ptr, ptr %i.x, align 8, !noalias !19402, !nonnull !3, !align !356, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !19402, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !19402, !noundef !3
  invoke void %i.ft(ptr noundef %i.fv)
          to label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14 unwind label %bb.ax, !noalias !19402

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14: ; preds = %bb.bd
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19404
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.be:                                            ; preds = %bb.bg, %.body.i
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19402
  unreachable

.thread.i:                                        ; preds = %bb.bg, %bb.bf, %.body.i
  %.pn2444.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.bf ], [ %.pn.i, %.body.i ], [ %lpad.thr_comm.split-lp.i, %bb.bg ]
  resume { ptr, i32 } %.pn2444.i

bb.bf:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19426)
  call void @llvm.experimental.noalias.scope.decl(metadata !19429)
  %i.fx = load ptr, ptr %i.e, align 8, !alias.scope !19432, !noalias !19404, !nonnull !3, !noundef !3
  %i.fy = atomicrmw sub ptr %i.fx, i64 1 release, align 8, !noalias !19433
  %i.fz = icmp eq i64 %i.fy, 1
  br i1 %i.fz, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2F_11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #58
          to label %.thread.i unwind label %bb.be, !noalias !19402

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i
  %.sroa.028.0.i7.i.i = phi i64 [ %i.dt, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i ], [ %.sroa.017.0.copyload.i.i.i, %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, i64 64, i1 false), !noalias !19434
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19404
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d), !noalias !19402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19404
  %i.ga = icmp eq i64 %.sroa.028.0.i7.i.i, -9223372036854775788
  br i1 %i.ga, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.bh

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread14
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.bj

bb.bh:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.028.0.i7.i.i, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, i64 64, i1 false)
  store i64 %i.dd, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %i.gb = load i64, ptr %i.ab, align 8, !noundef !3
  %i.gc = icmp eq i64 %i.dd, %i.gb
  br i1 %i.gc, label %bb.bl, label %bb.bk

bb.bi:                                            ; preds = %bb.q
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.gd, align 8, !alias.scope !19401, !noalias !19402
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bh
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.bl:                                            ; preds = %bb.bh
  %i.ge = add i64 %i.dd, 1
  store i64 %i.ge, ptr %i.ab, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  br label %bb.bj

bb.bm:                                            ; preds = %bb.bj, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB1w_11ObjectStore13delete_stream00ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [64 x i8], align 8      ; 10 uses
  %.sroa.325.i.i.i = alloca [64 x i8], align 8    ; 6 uses
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i = alloca [64 x i8], align 8        ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 11 uses
  %i.e = alloca [8 x i8], align 8                 ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %.sroa.9 = alloca [64 x i8], align 8            ; 5 uses
  %i.h = alloca [80 x i8], align 8                ; 2 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.l = icmp ult i64 %i.k, 115292150460684698
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.k, 0
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %1, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !3
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.x = load ptr, ptr %2, align 8, !alias.scope !19435, !noalias !19438, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.32..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 24
  %.sroa.325.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.r, 1
  store i64 %i.ac, ptr %i.s, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bm

bb.f:                                             ; preds = %bb.bk, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19441)
  call void @llvm.experimental.noalias.scope.decl(metadata !19435)
  %i.ad = load atomic ptr, ptr %i.w acquire, align 8, !alias.scope !19441, !noalias !19442 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.v, align 8, !alias.scope !19441, !noalias !19442, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !19442, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8, !noalias !19442
  %.not.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.am = load i64, ptr %i.al, align 8, !noalias !19442, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.am, %bb.i ], [ 0, %bb.f ]
  %i.an = load ptr, ptr %i.v, align 8, !alias.scope !19441, !noalias !19442, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x), !noalias !19442
  br label %.outer

.outer:                                           ; preds = %bb.bc, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.ew, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.er, %bb.bc ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ap = load ptr, ptr %i.v, align 8, !alias.scope !19441, !noalias !19442, !nonnull !3, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !19442, !noundef !3 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  %i.au = load atomic ptr, ptr %i.at acquire, align 8, !noalias !19442 ; 5 uses
  %i.av = load ptr, ptr %i.aq, align 8, !noalias !19442, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = icmp eq ptr %i.as, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp eq ptr %i.au, null
  br i1 %i.ay, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.bb, %bb.m ], [ %i.au, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.au, %bb.m ], [ %i.as, %bb.j ] ; 22 uses
  %i.az = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.az, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.au, ptr %i.ar, align 8, !noalias !19442
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.bb = load atomic ptr, ptr %i.ba acquire, align 8, !noalias !19442
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.bd = load atomic ptr, ptr %i.bc acquire, align 8, !noalias !19442
  %i.be = icmp eq ptr %i.bd, %.sroa.01.0.i.i
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.aq, align 8, !noalias !19442, !nonnull !3, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  store atomic ptr null, ptr %i.bh monotonic, align 8, !noalias !19442
  %i.bi = atomicrmw xchg ptr %i.bc, ptr %i.bg acq_rel, align 8, !noalias !19442
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  store atomic ptr %i.bg, ptr %i.bj release, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 176
  %i.bl = load atomic ptr, ptr %i.bk acquire, align 8, !noalias !19442 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.bl, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.ar, align 8, !noalias !19442
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !range !381, !noalias !19442, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  br i1 %i.bp, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.bq = load atomic ptr, ptr %i.w monotonic, align 8, !alias.scope !19441, !noalias !19442
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.bi, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bs = load ptr, ptr %i.x, align 8, !noalias !19442, !nonnull !3, !align !356, !noundef !3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !19442, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !19442, !noundef !3
  call void %i.bu(ptr noundef %i.bw), !noalias !19442, !inline_history !19443
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19444
  call void @llvm.experimental.noalias.scope.decl(metadata !19445)
  %i.by = load ptr, ptr %i.w, align 8, !alias.scope !19448, !noalias !19442, !noundef !3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 168
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !19449, !noundef !3
  %i.cb = add i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 152 ; 2 uses
  %i.cd = load atomic ptr, ptr %i.cc monotonic, align 8, !noalias !19449 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 160 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !19449, !noundef !3 ; 4 uses
  %i.cg = load ptr, ptr %i.v, align 8, !alias.scope !19448, !noalias !19442, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !19449, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store atomic ptr %i.cj, ptr %i.cc monotonic, align 8, !noalias !19449
  store ptr null, ptr %i.ce, align 8, !noalias !19449
  %i.ck = icmp eq ptr %i.cd, null
  br i1 %i.ck, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  store ptr %i.cf, ptr %i.cl, align 8, !noalias !19449
  %i.cm = icmp eq ptr %i.cf, null
  br i1 %i.cm, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.cn = icmp eq ptr %i.cf, null
  br i1 %i.cn, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.w, align 8, !alias.scope !19448, !noalias !19442
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  store atomic ptr %i.cd, ptr %i.co monotonic, align 8, !noalias !19449
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cd, ptr %i.w, align 8, !alias.scope !19448, !noalias !19442
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.cp = phi ptr [ %i.by, %.thread.i.i ], [ %i.cd, %bb.u ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  store i64 %i.cb, ptr %i.cq, align 8, !noalias !19449
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.cr = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.cr, ptr %i.e, align 8, !noalias !19444
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 184
  %i.ct = atomicrmw xchg ptr %i.cs, i8 0 seq_cst, align 1, !noalias !19442
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.y, label %bb.ab, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19444
  %i.cv = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.cv, ptr %i.f, align 8, !noalias !19444
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !19450
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2F_11ObjectStore13delete_stream00EEE9drop_slowB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #58, !noalias !19442
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3e_11ObjectStore13delete_stream00EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19444
  br label %bb.j

bb.y:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #57
          to label %bb.z unwind label %bb.bf, !noalias !19442

bb.z:                                             ; preds = %bb.aw, %bb.y
  unreachable

.body.i:                                          ; preds = %bb.ax, %.body12.i.i.i, %bb.aa
  %.pn.i = phi { ptr, i32 } [ %.pn5.pn.i.i.i, %.body12.i.i.i ], [ %i.eo, %bb.ax ], [ %i.cy, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB3Y_11ObjectStore13delete_stream00EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16) %i.d) #54
          to label %.thread.i unwind label %bb.be, !noalias !19442

bb.aa:                                            ; preds = %bb.aw, %bb.ah, %bb.ag
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ab:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19444
  %i.cz = load ptr, ptr %i.e, align 8, !noalias !19444, !nonnull !3, !noundef !3 ; 4 uses
  store ptr %i.v, ptr %i.d, align 8, !noalias !19444
  store ptr %i.cz, ptr %i.y, align 8, !noalias !19444
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 201
  store atomic i8 0, ptr %i.da monotonic, align 1, !noalias !19442
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19444
  store ptr @23, ptr %i.c, align 8, !noalias !19444
  store ptr %i.db, ptr %i.z, align 8, !noalias !19444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19444
  store <2 x ptr> %4, ptr %i.b, align 16, !noalias !19444
  store ptr null, ptr %i.aa, align 16, !noalias !19444
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 144
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !19455, !noundef !3 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 136 ; 5 uses
  %i.df = load i8, ptr %i.de, align 8, !range !342, !noalias !19459, !noundef !3
  switch i8 %i.df, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
  ]

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %.sroa.017.0.copyload.i.i.i = load i64, ptr %i.bx, align 8, !noalias !19459 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775790
  br i1 %.not.i.i.i.i, label %bb.ad, label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19459
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 88
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !19459, !nonnull !3, !align !356, !noundef !3
  %i.dj = invoke { ptr, ptr } @_RNvXsg_NtCsjyY8HP3IvQ6_12object_store6memoryNtB5_8InMemoryNtB7_11ObjectStore6delete(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dg)
          to label %bb.af unwind label %bb.ae, !noalias !19459 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dl = extractvalue { ptr, ptr } %i.dj, 0
  %i.dm = extractvalue { ptr, ptr } %i.dj, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120
  store ptr %i.dl, ptr %i.dn, align 8, !noalias !19459
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 128
  store ptr %i.dm, ptr %i.do, align 8, !noalias !19459
  br label %bb.ai

.body.i.i.i:                                      ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.ao, %bb.aj, %bb.ae
  %.pn3.i.i.i = phi { ptr, i32 } [ %i.dk, %bb.ae ], [ %i.dr, %bb.aj ], [ %i.ec, %bb.ao ], [ %i.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dp) #54
          to label %.body12.i.i.i unwind label %bb.au, !noalias !19463

.body12.i.i.i:                                    ; preds = %bb.at, %bb.ar, %.body.i.i.i
  %.pn5.pn.i.i.i = phi { ptr, i32 } [ %i.ej, %bb.ar ], [ %.pn3.i.i.i, %.body.i.i.i ], [ %i.el, %bb.at ]
  store i8 2, ptr %i.de, align 8, !noalias !19459
  br label %.body.i

bb.ag:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc.i unwind label %bb.aa, !noalias !19442

.noexc.i:                                         ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #55
          to label %.noexc28.i unwind label %bb.aa, !noalias !19442

.noexc28.i:                                       ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19464
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 120 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.ak unwind label %bb.aj, !noalias !19463

bb.aj:                                            ; preds = %bb.ai
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19464
  %.val.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19459
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val8.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !19459, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val.i.i.i, ptr nonnull %.val8.i.i.i) #54
          to label %.body.i.i.i unwind label %bb.au, !noalias !19463

bb.ak:                                            ; preds = %bb.ai
  %i.dt = load i64, ptr %i.a, align 8, !range !866, !noalias !19464, !noundef !3 ; 3 uses
  %i.du = icmp eq i64 %i.dt, -9223372036854775789
  br i1 %i.du, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.0..sroa_idx.i.i.i, i64 64, i1 false), !noalias !19464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19464
  %.val9.i.i.i = load ptr, ptr %i.dq, align 8, !noalias !19459 ; 5 uses
  %i.dv = getelementptr i8, ptr %.sroa.01.0.i.i, i64 128
  %.val10.i.i.i = load ptr, ptr %i.dv, align 8, !noalias !19459, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.dw = load ptr, ptr %.val10.i.i.i, align 8, !invariant.load !3, !noalias !19463 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  invoke void %i.dw(ptr noundef nonnull %.val9.i.i.i)
          to label %bb.an unwind label %bb.ao, !noalias !19463

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !658, !invariant.load !3, !noalias !19463 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !645, !invariant.load !3, !noalias !19463
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #48, !noalias !19463
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !658, !invariant.load !3, !noalias !19463 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.body.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.ao
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10.i.i.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !645, !invariant.load !3, !noalias !19463
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #48, !noalias !19463
  br label %.body.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.an
  %.not.i11.i.i.i = icmp eq i64 %i.dt, -9223372036854775790
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 96 ; 4 uses
  br i1 %.not.i11.i.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 24, i1 false), !noalias !19459
  br label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.325.i.i.i, i64 64, i1 false), !noalias !19464
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.ar, !noalias !19463

bb.ar:                                            ; preds = %bb.aq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %.body12.i.i.i unwind label %bb.as, !noalias !19463

bb.as:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19463
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i unwind label %bb.at, !noalias !19463

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i.i

bb.au:                                            ; preds = %bb.aj, %.body.i.i.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19463
  unreachable

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.thread5.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19465
  store i8 1, ptr %i.de, align 8, !noalias !19459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ac
  %.sroa.818.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.32..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.818.0..sroa_idx.i.i.i, i64 40, i1 false), !noalias !19459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !19459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.i.i.i, i64 64, i1 false), !noalias !19465
  store i8 1, ptr %i.de, align 8, !noalias !19459
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.325.i.i.i)
  %i.en = icmp eq i64 %.sroa.017.0.copyload.i.i.i, -9223372036854775789
  br i1 %i.en, label %.thread128.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtB2d_11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

.thread128.i:                                     ; preds = %_RNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store6memory8InMemoryNtBa_11ObjectStore13delete_stream00Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19444
  store ptr null, ptr %i.y, align 8, !noalias !19444
  br label %bb.ay

bb.av:                                            ; preds = %bb.ak
end_hunk_6
