Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token:bb.a
  br i1 %exitcond.not.i.i.i.i27.i.i.i.i.1, label %._crit_edge.i.i.i.i28.i.i.i.i, label %.lr.ph.i.i.i.i21.i.i.i.i.2

.lr.ph.i.i.i.i21.i.i.i.i.2:                       ; preds = %bb.af
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val16.i.i.i.i24.i.i.i.i.2 = load i32, ptr %i.bq, align 4, !alias.scope !1669, !noalias !1668, !noundef !11 ; 2 uses
  %i.br = icmp eq i32 %.val16.i.i.i.i24.i.i.i.i.2, 103
  br i1 %i.br, label %._crit_edge.i.i.i.i28.i.i.i.i, label %.loopexit.i.i.i.i25.i.i.i.i

._crit_edge.i.i.i.i28.i.i.i.i:                    ; preds = %bb.ae, %bb.af, %.lr.ph.i.i.i.i21.i.i.i.i.2, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB1O_5State9get_token0EB1Q_.exit.i
  %i.bs = icmp ult i64 %.sroa.0.0.i.i, 3
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.i.i.i.i

.loopexit.i.i.i.i25.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i21.i.i.i.i.2, %.lr.ph.i.i.i.i21.i.i.i.i.1, %.lr.ph.i.i.i.i21.i.i.i.i
  %.val15.i.i.i.i23.i.i.i.i.lcssa = phi i32 [ 108, %.lr.ph.i.i.i.i21.i.i.i.i ], [ 111, %.lr.ph.i.i.i.i21.i.i.i.i.1 ], [ 103, %.lr.ph.i.i.i.i21.i.i.i.i.2 ]
  %.val16.i.i.i.i24.i.i.i.i.lcssa = phi i32 [ %.val16.i.i.i.i24.i.i.i.i, %.lr.ph.i.i.i.i21.i.i.i.i ], [ %.val16.i.i.i.i24.i.i.i.i.1, %.lr.ph.i.i.i.i21.i.i.i.i.1 ], [ %.val16.i.i.i.i24.i.i.i.i.2, %.lr.ph.i.i.i.i21.i.i.i.i.2 ]
  %i.bt = icmp ugt i32 %.val15.i.i.i.i23.i.i.i.i.lcssa, %.val16.i.i.i.i24.i.i.i.i.lcssa
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.i.i.i.i

.lr.ph.i.i.i.i21.i.i.i.i:                         ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB1O_5State9get_token0EB1Q_.exit.i
  %.val16.i.i.i.i24.i.i.i.i = load i32, ptr %i.q, align 4, !alias.scope !1669, !noalias !1668, !noundef !11 ; 2 uses
  %i.bu = icmp eq i32 %.val16.i.i.i.i24.i.i.i.i, 108
  br i1 %i.bu, label %bb.ae, label %.loopexit.i.i.i.i25.i.i.i.i

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.i.i.i.i: ; preds = %.loopexit.i.i.i.i25.i.i.i.i, %._crit_edge.i.i.i.i28.i.i.i.i
  %.sroa.0.0.i.i.i.i26.i.i.i.i = phi i1 [ %i.bs, %._crit_edge.i.i.i.i28.i.i.i.i ], [ %i.bt, %.loopexit.i.i.i.i25.i.i.i.i ]
  %i.bv = select i1 %.sroa.0.0.i.i.i.i26.i.i.i.i, i64 0, i64 16, !unpredictable !11 ; 2 uses
  %i.bw = or disjoint i64 %i.bv, 8                ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr @294, i64 %i.bw ; 2 uses
  %.val12.1.i.i.i.i = load ptr, ptr %i.bx, align 8, !noalias !1666, !nonnull !11, !align !31, !noundef !11
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %.val13.1.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !1666, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  %..i.i.i.i.i19.1.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.sroa.0.0.i.i, i64 range(i64 0, 2305843009213693952) %.val13.1.i.i.i.i) ; 2 uses
  %.not.i.i.i.i20.1.i.i.i.i = icmp eq i64 %..i.i.i.i.i19.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i20.1.i.i.i.i, label %._crit_edge.i.i.i.i28.1.i.i.i.i, label %.lr.ph.i.i.i.i21.1.i.i.i.i

.lr.ph.i.i.i.i21.1.i.i.i.i:                       ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.i.i.i.i, %bb.ag
  %.sroa.01.019.i.i.i.i22.1.i.i.i.i = phi i64 [ %i.cd, %bb.ag ], [ 0, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.i.i.i.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.val12.1.i.i.i.i, i64 %.sroa.01.019.i.i.i.i22.1.i.i.i.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.01.019.i.i.i.i22.1.i.i.i.i
  %.val15.i.i.i.i23.1.i.i.i.i = load i32, ptr %i.bz, align 4, !alias.scope !1674, !noalias !1666, !noundef !11 ; 2 uses
  %.val16.i.i.i.i24.1.i.i.i.i = load i32, ptr %i.ca, align 4, !alias.scope !1675, !noalias !1668, !noundef !11 ; 2 uses
  %i.cb = icmp eq i32 %.val15.i.i.i.i23.1.i.i.i.i, %.val16.i.i.i.i24.1.i.i.i.i
  br i1 %i.cb, label %bb.ag, label %.loopexit.i.i.i.i25.1.i.i.i.i

.loopexit.i.i.i.i25.1.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i21.1.i.i.i.i
  %i.cc = icmp ugt i32 %.val15.i.i.i.i23.1.i.i.i.i, %.val16.i.i.i.i24.1.i.i.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.1.i.i.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i21.1.i.i.i.i
  %i.cd = add nuw nsw i64 %.sroa.01.019.i.i.i.i22.1.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i27.1.i.i.i.i = icmp eq i64 %i.cd, %..i.i.i.i.i19.1.i.i.i.i
  br i1 %exitcond.not.i.i.i.i27.1.i.i.i.i, label %._crit_edge.i.i.i.i28.1.i.i.i.i, label %.lr.ph.i.i.i.i21.1.i.i.i.i

._crit_edge.i.i.i.i28.1.i.i.i.i:                  ; preds = %bb.ag, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.i.i.i.i
  %i.ce = icmp ugt i64 %.val13.1.i.i.i.i, %.sroa.0.0.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.1.i.i.i.i

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.1.i.i.i.i: ; preds = %._crit_edge.i.i.i.i28.1.i.i.i.i, %.loopexit.i.i.i.i25.1.i.i.i.i
  %.sroa.0.0.i.i.i.i26.1.i.i.i.i = phi i1 [ %i.ce, %._crit_edge.i.i.i.i28.1.i.i.i.i ], [ %i.cc, %.loopexit.i.i.i.i25.1.i.i.i.i ]
  %i.cf = select i1 %.sroa.0.0.i.i.i.i26.1.i.i.i.i, i64 %i.bv, i64 %i.bw, !unpredictable !11 ; 2 uses
  %i.cg = or disjoint i64 %i.cf, 4                ; 2 uses
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr @294, i64 %i.cg ; 2 uses
  %.val12.2.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !1666, !nonnull !11, !align !31, !noundef !11
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %.val13.2.i.i.i.i = load i64, ptr %i.ci, align 8, !noalias !1666, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %..i.i.i.i.i19.2.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.sroa.0.0.i.i, i64 range(i64 0, 2305843009213693952) %.val13.2.i.i.i.i) ; 2 uses
  %.not.i.i.i.i20.2.i.i.i.i = icmp eq i64 %..i.i.i.i.i19.2.i.i.i.i, 0
  br i1 %.not.i.i.i.i20.2.i.i.i.i, label %._crit_edge.i.i.i.i28.2.i.i.i.i, label %.lr.ph.i.i.i.i21.2.i.i.i.i

