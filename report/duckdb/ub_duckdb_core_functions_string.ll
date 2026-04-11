inline.NumInlined: 11293
inline.NumDeleted: 2901
begin_hunk_0_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d:bb.a

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
  %i.m = fcmp ult double %i.l, %5
  br i1 %i.m, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d:bb.a
  br i1 %.not.i, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common23BlockPatternMatchVectorEN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_EENS0_16FlaggedCharsWordERKT_T0_SJ_T1_SK_i.exit
  %i.ep = uitofp nneg i64 %i.eo to double
  %15 = insertelement <2 x double> poison, double %i.ep, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> poison, double %8, i64 0
  %18 = insertelement <2 x double> %17, double %i.j, i64 1
  %19 = fdiv <2 x double> %16, %18                ; 2 uses
  %20 = extractelement <2 x double> %19, i64 1
  %i.eq = fadd double %20, 0.000000e+00
  %21 = extractelement <2 x double> %19, i64 0
  %i.er = fadd double %21, %i.eq
  %i.es = fadd double %i.er, 1.000000e+00
  %i.et = fdiv double %i.es, 3.000000e+00
  %i.eu = fcmp ult double %i.et, %5
end_hunk_1
begin_hunk_2_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d:bb.a
  br i1 %.not.i94, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit96: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.km = sitofp i64 %.2.i to double
  %22 = insertelement <2 x double> poison, double %i.km, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = insertelement <2 x double> poison, double %8, i64 0
  %25 = insertelement <2 x double> %24, double %i.j, i64 1
  %26 = fdiv <2 x double> %23, %25                ; 2 uses
  %27 = extractelement <2 x double> %26, i64 1
  %i.kn = fadd double %27, 0.000000e+00
  %28 = extractelement <2 x double> %26, i64 0
  %i.ko = fadd double %28, %i.kn
  %i.kp = fadd double %i.ko, 1.000000e+00
  %i.kq = fdiv double %i.kp, 3.000000e+00
  %i.kr = fcmp ult double %i.kq, %5
end_hunk_2
begin_hunk_3_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EEdRKNS_6common23BlockPatternMatchVectorET_SH_T0_SI_d:bb.a
  %.264 = phi i64 [ 0, %bb.q ], [ %.163, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ 0, %bb.g ], [ %i.gn, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82 ]
  %.061 = phi i64 [ %i.eo, %bb.q ], [ %.2.i147, %_ZN19duckdb_jaro_winkler6detail21FlaggedCharsMultiwordD2Ev.exit ], [ 0, %_ZN19duckdb_jaro_winkler6detail11jaro_boundsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES5_EElT_RSD_T0_RSF_.exit ], [ 0, %bb.g ], [ %i.eo, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmT_.exit.i82 ]
  %i.na = sdiv i64 %.264, 2
  %i.nb = sitofp i64 %.061 to double              ; 3 uses
  %29 = insertelement <2 x double> poison, double %i.nb, i64 0
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x double> poison, double %8, i64 0
  %32 = insertelement <2 x double> %31, double %i.j, i64 1
  %33 = fdiv <2 x double> %30, %32                ; 2 uses
  %34 = extractelement <2 x double> %33, i64 1
  %i.nc = fadd double %34, 0.000000e+00
  %35 = extractelement <2 x double> %33, i64 0
  %i.nd = fadd double %35, %i.nc
  %i.ne = sitofp i64 %i.na to double
  %i.nf = fsub double %i.nb, %i.ne
  %i.ng = fdiv double %i.nf, %i.nb
end_hunk_3
begin_hunk_4_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %i.c)
  %i.i = sitofp i64 %.sroa.speculated.i to double
  %i.j = sitofp i64 %i.c to double                ; 4 uses
  %9 = sitofp i64 %i.f to double                  ; 4 uses
  %10 = insertelement <2 x double> poison, double %i.i, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = insertelement <2 x double> poison, double %i.j, i64 0
  %13 = insertelement <2 x double> %12, double %9, i64 1
  %14 = fdiv <2 x double> %11, %13                ; 2 uses
  %shift = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %14, %shift
  %15 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.k = fadd double %15, 1.000000e+00
  %i.l = fdiv double %i.k, 3.000000e+00
  %i.m = fcmp ult double %i.l, %4
  br i1 %i.m, label %_ZN19duckdb_jaro_winkler6detailL18jaro_length_filterElld.exit.thread, label %bb.b
