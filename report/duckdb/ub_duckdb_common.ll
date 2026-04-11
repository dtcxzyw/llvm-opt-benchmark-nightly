inline.NumInlined: 29982
inline.NumDeleted: 10454
begin_hunk_0_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double ; 2 uses
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %8 = fdiv double %i.i, %i.j
  %9 = sitofp i64 %i.f to double                  ; 4 uses
  %10 = fdiv double %i.i, %9
  %11 = fadd double %8, %10
  %i.k = fadd double %11, 1.000000e+00
  %i.l = fdiv double %i.k, 3.000000e+00
  %i.m = fcmp ult double %i.l, %4
  br i1 %i.m, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br i1 %.not.i63, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.gk = uitofp nneg i64 %i.gj to double         ; 2 uses
  %12 = fdiv double %i.gk, %i.j
  %i.gl = fadd double %12, 0.000000e+00
  %13 = fdiv double %i.gk, %9
  %i.gm = fadd double %13, %i.gl
  %i.gn = fadd double %i.gm, 1.000000e+00
  %i.go = fdiv double %i.gn, 3.000000e+00
  %i.gp = fcmp ult double %i.go, %4
end_hunk_1
begin_hunk_2_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br i1 %.not.i89, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.ud = sitofp i64 %i.uc to double              ; 2 uses
  %14 = fdiv double %i.ud, %i.j
  %i.ue = fadd double %14, 0.000000e+00
  %15 = fdiv double %i.ud, %9
  %i.uf = fadd double %15, %i.ue
  %i.ug = fadd double %i.uf, 1.000000e+00
  %i.uh = fdiv double %i.ug, 3.000000e+00
  %i.ui = fcmp ult double %i.uh, %4
end_hunk_2
begin_hunk_3_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %.244 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %.143, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.244.ph, %.sink.split ]
  %.041 = phi i64 [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %i.uc, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %i.gj, %.sink.split ]
  %i.wv = sdiv i64 %.244, 2
  %i.ww = sitofp i64 %.041 to double              ; 4 uses
  %16 = fdiv double %i.ww, %i.j
  %i.wx = fadd double %16, 0.000000e+00
  %17 = fdiv double %i.ww, %9
  %i.wy = fadd double %17, %i.wx
  %i.wz = sitofp i64 %i.wv to double
  %i.xa = fsub double %i.ww, %i.wz
  %i.xb = fdiv double %i.xa, %i.ww
end_hunk_3