.lr.ph.i.i.i.i21.2.i.i.i.i:                       ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.1.i.i.i.i, %bb.ah
  %.sroa.01.019.i.i.i.i22.2.i.i.i.i = phi i64 [ %i.cn, %bb.ah ], [ 0, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.1.i.i.i.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.val12.2.i.i.i.i, i64 %.sroa.01.019.i.i.i.i22.2.i.i.i.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.01.019.i.i.i.i22.2.i.i.i.i
  %.val15.i.i.i.i23.2.i.i.i.i = load i32, ptr %i.cj, align 4, !alias.scope !1680, !noalias !1666, !noundef !11 ; 2 uses
  %.val16.i.i.i.i24.2.i.i.i.i = load i32, ptr %i.ck, align 4, !alias.scope !1681, !noalias !1668, !noundef !11 ; 2 uses
  %i.cl = icmp eq i32 %.val15.i.i.i.i23.2.i.i.i.i, %.val16.i.i.i.i24.2.i.i.i.i
  br i1 %i.cl, label %bb.ah, label %.loopexit.i.i.i.i25.2.i.i.i.i

.loopexit.i.i.i.i25.2.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i21.2.i.i.i.i
  %i.cm = icmp ugt i32 %.val15.i.i.i.i23.2.i.i.i.i, %.val16.i.i.i.i24.2.i.i.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.2.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i21.2.i.i.i.i
  %i.cn = add nuw nsw i64 %.sroa.01.019.i.i.i.i22.2.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i27.2.i.i.i.i = icmp eq i64 %i.cn, %..i.i.i.i.i19.2.i.i.i.i
  br i1 %exitcond.not.i.i.i.i27.2.i.i.i.i, label %._crit_edge.i.i.i.i28.2.i.i.i.i, label %.lr.ph.i.i.i.i21.2.i.i.i.i

._crit_edge.i.i.i.i28.2.i.i.i.i:                  ; preds = %bb.ah, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.1.i.i.i.i
  %i.co = icmp ugt i64 %.val13.2.i.i.i.i, %.sroa.0.0.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.2.i.i.i.i

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.2.i.i.i.i: ; preds = %._crit_edge.i.i.i.i28.2.i.i.i.i, %.loopexit.i.i.i.i25.2.i.i.i.i
  %.sroa.0.0.i.i.i.i26.2.i.i.i.i = phi i1 [ %i.co, %._crit_edge.i.i.i.i28.2.i.i.i.i ], [ %i.cm, %.loopexit.i.i.i.i25.2.i.i.i.i ]
  %i.cp = select i1 %.sroa.0.0.i.i.i.i26.2.i.i.i.i, i64 %i.cf, i64 %i.cg, !unpredictable !11 ; 2 uses
  %i.cq = or disjoint i64 %i.cp, 2                ; 2 uses
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr @294, i64 %i.cq ; 2 uses
  %.val12.3.i.i.i.i = load ptr, ptr %i.cr, align 8, !noalias !1666, !nonnull !11, !align !31, !noundef !11
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %.val13.3.i.i.i.i = load i64, ptr %i.cs, align 8, !noalias !1666, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %..i.i.i.i.i19.3.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.sroa.0.0.i.i, i64 range(i64 0, 2305843009213693952) %.val13.3.i.i.i.i) ; 2 uses
  %.not.i.i.i.i20.3.i.i.i.i = icmp eq i64 %..i.i.i.i.i19.3.i.i.i.i, 0
  br i1 %.not.i.i.i.i20.3.i.i.i.i, label %._crit_edge.i.i.i.i28.3.i.i.i.i, label %.lr.ph.i.i.i.i21.3.i.i.i.i

.lr.ph.i.i.i.i21.3.i.i.i.i:                       ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.2.i.i.i.i, %bb.ai
  %.sroa.01.019.i.i.i.i22.3.i.i.i.i = phi i64 [ %i.cx, %bb.ai ], [ 0, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.2.i.i.i.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val12.3.i.i.i.i, i64 %.sroa.01.019.i.i.i.i22.3.i.i.i.i
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.01.019.i.i.i.i22.3.i.i.i.i
  %.val15.i.i.i.i23.3.i.i.i.i = load i32, ptr %i.ct, align 4, !alias.scope !1686, !noalias !1666, !noundef !11 ; 2 uses
  %.val16.i.i.i.i24.3.i.i.i.i = load i32, ptr %i.cu, align 4, !alias.scope !1687, !noalias !1668, !noundef !11 ; 2 uses
  %i.cv = icmp eq i32 %.val15.i.i.i.i23.3.i.i.i.i, %.val16.i.i.i.i24.3.i.i.i.i
  br i1 %i.cv, label %bb.ai, label %.loopexit.i.i.i.i25.3.i.i.i.i

.loopexit.i.i.i.i25.3.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i21.3.i.i.i.i
  %i.cw = icmp ugt i32 %.val15.i.i.i.i23.3.i.i.i.i, %.val16.i.i.i.i24.3.i.i.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.3.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i21.3.i.i.i.i
  %i.cx = add nuw nsw i64 %.sroa.01.019.i.i.i.i22.3.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i27.3.i.i.i.i = icmp eq i64 %i.cx, %..i.i.i.i.i19.3.i.i.i.i
  br i1 %exitcond.not.i.i.i.i27.3.i.i.i.i, label %._crit_edge.i.i.i.i28.3.i.i.i.i, label %.lr.ph.i.i.i.i21.3.i.i.i.i

._crit_edge.i.i.i.i28.3.i.i.i.i:                  ; preds = %bb.ai, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.2.i.i.i.i
  %i.cy = icmp ugt i64 %.val13.3.i.i.i.i, %.sroa.0.0.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.3.i.i.i.i

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.3.i.i.i.i: ; preds = %._crit_edge.i.i.i.i28.3.i.i.i.i, %.loopexit.i.i.i.i25.3.i.i.i.i
  %.sroa.0.0.i.i.i.i26.3.i.i.i.i = phi i1 [ %i.cy, %._crit_edge.i.i.i.i28.3.i.i.i.i ], [ %i.cw, %.loopexit.i.i.i.i25.3.i.i.i.i ]
  %i.cz = select i1 %.sroa.0.0.i.i.i.i26.3.i.i.i.i, i64 %i.cp, i64 %i.cq, !unpredictable !11 ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw [32 x i8], ptr @294, i64 %i.da ; 2 uses
  %.val12.4.i.i.i.i = load ptr, ptr %i.db, align 8, !noalias !1666, !nonnull !11, !align !31, !noundef !11
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %.val13.4.i.i.i.i = load i64, ptr %i.dc, align 8, !noalias !1666, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  call void @llvm.experimental.noalias.scope.decl(metadata !1690)
  call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  %..i.i.i.i.i19.4.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.sroa.0.0.i.i, i64 range(i64 0, 2305843009213693952) %.val13.4.i.i.i.i) ; 2 uses
  %.not.i.i.i.i20.4.i.i.i.i = icmp eq i64 %..i.i.i.i.i19.4.i.i.i.i, 0
  br i1 %.not.i.i.i.i20.4.i.i.i.i, label %._crit_edge.i.i.i.i28.4.i.i.i.i, label %.lr.ph.i.i.i.i21.4.i.i.i.i

