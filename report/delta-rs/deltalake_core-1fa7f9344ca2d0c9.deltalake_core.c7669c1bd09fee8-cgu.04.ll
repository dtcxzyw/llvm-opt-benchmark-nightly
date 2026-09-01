Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.04?download=true
inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs2g_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ab) ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i64 %i.g, 2
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not7.i.i = icmp eq i64 %i.l, 2
  br i1 %.not7.i.i, label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %.not6.i.i = icmp ne i64 %i.l, 2
  %..i.i = sext i1 %.not6.i.i to i8
  br label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = trunc nuw i64 %i.g to i1
  %i.af = trunc nuw i64 %i.l to i1                ; 2 uses
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.af, label %bb.q, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ag = sub nsw i64 %i.g, %i.l
  %i.ah = trunc nsw i64 %i.ag to i8
  br label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.p:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aj)
  br label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.q:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.am)
  br label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.r:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ap) ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.s, label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.at)
  br label %_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs2q_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_18AlterTypeOperationNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  %.sroa.0.0 = phi i8 [ %i.e, %bb.a ], [ %i.q, %bb.d ], [ %i.t, %bb.f ], [ %i.aq, %bb.r ], [ %i.au, %bb.s ], [ %i.ac, %bb.h ], [ %i.an, %bb.q ], [ %i.ah, %bb.o ], [ %i.ak, %bb.p ], [ %i.y, %bb.g ], [ %..i.i, %bb.k ], [ 1, %bb.j ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2i_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_17AggregateFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.val = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %i.g = getelementptr i8, ptr %i.b, i64 24
  %.val4 = load ptr, ptr %i.g, align 8, !nonnull !27, !align !108, !noundef !27 ; 2 uses
  %.val5 = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %.val6 = load ptr, ptr %i.h, align 8, !nonnull !27, !align !108, !noundef !27 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !477, !invariant.load !27
  %i.k = add nsw i64 %i.j, -1
  %i.l = and i64 %i.k, -16
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !477, !invariant.load !27
  %i.q = add nsw i64 %i.p, -1
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = tail call noundef range(i8 -1, 3) i8 @_RNvXs5_NtCs8VI8w5SIoU4_15datafusion_expr4udafDNtB5_16AggregateUDFImplEL_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %.val4, ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %.val6) ; 2 uses
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.b, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20102)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !20099, !noalias !20102, !nonnull !27, !noundef !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !20099, !noalias !20102, !noundef !27 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !20102, !noalias !20099, !nonnull !27, !noundef !27
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20102, !noalias !20099, !noundef !27 ; 3 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.ad, i64 range(i64 0, 82351536043346213) %i.z) ; 2 uses
  %exitcond.not20 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not20, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i21, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %.sroa.0.0.i.i
  br i1 %exitcond.not, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.01.0.i21 = phi i64 [ %i.ae, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.af = getelementptr inbounds nuw [112 x i8], ptr %i.x, i64 %.sroa.01.0.i21
  %i.ag = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %.sroa.01.0.i21
  %i.ah = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.af, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ag) #62, !noalias !20104, !inline_history !20105 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.c, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.b
  %i.aj = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.z, i64 %i.ad)
  %i.ak = icmp eq i64 %i.z, %i.ad
  br i1 %i.ak, label %bb.d, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.d:                                             ; preds = %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load i8, ptr %i.al, align 8, !range !1800, !alias.scope !20099, !noalias !20102, !noundef !27
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !range !1800, !alias.scope !20102, !noalias !20099, !noundef !27
  %i.ap = sub nsw i8 %i.am, %i.ao                 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !20099, !noalias !20102, !align !1933, !noundef !27 ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !20102, !noalias !20099, !align !1933, !noundef !27 ; 2 uses
  %.not14.i = icmp eq ptr %i.au, null             ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not14.i, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not14.i, label %bb.h, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !20099, !noalias !20102, !nonnull !27, !noundef !27
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !20099, !noalias !20102, !noundef !27
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !20102, !noalias !20099, !nonnull !27, !noundef !27
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !20102, !noalias !20099, !noundef !27
  %i.bd = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.aw, i64 noundef %i.ay, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ba, i64 noundef %i.bc) #62, !noalias !20104, !inline_history !20106 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.f
  %i.bf = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.as, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.au) #62, !noalias !20104, !inline_history !20106 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bi = load i8, ptr %i.bh, align 1, !range !2104, !alias.scope !20099, !noalias !20102, !noundef !27 ; 2 uses
  %.not16.i = icmp eq i8 %i.bi, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.bk = load i8, ptr %i.bj, align 1, !range !2104, !alias.scope !20102, !noalias !20099, !noundef !27 ; 3 uses
  br i1 %.not16.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not18.i = icmp eq i8 %i.bk, 2
  %i.bl = sub nsw i8 %i.bi, %i.bk
  %spec.select = select i1 %.not18.i, i8 1, i8 %i.bl
  br label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.l:                                             ; preds = %bb.j
  %.not17.i = icmp ne i8 %i.bk, 2
  %..i = sext i1 %.not17.i to i8
  br label %_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXs2p_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_23AggregateFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %.lr.ph, %bb.k, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  %.sroa.0.0 = phi i8 [ %i.u, %bb.a ], [ %i.aj, %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit ], [ %spec.select, %bb.k ], [ %i.ap, %bb.d ], [ %..i, %bb.l ], [ 1, %bb.f ], [ %i.bd, %bb.h ], [ %i.bf, %bb.i ], [ -1, %bb.g ], [ %i.ah, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !27
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !68, !noundef !27
  %i.d = icmp eq i64 %i.c, -9223372036854775808   ; 3 uses
  %not. = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.o

_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %.split, %bb.o, %bb.a, %bb.p
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.o ], [ false, %bb.a ], [ %i.bl, %bb.p ], [ false, %bb.d ], [ %i.bd, %bb.n ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.f ], [ true, %bb.m ], [ false, %.split ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not.)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20110)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !20107, !noalias !20110, !noundef !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !20110, !noalias !20107, !noundef !27
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !20110, !noalias !20107, !nonnull !27, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !20107, !noalias !20110, !nonnull !27, !noundef !27
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, i64 noundef %i.g), !noalias !20112, !inline_history !20113
  br i1 %i.o, label %bb.e, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !20107, !noalias !20110, !noundef !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !20110, !noalias !20107, !noundef !27
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !20110, !noalias !20107, !nonnull !27, !noundef !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !20107, !noalias !20110, !nonnull !27, !noundef !27
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.x, ptr noundef nonnull %i.v, i64 noundef %i.q), !noalias !20112, !inline_history !20113
  br i1 %i.y, label %bb.g, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !range !68, !alias.scope !20107, !noalias !20110, !noundef !27
  %.not.i = icmp eq i64 %i.aa, -9223372036854775808
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !range !68, !alias.scope !20110, !noalias !20107, !noundef !27
  %i.ad = icmp eq i64 %i.ac, -9223372036854775808 ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ad, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.j

