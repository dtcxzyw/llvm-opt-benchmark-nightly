inline.NumInlined: 29982
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb10StringUtil16SimilarityRatingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !16     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !139  ; 2 uses
  %.sroa.speculated45.i.i.a = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c) ; 5 uses
  %i.g = icmp sgt i64 %.sroa.speculated45.i.i.a, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i, label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %2 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated45.i.i.a, i64 4) ; 4 uses
  %i.h = load i8, ptr %i.d, align 1, !tbaa !79
  %i.i = load i8, ptr %i.a, align 1, !tbaa !79
  %.not.i.i = icmp eq i8 %i.h, %i.i
  br i1 %.not.i.i, label %bb.b, label %._crit_edge.loopexit.i.i

bb.b:                                             ; preds = %.lr.ph.preheader.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.speculated45.i.i.a, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN6duckdb10StringUtil16SimilarityRatingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  br i1 %.not.i.i.1, label %bb.c, label %._crit_edge.loopexit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %.sroa.speculated45.i.i.a, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN6duckdb10StringUtil16SimilarityRatingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  br i1 %.not.i.i.2, label %bb.d, label %._crit_edge.loopexit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %.sroa.speculated45.i.i.a, 3
  br i1 %exitcond.not.i.i.2, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN6duckdb10StringUtil16SimilarityRatingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !79
  %.not.i.i.3 = icmp eq i8 %i.s, %i.u
  %spec.select = select i1 %.not.i.i.3, i64 %2, i64 3
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.3, %bb.d, %.lr.ph.i.i.2, %bb.c, %.lr.ph.i.i.1, %bb.b, %.lr.ph.preheader.i.i
  %.030.lcssa.ph.i.i = phi i64 [ %2, %bb.b ], [ 0, %.lr.ph.preheader.i.i ], [ 1, %.lr.ph.i.i.1 ], [ %2, %bb.c ], [ 2, %.lr.ph.i.i.2 ], [ %2, %bb.d ], [ %spec.select, %.lr.ph.i.i.3 ]
  %i.v = uitofp nneg i64 %.030.lcssa.ph.i.i to double
  %i.w = fmul nnan double %i.v, 1.000000e-01
  br label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit
end_hunk_3
begin_hunk_4_@_ZN6duckdb10StringUtil15TopNJaroWinklerERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_md:bb.a
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !139 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !16    ; 6 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !139 ; 2 uses
  %.sroa.speculated45.i.i.i.a = call i64 @llvm.smin.i64(i64 %i.aq, i64 %i.ao) ; 5 uses
  %i.ar = icmp sgt i64 %.sroa.speculated45.i.i.i.a, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %7 = call i64 @llvm.umin.i64(i64 %.sroa.speculated45.i.i.i.a, i64 4) ; 4 uses
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !79
  %i.at = load i8, ptr %i.am, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.as, %i.at
  br i1 %.not.i.i.i, label %bb.i, label %._crit_edge.loopexit.i.i.i

bb.i:                                             ; preds = %.lr.ph.preheader.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.speculated45.i.i.i.a, 1
  br i1 %exitcond.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.i
end_hunk_4
begin_hunk_5_@_ZN6duckdb10StringUtil15TopNJaroWinklerERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_md:bb.a
  br i1 %.not.i.i.i.1, label %bb.j, label %._crit_edge.loopexit.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.1
  %exitcond.not.i.i.i.1 = icmp eq i64 %.sroa.speculated45.i.i.i.a, 2
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.j
end_hunk_5
begin_hunk_6_@_ZN6duckdb10StringUtil15TopNJaroWinklerERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_md:bb.a
  br i1 %.not.i.i.i.2, label %bb.k, label %._crit_edge.loopexit.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.2
  %exitcond.not.i.i.i.2 = icmp eq i64 %.sroa.speculated45.i.i.i.a, 3
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.k
end_hunk_6
begin_hunk_7_@_ZN6duckdb10StringUtil15TopNJaroWinklerERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEERKS7_md:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !79
  %.not.i.i.i.3 = icmp eq i8 %i.bd, %i.bf
  %spec.select = select i1 %.not.i.i.i.3, i64 %7, i64 3
  br label %._crit_edge.loopexit.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.3, %bb.k, %.lr.ph.i.i.i.2, %bb.j, %.lr.ph.i.i.i.1, %bb.i, %.lr.ph.preheader.i.i.i
  %.030.lcssa.ph.i.i.i = phi i64 [ %7, %bb.i ], [ 0, %.lr.ph.preheader.i.i.i ], [ 1, %.lr.ph.i.i.i.1 ], [ %7, %bb.j ], [ 2, %.lr.ph.i.i.i.2 ], [ %7, %bb.k ], [ %spec.select, %.lr.ph.i.i.i.3 ]
  %i.bg = uitofp nneg i64 %.030.lcssa.ph.i.i.i to double
  %i.bh = fmul nnan double %i.bg, 1.000000e-01
  br label %_ZN19duckdb_jaro_winkler23jaro_winkler_similarityIPKcS2_EENSt9enable_ifIXaasr6common11is_iteratorIT_EE5valuesr6common11is_iteratorIT0_EE5valueEdE4typeES4_S4_S5_S5_dd.exit.i
end_hunk_7
