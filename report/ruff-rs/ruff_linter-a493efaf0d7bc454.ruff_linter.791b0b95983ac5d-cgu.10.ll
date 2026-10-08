Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2H_16SequenceElements16into_sorted_elts0E0EB2P_:bb.a
bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i18.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2R_16SequenceElements16into_sorted_elts0E0EB2Z_(ptr noalias noundef nonnull align 8 %i.n, i64 noundef %.sroa.0.0.i18.i, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.ba = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2P_16SequenceElements16into_sorted_elts0E0EB2X_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.epil.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i.loopexit.unr-lcssa, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i ], [ %i.bv, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i64 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.bc = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.be = getelementptr [16 x i8], ptr %i.bk, i64 %i.bc ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !3071, !noalias !3072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !alias.scope !3073, !noalias !3069
  store <2 x ptr> %i.bf, ptr %i.be, align 8, !alias.scope !3074, !noalias !3075
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.epil.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i.loopexit.unr-lcssa, %.preheader27.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i525963.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i525963.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.epil.preheader ]
  %i.bg = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.bh = or disjoint i64 %i.bg, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2P_16SequenceElements16into_sorted_elts0E0EB2X_.exit

bb.q:                                             ; preds = %bb.n
  %i.bi = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bj = phi i64 [ %i.bi, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i525963.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i525963.i ; 3 uses
  %xtraiter = and i64 %i.bj, 1
  %i.bl = icmp eq i64 %i.bj, 1
  br i1 %i.bl, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i.epil.preheader, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i.new

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.bj, 9223372036854775806
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i.new ], [ %i.bv, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i ]
  %i.bm = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bo = getelementptr [16 x i8], ptr %i.bk, i64 %i.bm ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.bn, align 8, !alias.scope !3071, !noalias !3072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !3073, !noalias !3069
  store <2 x ptr> %i.bp, ptr %i.bo, align 8, !alias.scope !3074, !noalias !3075
  %i.bq = xor i64 %.sroa.0.016.i.i.i, -2
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = getelementptr [16 x i8], ptr %i.bk, i64 %i.bq ; 2 uses
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !alias.scope !3071, !noalias !3072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !alias.scope !3073, !noalias !3069
  store <2 x ptr> %i.bu, ptr %i.bt, align 8, !alias.scope !3074, !noalias !3075
  %i.bv = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i.loopexit.unr-lcssa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE12split_at_mutCsEhZmuQNqkz_11ruff_linter.exit11.i.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2P_16SequenceElements16into_sorted_elts0E0EB2X_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i34 = phi i64 [ %i.bh, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7reverseCsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.bb, %bb.p ], [ %i.az, %bb.o ] ; 2 uses
  %i.bw = lshr i64 %.sroa.023.0, 1
  %i.bx = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.by = sub nsw i64 %factor, %i.bw
  %i.bz = add nuw nsw i64 %i.bx, %factor
  %i.ca = mul i64 %i.by, %.sroa.0.0
  %i.cb = mul i64 %i.bz, %.sroa.0.0
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false)
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit
  %.sroa.02.138 = phi i64 [ %i.cf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cf = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.ch, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cj, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cf
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !11 ; 3 uses
  %i.cm = lshr i64 %i.cl, 1                       ; 5 uses
  %i.cn = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.co = add nuw i64 %i.cm, %i.cn                ; 5 uses
  %i.cp = sub i64 %.sroa.09.0, %i.co
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cp ; 3 uses
  %i.cr = icmp samesign ugt i64 %i.co, %3
  %i.cs = trunc i64 %.sroa.023.137 to i1
  %i.ct = or i64 %i.cl, %.sroa.023.137
  %i.cu = trunc i64 %i.ct to i1
  %or.cond3.i = or i1 %i.cr, %i.cu
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cv = trunc i64 %i.cl to i1
  br i1 %i.cv, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cw = shl nuw nsw i64 %i.co, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cs, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.cx = or i64 %i.cm, 1
  %i.cy = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 1
  %i.db = xor i32 %i.da, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2R_16SequenceElements16into_sorted_elts0E0EB2Z_(ptr noalias noundef nonnull align 8 %i.cq, i64 noundef range(i64 0, 576460752303423488) %i.cm, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2I_16SequenceElements16into_sorted_elts0E0EB2Q_(ptr noalias noundef nonnull align 8 %i.cq, i64 noundef range(i64 0, 576460752303423488) %i.co, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.cm, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  %i.dc = shl nuw nsw i64 %i.co, 1
  %i.dd = or disjoint i64 %i.dc, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit

bb.x:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cm
  %i.df = or i64 %i.cn, 1
  %i.dg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = xor i32 %i.di, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2R_16SequenceElements16into_sorted_elts0E0EB2Z_(ptr noalias noundef nonnull align 8 %i.de, i64 noundef range(i64 0, 576460752303423488) %i.cn, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2S_16SequenceElements16into_sorted_elts0E0EB30_.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.dd, %bb.w ], [ %i.cw, %bb.t ] ; 2 uses
  %i.dk = icmp ugt i64 %i.cf, 1
  br i1 %i.dk, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dl = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dm = lshr i64 %.sroa.018.0, 1
  %i.dn = add nuw i64 %i.dm, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.do = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.do, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dp = or i64 %1, 1
  %i.dq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 1
  %i.dt = xor i32 %i.ds, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCNvMs6_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB2R_16SequenceElements16into_sorted_elts0E0EB2Z_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pycodestyle5rules32too_many_newlines_at_end_of_file18newline_diagnosticINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevINtNtNtB20_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEEEBa_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load i64, ptr %0, align 8
  %.promoted25 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !nonnull !11 ; 3 uses
  %.promoted28 = load ptr, ptr %i.g, align 8      ; 4 uses
  %3 = trunc nuw i64 %.promoted to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  br i1 %3, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.peel, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.i = icmp eq ptr %i.h, %.promoted28
  br i1 %i.i, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3rev3RevINtNtNtBd_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i.peel, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %.promoted28, i64 -12 ; 3 uses
  store ptr %i.j, ptr %i.g, align 8, !alias.scope !3092, !noalias !3090
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3rev3RevINtNtNtBd_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i.peel

_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3rev3RevINtNtNtBd_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i.peel: ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ %.promoted28, %bb.a ]
  %.sroa.0.0.i.i.i.i.peel = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !3090, !noalias !3091
  store ptr %.sroa.0.0.i.i.i.i.peel, ptr %i.f, align 8, !alias.scope !3090, !noalias !3091
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.peel: ; preds = %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3rev3RevINtNtNtBd_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i.peel, %.peel.begin
  %i.l = phi ptr [ %i.k, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3rev3RevINtNtNtBd_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i.peel ], [ %.promoted28, %.peel.begin ] ; 2 uses
  %.pr26.peel = phi ptr [ %.sroa.0.0.i.i.i.i.peel, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtB9_3rev3RevINtNtNtBd_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i.peel ], [ %.promoted25, %.peel.begin ] ; 3 uses
  %.not.peel = icmp eq ptr %.pr26.peel, null
  br i1 %.not.peel, label %.thread, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.peel
  %i.m = getelementptr inbounds nuw i8, ptr %.pr26.peel, i64 10
  %i.n = load i8, ptr %i.m, align 2, !range !43, !noundef !11
  switch i8 %i.n, label %.thread [
    i8 13, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.peel
    i8 14, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.peel
    i8 16, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel
  ]

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.peel: ; preds = %bb.c, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pr26.peel, i64 4
  %i.p = load i32, ptr %i.o, align 4, !noundef !11
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel: ; preds = %bb.c, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.peel
  %.sroa.010.1.peel = phi i1 [ true, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.peel ], [ false, %bb.c ] ; 2 uses
  %.sroa.4.2.peel = phi i32 [ %i.p, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.peel ], [ undef, %bb.c ] ; 4 uses
  %.sroa.06.2.peel = phi i32 [ 1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.peel ], [ 0, %bb.c ] ; 4 uses
  store i64 0, ptr %0, align 8
  %i.q = icmp eq ptr %i.h, %i.l
  br i1 %i.q, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel
  %.sroa.3.0.lcssa = phi i32 [ %.sroa.4.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ], [ %.sroa.3.1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ]
  %.sroa.010.0.lcssa = phi i1 [ %.sroa.010.1.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ], [ %.sroa.010.1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ]
  %.sroa.4.0.lcssa = phi i32 [ %.sroa.4.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ], [ %.sroa.4.2, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ]
  %.sroa.06.0.lcssa = phi i32 [ %.sroa.06.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ], [ %.sroa.06.2, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ]
  %.sroa.0.0.lcssa = phi i32 [ %.sroa.06.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ], [ %.sroa.0.1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ]
  store i64 1, ptr %0, align 8, !alias.scope !3093, !noalias !3094
  store ptr null, ptr %i.f, align 8, !alias.scope !3093, !noalias !3094
  br label %.loopexit

.lr.ph:                                           ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24
  %.sroa.0.068 = phi i32 [ %.sroa.0.1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ], [ %.sroa.06.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ] ; 3 uses
  %.sroa.06.067 = phi i32 [ %.sroa.06.2, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ], [ %.sroa.06.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ] ; 3 uses
  %.sroa.4.066 = phi i32 [ %.sroa.4.2, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ], [ %.sroa.4.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ] ; 3 uses
  %.sroa.010.065 = phi i1 [ %.sroa.010.1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ], [ %.sroa.010.1.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ] ; 2 uses
  %.sroa.3.064 = phi i32 [ %.sroa.3.1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ], [ %.sroa.4.2.peel, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ] ; 2 uses
  %i.r = phi ptr [ %i.s, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24 ], [ %i.l, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24.peel ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -12 ; 4 uses
  store ptr %i.s, ptr %i.g, align 8, !alias.scope !3095, !noalias !3093
  store i64 1, ptr %0, align 8, !alias.scope !3093, !noalias !3094
  store ptr %i.s, ptr %i.f, align 8, !alias.scope !3093, !noalias !3094
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -2
  %i.u = load i8, ptr %i.t, align 2, !range !43, !noundef !11
  switch i8 %i.u, label %.loopexit [
    i8 13, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
    i8 14, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
    i8 16, label %bb.d
  ]

.loopexit:                                        ; preds = %.lr.ph, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread
  %.sroa.3.063 = phi i32 [ %.sroa.3.0.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ %.sroa.3.064, %.lr.ph ] ; 3 uses
  %.sroa.010.061 = phi i1 [ %.sroa.010.0.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ %.sroa.010.065, %.lr.ph ]
  %.sroa.4.059 = phi i32 [ %.sroa.4.0.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ %.sroa.4.066, %.lr.ph ] ; 3 uses
  %.sroa.06.057 = phi i32 [ %.sroa.06.0.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ %.sroa.06.067, %.lr.ph ]
  %.sroa.0.055 = phi i32 [ %.sroa.0.0.lcssa, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ %.sroa.0.068, %.lr.ph ] ; 2 uses
  %i.v = trunc nuw i32 %.sroa.06.057 to i1
  %or.cond = icmp ugt i32 %.sroa.0.055, 1
  %i.w = select i1 %or.cond, i1 %.sroa.010.061, i1 false
  %or.cond22 = select i1 %i.w, i1 %i.v, i1 false
  br i1 %or.cond22, label %bb.e, label %.thread

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %.lr.ph
  %.not17 = icmp eq i32 %.sroa.06.067, 1
  %.phi.trans.insert33 = getelementptr inbounds i8, ptr %i.r, i64 -8
  %.pre34 = load i32, ptr %.phi.trans.insert33, align 4 ; 2 uses
  %.sroa.4.0..pre34 = select i1 %.not17, i32 %.sroa.4.066, i32 %.pre34
  store i64 0, ptr %0, align 8
  %i.x = add i32 %.sroa.0.068, 1
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24

bb.d:                                             ; preds = %.lr.ph
  store i64 0, ptr %0, align 8
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit24: ; preds = %bb.d, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.3.1 = phi i32 [ %.pre34, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.3.064, %bb.d ] ; 2 uses
  %.sroa.010.1 = phi i1 [ true, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.010.065, %bb.d ] ; 2 uses
  %.sroa.4.2 = phi i32 [ %.sroa.4.0..pre34, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.4.066, %bb.d ] ; 2 uses
  %.sroa.06.2 = phi i32 [ 1, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.06.067, %bb.d ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %i.x, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3revINtB4_3RevINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit ], [ %.sroa.0.068, %bb.d ] ; 2 uses
  %i.y = icmp eq ptr %i.h, %i.s
  br i1 %i.y, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph, !llvm.loop !3089

bb.e:                                             ; preds = %.loopexit
  %.not18 = icmp ugt i32 %.sroa.3.063, %.sroa.4.059
  br i1 %.not18, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #46
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules11pycodestyle5rules32too_many_newlines_at_end_of_file26TooManyNewlinesAtEndOfFileEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %2, i32 noundef %.sroa.0.055, i1 noundef zeroext %1, i32 noundef %.sroa.3.063, i32 noundef %.sroa.4.059)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = load i16, ptr %i.z, align 8, !range !44, !noundef !11
  %.not19 = icmp eq i16 %i.aa, -1
  br i1 %.not19, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %.sroa.3.063, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %.sroa.4.059, ptr %i.ac, align 4
  store ptr null, ptr %i.a, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #49
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.m:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ad

.thread.sink.split:                               ; preds = %bb.g, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.c, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_3rev3RevINtNtNtB5_5slice4iter4IterBN_EEE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.peel, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25assert_with_print_message15print_arguments35fstring_elements_to_string_literalsINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.g = load i64, ptr %i.b, align 8, !range !17, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !18, !noundef !11 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11 ; 2 uses
end_hunk_0
