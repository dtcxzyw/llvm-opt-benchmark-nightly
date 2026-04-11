inline.NumInlined: 29982
inline.NumDeleted: 10454
begin_hunk_0_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %8 = sitofp i64 %i.f to double                  ; 4 uses
  %9 = insertelement <2 x double> poison, double %i.i, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x double> poison, double %i.j, i64 0
  %12 = insertelement <2 x double> %11, double %8, i64 1
  %13 = fdiv <2 x double> %10, %12                ; 2 uses
  %shift = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %13, %shift
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.k = fadd double %14, 1.000000e+00
  %i.l = fdiv double %i.k, 3.000000e+00
  %i.m = fcmp ult double %i.l, %4
  br i1 %i.m, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br i1 %.not.i63, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.gk = uitofp nneg i64 %i.gj to double
  %15 = insertelement <2 x double> poison, double %i.gk, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> poison, double %8, i64 0
  %18 = insertelement <2 x double> %17, double %i.j, i64 1
  %19 = fdiv <2 x double> %16, %18                ; 2 uses
  %20 = extractelement <2 x double> %19, i64 1
  %i.gl = fadd double %20, 0.000000e+00
  %21 = extractelement <2 x double> %19, i64 0
  %i.gm = fadd double %21, %i.gl
  %i.gn = fadd double %i.gm, 1.000000e+00
  %i.go = fdiv double %i.gn, 3.000000e+00
  %i.gp = fcmp ult double %i.go, %4
end_hunk_1
begin_hunk_2_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br i1 %.not.i89, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit91: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.ud = sitofp i64 %i.uc to double
  %22 = insertelement <2 x double> poison, double %i.ud, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x double> poison, double %8, i64 0
  %25 = insertelement <2 x double> %24, double %i.j, i64 1
  %26 = fdiv <2 x double> %23, %25                ; 2 uses
  %27 = extractelement <2 x double> %26, i64 1
  %i.ue = fadd double %27, 0.000000e+00
  %28 = extractelement <2 x double> %26, i64 0
  %i.uf = fadd double %28, %i.ue
  %i.ug = fadd double %i.uf, 1.000000e+00
  %i.uh = fdiv double %i.ug, 3.000000e+00
  %i.ui = fcmp ult double %i.uh, %4
end_hunk_2
begin_hunk_3_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %.244 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %.143, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.244.ph, %.sink.split ]
  %.041 = phi i64 [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %i.uc, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %i.gj, %.sink.split ]
  %i.wv = sdiv i64 %.244, 2
  %i.ww = sitofp i64 %.041 to double              ; 3 uses
  %29 = insertelement <2 x double> poison, double %i.ww, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x double> poison, double %8, i64 0
  %32 = insertelement <2 x double> %31, double %i.j, i64 1
  %33 = fdiv <2 x double> %30, %32                ; 2 uses
  %34 = extractelement <2 x double> %33, i64 1
  %i.wx = fadd double %34, 0.000000e+00
  %35 = extractelement <2 x double> %33, i64 0
  %i.wy = fadd double %35, %i.wx
  %i.wz = sitofp i64 %i.wv to double
  %i.xa = fsub double %i.ww, %i.wz
  %i.xb = fdiv double %i.xa, %i.ww
end_hunk_3