end_hunk_4
begin_hunk_5_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br i1 %.not.i66, label %_ZN19duckdb_jaro_winkler6detailL25count_transpositions_wordINS_6common18PatternMatchVectorEPKcEElRKT_T0_S9_RKNS0_16FlaggedCharsWordE.exit.thread, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit: ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_wordINS_6common18PatternMatchVectorEPKcS5_EENS0_16FlaggedCharsWordERKT_T0_SA_T1_SB_i.exit
  %i.gk = uitofp nneg i64 %i.gj to double
  %16 = insertelement <2 x double> poison, double %i.gk, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = insertelement <2 x double> poison, double %9, i64 0
  %19 = insertelement <2 x double> %18, double %i.j, i64 1
  %20 = fdiv <2 x double> %17, %19                ; 2 uses
  %21 = extractelement <2 x double> %20, i64 1
  %i.gl = fadd double %21, 0.000000e+00
  %22 = extractelement <2 x double> %20, i64 0
  %i.gm = fadd double %22, %i.gl
  %i.gn = fadd double %i.gm, 1.000000e+00
  %i.go = fdiv double %i.gn, 3.000000e+00
  %i.gp = fcmp ult double %i.go, %4
end_hunk_5
begin_hunk_6_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br i1 %.not.i90, label %_ZN19duckdb_jaro_winkler6detailL26count_transpositions_blockIPKcEElRKNS_6common23BlockPatternMatchVectorET_S8_RKNS0_21FlaggedCharsMultiwordEl.exit, label %_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92

_ZN19duckdb_jaro_winkler6detailL23jaro_common_char_filterEllld.exit92: ; preds = %_ZN19duckdb_jaro_winkler6detailL18count_common_charsERKNS0_21FlaggedCharsMultiwordE.exit
  %i.mg = sitofp i64 %i.mf to double
  %23 = insertelement <2 x double> poison, double %i.mg, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x double> poison, double %9, i64 0
  %26 = insertelement <2 x double> %25, double %i.j, i64 1
  %27 = fdiv <2 x double> %24, %26                ; 2 uses
  %28 = extractelement <2 x double> %27, i64 1
  %i.mh = fadd double %28, 0.000000e+00
  %29 = extractelement <2 x double> %27, i64 0
  %i.mi = fadd double %29, %i.mh
  %i.mj = fadd double %i.mi, 1.000000e+00
  %i.mk = fdiv double %i.mj, 3.000000e+00
  %i.ml = fcmp ult double %i.mk, %4
end_hunk_6
begin_hunk_7_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %.246 = phi i64 [ 0, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %.145, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %.246.ph, %.sink.split ]
  %.043 = phi i64 [ %.0.lcssa.i, %_ZN19duckdb_jaro_winkler6common20remove_common_prefixIPKcS3_EElRT_S4_RT0_S6_.exit ], [ %i.mf, %_ZN19duckdb_jaro_winkler6common23BlockPatternMatchVectorD2Ev.exit ], [ %i.gj, %.sink.split ]
  %i.oy = sdiv i64 %.246, 2
  %i.oz = sitofp i64 %.043 to double              ; 3 uses
  %30 = insertelement <2 x double> poison, double %i.oz, i64 0
  %31 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %32 = insertelement <2 x double> poison, double %9, i64 0
  %33 = insertelement <2 x double> %32, double %i.j, i64 1
  %34 = fdiv <2 x double> %31, %33                ; 2 uses
  %35 = extractelement <2 x double> %34, i64 1
  %i.pa = fadd double %35, 0.000000e+00
  %36 = extractelement <2 x double> %34, i64 0
  %i.pb = fadd double %36, %i.pa
  %i.pc = sitofp i64 %i.oy to double
  %i.pd = fsub double %i.oz, %i.pc
  %i.pe = fdiv double %i.pd, %i.oz