bb.i:                                             ; preds = %bb.g
  br i1 %i.ad, label %bb.k, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !20107, !noalias !20110, !noundef !27 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !20110, !noalias !20107, !noundef !27
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %.split, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !20110, !noalias !20107, !nonnull !27, !noundef !27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !20107, !noalias !20110, !nonnull !27, !noundef !27
  %i.an = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ak, i64 noundef %i.af), !noalias !20112, !inline_history !20113
  br i1 %i.an, label %bb.k, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.split, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !20107, !noalias !20110, !nonnull !27, !noundef !27 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !20110, !noalias !20107, !nonnull !27, !noundef !27 ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.at, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.au) #62, !noalias !20112, !inline_history !20113
  br i1 %i.av, label %bb.m, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !20107, !noalias !20110, !nonnull !27, !noundef !27 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !20110, !noalias !20107, !nonnull !27, !noundef !27 ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bc) #62, !noalias !20112, !inline_history !20113
  br label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.bi = icmp eq ptr %i.bf, %i.bh
  br i1 %i.bi, label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bj, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bk) #62
  br label %_RNvXs2t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs2o_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !27
  %i.b = icmp ne i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !68, !noundef !27
  %i.e = icmp ne i64 %i.d, -9223372036854775808   ; 3 uses
  %.neg = sext i1 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i8 %.neg, %i.c
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !27, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = tail call fastcc noundef i8 @_RNvXsM_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.l) #62
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.n, %bb.g ], [ %i.f, %bb.d ], [ %i.m, %bb.e ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  %i.n = tail call noundef i8 @_RNvXsv_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_10DistinctOnNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g) #62
  br i1 %i.h, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !27 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !27
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br i1 %i.r, label %bb.e, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !noundef !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !noundef !27
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.f, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_0
begin_hunk_1_@_RNvXs3h_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !27 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !27
  %i.h = icmp eq i64 %i.e, %i.g                   ; 3 uses
  switch i64 %i.a, label %default.unreachable8 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  %.sroa.0.0.shrunk = phi i1 [ %i.m, %bb.g ], [ false, %bb.a ], [ %i.r, %bb.h ], [ false, %bb.d ], [ %i.w, %bb.i ], [ false, %bb.e ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable8:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.h, label %bb.c

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.i, label %bb.c

bb.g:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !27, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !noundef !27
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.l, ptr noundef nonnull %i.j, i64 noundef %i.e)
  br label %bb.c

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.e)
  br label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !27, !noundef !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !27, !noundef !27
  %i.w = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.v, ptr noundef nonnull %i.t, i64 noundef %i.e)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs3j_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_11GroupingSetNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !588, !noundef !27 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !range !588, !noundef !27 ; 2 uses
  %.not = icmp eq i64 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !27 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !noundef !27 ; 6 uses
  switch i64 %i.a, label %default.unreachable31 [
    i64 0, label %bb.d
    i64 1, label %bb.f
    i64 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i8 @llvm.scmp.i8.i64(i64 %i.a, i64 %i.b)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

default.unreachable31:                            ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.j, i64 range(i64 0, 82351536043346213) %i.f) ; 2 uses
  %exitcond26.not47 = icmp eq i64 %.sroa.0.0.i12, 0
  br i1 %exitcond26.not47, label %._crit_edge51, label %.lr.ph50

bb.e:                                             ; preds = %.lr.ph50
  %i.l = add nuw i64 %.sroa.01.0.i48, 1           ; 2 uses
  %exitcond26.not = icmp eq i64 %i.l, %.sroa.0.0.i12
  br i1 %exitcond26.not, label %._crit_edge51, label %.lr.ph50

._crit_edge51:                                    ; preds = %bb.e, %bb.d
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.j)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph50:                                         ; preds = %bb.d, %bb.e
  %.sroa.01.0.i48 = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %.sroa.01.0.i48
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %.sroa.01.0.i48
  %i.p = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.n, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o) #62, !inline_history !17980 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.b
  %.sroa.0.0.i14 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 82351536043346213) %i.j, i64 range(i64 0, 82351536043346213) %i.f) ; 2 uses
  %exitcond.not42 = icmp eq i64 %.sroa.0.0.i14, 0
  br i1 %exitcond.not42, label %._crit_edge46, label %.lr.ph45

bb.g:                                             ; preds = %.lr.ph45
  %i.r = add nuw i64 %.sroa.01.0.i443, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %.sroa.0.0.i14
  br i1 %exitcond.not, label %._crit_edge46, label %.lr.ph45