.lr.ph.i.i.i.i21.4.i.i.i.i:                       ; preds = %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.3.i.i.i.i, %bb.aj
  %.sroa.01.019.i.i.i.i22.4.i.i.i.i = phi i64 [ %i.dh, %bb.aj ], [ 0, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.3.i.i.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.val12.4.i.i.i.i, i64 %.sroa.01.019.i.i.i.i22.4.i.i.i.i
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.sroa.01.019.i.i.i.i22.4.i.i.i.i
  %.val15.i.i.i.i23.4.i.i.i.i = load i32, ptr %i.dd, align 4, !alias.scope !1692, !noalias !1666, !noundef !11 ; 2 uses
  %.val16.i.i.i.i24.4.i.i.i.i = load i32, ptr %i.de, align 4, !alias.scope !1693, !noalias !1668, !noundef !11 ; 2 uses
  %i.df = icmp eq i32 %.val15.i.i.i.i23.4.i.i.i.i, %.val16.i.i.i.i24.4.i.i.i.i
  br i1 %i.df, label %bb.aj, label %.loopexit.i.i.i.i25.4.i.i.i.i

.loopexit.i.i.i.i25.4.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i21.4.i.i.i.i
  %i.dg = icmp ugt i32 %.val15.i.i.i.i23.4.i.i.i.i, %.val16.i.i.i.i24.4.i.i.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.4.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i21.4.i.i.i.i
  %i.dh = add nuw nsw i64 %.sroa.01.019.i.i.i.i22.4.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i27.4.i.i.i.i = icmp eq i64 %i.dh, %..i.i.i.i.i19.4.i.i.i.i
  br i1 %exitcond.not.i.i.i.i27.4.i.i.i.i, label %._crit_edge.i.i.i.i28.4.i.i.i.i, label %.lr.ph.i.i.i.i21.4.i.i.i.i

._crit_edge.i.i.i.i28.4.i.i.i.i:                  ; preds = %bb.aj, %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.3.i.i.i.i
  %i.di = icmp ugt i64 %.val13.4.i.i.i.i, %.sroa.0.0.i.i
  br label %_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.4.i.i.i.i

_RNCINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBy_NCNvB1l_12find_builtin0E0B1n_.exit29.4.i.i.i.i: ; preds = %._crit_edge.i.i.i.i28.4.i.i.i.i, %.loopexit.i.i.i.i25.4.i.i.i.i
  %.sroa.0.0.i.i.i.i26.4.i.i.i.i = phi i1 [ %i.di, %._crit_edge.i.i.i.i28.4.i.i.i.i ], [ %i.dg, %.loopexit.i.i.i.i25.4.i.i.i.i ]
  %i.dj = select i1 %.sroa.0.0.i.i.i.i26.4.i.i.i.i, i64 %i.cz, i64 %i.da, !unpredictable !11 ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr @294, i64 %i.dj ; 2 uses
  %.val15.i.i.i.i = load ptr, ptr %i.dk, align 8, !noalias !1666, !nonnull !11, !align !31, !noundef !11
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %.val16.i.i.i.i = load i64, ptr %i.dl, align 8, !noalias !1666, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1694)
  call void @llvm.experimental.noalias.scope.decl(metadata !1695)
  call void @llvm.experimental.noalias.scope.decl(metadata !1696)
  call void @llvm.experimental.noalias.scope.decl(metadata !1697)
  %..i.i.i.i.i.i.i.i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %.sroa.0.0.i.i, i64 range(i64 0, 2305843009213693952) %.val16.i.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBw_NCNvB1j_12find_builtin0EB1l_.exit.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.bj, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.bk, %.loopexit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i, 0
  %i.dm = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i, -1
  %i.dn = zext i1 %i.dm to i64
  %i.do = add nuw nsw i64 %i.dj, %i.dn            ; 2 uses
  br i1 %.not.i.i, label %bb.ak, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i

bb.ak:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBw_NCNvB1j_12find_builtin0EB1l_.exit.i.i
  %i.dp = icmp ult i64 %i.do, 32
  br i1 %i.dp, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 32, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #54, !noalias !1698
  unreachable

_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.i: ; preds = %bb.ak
  %1 = getelementptr inbounds nuw [32 x i8], ptr @294, i64 %i.do ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0136.0.copyload137.i = load i64, ptr %2, align 8, !noalias !1699 ; 3 uses
  %.not128.i = icmp eq i64 %.sroa.0136.0.copyload137.i, -1
  br i1 %.not128.i, label %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit

_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i: ; preds = %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.i, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE20binary_search_by_keyBw_NCNvB1j_12find_builtin0EB1l_.exit.i.i
  %i.dq = icmp ne i64 %i.m, 10
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp ne i64 %i.m, 4
  %i.ds = icmp eq i8 %i.l, 9
  %or.cond134.i = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond134.i, label %bb.am, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread

bb.am:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i
  store i64 4, ptr %0, align 8, !alias.scope !1661
  store i64 %i.n, ptr %i.h, align 8, !alias.scope !1661
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4117.0..sroa_idx.i, align 8, !alias.scope !1661
  store i8 0, ptr %.sroa.5118.0..sroa_idx.i, align 8, !alias.scope !1661
  br label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread

bb.an:                                            ; preds = %bb.e
  %i.dt = load i8, ptr %i.k, align 1, !range !28, !noalias !1662, !noundef !11
  switch i8 %i.dt, label %default.unreachable [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %bb.as
  ], !prof !1700