end_hunk_7
begin_hunk_8_@_ZN10duckdb_fmt2v68internal7vformatIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEENS0_17basic_string_viewIS5_EENS0_17basic_format_argsINS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIS5_EEES5_EEEE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_(ptr %0, i64 %1, ptr noundef nonnull align 16 dereferenceable(112) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 7 uses
  %4 = alloca %"class.duckdb_fmt::v6::arg_formatter", align 8 ; 7 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_format_arg.355", align 16 ; 4 uses
  %6 = alloca %struct.pfs_writer, align 8         ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
end_hunk_8
begin_hunk_9_@_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %14 = insertelement <2 x ptr> poison, ptr %i.c, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %i.d, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_:bb.a
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %4, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i, ptr %i.h, align 8, !tbaa !13
  store ptr null, ptr %i.i, align 8, !tbaa !2323
  store <2 x ptr> %15, ptr %i.j, align 8, !tbaa !13
  %i.ah = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.ah, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_:bb.a
bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.ak), !inline_history !3276
  br label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit: ; preds = %bb.l, %bb.m
end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_:bb.a
  %.sroa.0.0.copyload.i.i.i55 = load ptr, ptr %i.c, align 16
  %.sroa.0.0.copyload.i7.i.i56 = load ptr, ptr %i.g, align 8, !tbaa !13
  store ptr %.sroa.0.0.copyload.i.i.i55, ptr %3, align 8
  store ptr %.sroa.0.0.copyload.i7.i.i56, ptr %i.k, align 8, !tbaa !13
  store ptr null, ptr %i.l, align 8, !tbaa !2323
  store <2 x ptr> %15, ptr %i.m, align 8, !tbaa !13
  %i.bd = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 16 dereferenceable(20) %i.e)
  store ptr %i.bd, ptr %i.c, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
end_hunk_12
begin_hunk_13_@_ZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_:bb.a
  %.169 = phi ptr [ %i.au, %bb.p ], [ %i.bf, %bb.r ], [ %i.r, %bb.k ], [ %i.r, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE7on_textEPKcSF_.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.169, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bs, %i.a
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3277

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ]
end_hunk_13
begin_hunk_14_@_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_:bb.a
._crit_edge:                                      ; preds = %bb.q, %.preheader
  %.013.lcssa = phi ptr [ %1, %.preheader ], [ %i.az, %bb.q ] ; 3 uses
  %.lcssa = phi i64 [ %i.d, %.preheader ], [ %i.bb, %bb.q ] ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !3278, !nonnull !360, !align !2376
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 16 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_:bb.a
bb.b:                                             ; preds = %._crit_edge
  %i.n = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.j), !inline_history !3276
  br label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i

_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i: ; preds = %bb.b, %._crit_edge
end_hunk_15
begin_hunk_16_@_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_:bb.a
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !3278, !nonnull !360, !align !2376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull %3) #28
end_hunk_16
begin_hunk_17_@_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_:bb.a
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %0, align 8, !tbaa !3278, !nonnull !360, !align !2376
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ah, %i.x                     ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
end_hunk_17
begin_hunk_18_@_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSN_:bb.a
bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %.sroa.0.0.copyload.i.i17, align 8, !tbaa !59
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i17, i64 noundef %i.am), !inline_history !3276
  br label %_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18