._crit_edge46:                                    ; preds = %bb.g, %bb.f
  %i.s = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.j)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph45:                                         ; preds = %bb.f, %bb.g
  %.sroa.01.0.i443 = phi i64 [ %i.r, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.d, i64 %.sroa.01.0.i443
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %.sroa.01.0.i443
  %i.v = tail call fastcc noundef i8 @_RNvXsY_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.t, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.u) #62, !inline_history !17980 ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.g, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20345)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.j, i64 range(i64 0, 384307168202282326) %i.f) ; 2 uses
  %exitcond.not.i40 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i40, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.01.0.i1041, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.h
  %i.y = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 384307168202282326) %i.f, i64 range(i64 0, 384307168202282326) %i.j)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.h, %bb.i
  %.sroa.01.0.i1041 = phi i64 [ %i.x, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.01.0.i1041 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.01.0.i1041 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val16.i = load ptr, ptr %i.ab, align 8, !alias.scope !20342, !noalias !20345, !nonnull !27, !noundef !27
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %.val17.i = load i64, ptr %i.ac, align 8, !alias.scope !20342, !noalias !20345, !noundef !27
  %i.ad = getelementptr i8, ptr %i.aa, i64 8
  %.val18.i = load ptr, ptr %i.ad, align 8, !alias.scope !20345, !noalias !20342, !nonnull !27, !noundef !27
  %i.ae = getelementptr i8, ptr %i.aa, i64 16
  %.val19.i = load i64, ptr %i.ae, align 8, !alias.scope !20345, !noalias !20342, !noundef !27
  %i.af = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %.val18.i, i64 noundef %.val19.i), !noalias !20347 ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2H_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %.lr.ph45, %.lr.ph50, %._crit_edge, %._crit_edge46, %._crit_edge51, %bb.c
  %.sroa.0.0 = phi i8 [ %i.k, %bb.c ], [ %i.v, %.lr.ph45 ], [ %i.p, %.lr.ph50 ], [ %i.m, %._crit_edge51 ], [ %i.s, %._crit_edge46 ], [ %i.y, %._crit_edge ], [ %i.af, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs3o_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_15WildcardOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !27
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.b = load i64, ptr %1, align 8, !range !68, !noundef !27
  %i.c = icmp eq i64 %i.b, -9223372036854775808   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !27 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !27
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %.split, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !27, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !noundef !27
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %i.j, i64 %i.e)
  %i.m = icmp eq i32 %bcmp, 0
  br i1 %i.m, label %bb.e, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %.split, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i64, ptr %i.n, align 8, !range !1923, !noundef !27 ; 2 uses
  %.not7 = icmp eq i64 %i.o, -9223372036854775807
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.q = load i64, ptr %i.p, align 8, !range !1923, !noundef !27 ; 2 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775807   ; 2 uses
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.r, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.r, label %bb.n, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20351)
  %i.s = icmp eq i64 %i.o, -9223372036854775808   ; 2 uses
  %i.t = icmp eq i64 %i.q, -9223372036854775808   ; 3 uses
  %i.u = xor i1 %i.s, %i.t
  br i1 %i.u, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !20348, !noalias !20351, !noundef !27 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !20351, !noalias !20348, !noundef !27
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %.split18, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.i
  %2 = xor i1 %i.t, true
  tail call void @llvm.assume(i1 %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !20348, !noalias !20351, !noundef !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20351, !noalias !20348, !noundef !27
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.l, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !20351, !noalias !20348, !nonnull !27, !noundef !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !20348, !noalias !20351, !nonnull !27, !noundef !27
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.ag, i64 %i.ab), !noalias !20353
  %i.aj = icmp eq i32 %bcmp.i, 0
  br i1 %i.aj, label %bb.m, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.al = load i32, ptr %i.ak, align 8, !range !8470, !alias.scope !20348, !noalias !20351, !noundef !27 ; 2 uses
  %.not.i = icmp eq i32 %i.al, 1114112
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.an = load i32, ptr %i.am, align 8, !range !8470, !alias.scope !20351, !noalias !20348, !noundef !27 ; 2 uses
  br i1 %.not.i, label %.split19, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split19:                                         ; preds = %bb.m
  %i.ao = icmp eq i32 %i.an, 1114112
  br i1 %i.ao, label %bb.n, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split18:                                         ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !20351, !noalias !20348, !nonnull !27, !noundef !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !20348, !noalias !20351, !nonnull !27, !noundef !27
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.w), !noalias !20353
  br i1 %i.at, label %bb.n, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m
  %i.au = icmp eq i32 %i.al, %i.an
  br i1 %i.au, label %bb.n, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %.split19, %.split18, %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !range !68, !noundef !27
  %.not9 = icmp eq i64 %i.aw, -9223372036854775808
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !range !68, !noundef !27
  %i.az = icmp eq i64 %i.ay, -9223372036854775808 ; 2 uses
  br i1 %.not9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.az, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.q

bb.p:                                             ; preds = %bb.n
  br i1 %i.az, label %bb.w, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20357)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !20354, !noalias !20357, !noundef !27 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !20357, !noalias !20354, !noundef !27
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.r, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !20357, !noalias !20354, !nonnull !27, !noundef !27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !20354, !noalias !20357, !nonnull !27, !noundef !27
  %bcmp.i15 = tail call i32 @bcmp(ptr nonnull %i.bi, ptr nonnull %i.bg, i64 %i.bb), !noalias !20359
  %i.bj = icmp eq i32 %bcmp.i15, 0
  br i1 %i.bj, label %bb.s, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bl = load i32, ptr %i.bk, align 8, !range !8470, !alias.scope !20354, !noalias !20357, !noundef !27 ; 2 uses
  %.not.i16 = icmp eq i32 %i.bl, 1114112
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bn = load i32, ptr %i.bm, align 8, !range !8470, !alias.scope !20357, !noalias !20354, !noundef !27 ; 2 uses
  br i1 %.not.i16, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.v, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.bp = icmp eq i32 %i.bn, 1114112
  br i1 %i.bp, label %bb.v, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !20354, !noalias !20357, !noundef !27 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !20357, !noalias !20354, !noundef !27
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %_RNvXs4X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs4X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !20357, !noalias !20354, !nonnull !27, !noundef !27
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !20354, !noalias !20357, !nonnull !27, !noundef !27
  %i.bz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.br), !noalias !20359
  br i1 %i.bz, label %bb.w, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.w:                                             ; preds = %_RNvXs4X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !68, !noundef !27
  %.not11 = icmp eq i64 %i.cb, -9223372036854775808
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !range !68, !noundef !27
  %i.ce = icmp eq i64 %i.cd, -9223372036854775808 ; 2 uses
  br i1 %.not11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ce, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.split21

bb.y:                                             ; preds = %bb.w
  br i1 %i.ce, label %bb.z, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