bb.ao:                                            ; preds = %bb.e
  %i.du = load i64, ptr %i.j, align 8, !noalias !1662, !noundef !11
  %i.dv = load i64, ptr %i.b, align 8, !noalias !1662, !noundef !11
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %bb.aq, %bb.ao
  %i.dw = phi i8 [ 8, %bb.aq ], [ 9, %bb.at ], [ %i.l, %bb.ao ]
  %i.dx = phi i64 [ 4, %bb.aq ], [ 4, %bb.at ], [ %i.m, %bb.ao ]
  %.sroa.21.0 = phi i64 [ undef, %bb.aq ], [ undef, %bb.at ], [ %i.du, %bb.ao ]
  %.sroa.11.0 = phi i64 [ 4, %bb.aq ], [ 4, %bb.at ], [ 9, %bb.ao ]
  %.sroa.0.0 = phi i64 [ %i.dy, %bb.aq ], [ %i.dz, %bb.at ], [ %i.dv, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1662
  br label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread

default.unreachable:                              ; preds = %bb.an
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.dy = load i64, ptr %i.b, align 8, !noalias !1662, !noundef !11 ; 2 uses
  store i64 4, ptr %0, align 8, !alias.scope !1661
  store i64 %i.n, ptr %i.h, align 8, !alias.scope !1661
  store i64 %i.dy, ptr %.sroa.4117.0..sroa_idx.i, align 8, !alias.scope !1661
  store i8 8, ptr %.sroa.5118.0..sroa_idx.i, align 8, !alias.scope !1661
  br label %bb.ap

bb.ar:                                            ; preds = %bb.an
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #54, !noalias !1662
  unreachable

bb.as:                                            ; preds = %bb.an
  %i.dz = load i64, ptr %i.b, align 8, !noalias !1662, !noundef !11 ; 2 uses
  %i.ea = add i64 %i.dz, %i.n                     ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.n
  br i1 %i.eb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i64 4, ptr %0, align 8, !alias.scope !1661
  store i64 %i.ea, ptr %i.h, align 8, !alias.scope !1661
  store i64 1, ptr %.sroa.4117.0..sroa_idx.i, align 8, !alias.scope !1661
  store i8 9, ptr %.sroa.5118.0..sroa_idx.i, align 8, !alias.scope !1661
  br label %bb.ap

bb.au:                                            ; preds = %bb.as
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #54, !noalias !1662
  unreachable

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit: ; preds = %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.i
  %.sroa.7.0..sroa_idx138.i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload139.i.a = load i64, ptr %.sroa.7.0..sroa_idx138.i.a, align 8, !noalias !1699
  %.not = icmp eq i64 %.sroa.0136.0.copyload137.i, -2
  br i1 %.not, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread15, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread: ; preds = %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i, %bb.am, %bb.ac, %bb.s, %bb.s, %bb.s, %bb.s, %bb.ap, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit
  %i.ec = phi i8 [ %i.l, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit ], [ %i.l, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i ], [ 0, %bb.am ], [ %i.l, %bb.s ], [ %i.l, %bb.s ], [ %i.l, %bb.s ], [ %i.bg, %bb.ac ], [ %i.l, %bb.s ], [ %i.dw, %bb.ap ]
  %i.ed = phi i64 [ %i.m, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit ], [ 4, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i ], [ 4, %bb.am ], [ %i.m, %bb.s ], [ %i.m, %bb.s ], [ %i.m, %bb.s ], [ %i.bh, %bb.ac ], [ %i.m, %bb.s ], [ %i.dx, %bb.ap ]
  %.sroa.0.113 = phi i64 [ %.sroa.0.0.i.i, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit ], [ %.sroa.0.0.i.i, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i ], [ %.sroa.0.0.i.i, %bb.am ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.s ], [ %.sroa.0.0, %bb.ap ]
  %.sroa.11.112 = phi i64 [ %.sroa.0136.0.copyload137.i, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit ], [ 4, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i ], [ 4, %bb.am ], [ -1, %bb.s ], [ -1, %bb.s ], [ -1, %bb.s ], [ %.sroa.0100.0.i, %bb.ac ], [ -1, %bb.s ], [ %.sroa.11.0, %bb.ap ] ; 2 uses
  %.sroa.21.111 = phi i64 [ %.sroa.7.0.copyload139.i.a, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit ], [ undef, %_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin.exit.thread.i ], [ undef, %bb.am ], [ undef, %bb.s ], [ undef, %bb.s ], [ undef, %bb.s ], [ %.sroa.14.0.i, %bb.ac ], [ undef, %bb.s ], [ %.sroa.21.0, %bb.ap ]
  %i.ee = add i64 %.sroa.0.113, %i.n              ; 3 uses
  %i.ef = icmp ult i64 %i.ee, %i.n
  br i1 %i.ef, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread
  store i64 %i.ee, ptr %i.g, align 8
  %.not5 = icmp eq i64 %.sroa.11.112, -1
  br i1 %.not5, label %bb.b, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread15

bb.aw:                                            ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #54
  unreachable

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit.thread15: ; preds = %bb.b, %bb.c, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit, %bb.av
  %.sroa.3.0 = phi i64 [ %.sroa.21.111, %bb.av ], [ undef, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.04.0 = phi i64 [ %.sroa.11.112, %bb.av ], [ 5, %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token.exit ], [ 5, %bb.c ], [ 5, %bb.b ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State6factor(ptr noalias nofree noundef align 8 dereferenceable(64) %0) ; 2 uses
  %i.b = load i64, ptr %0, align 8, !range !43, !noundef !11 ; 2 uses
  %i.c = icmp ne i64 %i.b, 10
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 11
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.0.017 = phi double [ %i.a, %.lr.ph ], [ %.sroa.07.0, %bb.m ] ; 5 uses
  %i.h = load i8, ptr %i.e, align 8, !range !35, !noundef !11 ; 3 uses
  switch i8 %i.h, label %._crit_edge [
    i8 2, label %bb.c
    i8 3, label %bb.c
    i8 5, label %bb.c
  ]

._crit_edge:                                      ; preds = %bb.m, %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi double [ %i.a, %bb.a ], [ %.sroa.0.017, %bb.b ], [ %.sroa.07.0, %bb.m ]
  ret double %.sroa.0.0.lcssa

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.i = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %i.j = add i64 %i.i, -1
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef align 8 dereferenceable(64) %0)
  %i.l = tail call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State6factor(ptr noalias nofree noundef align 8 dereferenceable(64) %0) ; 5 uses
  %i.m = fcmp oeq double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #54
  unreachable

bb.f:                                             ; preds = %bb.g, %bb.h, %bb.d
  switch i8 %i.h, label %default.unreachable [
    i8 5, label %bb.l
    i8 4, label %bb.k
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

bb.g:                                             ; preds = %bb.d
  %i.n = add nsw i8 %i.h, -3
  %switch.and.i = and i8 %i.n, -3
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  store i64 4, ptr %0, align 8
  store i64 %i.j, ptr %i.g, align 8
  store i64 1, ptr %.sroa.412.0..sroa_idx, align 8
  store i8 7, ptr %.sroa.513.0..sroa_idx, align 8
  br label %bb.f

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.o = fmul double %.sroa.0.017, %i.l
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.p = fdiv double %.sroa.0.017, %i.l
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.q = tail call double @llvm.pow.f64(double %.sroa.0.017, double %i.l)
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.r = frem double %.sroa.0.017, %i.l
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.sroa.07.0 = phi double [ %i.r, %bb.l ], [ %i.q, %bb.k ], [ %i.o, %bb.i ], [ %i.p, %bb.j ] ; 2 uses
  %i.s = load i64, ptr %0, align 8, !range !43, !noundef !11 ; 2 uses
  %i.t = icmp ne i64 %i.s, 10
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.s, 11
  br i1 %i.u, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State6factor(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = load i64, ptr %0, align 8, !range !43, !alias.scope !1728, !noundef !11 ; 3 uses
  %i.d = icmp ne i64 %i.c, 10
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 11
  br i1 %i.e, label %.lr.ph, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State5power.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.0.i38 = phi double [ 1.000000e+00, %.lr.ph ], [ %.sroa.0.1.i, %bb.d ] ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !35, !alias.scope !1728, !noundef !11
  switch i8 %i.g, label %.thread120 [
    i8 1, label %bb.c
    i8 0, label %bb.d
  ]

.thread120:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.bu

bb.c:                                             ; preds = %bb.b
  %i.i = fneg double %.sroa.0.0.i38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.1.i = phi double [ %i.i, %bb.c ], [ %.sroa.0.0.i38, %bb.b ] ; 2 uses
  tail call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  %i.j = load i64, ptr %0, align 8, !range !43, !alias.scope !1728, !noundef !11 ; 3 uses
  %i.k = icmp ne i64 %i.j, 10
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 11
  br i1 %i.l, label %bb.b, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State5power.exit

_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State5power.exit: ; preds = %bb.d, %bb.a
  %.sroa.0.0.i.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %.sroa.0.1.i, %bb.d ] ; 12 uses
  %.sroa.0.0.copyload = phi i64 [ %i.c, %bb.a ], [ %i.j, %bb.d ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  %i.m = icmp samesign ugt i64 %.sroa.0.0.copyload, 3
  br i1 %i.m, label %bb.e, label %.thread116

bb.e:                                             ; preds = %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State5power.exit
  switch i64 %.sroa.0.0.copyload, label %default.unreachable333 [
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.f
    i64 7, label %bb.h
    i64 8, label %bb.f
    i64 9, label %bb.k
    i64 10, label %.thread116
  ]

default.unreachable333:                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e
  %i.n = icmp ne i64 %.sroa.0.0.copyload, 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !range !44, !alias.scope !1729
  %i.q = icmp eq i8 %i.p, 9
  %or.cond143.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond143.i, label %bb.bu, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4base.exit

bb.g:                                             ; preds = %bb.e
  store i64 4, ptr %0, align 8, !alias.scope !1729
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1729, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.t, align 8, !alias.scope !1729
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !1729
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.542.0..sroa_idx.i, align 8, !alias.scope !1729
  br label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4base.exit

bb.h:                                             ; preds = %bb.e
  tail call fastcc void @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State10next_token(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0), !inline_history !1705
  %i.u = tail call fastcc noundef double @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0), !inline_history !1706 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %0, align 8, !range !43, !alias.scope !1730, !noundef !11 ; 3 uses
  %i.x = icmp ne i64 %i.w, 10
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i64 %i.w, 11
  br i1 %i.y, label %.lr.ph54, label %_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4expr.exit.i

.lr.ph54:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i53 = phi double [ %.sroa.07.0.i.i, %bb.i ], [ %i.u, %bb.h ]
  %i.z = load i8, ptr %i.v, align 8, !range !35, !alias.scope !1730, !noundef !11 ; 2 uses
  %switch.i.i = icmp samesign ult i8 %i.z, 2
  br i1 %switch.i.i, label %bb.i, label %.thread133

bb.i:                                             ; preds = %.lr.ph54
end_hunk_0
begin_hunk_1_@llvm.smax.i32
!1499 = !{!1495, !1493}
!1500 = distinct !{!1500, i1 true, !"_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish"}
!1501 = distinct !{!1501, !1500, !"_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8frGy5WneL6_4fish: argument 0"}
!1502 = distinct !{!1502, i1 true, !"_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0Cs8frGy5WneL6_4fish"}
!1503 = distinct !{!1503, !1502, !"_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0Cs8frGy5WneL6_4fish: argument 0"}
!1504 = distinct !{null, ptr @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtBa_6poison5mutex5MutexNtNtNtCsfFbyYyxlmiH_4rand4rngs5small8SmallRngEE5force0E0Cs8frGy5WneL6_4fish, null}
!1505 = !{!1501}
!1506 = !{!1503}
!1507 = !{!1503, !1501}
!1508 = distinct !{!1508, i1 true, !"_RNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBa_4syncINtB26_8OnceCellBR_E11get_or_initNCNvMs9_B26_INtB26_4LazyBR_E5force0E0NtNvMs4_B26_IB2h_pE11get_or_init4VoidE0BV_"}
!1509 = distinct !{!1509, !1508, !"_RNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBa_4syncINtB26_8OnceCellBR_E11get_or_initNCNvMs9_B26_INtB26_4LazyBR_E5force0E0NtNvMs4_B26_IB2h_pE11get_or_init4VoidE0BV_: argument 0"}
!1510 = distinct !{!1510, i1 true, !"_RNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBa_4syncINtB26_8OnceCellBR_E11get_or_initNCNvMs9_B26_INtB26_4LazyBR_E5force0E0NtNvMs4_B26_IB2h_pE11get_or_init4VoidE0BV_"}
!1511 = distinct !{!1511, !1510, !"_RNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBa_4syncINtB26_8OnceCellBR_E11get_or_initNCNvMs9_B26_INtB26_4LazyBR_E5force0E0NtNvMs4_B26_IB2h_pE11get_or_init4VoidE0BV_: argument 0"}
!1512 = distinct !{!1512, i1 true, !"_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_"}
!1513 = distinct !{!1513, !1512, !"_RNCINvMs4_NtCsbHflKoyRIVo_9once_cell4syncINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE11get_or_initNCNvMs9_B8_INtB8_4LazyBS_E5force0E0BW_: argument 0"}
!1514 = distinct !{!1514, i1 true, !"_RNCNvMs9_NtCsbHflKoyRIVo_9once_cell4syncINtB7_4LazyNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE5force0BR_"}
!1515 = distinct !{!1515, !1514, !"_RNCNvMs9_NtCsbHflKoyRIVo_9once_cell4syncINtB7_4LazyNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE5force0BR_: argument 0"}
!1516 = distinct !{null, ptr @_RNCINvMs2_NtCsbHflKoyRIVo_9once_cell3impINtB8_8OnceCellNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableE10initializeNCINvMs4_NtBa_4syncINtB26_8OnceCellBR_E11get_or_initNCNvMs9_B26_INtB26_4LazyBR_E5force0E0NtNvMs4_B26_IB2h_pE11get_or_init4VoidE0BV_, null}
!1517 = distinct !{!1517, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_"}
!1518 = distinct !{!1518, !1517, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish12env_dispatch16VarDispatchTableEEB11_: argument 0"}
!1519 = !{!1509}
!1520 = !{!1511}
!1521 = !{!1515, !1513, !1511}
!1522 = !{!1518}
!1523 = distinct !{!1523, i1 true, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB9_8builtins11fish_indent13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceB9_"}
!1524 = distinct !{!1524, !1523, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB9_8builtins11fish_indent13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceB9_: argument 0"}
!1525 = distinct !{!1525, !1523, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB9_8builtins11fish_indent13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceB9_: argument 1"}
!1526 = distinct !{!1526, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBI_8builtins11fish_indent13throwing_mainEs_0EBI_"}
!1527 = distinct !{!1527, !1526, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBI_8builtins11fish_indent13throwing_mainEs_0EBI_: argument 0"}
!1528 = !{!1524}
!1529 = !{!1524, !1525}
!1530 = !{!1527}
!1531 = distinct !{!1531, i1 true, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB9_8builtins15fish_key_reader13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceB9_"}
!1532 = distinct !{!1532, !1531, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB9_8builtins15fish_key_reader13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceB9_: argument 0"}
!1533 = distinct !{!1533, !1531, !"_RNvYNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtB9_8builtins15fish_key_reader13throwing_mainEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCsaL1QbXo9JQH_3std5panic13PanicHookInfoEE9call_onceB9_: argument 1"}
!1534 = distinct !{!1534, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBI_8builtins15fish_key_reader13throwing_mainEs_0EBI_"}
!1535 = distinct !{!1535, !1534, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtCs8frGy5WneL6_4fish5panic13panic_handlerNvNtNtBI_8builtins15fish_key_reader13throwing_mainEs_0EBI_: argument 0"}
!1536 = !{!1532}
!1537 = !{!1532, !1533}
!1538 = !{!1535}
!1539 = !{i8 0, i8 10}
!1540 = distinct !{!1540, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1541 = distinct !{!1541, !1540, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1542 = distinct !{!1542, !29, !30}
!1543 = distinct !{!1543, !30, !29}
!1544 = !{!1541}
!1545 = distinct !{!1545, i1 true, !"_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish"}
!1546 = distinct !{!1546, !1545, !"_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish: argument 0"}
!1547 = distinct !{!1547, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1548 = distinct !{!1548, !1547, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1549 = distinct !{!1549, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1550 = distinct !{!1550, !1549, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1551 = distinct !{!1551, !29, !30}
!1552 = distinct !{!1552, !30, !29}
!1553 = distinct !{!1553, i1 true, !"_RNvMs0_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB5_11Highlighter3new"}
!1554 = distinct !{!1554, !1553, !"_RNvMs0_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB5_11Highlighter3new: argument 0"}
!1555 = distinct !{!1555, !29, !30}
!1556 = distinct !{!1556, !30, !29}
!1557 = distinct !{!1557, !1563}
!1558 = !{!1546}
!1559 = !{!1548}
!1560 = !{!1550}
!1561 = !{!1554}
!1562 = !{!"branch_weights", i32 4000000, i32 4001}
!1563 = !{!"llvm.loop.unswitch.injection.disable"}
!1564 = distinct !{!1564, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs8frGy5WneL6_4fish9tokenizer11PipeOrRediruE6expectBL_"}
!1565 = distinct !{!1565, !1564, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs8frGy5WneL6_4fish9tokenizer11PipeOrRediruE6expectBL_: argument 0"}
!1566 = distinct !{!1566, !1564, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs8frGy5WneL6_4fish9tokenizer11PipeOrRediruE6expectBL_: argument 1"}
!1567 = distinct !{!1567, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1568 = distinct !{!1568, !1567, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1569 = distinct !{!1569, !29, !30}
!1570 = distinct !{!1570, !30, !29}
!1571 = distinct !{!1571, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1572 = distinct !{!1572, !1571, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1573 = distinct !{!1573, !29, !30}
!1574 = distinct !{!1574, !30, !29}
!1575 = distinct !{!1575, i1 true, !"_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight10has_cmdsub"}
!1576 = distinct !{!1576, !1575, !"_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight10has_cmdsub: argument 0"}
!1577 = distinct !{!1577, i1 true, !"_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable"}
!1578 = distinct !{!1578, !1577, !"_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable: argument 0"}
!1579 = distinct !{!1579, !1577, !"_RNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable: argument 1"}
!1580 = distinct !{!1580, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7WindowscENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_8position5checkRScNCNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable0E0INtNtNtBa_3ops12control_flow11ControlFlowjEEB2d_"}
!1581 = distinct !{!1581, !1580, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7WindowscENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_8position5checkRScNCNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable0E0INtNtNtBa_3ops12control_flow11ControlFlowjEEB2d_: argument 1"}
!1582 = distinct !{!1582, !1580, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7WindowscENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_8position5checkRScNCNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable0E0INtNtNtBa_3ops12control_flow11ControlFlowjEEB2d_: argument 0"}
!1583 = distinct !{!1583, i1 true, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable0E0B1r_"}
!1584 = distinct !{!1584, !1583, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRScNCNvNtNtCs8frGy5WneL6_4fish9highlight9highlight25contains_pending_variable0E0B1r_: argument 0"}
!1585 = distinct !{!1585, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1586 = distinct !{!1586, !1585, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1587 = distinct !{!1587, !29, !30}
!1588 = distinct !{!1588, !30, !29}
!1589 = !{!1565}
!1590 = !{!1566}
!1591 = !{!1565, !1566}
!1592 = !{!1568}
!1593 = !{!1572}
!1594 = !{!1576}
!1595 = !{!1578}
!1596 = !{!1579}
!1597 = !{!1584, !1582, !1581, !1578}
!1598 = !{!1586}
!1599 = distinct !{!1599, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1600 = distinct !{!1600, !1599, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1601 = distinct !{!1601, !29, !30}
!1602 = distinct !{!1602, !30, !29}
!1603 = distinct !{!1603, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1604 = distinct !{!1604, !1603, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1605 = distinct !{!1605, !29, !30}
!1606 = distinct !{!1606, !30, !29}
!1607 = distinct !{!1607, i1 true, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_"}
!1608 = distinct !{!1608, !1607, !"_RNvXs_NtNtCs3oUPovFnLWP_4core5slice10specializeSNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecINtB4_8SpecFillBK_E9spec_fillBQ_: argument 0"}
!1609 = distinct !{!1609, !29, !30}
!1610 = distinct !{!1610, !30, !29}
!1611 = !{!1600}
!1612 = !{!1604}
!1613 = !{!1608}
!1614 = distinct !{!1614, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu5sem_tEE3newCs8frGy5WneL6_4fish"}
!1615 = distinct !{!1615, !1614, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtCs3oUPovFnLWP_4core4cell10UnsafeCellNtNtNtNtNtCs1vxLqTlM7jN_4libc4unix10linux_like5linux3gnu5sem_tEE3newCs8frGy5WneL6_4fish: argument 0"}
!1616 = !{!1615}
!1617 = distinct !{!1617, i1 true, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token"}
!1618 = distinct !{!1618, !1617, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token: argument 1"}
!1619 = distinct !{!1619, !1617, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State9get_token: argument 0"}
!1620 = distinct !{!1620, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB1O_5State9get_token0EB1Q_"}
!1621 = distinct !{!1621, !1620, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB1O_5State9get_token0EB1Q_: argument 0"}
!1622 = distinct !{!1622, i1 true, !"_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin"}
!1623 = distinct !{!1623, !1622, !"_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin: argument 1"}
!1624 = distinct !{!1624, i1 true, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp"}
!1625 = distinct !{!1625, !1624, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 0"}
!1626 = distinct !{!1626, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish"}
!1627 = distinct !{!1627, !1626, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 0"}
!1628 = distinct !{!1628, !1622, !"_RNvNtCs8frGy5WneL6_4fish8tinyexpr12find_builtin: argument 0"}
!1629 = distinct !{!1629, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE16binary_search_byNCINvB2_20binary_search_by_keyBw_NCNvB1j_12find_builtin0E0EB1l_"}
!1630 = distinct !{!1630, !1629, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs8frGy5WneL6_4fish8tinyexpr8FunctionE16binary_search_byNCINvB2_20binary_search_by_keyBw_NCNvB1j_12find_builtin0E0EB1l_: argument 0"}
!1631 = distinct !{!1631, !1624, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 1"}
!1632 = distinct !{!1632, !1626, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 1"}
!1633 = distinct !{!1633, i1 true, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp"}
!1634 = distinct !{!1634, !1633, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 1"}
!1635 = distinct !{!1635, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish"}
!1636 = distinct !{!1636, !1635, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 1"}
!1637 = distinct !{!1637, i1 true, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp"}
!1638 = distinct !{!1638, !1637, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 0:It1"}
!1639 = distinct !{!1639, !1637, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 1:It1"}
!1640 = distinct !{!1640, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish"}
!1641 = distinct !{!1641, !1640, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 0:It1"}
!1642 = distinct !{!1642, !1640, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 1:It1"}
!1643 = distinct !{!1643, i1 true, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp"}
!1644 = distinct !{!1644, !1643, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 0:It2"}
!1645 = distinct !{!1645, !1643, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 1:It2"}
!1646 = distinct !{!1646, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish"}
!1647 = distinct !{!1647, !1646, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 0:It2"}
!1648 = distinct !{!1648, !1646, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 1:It2"}
!1649 = distinct !{!1649, i1 true, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp"}
!1650 = distinct !{!1650, !1649, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 0:It3"}
!1651 = distinct !{!1651, !1649, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 1:It3"}
!1652 = distinct !{!1652, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish"}
!1653 = distinct !{!1653, !1652, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 0:It3"}
!1654 = distinct !{!1654, !1652, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 1:It3"}
!1655 = distinct !{!1655, i1 true, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp"}
!1656 = distinct !{!1656, !1655, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 0:It4"}
!1657 = distinct !{!1657, !1655, !"_RNvXs1w_NtCslLGyqsphxMB_10widestring6utfstrNtB6_8Utf32StrNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp: argument 1:It4"}
!1658 = distinct !{!1658, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish"}
!1659 = distinct !{!1659, !1658, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 0:It4"}
!1660 = distinct !{!1660, !1658, !"_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs8frGy5WneL6_4fish: argument 1:It4"}
!1661 = !{!1618}
!1662 = !{!1619, !1618}
!1663 = !{!1621, !1619, !1618}
!1664 = !{!1623}
!1665 = !{!1627, !1625}
!1666 = !{!1630, !1628, !1623, !1619, !1618}
!1667 = !{!1632, !1631, !1623}
!1668 = !{!1630, !1619, !1618}
!1669 = !{!1636, !1634, !1623}
!1670 = !{!1638}
!1671 = !{!1639}
!1672 = !{!1641}
!1673 = !{!1642}
!1674 = !{!1641, !1638}
!1675 = !{!1642, !1639, !1623}
!1676 = !{!1644}
!1677 = !{!1645}
!1678 = !{!1647}
!1679 = !{!1648}
!1680 = !{!1647, !1644}
!1681 = !{!1648, !1645, !1623}
!1682 = !{!1650}
!1683 = !{!1651}
!1684 = !{!1653}
!1685 = !{!1654}
!1686 = !{!1653, !1650}
!1687 = !{!1654, !1651, !1623}
!1688 = !{!1656}
!1689 = !{!1657}
!1690 = !{!1659}
!1691 = !{!1660}
!1692 = !{!1659, !1656}
!1693 = !{!1660, !1657, !1623}
!1694 = !{!1625}
!1695 = !{!1631}
!1696 = !{!1627}
!1697 = !{!1632}
!1698 = !{!1628, !1623, !1619, !1618}
!1699 = !{!1623, !1619, !1618}
!1700 = !{!"branch_weights", i32 1, i32 2000, i32 1, i32 2000}
!1701 = distinct !{!1701, i1 true, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State5power"}
!1702 = distinct !{!1702, !1701, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State5power: argument 0"}
!1703 = distinct !{!1703, i1 true, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4base"}
!1704 = distinct !{!1704, !1703, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4base: argument 0"}
!1705 = distinct !{null, null}
!1706 = distinct !{null, null, null}
!1707 = distinct !{!1707, i1 true, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4expr"}
!1708 = distinct !{!1708, !1707, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4expr: argument 0"}
!1709 = distinct !{!1709, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB2d_5State4base0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B30_5count0EB2f_"}
!1710 = distinct !{!1710, !1709, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB2d_5State4base0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B30_5count0EB2f_: argument 0"}
!1711 = distinct !{!1711, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB2d_5State4base0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3O_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B30_5count0E0B49_EB2f_"}
!1712 = distinct !{!1712, !1711, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB2d_5State4base0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB3O_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B30_5count0E0B49_EB2f_: argument 0"}
!1713 = distinct !{!1713, i1 true, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtB13_8adapters10take_whileINtB2d_9TakeWhileppEBX_8try_fold5checkcjINtNtNtB15_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB4c_5State4base0NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2H_B3_B44_EBX_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4e_"}
!1714 = distinct !{!1714, !1713, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtB13_8adapters10take_whileINtB2d_9TakeWhileppEBX_8try_fold5checkcjINtNtNtB15_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB4c_5State4base0NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2H_B3_B44_EBX_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4e_: argument 1"}
!1715 = distinct !{!1715, !1713, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtB13_8adapters10take_whileINtB2d_9TakeWhileppEBX_8try_fold5checkcjINtNtNtB15_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB4c_5State4base0NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2H_B3_B44_EBX_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4e_: argument 0"}
!1716 = distinct !{!1716, i1 true, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!1717 = distinct !{!1717, !1716, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!1718 = distinct !{!1718, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtCslLGyqsphxMB_10widestring5error16DecodeUtf32ErrorE6unwrapCs8frGy5WneL6_4fish"}
!1719 = distinct !{!1719, !1718, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultcNtNtCslLGyqsphxMB_10widestring5error16DecodeUtf32ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!1720 = distinct !{!1720, i1 true, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4expr"}
!1721 = distinct !{!1721, !1720, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4expr: argument 0"}
!1722 = distinct !{ptr @_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term, null, null, null}
!1723 = distinct !{!1723, i1 true, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term"}
!1724 = distinct !{!1724, !1723, !"_RNvMs2_NtCs8frGy5WneL6_4fish8tinyexprNtB5_5State4term: argument 0"}
!1725 = distinct !{!1725, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdE8push_mutCs8frGy5WneL6_4fish"}
!1726 = distinct !{!1726, !1725, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!1727 = distinct !{null, null, null}
!1728 = !{!1702}
!1729 = !{!1704}
!1730 = !{!1708, !1704}
!1731 = !{!1717, !1715, !1714, !1712, !1710}
!1732 = !{!1719, !1717, !1715, !1714, !1712, !1710, !1704}
!1733 = !{!1715, !1714, !1712, !1710}
!1734 = !{!1721, !1704}
!1735 = !{!1724}
!1736 = !{!1726}
!1737 = distinct !{!1737, i1 true, !"_RNvXsn_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitorNtNtCs3oUPovFnLWP_4core7default7Default7default"}
!1738 = distinct !{!1738, !1737, !"_RNvXsn_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitorNtNtCs3oUPovFnLWP_4core7default7Default7default: argument 0"}
!1739 = !{!1738}
!1740 = distinct !{!1740, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_"}
!1741 = distinct !{!1741, !1740, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 0"}
!1742 = distinct !{!1742, !1740, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 1"}
!1743 = !{!1741}
!1744 = !{!1741, !1742}
!1745 = distinct !{!1745, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_"}
!1746 = distinct !{!1746, !1745, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicEE4nextB1Y_: argument 0"}
!1747 = distinct !{!1747, i1 true, !"_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str"}
!1748 = distinct !{!1748, !1747, !"_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str: argument 1"}
!1749 = distinct !{!1749, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!1750 = distinct !{!1750, !1749, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!1751 = distinct !{!1751, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!1752 = distinct !{!1752, !1751, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!1753 = distinct !{!1753, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!1754 = distinct !{!1754, !1753, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!1755 = distinct !{!1755, i1 true, !"_RNvYNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicNtNtB6_4flog14FloggableDebug11to_flog_strB6_"}
!1756 = distinct !{!1756, !1755, !"_RNvYNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicNtNtB6_4flog14FloggableDebug11to_flog_strB6_: argument 1"}
!1757 = distinct !{!1757, !1755, !"_RNvYNtNtCs8frGy5WneL6_4fish13topic_monitor5TopicNtNtB6_4flog14FloggableDebug11to_flog_strB6_: argument 0"}
!1758 = distinct !{!1758, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!1759 = distinct !{!1759, !1758, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!1760 = distinct !{!1760, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!1761 = distinct !{!1761, !1760, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!1762 = distinct !{!1762, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish"}
!1763 = distinct !{!1763, !1762, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!1764 = !{!1746}
!1765 = !{!1748}
!1766 = !{!1750}
!1767 = !{!1752}
!1768 = !{!1754}
!1769 = !{!1757, !1756}
!1770 = !{!1759}
!1771 = !{!1761}
!1772 = !{!1763}
!1773 = distinct !{!1773, i1 true, !"_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10await_gens"}
!1774 = distinct !{!1774, !1773, !"_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor10await_gens: argument 0"}
!1775 = distinct !{!1775, i1 true, !"_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor37try_update_gens_maybe_becoming_reader"}
!1776 = distinct !{!1776, !1775, !"_RNvMs4_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitor37try_update_gens_maybe_becoming_reader: argument 0"}
!1777 = distinct !{!1777, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_"}
!1778 = distinct !{!1778, !1777, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 0"}
!1779 = distinct !{!1779, !1777, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 1"}
!1780 = distinct !{!1780, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEEB1T_"}
!1781 = distinct !{!1781, !1780, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEEB1T_: argument 0"}
!1782 = distinct !{!1782, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_"}
!1783 = distinct !{!1783, !1782, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 0"}
!1784 = distinct !{!1784, !1782, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 1"}
!1785 = distinct !{!1785, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEEB1T_"}
!1786 = distinct !{!1786, !1785, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEEEB1T_: argument 0"}
!1787 = distinct !{!1787, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_"}
!1788 = distinct !{!1788, !1787, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 0"}
!1789 = distinct !{!1789, !1787, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish13topic_monitor4DataEINtBM_11PoisonErrorBH_EE6unwrapB1G_: argument 1"}
!1790 = !{!1774}
!1791 = !{!1776}
!1792 = !{!1776, !1774}
!1793 = !{!1778}
!1794 = !{!1778, !1779, !1776, !1774}
!1795 = !{!1778, !1776, !1774}
!1796 = !{!1781}
!1797 = !{!1781, !1778, !1776, !1774}
!1798 = !{!1783}
!1799 = !{!1783, !1784, !1776, !1774}
!1800 = !{!1783, !1776, !1774}
!1801 = !{!1786}
!1802 = !{!1786, !1783, !1776, !1774}
!1803 = !{!1788}
!1804 = !{!1788, !1789, !1774}
!1805 = !{!1788, !1774}
!1806 = distinct !{!1806, i1 true, !"_RNvXsl_NtCs8frGy5WneL6_4fish9text_faceNtB5_11TextStylingNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq"}
!1807 = distinct !{!1807, !1806, !"_RNvXsl_NtCs8frGy5WneL6_4fish9text_faceNtB5_11TextStylingNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq: argument 0"}
!1808 = !{!1807}
!1809 = distinct !{!1809, i1 true, !"_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver21resolve_spec_uncached"}
!1810 = distinct !{!1810, !1809, !"_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver21resolve_spec_uncached: argument 0"}
!1811 = distinct !{!1811, !1809, !"_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver21resolve_spec_uncached: argument 2"}
!1812 = distinct !{!1812, !1809, !"_RNvMs_NtNtCs8frGy5WneL6_4fish9highlight9highlightNtB4_22HighlightColorResolver21resolve_spec_uncached: argument 1"}
!1813 = distinct !{null}
!1814 = distinct !{!1814, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_"}
!1815 = distinct !{!1815, !1814, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_: argument 0"}
!1816 = distinct !{!1816, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish"}
!1817 = distinct !{!1817, !1816, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish: argument 0"}
!1818 = distinct !{!1818, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!1819 = distinct !{!1819, !1818, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!1820 = distinct !{!1820, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_"}
!1821 = distinct !{!1821, !1820, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_: argument 0"}
!1822 = distinct !{!1822, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish"}
!1823 = distinct !{!1823, !1822, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish: argument 0"}
!1824 = distinct !{!1824, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish"}
!1825 = distinct !{!1825, !1824, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish: argument 0"}
!1826 = !{!1810}
!1827 = !{!1811}
!1828 = !{!1812}
!1829 = !{!1810, !1812, !1811}
!1830 = !{!1810, !1812}
!1831 = !{!1819, !1817, !1815, !1810, !1812, !1811}
!1832 = !{i8 -1, i8 4}
!1833 = !{!1825, !1823, !1821, !1810, !1812, !1811}
!1834 = distinct !{!1834, i1 true, !"_RNvXsn_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitorNtNtCs3oUPovFnLWP_4core7default7Default7default"}
!1835 = distinct !{!1835, !1834, !"_RNvXsn_NtCs8frGy5WneL6_4fish13topic_monitorNtB5_12TopicMonitorNtNtCs3oUPovFnLWP_4core7default7Default7default: argument 0"}
!1836 = !{!1835}
!1837 = distinct !{!1837, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE6unwrapBL_"}
!1838 = distinct !{!1838, !1837, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE6unwrapBL_: argument 0"}
!1839 = distinct !{!1839, !1837, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs8frGy5WneL6_4fish3key3KeyNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE6unwrapBL_: argument 1"}
!1840 = distinct !{!1840, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_"}
!1841 = distinct !{!1841, !1840, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_: argument 0"}
!1842 = distinct !{!1842, i1 true, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains"}
!1843 = distinct !{!1843, !1842, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains: argument 0"}
!1844 = distinct !{!1844, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish"}
!1845 = distinct !{!1845, !1844, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 1"}
!1846 = distinct !{!1846, !1844, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 0"}
!1847 = distinct !{!1847, i1 true, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains"}
!1848 = distinct !{!1848, !1847, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains: argument 0"}
!1849 = distinct !{!1849, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish"}
!1850 = distinct !{!1850, !1849, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 1"}
!1851 = distinct !{!1851, !1849, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 0"}
!1852 = distinct !{!1852, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0EB2u_"}
!1853 = distinct !{!1853, !1852, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0EB2u_: argument 1"}
!1854 = distinct !{!1854, !1852, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCs8frGy5WneL6_4fish3key10parse_keys0EB2u_: argument 0"}
!1855 = distinct !{!1855, i1 true, !"_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish"}
!1856 = distinct !{!1856, !1855, !"_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt7char_atCs8frGy5WneL6_4fish: argument 0"}
!1857 = distinct !{!1857, i1 true, !"_RNvNtCs8frGy5WneL6_4fish3key16canonicalize_key"}
!1858 = distinct !{!1858, !1857, !"_RNvNtCs8frGy5WneL6_4fish3key16canonicalize_key: argument 0"}
!1859 = distinct !{!1859, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapcNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0EB2A_"}
!1860 = distinct !{!1860, !1859, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapcNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0EB2A_: argument 1"}
!1861 = distinct !{!1861, !1859, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterTcRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapcNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0EB2A_: argument 0"}
!1862 = distinct !{!1862, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1863 = distinct !{!1863, !1862, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0"}
!1864 = distinct !{!1864, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1865 = distinct !{!1865, !1864, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It1"}
!1866 = distinct !{!1866, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1867 = distinct !{!1867, !1866, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It2"}
!1868 = distinct !{!1868, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1869 = distinct !{!1869, !1868, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It3"}
!1870 = distinct !{!1870, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1871 = distinct !{!1871, !1870, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It4"}
!1872 = distinct !{!1872, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1873 = distinct !{!1873, !1872, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It5"}
!1874 = distinct !{!1874, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1875 = distinct !{!1875, !1874, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It6"}
!1876 = distinct !{!1876, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1877 = distinct !{!1877, !1876, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It7"}
!1878 = distinct !{!1878, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1879 = distinct !{!1879, !1878, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It8"}
!1880 = distinct !{!1880, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1881 = distinct !{!1881, !1880, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It9"}
!1882 = distinct !{!1882, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1883 = distinct !{!1883, !1882, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It10"}
!1884 = distinct !{!1884, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1885 = distinct !{!1885, !1884, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It11"}
!1886 = distinct !{!1886, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1887 = distinct !{!1887, !1886, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It12"}
!1888 = distinct !{!1888, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1889 = distinct !{!1889, !1888, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It13"}
!1890 = distinct !{!1890, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1891 = distinct !{!1891, !1890, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It14"}
!1892 = distinct !{!1892, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1893 = distinct !{!1893, !1892, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It15"}
!1894 = distinct !{!1894, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1895 = distinct !{!1895, !1894, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It16"}
!1896 = distinct !{!1896, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1897 = distinct !{!1897, !1896, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It17"}
!1898 = distinct !{!1898, i1 true, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_"}
!1899 = distinct !{!1899, !1898, !"_RNCNvNtCs8frGy5WneL6_4fish3key10parse_keyss_0B5_: argument 0:It18"}
!1900 = distinct !{!1900, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3key3KeyE8push_mutBJ_"}
end_hunk_1