_ZN10duckdb_fmt2v68internal7reserveINS1_6bufferIcEETnNSt9enable_ifIXsr13is_contiguousIT_EE5valueEiE4typeELi0EEEPNS6_10value_typeERSt20back_insert_iteratorIS6_Em.exit.i18: ; preds = %bb.l, %bb.k
end_hunk_18
begin_hunk_19_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_:bb.a
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !3280, !nonnull !360, !align !2376 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
end_hunk_19
begin_hunk_20_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_:bb.a
  store i8 0, ptr %i.x, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.y = load ptr, ptr %2, align 8, !tbaa !3280, !nonnull !360, !align !2376
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !316
  %i.aa = load ptr, ptr %8, align 8, !tbaa !328   ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_:bb.a
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.ar = load ptr, ptr %2, align 8, !tbaa !3280, !nonnull !360, !align !2376 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE12check_arg_idEi(ptr noundef nonnull align 8 dereferenceable(20) %i.as, i32 noundef %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
end_hunk_21
begin_hunk_22_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_:bb.a
  store i8 0, ptr %i.bh, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bi = load ptr, ptr %2, align 8, !tbaa !3280, !nonnull !360, !align !2376
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !316
  %i.bk = load ptr, ptr %9, align 8, !tbaa !328   ; 2 uses
end_hunk_22
begin_hunk_23_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_:bb.a
.critedge7:                                       ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.cb, %1
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !3282

.lr.ph:                                           ; preds = %.critedge7.preheader, %.critedge7
  %i.cc = phi ptr [ %i.cb, %.critedge7 ], [ %i.bb, %.critedge7.preheader ] ; 3 uses
end_hunk_23
begin_hunk_24_@_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEPKT_SK_SK_OT0_:bb.a
  %i.ci = add i8 %i.cd, -48
  %i.cj = icmp ult i8 %i.ci, 10
  %or.cond = or i1 %i.cj, %i.ch
  br i1 %or.cond, label %.critedge7, label %..critedge_crit_edge, !llvm.loop !3282

..critedge_crit_edge:                             ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !3282

.critedge:                                        ; preds = %.critedge7, %..critedge_crit_edge, %.critedge7.preheader
  %.lcssa = phi ptr [ %i.cc, %..critedge_crit_edge ], [ %scevgep, %.critedge7.preheader ], [ %scevgep, %.critedge7 ] ; 2 uses
  %i.ck = ptrtoint ptr %.lcssa to i64
  %i.cl = sub i64 %i.ck, %i.a
  %i.cm = load ptr, ptr %2, align 8, !tbaa !3280, !nonnull !360, !align !2376 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  call void @_ZN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argENS0_17basic_string_viewIcEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg.355") align 16 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr nonnull %0, i64 %i.cl)
end_hunk_24
begin_hunk_25_@_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE15on_format_specsEPKcSF_:bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 16, !tbaa !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13
  tail call void %.sroa.2.0.copyload.i(ptr noundef %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.j), !inline_history !3283
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2286
  br label %bb.h

end_hunk_25
begin_hunk_26_@_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE15on_format_specsEPKcSF_:bb.a
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.j, ptr %.sroa.6.8..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %4, ptr %i.u, align 8, !tbaa !3284
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.m, ptr %i.v, align 8, !tbaa !3286
  %i.w = call noundef ptr @_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_(ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 4 uses
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %bb.d, label %bb.c
end_hunk_26
begin_hunk_27_@_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEE15on_format_specsEPKcSF_:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %3, ptr %i.am, align 8, !tbaa !2323
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.j, ptr %i.an, align 8, !tbaa !3288
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !3290
  %i.ap = call ptr @_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 16 dereferenceable(20) %i.k)
  store ptr %i.ap, ptr %i.j, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
end_hunk_27
begin_hunk_28_@_ZN10duckdb_fmt2v616visit_format_argINS0_13arg_formatterINS0_12buffer_rangeIcEEEENS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3290
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3315, !nonnull !360, !align !625
  tail call void %.sroa.2.0.copyload(ptr noundef %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(20) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %i.bh), !inline_history !3316
end_hunk_28
begin_hunk_29_@_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEEEEiRPKT_SL_OT0_:bb.a
  store i8 0, ptr %i.w, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.x = load ptr, ptr %2, align 8, !tbaa !3280, !nonnull !360, !align !2376
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !316
  %i.z = load ptr, ptr %4, align 8, !tbaa !328    ; 2 uses
end_hunk_29
begin_hunk_30_@_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_:bb.a
bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !3286
  %i.ax = add i32 %i.aw, -1
  %i.ay = icmp ult i32 %i.ax, 12
  br i1 %i.ay, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_hashEv.exit, label %.noexc.i.i.i
end_hunk_30
begin_hunk_31_@_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_:bb.a
bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !3286
  %i.bv = add i32 %i.bu, -1
  %i.bw = icmp ult i32 %i.bv, 12
  br i1 %i.bw, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE7on_zeroEv.exit, label %.noexc.i.i.i74
end_hunk_31
begin_hunk_32_@_ZN10duckdb_fmt2v68internal11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_:bb.a
.split3.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !3286
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp ult i32 %i.ae, 12
  br i1 %i.af, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit.i, label %.noexc.i.i.i
end_hunk_32
begin_hunk_33_@_ZN10duckdb_fmt2v68internal15parse_precisionIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEPKT_SJ_SJ_OT0_:bb.a
  %.2 = phi ptr [ %.5, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEEEiRPKT_SJ_OT0_.exit ], [ %i.ao, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !3286 ; 2 uses
  %i.bo = add i32 %i.bn, -1
  %i.bp = icmp ult i32 %i.bo, 9
  %i.bq = icmp eq i32 %i.bn, 15
end_hunk_33
begin_hunk_34_@_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE10check_signEv:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3286 ; 2 uses
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = icmp ult i32 %i.e, 12
  br i1 %i.f, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit, label %.noexc.i.i
end_hunk_34
begin_hunk_35_@_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE10check_signEv:bb.a
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !3286 ; 2 uses
  %.pre = add i32 %.pr, -1
  br label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEE24require_numeric_argumentEv.exit

end_hunk_35
begin_hunk_36_@llvm.ctpop.v2i64
!3273 = distinct !{!3273, !"_ZN10duckdb_fmt2v69to_stringIcLm500EEENSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEERKNS0_19basic_memory_bufferIS4_XT0_ES7_EE"}
!3274 = !{!3275, !3275, i64 0}
!3275 = !{!"p1 _ZTSN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEEEE", !10, i64 0}
!3276 = distinct !{null, null, null, null}
!3277 = distinct !{!3277, !19}
!3278 = !{!3279, !3275, i64 0}
!3279 = !{!"_ZTSZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEvNS0_17basic_string_viewIT0_EEOT1_E10pfs_writer", !3275, i64 0}
!3280 = !{!3281, !3275, i64 0}
!3281 = !{!"_ZTSN10duckdb_fmt2v68internal10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS0_12buffer_rangeIcEEEEcNS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEcEE", !3275, i64 0}
!3282 = distinct !{!3282, !19}
!3283 = distinct !{null, null, null}
!3284 = !{!3285, !3285, i64 0}
!3285 = !{!"p1 _ZTSN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEE", !10, i64 0}
!3286 = !{!3287, !362, i64 8}
!3287 = !{!"_ZTSN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEE", !3285, i64 0, !362, i64 8}
!3288 = !{!3289, !3289, i64 0}
!3289 = !{!"p1 _ZTSN10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcEE", !10, i64 0}
!3290 = !{!3291, !3292, i64 32}
!3291 = !{!"_ZTSN10duckdb_fmt2v613arg_formatterINS0_12buffer_rangeIcEEEE", !2324, i64 0, !3289, i64 24, !3292, i64 32}
!3292 = !{!"p1 _ZTSN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEEE", !10, i64 0}
!3293 = !{!3294}
!3294 = distinct !{!3294, !3295, !"_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi: argument 0"}
!3295 = distinct !{!3295, !"_ZNK10duckdb_fmt2v620basic_format_contextISt20back_insert_iteratorINS0_8internal6bufferIcEEEcE3argEi"}
end_hunk_36
begin_hunk_37_@llvm.ctpop.v2i64
!3312 = !{!3313}
!3313 = distinct !{!3313, !3314, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!3314 = distinct !{!3314, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!3315 = !{!3291, !3289, i64 24}
!3316 = distinct !{null, null}
!3317 = distinct !{null, null, null, null, null, null}
!3318 = distinct !{!3318, !19}
end_hunk_37
begin_hunk_38_@llvm.ctpop.v2i64
!3344 = distinct !{!3344, !19}
!3345 = !{!3346, !2329, i64 0}
!3346 = !{!"_ZTSN10duckdb_fmt2v68internal12specs_setterIcEE", !2329, i64 0}
!3347 = !{!3287, !3285, i64 0}
!3348 = distinct !{!3348, !19}
!3349 = !{!3350, !3350, i64 0}
!3350 = !{!"p1 _ZTSN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEE", !10, i64 0}
!3351 = !{!3352, !3350, i64 0}
!3352 = !{!"_ZTSN10duckdb_fmt2v68internal13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEEEEcEE", !3350, i64 0}
!3353 = !{!3354, !3289, i64 16}
!3354 = !{!"_ZTSN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEEE", !3346, i64 0, !3292, i64 8, !3289, i64 16}
!3355 = !{!3356}
!3356 = distinct !{!3356, !3357, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS1_7auto_idE: argument 0"}
!3357 = distinct !{!3357, !"_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorINS1_6bufferIcEEEcEEE7get_argENS1_7auto_idE"}
!3358 = !{!3354, !3292, i64 8}
!3359 = !{!3360, !3360, i64 0}
!3360 = !{!"p1 _ZTSN10duckdb_fmt2v68internal13error_handlerE", !10, i64 0}
!3361 = !{!3362}
end_hunk_38
