Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.07?download=true
inline.NumInlined: 9996
inline.NumDeleted: 4213
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs1K_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !34, !noundef !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !34 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !34, !noundef !34
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !34 ; 2 uses
  %.sroa.0.0.i4 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.p, i64 range(i64 0, 82351536043346213) %i.l) ; 2 uses
  %exitcond.not7 = icmp eq i64 %.sroa.0.0.i4, 0
  br i1 %exitcond.not7, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.sroa.01.0.i8, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %.sroa.0.0.i4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.l, i64 %i.p)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.j, i64 %.sroa.01.0.i8
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %.sroa.01.0.i8
  %i.u = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.t) #56, !inline_history !11 ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.c, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge, %bb.a
  %.sroa.0.0 = phi i8 [ %i.g, %bb.a ], [ %i.r, %._crit_edge ], [ %i.u, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16575)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !16574, !noalias !16575, !noundef !34 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !16575, !noalias !16574, !noundef !34
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !16575, !noalias !16574, !nonnull !34, !noundef !34
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !16574, !noalias !16575, !nonnull !34, !noundef !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.01.07.i.i = phi i64 [ %i.t, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.01.07.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.01.07.i.i
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !16576, !nonnull !34, !noundef !34 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.o, align 8, !noalias !16576, !nonnull !34, !noundef !34 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.p, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.s = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.r), !noalias !16576
  br i1 %i.s, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i, %.lr.ph.i.i
  %i.t = add nuw i64 %.sroa.01.07.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.w = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
  br i1 %i.w, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.x = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.x, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ true, %bb.d ], [ %i.bs, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16578)
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !16577, !noalias !16578, !nonnull !34, !noundef !34 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !16578, !noalias !16577, !nonnull !34, !noundef !34 ; 4 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16580)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !16579, !noalias !16581, !noundef !34 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !16580, !noalias !16582, !noundef !34
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !16580, !noalias !16582, !nonnull !34, !noundef !34
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !16579, !noalias !16581, !nonnull !34, !noundef !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = icmp eq i64 %i.ae, 0
  br i1 %i.ao, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.av, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.01.07.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !16583, !nonnull !34, !noundef !34 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !16583, !nonnull !34, !noundef !34 ; 2 uses
  %i.ar = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.ar, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.au = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.at), !noalias !16583
  br i1 %i.au, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.lr.ph.i.i.i
  %i.av = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ay = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax), !noalias !16584
  br i1 %i.ay, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !16577, !noalias !16578, !noundef !34 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !16578, !noalias !16577, !noundef !34
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !16578, !noalias !16577, !nonnull !34, !noundef !34
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !16577, !noalias !16578, !nonnull !34, !noundef !34
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !16584
  br i1 %i.bi, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !16577, !noalias !16578, !noundef !34 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !16578, !noalias !16577, !noundef !34
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !16578, !noalias !16577, !nonnull !34, !noundef !34
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !16577, !noalias !16578, !nonnull !34, !noundef !34
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !16584
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs1O_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !93, !noundef !34 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !93, !noundef !34 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv4 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv4, i64 2, i64 %i.g        ; 4 uses
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %2 = icmp eq i64 %i.h, 2
  br i1 %2, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 3
  br i1 %i.j, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !34, !noundef !34
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !34, !noundef !34
  %i.p = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o) #56
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.i, %bb.n, %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.p, %bb.g ], [ %i.k, %bb.f ], [ %i.ac, %bb.m ], [ %i.u, %bb.i ], [ %., %bb.l ], [ %i.ah, %bb.n ], [ 1, %bb.k ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !34, !noundef !34
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !34, !noundef !34
  %i.u = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t) #56 ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = trunc nuw i64 %i.a to i1
  %i.y = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.y, label %bb.m, label %bb.h

bb.l:                                             ; preds = %bb.j
  %. = sext i1 %i.y to i8
  br label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.w, align 8, !noundef !34
  %i.ab = load i64, ptr %i.z, align 8, !noundef !34
  %i.ac = tail call i8 @llvm.ucmp.i8.i64(i64 %i.aa, i64 %i.ab)
  br label %bb.h