.split21:                                         ; preds = %bb.x
  %i.cf = tail call fastcc noundef zeroext i1 @_RNvXs3w_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24PlannedReplaceSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc) #62
  br i1 %i.cf, label %bb.z, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.z:                                             ; preds = %.split21, %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !1923, !noundef !27
  %.not13 = icmp eq i64 %i.ch, -9223372036854775807 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !range !1923, !noundef !27
  %i.ck = icmp eq i64 %i.cj, -9223372036854775807 ; 2 uses
  %brmerge = or i1 %.not13, %i.ck
  %.mux = and i1 %.not13, %i.ck
  br i1 %brmerge, label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.aa

_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.z, %bb.v, %bb.t, %bb.r, %bb.q, %bb.u, %bb.k, %bb.h, %bb.l, %bb.j, %.split21, %_RNvXs4X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split19, %.split18, %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.split, %bb.c, %bb.g, %bb.p, %bb.y, %bb.b, %bb.d, %bb.f, %bb.o, %bb.x, %bb.aa
  %.sroa.0.0.shrunk = phi i1 [ %i.cl, %bb.aa ], [ false, %bb.c ], [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.o ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.y ], [ false, %bb.p ], [ false, %bb.g ], [ %.mux, %bb.z ], [ false, %.split ], [ false, %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.split21 ], [ false, %.split18 ], [ false, %.split19 ], [ false, %_RNvXs4X_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16ExceptSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.u ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.t ]
  ret i1 %.sroa.0.0.shrunk

bb.aa:                                            ; preds = %bb.z
  %i.cl = tail call fastcc noundef zeroext i1 @_RNvXs4N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16RenameSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ci) #62
  br label %_RNvXs4D_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs3o_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_15TableConstraintNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !6892, !noundef !27 ; 3 uses
  %i.b = load i8, ptr %1, align 8, !range !6892, !noundef !27 ; 2 uses
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %default.unreachable216 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i8 @llvm.ucmp.i8.i8(i8 %i.a, i8 %i.b)
  br label %bb.ac

default.unreachable216:                           ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !68, !noundef !27
  %.not152 = icmp eq i64 %i.i, -9223372036854775808
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !68, !noundef !27
  %.not153 = icmp eq i64 %i.k, -9223372036854775808 ; 2 uses
  br i1 %.not152, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !68, !noundef !27
  %.not140 = icmp eq i64 %i.m, -9223372036854775808
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !68, !noundef !27
  %.not141 = icmp eq i64 %i.o, -9223372036854775808 ; 2 uses
  br i1 %.not140, label %bb.ae, label %bb.ad

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !68, !noundef !27
  %.not125 = icmp eq i64 %i.q, -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !68, !noundef !27
  %.not126 = icmp eq i64 %i.s, -9223372036854775808 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs4E_NtCs4lawaffTVVK_9sqlparser3astNtB6_8IntervalNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !range !20388, !noundef !27 ; 4 uses
  %.not = icmp eq i64 %i.h, 44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !range !20388, !noundef !27 ; 3 uses
  %.not13 = icmp eq i64 %i.j, 44                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not13, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %.not13, label %bb.e, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.e:                                             ; preds = %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.d
  %i.k = load i64, ptr %0, align 8, !range !39, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = trunc nuw i64 %i.k to i1
  %i.n = load i64, ptr %1, align 8, !range !39, !noundef !27
  %i.o = trunc nuw i64 %i.n to i1                 ; 2 uses
  br i1 %i.m, label %bb.n, label %bb.o

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20392)
  %.not.i = icmp eq i64 %i.h, %i.j
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  switch i64 %i.h, label %bb.h [
    i64 4, label %bb.i
    i64 43, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = tail call i8 @llvm.scmp.i8.i64(i64 %i.h, i64 %i.j)
  br label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !68, !alias.scope !20389, !noalias !20392, !noundef !27
  %.not1.i = icmp eq i64 %i.r, -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !range !68, !alias.scope !20392, !noalias !20389, !noundef !27 ; 2 uses
  br i1 %.not1.i, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v)
  br label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  %.not3.i = icmp eq i64 %i.t, -9223372036854775808
  br i1 %.not3.i, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.i
  %.not2.i = icmp ne i64 %i.t, -9223372036854775808
  %..i = sext i1 %.not2.i to i8
  br label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.m:                                             ; preds = %bb.k
  %i.x = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s)
  br label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.sroa.0.0.i = phi i8 [ %i.p, %bb.h ], [ %i.x, %bb.m ], [ %i.w, %bb.j ], [ %..i, %bb.l ] ; 2 uses
  %i.y = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.y, label %bb.e, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.n:                                             ; preds = %bb.e
  br i1 %i.o, label %bb.q, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.o:                                             ; preds = %bb.e
  br i1 %i.o, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !20388, !noundef !27
  %.not15 = icmp eq i64 %i.aa, 44
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !range !20388, !noundef !27
  %.not16 = icmp eq i64 %i.ac, 44                 ; 2 uses
  br i1 %.not15, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.l, align 8, !noundef !27 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !noundef !27 ; 2 uses
  %i.ag = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ae, i64 %i.af)
  %i.ah = icmp eq i64 %i.ae, %i.af
  br i1 %i.ah, label %bb.p, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.r:                                             ; preds = %bb.p
  br i1 %.not16, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.u

bb.s:                                             ; preds = %bb.p
  br i1 %.not16, label %bb.t, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !39, !noundef !27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = trunc nuw i64 %i.aj to i1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !39, !noundef !27
  %i.ao = trunc nuw i64 %i.an to i1               ; 2 uses
  br i1 %i.al, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.ap = tail call fastcc noundef i8 @_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ab) #62 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.t, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.v:                                             ; preds = %bb.t
  br i1 %i.ao, label %bb.x, label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.w:                                             ; preds = %bb.t
  %. = sext i1 %i.ao to i8
  br label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ak, align 8, !noundef !27
  %i.at = load i64, ptr %i.ar, align 8, !noundef !27
  %i.au = tail call i8 @llvm.ucmp.i8.i64(i64 %i.as, i64 %i.at)
  br label %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread: ; preds = %bb.k, %bb.v, %bb.w, %bb.r, %bb.s, %bb.n, %bb.o, %bb.c, %bb.d, %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.u, %bb.x, %bb.q, %bb.a
  %.sroa.0.0 = phi i8 [ %i.au, %bb.x ], [ %i.e, %bb.a ], [ %., %bb.w ], [ 1, %bb.r ], [ %i.ap, %bb.u ], [ -1, %bb.s ], [ 1, %bb.n ], [ %i.ag, %bb.q ], [ -1, %bb.o ], [ 1, %bb.c ], [ %.sroa.0.0.i, %_RNvXsK_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.d ], [ 1, %bb.v ], [ 1, %bb.k ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs4E_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17ExcludeSelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !27
  %i.b = icmp eq i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !68, !noundef !27
  %i.e = icmp eq i64 %i.d, -9223372036854775808   ; 3 uses
  %.neg = sext i1 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i8 %.neg, %i.c
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %._crit_edge, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.q, %._crit_edge ], [ %i.t, %.lr.ph ]
  ret i8 %.sroa.0.0

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !27, !noundef !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !27 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !27, !noundef !27
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !27 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.o, i64 range(i64 0, 144115188075855872) %i.k) ; 2 uses
  %exitcond.not.i1 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i1, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.01.0.i2, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.q = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.k, i64 range(i64 0, 144115188075855872) %i.o)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.0.i2 = phi i64 [ %i.p, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.01.0.i2
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.0.i2
  %i.t = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.s) ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.g, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2A_s_0ECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16RenameSelectItemNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !27
  %i.b = icmp eq i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !68, !noundef !27
  %i.d = icmp eq i64 %i.c, -9223372036854775808   ; 3 uses
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.a, %bb.n
  %.sroa.0.0.shrunk = phi i1 [ %i.au, %bb.n ], [ false, %bb.a ], [ false, %bb.c ], [ %i.ao, %bb.l ], [ false, %bb.j ], [ %i.ap, %bb.m ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !27
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.n, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %2 = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20397)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !20394, !noalias !20397, !noundef !27 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !20397, !noalias !20394, !noundef !27
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !20397, !noalias !20394, !nonnull !27, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !20394, !noalias !20397, !nonnull !27, !noundef !27
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.s, ptr nonnull %i.q, i64 %i.l), !noalias !20399
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %bb.f, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i32, ptr %i.u, align 8, !range !8470, !alias.scope !20394, !noalias !20397, !noundef !27 ; 2 uses
  %.not.i = icmp eq i32 %i.v, 1114112
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i32, ptr %i.w, align 8, !range !8470, !alias.scope !20397, !noalias !20394, !noundef !27 ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.i, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq i32 %i.x, 1114112
  br i1 %i.z, label %bb.i, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !20394, !noalias !20397, !noundef !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20397, !noalias !20394, !noundef !27
  %i.ae = icmp eq i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.j, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !20397, !noalias !20394, !nonnull !27, !noundef !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !20394, !noalias !20397, !nonnull !27, !noundef !27
  %bcmp6.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.ag, i64 %i.ab), !noalias !20399
  %i.aj = icmp eq i32 %bcmp6.i, 0
  br i1 %i.aj, label %bb.k, label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = load i32, ptr %i.ak, align 8, !range !8470, !alias.scope !20394, !noalias !20397, !noundef !27 ; 2 uses
  %.not7.i = icmp eq i32 %i.al, 1114112
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = load i32, ptr %i.am, align 8, !range !8470, !alias.scope !20397, !noalias !20394, !noundef !27 ; 2 uses
  br i1 %.not7.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %i.al, %i.an
  br label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = icmp eq i32 %i.an, 1114112
  br label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !27, !noundef !27
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !27, !noundef !27
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.g)
  br label %_RNvXs49_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_14IdentWithAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs4O_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_16RenameSelectItemNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !68, !noundef !27
  %i.b = icmp eq i64 %i.a, -9223372036854775808   ; 2 uses
  %i.c = zext i1 %i.b to i8
  %i.d = load i64, ptr %1, align 8, !range !68, !noundef !27
  %i.e = icmp eq i64 %i.d, -9223372036854775808   ; 3 uses
  %.neg = sext i1 %i.e to i8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = add nsw i8 %.neg, %i.c
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1) ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i, %._crit_edge, %bb.e, %bb.f, %bb.d
  %.sroa.0.0 = phi i8 [ %i.g, %bb.e ], [ %i.f, %bb.d ], [ %i.k, %bb.f ], [ %i.t, %._crit_edge ], [ %.sroa.0.0.i.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i ]
  ret i8 %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !27, !noundef !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noundef !27 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 72057594037927936) %i.s, i64 range(i64 0, 72057594037927936) %i.o) ; 2 uses
  %exitcond.not.i5 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i5, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %exitcond.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.t = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 72057594037927936) %i.o, i64 range(i64 0, 72057594037927936) %i.s)
  br label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.01.0.i6 = phi i64 [ %i.u, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.u = add nuw nsw i64 %.sroa.01.0.i6, 1        ; 2 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %.sroa.01.0.i6 ; 2 uses
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %.sroa.01.0.i6 ; 2 uses
  %i.x = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.w) ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ab = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aa)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %.lr.ph
  %.sroa.0.0.i.i.i = phi i8 [ %i.ab, %bb.i ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.ac = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.ac, label %bb.h, label %_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query14IdentWithAliasINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2S_s_0ECs14kWLkQVSKO_14deltalake_core.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4195, !noundef !27 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.b
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !27, !noundef !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !27, !align !108, !noundef !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi ptr [ @508, %bb.c ], [ %i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtCshCk07IZuEAL_24datafusion_physical_expr12partitioningNtB5_12PartitioningNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !3701, !noundef !27 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775807
  tail call void @llvm.assume(i1 %i.e)
  %i.f = xor i64 %i.d, -9223372036854775808
  %i.g = icmp slt i64 %i.d, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 1
end_hunk_2
begin_hunk_3_@_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

bb.ci:                                            ; preds = %bb.ch
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ow = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ou) #62
  br i1 %i.ow, label %bb.cj, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cj:                                            ; preds = %bb.ci
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.oy = load ptr, ptr %i.ox, align 16, !alias.scope !23790, !noalias !23793, !nonnull !27, !noundef !27 ; 6 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pa = load ptr, ptr %i.oz, align 16, !alias.scope !23793, !noalias !23790, !nonnull !27, !noundef !27 ; 6 uses
  %i.pb = icmp eq ptr %i.oy, %i.pa
  br i1 %i.pb, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23798)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  %i.pd = load ptr, ptr %i.pc, align 8, !alias.scope !23795, !noalias !23800, !nonnull !27, !noundef !27 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  %i.pf = load ptr, ptr %i.pe, align 8, !alias.scope !23798, !noalias !23801, !nonnull !27, !noundef !27 ; 4 uses
  %i.pg = icmp eq ptr %i.pd, %i.pf
  br i1 %i.pg, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23805)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pi = load i64, ptr %i.ph, align 8, !alias.scope !23802, !noalias !23807, !noundef !27 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.pk = load i64, ptr %i.pj, align 8, !alias.scope !23805, !noalias !23808, !noundef !27
  %i.pl = icmp eq i64 %i.pi, %i.pk
  br i1 %i.pl, label %bb.cm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cm:                                            ; preds = %bb.cl
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.po = load ptr, ptr %i.pm, align 8, !alias.scope !23805, !noalias !23808, !nonnull !27, !noundef !27
  %i.pp = load ptr, ptr %i.pn, align 8, !alias.scope !23802, !noalias !23807, !nonnull !27, !noundef !27
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.ps = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.pq, ptr noundef nonnull %i.pr, i64 noundef %i.pi), !noalias !23809
  br i1 %i.ps, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20: ; preds = %bb.cm
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pd, i64 32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.pv = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pu), !noalias !23810
  br i1 %i.pv, label %bb.cn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cn:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, %bb.ck
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !23795, !noalias !23800, !noundef !27 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pz = load i64, ptr %i.py, align 8, !alias.scope !23798, !noalias !23801, !noundef !27
  %i.qa = icmp eq i64 %i.px, %i.pz
  br i1 %i.qa, label %bb.co, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.co:                                            ; preds = %bb.cn
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.qc = load ptr, ptr %i.qb, align 8, !alias.scope !23798, !noalias !23801, !nonnull !27, !noundef !27
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !alias.scope !23795, !noalias !23800, !nonnull !27, !noundef !27
  %i.qf = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.qe, ptr noundef nonnull %i.qc, i64 noundef %i.px), !noalias !23810
  br i1 %i.qf, label %bb.cp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cp:                                            ; preds = %bb.co
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.qh = load i64, ptr %i.qg, align 8, !alias.scope !23795, !noalias !23800, !noundef !27 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pa, i64 56
  %i.qj = load i64, ptr %i.qi, align 8, !alias.scope !23798, !noalias !23801, !noundef !27
  %i.qk = icmp eq i64 %i.qh, %i.qj
  br i1 %i.qk, label %bb.cq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cq:                                            ; preds = %bb.cp
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.qm = load ptr, ptr %i.ql, align 8, !alias.scope !23798, !noalias !23801, !nonnull !27, !noundef !27
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  %i.qo = load ptr, ptr %i.qn, align 8, !alias.scope !23795, !noalias !23800, !nonnull !27, !noundef !27
  %i.qp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.qo, ptr noundef nonnull %i.qm, i64 noundef %i.qh), !noalias !23810
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cr:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23814)
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qr = load i8, ptr %i.qq, align 8, !range !1800, !alias.scope !23811, !noalias !23814, !noundef !27
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qt = load i8, ptr %i.qs, align 8, !range !1800, !alias.scope !23814, !noalias !23811, !noundef !27
  %i.qu = icmp eq i8 %i.qr, %i.qt
  br i1 %i.qu, label %bb.cs, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qx = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.qw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.qv) #62
  br i1 %i.qx, label %bb.ct, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ct:                                            ; preds = %bb.cs
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qz = load ptr, ptr %i.qy, align 16, !alias.scope !23811, !noalias !23814, !nonnull !27, !noundef !27 ; 6 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rb = load ptr, ptr %i.ra, align 16, !alias.scope !23814, !noalias !23811, !nonnull !27, !noundef !27 ; 6 uses
  %i.rc = icmp eq ptr %i.qz, %i.rb
  br i1 %i.rc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23819)
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 64
  %i.re = load ptr, ptr %i.rd, align 8, !alias.scope !23816, !noalias !23821, !nonnull !27, !noundef !27 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 64
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !23819, !noalias !23822, !nonnull !27, !noundef !27 ; 4 uses
  %i.rh = icmp eq ptr %i.re, %i.rg
  br i1 %i.rh, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23826)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rj = load i64, ptr %i.ri, align 8, !alias.scope !23823, !noalias !23828, !noundef !27 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !23826, !noalias !23829, !noundef !27
  %i.rm = icmp eq i64 %i.rj, %i.rl
  br i1 %i.rm, label %bb.cw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %bb.cv
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rp = load ptr, ptr %i.rn, align 8, !alias.scope !23826, !noalias !23829, !nonnull !27, !noundef !27
  %i.rq = load ptr, ptr %i.ro, align 8, !alias.scope !23823, !noalias !23828, !nonnull !27, !noundef !27
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rt = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rs, i64 noundef %i.rj), !noalias !23830
  br i1 %i.rt, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i23, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i23: ; preds = %bb.cw
  %i.ru = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  %i.rw = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ru, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rv), !noalias !23831
  br i1 %i.rw, label %bb.cx, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cx:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i23, %bb.cu
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.ry = load i64, ptr %i.rx, align 8, !alias.scope !23816, !noalias !23821, !noundef !27 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  %i.sa = load i64, ptr %i.rz, align 8, !alias.scope !23819, !noalias !23822, !noundef !27
  %i.sb = icmp eq i64 %i.ry, %i.sa
  br i1 %i.sb, label %bb.cy, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cy:                                            ; preds = %bb.cx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !23819, !noalias !23822, !nonnull !27, !noundef !27
  %i.se = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !alias.scope !23816, !noalias !23821, !nonnull !27, !noundef !27
  %i.sg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.sf, ptr noundef nonnull %i.sd, i64 noundef %i.ry), !noalias !23831
  br i1 %i.sg, label %bb.cz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cz:                                            ; preds = %bb.cy
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qz, i64 56
  %i.si = load i64, ptr %i.sh, align 8, !alias.scope !23816, !noalias !23821, !noundef !27 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rb, i64 56
  %i.sk = load i64, ptr %i.sj, align 8, !alias.scope !23819, !noalias !23822, !noundef !27
  %i.sl = icmp eq i64 %i.si, %i.sk
  br i1 %i.sl, label %bb.da, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.da:                                            ; preds = %bb.cz
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rb, i64 48
  %i.sn = load ptr, ptr %i.sm, align 8, !alias.scope !23819, !noalias !23822, !nonnull !27, !noundef !27
  %i.so = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  %i.sp = load ptr, ptr %i.so, align 8, !alias.scope !23816, !noalias !23821, !nonnull !27, !noundef !27
  %i.sq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.sp, ptr noundef nonnull %i.sn, i64 noundef %i.si), !noalias !23831
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.db:                                            ; preds = %bb.b
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23835)
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.su = load i8, ptr %i.st, align 16, !range !1800, !alias.scope !23832, !noalias !23835, !noundef !27
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.sw = load i8, ptr %i.sv, align 16, !range !1800, !alias.scope !23835, !noalias !23832, !noundef !27
  %i.sx = icmp eq i8 %i.su, %i.sw
  br i1 %i.sx, label %bb.dc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %bb.db
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.sz = load i8, ptr %i.sy, align 1, !range !1800, !alias.scope !23832, !noalias !23835, !noundef !27
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.tb = load i8, ptr %i.ta, align 1, !range !1800, !alias.scope !23835, !noalias !23832, !noundef !27
  %i.tc = icmp eq i8 %i.sz, %i.tb
  br i1 %i.tc, label %bb.dd, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.dc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23840)
  %i.td = load ptr, ptr %i.sr, align 8, !alias.scope !23842, !noalias !23843, !noundef !27 ; 2 uses
  %i.te = icmp ne ptr %i.td, null                 ; 2 uses
  %i.tf = load ptr, ptr %i.ss, align 8, !alias.scope !23843, !noalias !23842, !noundef !27 ; 3 uses
  %i.tg = icmp eq ptr %i.tf, null                 ; 3 uses
  %not..i.i = xor i1 %i.tg, true
  %i.th = xor i1 %i.te, %i.tg
  br i1 %i.th, label %bb.de, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.de:                                            ; preds = %bb.dd
  br i1 %i.te, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tj = load i64, ptr %i.ti, align 16, !alias.scope !23842, !noalias !23843, !noundef !27 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tl = load i64, ptr %i.tk, align 16, !alias.scope !23843, !noalias !23842, !noundef !27
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tf) ]
  %i.tm = icmp eq i64 %i.tj, %i.tl
  br i1 %i.tm, label %bb.dh, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dg:                                            ; preds = %bb.de
  tail call void @llvm.assume(i1 %i.tg)
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.to = load i64, ptr %i.tn, align 8, !alias.scope !23842, !noalias !23843, !noundef !27 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !23843, !noalias !23842, !noundef !27
  %i.tr = icmp eq i64 %i.to, %i.tq
  br i1 %i.tr, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dh:                                            ; preds = %bb.df
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %bcmp8.i.i = tail call i32 @bcmp(ptr nonnull %i.tt, ptr nonnull %i.ts, i64 %i.tj), !noalias !23844
  %i.tu = icmp eq i32 %bcmp8.i.i, 0
  br i1 %i.tu, label %bb.di, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.di:                                            ; preds = %bb.dh
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tw = load i64, ptr %i.tv, align 16, !alias.scope !23842, !noalias !23843, !noundef !27 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ty = load i64, ptr %i.tx, align 16, !alias.scope !23843, !noalias !23842, !noundef !27
  %i.tz = icmp eq i64 %i.tw, %i.ty
  br i1 %i.tz, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.di, %bb.dg
  %.sink.i.i = phi i64 [ 8, %bb.dg ], [ 16, %bb.di ] ; 2 uses
  %.sink14.i.i = phi i64 [ %i.to, %bb.dg ], [ %i.tw, %bb.di ]
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ss, i64 %.sink.i.i
  %i.ub = load ptr, ptr %i.ua, align 8, !alias.scope !23843, !noalias !23842, !nonnull !27, !noundef !27
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.sink.i.i
  %i.ue = load ptr, ptr %i.ud, align 8, !alias.scope !23842, !noalias !23843, !nonnull !27, !noundef !27
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.uf, ptr nonnull %i.uc, i64 %.sink14.i.i), !noalias !23844
  %i.ug = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.ug, label %bb.dj, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dj:                                            ; preds = %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ui = load ptr, ptr %i.uh, align 8, !alias.scope !23832, !noalias !23835, !nonnull !27, !noundef !27 ; 6 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.uk = load ptr, ptr %i.uj, align 8, !alias.scope !23835, !noalias !23832, !nonnull !27, !noundef !27 ; 6 uses
  %i.ul = icmp eq ptr %i.ui, %i.uk
  br i1 %i.ul, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23848)
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 64
  %i.un = load ptr, ptr %i.um, align 8, !alias.scope !23845, !noalias !23850, !nonnull !27, !noundef !27 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 64
  %i.up = load ptr, ptr %i.uo, align 8, !alias.scope !23848, !noalias !23851, !nonnull !27, !noundef !27 ; 4 uses
  %i.uq = icmp eq ptr %i.un, %i.up
  br i1 %i.uq, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23855)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.us = load i64, ptr %i.ur, align 8, !alias.scope !23852, !noalias !23857, !noundef !27 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.uu = load i64, ptr %i.ut, align 8, !alias.scope !23855, !noalias !23858, !noundef !27
  %i.uv = icmp eq i64 %i.us, %i.uu
  br i1 %i.uv, label %bb.dm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dm:                                            ; preds = %bb.dl
  %i.uw = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.uy = load ptr, ptr %i.uw, align 8, !alias.scope !23855, !noalias !23858, !nonnull !27, !noundef !27
  %i.uz = load ptr, ptr %i.ux, align 8, !alias.scope !23852, !noalias !23857, !nonnull !27, !noundef !27
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.vc = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.va, ptr noundef nonnull %i.vb, i64 noundef %i.us), !noalias !23859
  br i1 %i.vc, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i26, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i26: ; preds = %bb.dm
  %i.vd = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.up, i64 32
  %i.vf = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ve), !noalias !23860
  br i1 %i.vf, label %bb.dn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dn:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i26, %bb.dk
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  %i.vh = load i64, ptr %i.vg, align 8, !alias.scope !23845, !noalias !23850, !noundef !27 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uk, i64 32
  %i.vj = load i64, ptr %i.vi, align 8, !alias.scope !23848, !noalias !23851, !noundef !27
  %i.vk = icmp eq i64 %i.vh, %i.vj
  br i1 %i.vk, label %bb.do, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.dn
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8, !alias.scope !23848, !noalias !23851, !nonnull !27, !noundef !27
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !23845, !noalias !23850, !nonnull !27, !noundef !27
  %i.vp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.vo, ptr noundef nonnull %i.vm, i64 noundef %i.vh), !noalias !23860
  br i1 %i.vp, label %bb.dp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %bb.do
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ui, i64 56
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !23845, !noalias !23850, !noundef !27 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uk, i64 56
  %i.vt = load i64, ptr %i.vs, align 8, !alias.scope !23848, !noalias !23851, !noundef !27
  %i.vu = icmp eq i64 %i.vr, %i.vt
  br i1 %i.vu, label %bb.dq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dq:                                            ; preds = %bb.dp
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uk, i64 48
  %i.vw = load ptr, ptr %i.vv, align 8, !alias.scope !23848, !noalias !23851, !nonnull !27, !noundef !27
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ui, i64 48
  %i.vy = load ptr, ptr %i.vx, align 8, !alias.scope !23845, !noalias !23850, !nonnull !27, !noundef !27
  %i.vz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.vy, ptr noundef nonnull %i.vw, i64 noundef %i.vr), !noalias !23860
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dr:                                            ; preds = %bb.b
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23864)
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.wd = load i8, ptr %i.wc, align 16, !range !1800, !alias.scope !23861, !noalias !23864, !noundef !27
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.wf = load i8, ptr %i.we, align 16, !range !1800, !alias.scope !23864, !noalias !23861, !noundef !27
  %i.wg = icmp eq i8 %i.wd, %i.wf
  br i1 %i.wg, label %bb.ds, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ds:                                            ; preds = %bb.dr
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.wi = load i8, ptr %i.wh, align 1, !range !1800, !alias.scope !23861, !noalias !23864, !noundef !27
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.wk = load i8, ptr %i.wj, align 1, !range !1800, !alias.scope !23864, !noalias !23861, !noundef !27
  %i.wl = icmp eq i8 %i.wi, %i.wk
  br i1 %i.wl, label %bb.dt, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.ds
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.wn = load i64, ptr %i.wm, align 16, !alias.scope !23861, !noalias !23864, !noundef !27 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.wp = load i64, ptr %i.wo, align 16, !alias.scope !23864, !noalias !23861, !noundef !27
  %i.wq = icmp eq i64 %i.wn, %i.wp
  br i1 %i.wq, label %bb.du, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %bb.dt
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !23864, !noalias !23861, !nonnull !27, !noundef !27
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.wu = load ptr, ptr %i.wt, align 8, !alias.scope !23861, !noalias !23864, !nonnull !27, !noundef !27
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull %i.wu, ptr nonnull %i.ws, i64 %i.wn), !noalias !23866, !inline_history !23867
  %i.wv = icmp eq i32 %bcmp.i28, 0
  br i1 %i.wv, label %bb.dv, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dv:                                            ; preds = %bb.du
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.wx = load i64, ptr %i.ww, align 8, !range !68, !alias.scope !23861, !noalias !23864, !noundef !27
  %.not.i29 = icmp eq i64 %i.wx, -9223372036854775808
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.wz = load i64, ptr %i.wy, align 8, !range !68, !alias.scope !23864, !noalias !23861, !noundef !27
  %i.xa = icmp eq i64 %i.wz, -9223372036854775808 ; 2 uses
  br i1 %.not.i29, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.xa, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  br i1 %i.xa, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dy:                                            ; preds = %bb.dw
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.xc = load i64, ptr %i.xb, align 8, !alias.scope !23861, !noalias !23864, !noundef !27 ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.xe = load i64, ptr %i.xd, align 8, !alias.scope !23864, !noalias !23861, !noundef !27
  %i.xf = icmp eq i64 %i.xc, %i.xe
  br i1 %i.xf, label %bb.dz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dz:                                            ; preds = %bb.dy
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.xh = load ptr, ptr %i.xg, align 16, !alias.scope !23864, !noalias !23861, !nonnull !27, !noundef !27
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.xj = load ptr, ptr %i.xi, align 16, !alias.scope !23861, !noalias !23864, !nonnull !27, !noundef !27
  %.not34.not = icmp eq i64 %i.xc, 0
  br i1 %.not34.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

bb.ea:                                            ; preds = %.lr.ph
  %i.xk = add nuw i64 %.sroa.01.0.i35, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.xk, %i.xc
  br i1 %exitcond.not, label %_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dz, %bb.ea
  %.sroa.01.0.i35 = phi i64 [ %i.xk, %bb.ea ], [ 0, %bb.dz ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [208 x i8], ptr %i.xj, i64 %.sroa.01.0.i35
  %i.xm = getelementptr inbounds nuw [208 x i8], ptr %i.xh, i64 %.sroa.01.0.i35
  %i.xn = tail call fastcc noundef zeroext i1 @_RNvXs1h_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.xl, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %i.xm) #62, !noalias !23866, !inline_history !23868
  br i1 %i.xn, label %bb.ea, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
end_hunk_3