bb.n:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !34, !noundef !34
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !34, !noundef !34
  %i.ah = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ag) #56
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs1Q_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !76, !noundef !34 ; 3 uses
  %i.b = load i8, ptr %1, align 8, !range !76, !noundef !34 ; 2 uses
  %.not65 = icmp eq i8 %i.a, %i.b
  br i1 %.not65, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.c = phi i8 [ %i.db, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr1767 = phi ptr [ %i.da, %tailrecurse ], [ %1, %bb.a ] ; 14 uses
  %.tr66 = phi ptr [ %i.cy, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  switch i8 %i.c, label %default.unreachable115 [
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

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.lcssa30 = phi i8 [ %i.a, %bb.a ], [ %i.db, %tailrecurse ]
  %.lcssa19 = phi i8 [ %i.b, %bb.a ], [ %i.dc, %tailrecurse ]
  %i.d = tail call i8 @llvm.ucmp.i8.i8(i8 %.lcssa30, i8 %.lcssa19)
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

default.unreachable115:                           ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr66, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !34, !noundef !34
  %i.g = getelementptr inbounds nuw i8, ptr %.tr1767, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !34, !noundef !34
  %i.i = tail call fastcc noundef i8 @_RNvXs2I_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.h) #56
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr66, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !34, !noundef !34
  %i.l = getelementptr inbounds nuw i8, ptr %.tr1767, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !34, !noundef !34
  %i.n = tail call fastcc noundef i8 @_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.m) #56
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr66, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %.tr1767, i64 2
  %.val = load i8, ptr %i.o, align 1, !range !40, !noundef !34 ; 2 uses
  %.val13 = load i8, ptr %i.p, align 1, !range !40, !noundef !34 ; 2 uses
  %i.q = icmp eq i8 %.val, %.val13
  br i1 %i.q, label %bb.t, label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.loopexit18.split.loop.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16595)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr66, i64 32
  %i.s = load i8, ptr %i.r, align 8, !range !56, !alias.scope !16594, !noalias !16595, !noundef !34
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1767, i64 32
  %i.u = load i8, ptr %i.t, align 8, !range !56, !alias.scope !16595, !noalias !16594, !noundef !34
  %i.v = sub nsw i8 %i.s, %i.u                    ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.f, label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.tr66, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !16594, !noalias !16595, !nonnull !34, !noundef !34
  %i.z = getelementptr inbounds nuw i8, ptr %.tr66, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !16594, !noalias !16595, !noundef !34 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr1767, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !16595, !noalias !16594, !nonnull !34, !noundef !34
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr1767, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !16595, !noalias !16594, !noundef !34 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16597)
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.ae, i64 range(i64 0, 384307168202282326) %i.aa) ; 2 uses
  %exitcond.not.i.i194 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %exitcond.not.i.i194, label %._crit_edge, label %.lr.ph196

bb.g:                                             ; preds = %.lr.ph196
  %i.af = add nuw nsw i64 %.sroa.01.0.i.i195, 1   ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %.lr.ph196

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ag = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 384307168202282326) %i.aa, i64 range(i64 0, 384307168202282326) %i.ae)
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

.lr.ph196:                                        ; preds = %bb.f, %bb.g
  %.sroa.01.0.i.i195 = phi i64 [ %i.af, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.sroa.01.0.i.i195 ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.sroa.01.0.i.i195 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.val16.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !16596, !noalias !16598, !nonnull !34, !noundef !34
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  %.val17.i.i = load i64, ptr %i.ak, align 8, !alias.scope !16596, !noalias !16598, !noundef !34
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %.val18.i.i = load ptr, ptr %i.al, align 8, !alias.scope !16597, !noalias !16599, !nonnull !34, !noundef !34
  %i.am = getelementptr i8, ptr %i.ai, i64 16
  %.val19.i.i = load i64, ptr %i.am, align 8, !alias.scope !16597, !noalias !16599, !noundef !34
  %i.an = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val16.i.i, i64 noundef %.val17.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val18.i.i, i64 noundef %.val19.i.i), !noalias !16600 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr66, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr1767, i64 8
  %i.ar = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aq) #56
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr66, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.tr1767, i64 8
  %i.au = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.at) #56
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.j:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %.tr66, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.tr1767, i64 8
  %i.ax = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aw) #56
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr66, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.tr1767, i64 8
  %i.ba = tail call fastcc noundef i8 @_RNvXsc8_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.az) #56
  br label %_RNvXse8_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr66, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !34, !noundef !34 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr1767, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !34, !noundef !34 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16602)
  %i.bf = load i64, ptr %i.bc, align 8, !range !37, !alias.scope !16601, !noalias !16602, !noundef !34
  %.not.i = icmp eq i64 %i.bf, -9223372036854775808
end_hunk_0
