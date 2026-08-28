Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.00?download=true
inline.NumInlined: 482
inline.NumDeleted: 291
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB2f_3map3MapINtNtNtB2j_3ops5range5RangejENCNvB13_14mip_map_levels0EIB2b_IB37_B3n_NCNvNvNvMs0_NtB13_6headerNtB4G_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB37_B4l_NCNCB4y_00ENCB4y_0ENCB4A_0EE9from_iterB15_:bb.a
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i, label %.loopexit9

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 521
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  br label %bb.d

bb.d:                                             ; preds = %.noexc6, %.lr.ph.i.i
  %i.aq = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !647, !noalias !648, !noundef !4 ; 5 uses
  %i.ar = icmp ult i64 %i.aq, 192153584101141163
  call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %i.f, align 8, !range !13, !alias.scope !647, !noalias !648, !noundef !4
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i, label %.noexc5

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  %i.au = load i64, ptr %i.c, align 8, !range !53, !alias.scope !659, !noalias !660, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.au, 2
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  br i1 %.not.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.av = load i64, ptr %i.w, align 8, !range !69, !alias.scope !681, !noalias !682, !noundef !4
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %bb.f, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !684, !noalias !689, !noundef !4
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !693, !noalias !694, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.ax = load i64, ptr %i.z, align 8, !range !69, !alias.scope !681, !noalias !682, !noundef !4
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.g, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i

bb.g:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i
  %.val.i60.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !695, !noalias !700, !noundef !4
  %.val3.i61.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !704, !noalias !705, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i.i.i, i64 %.val.i60.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i.i.i, %bb.g ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.az = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i)
  %i.ba = trunc nuw i64 %i.au to i1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !706, !noalias !709, !noundef !4
  %.val58.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !711, !noalias !712, !noundef !4
  %.not.i.i.i.i.i.i = icmp ugt i64 %.val58.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i.i
  %i.bb = add i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i ; 2 uses
  %i.bc = icmp uge i64 %i.bb, %.sroa.7.0.i.i.i.i.i.i
  %..i.i.i.i.i.i = zext i1 %i.bc to i64
  store i64 %..i.i.i.i.i.i, ptr %.sroa.6.i.i, align 8, !alias.scope !713, !noalias !714
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sink78.i.i.i.i.sroa.phi.i.i = phi ptr [ %.sroa.9.i.i, %bb.i ], [ %.sroa.6.i.i, %bb.h ]
  %.sink.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.i ], [ 0, %bb.h ]
  store i64 %.sink.i.i.i.i.i.i, ptr %.sink78.i.i.i.i.sroa.phi.i.i, align 8, !alias.scope !713, !noalias !714
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i.i = load i64, ptr %.sroa.6.i.i, align 8, !range !69, !noalias !715
  %.sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i.i = load i64, ptr %.sroa.9.i.i, align 8, !noalias !715
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i
  %.sroa.9.0..sroa.9.0..sroa.9.16..i.i = phi i64 [ %.sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i ]
  %.sroa.6.0..sroa.6.0..sroa.6.8..i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i ], [ 1, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.az, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.689.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.bd = load i64, ptr %i.ae, align 8, !range !53, !alias.scope !659, !noalias !660, !noundef !4 ; 2 uses
  %.not53.i.i = icmp eq i64 %i.bd, 2
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.experimental.noalias.scope.decl(metadata !719)
  br i1 %.not53.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.experimental.noalias.scope.decl(metadata !729)
  call void @llvm.experimental.noalias.scope.decl(metadata !731)
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.be = load i64, ptr %i.af, align 8, !range !69, !alias.scope !736, !noalias !737, !noundef !4
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %bb.k, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i.i.i76.i.i = load i64, ptr %i.ag, align 8, !alias.scope !739, !noalias !744, !noundef !4
  %.val3.i.i.i.i.i77.i.i = load i64, ptr %i.ah, align 8, !alias.scope !748, !noalias !749, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i78.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i77.i.i, i64 %.val.i.i.i.i.i76.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i.i.i63.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i78.i.i, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.bg = load i64, ptr %i.ai, align 8, !range !69, !alias.scope !736, !noalias !737, !noundef !4
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i
  %.val.i60.i.i.i.i73.i.i = load i64, ptr %i.aj, align 8, !alias.scope !750, !noalias !755, !noundef !4
  %.val3.i61.i.i.i.i74.i.i = load i64, ptr %i.ak, align 8, !alias.scope !759, !noalias !760, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i75.i.i = call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i74.i.i, i64 %.val.i60.i.i.i.i73.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i: ; preds = %bb.l, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i
  %.sroa.8.0.i.i.i.i65.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i75.i.i, %bb.l ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i.i ] ; 2 uses
  %i.bi = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i63.i.i, i64 %.sroa.8.0.i.i.i.i65.i.i)
  %i.bj = trunc nuw i64 %i.bd to i1
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i
  %.val.i.i.i.i70.i.i = load i64, ptr %i.al, align 8, !alias.scope !761, !noalias !764, !noundef !4
  %.val58.i.i.i.i71.i.i = load i64, ptr %i.am, align 8, !alias.scope !766, !noalias !767, !noundef !4
  %.not.i.i.i.i72.i.i = icmp ugt i64 %.val58.i.i.i.i71.i.i, %.val.i.i.i.i70.i.i
  br i1 %.not.i.i.i.i72.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i.i
  %i.bk = add i64 %.sroa.8.0.i.i.i.i65.i.i, %.sroa.7.0.i.i.i.i63.i.i ; 2 uses
  %i.bl = icmp uge i64 %i.bk, %.sroa.7.0.i.i.i.i63.i.i
  %..i.i.i.i66.i.i = zext i1 %i.bl to i64
  store i64 %..i.i.i.i66.i.i, ptr %.sroa.689.i.i, align 8, !alias.scope !768, !noalias !769
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i: ; preds = %bb.n, %bb.m
  %.sink78.i.i.i.i68.sroa.phi.i.i = phi ptr [ %.sroa.10.i.i, %bb.n ], [ %.sroa.689.i.i, %bb.m ]
  %.sink.i.i.i.i69.i.i = phi i64 [ %i.bk, %bb.n ], [ 0, %bb.m ]
  store i64 %.sink.i.i.i.i69.i.i, ptr %.sink78.i.i.i.i68.sroa.phi.i.i, align 8, !alias.scope !768, !noalias !769
  %i.bm = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.1.i.i, i64 %i.bi)
  %.sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i.i = load i64, ptr %.sroa.689.i.i, align 8, !range !69, !noalias !715
  %.sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i.i = load i64, ptr %.sroa.10.i.i, align 8, !noalias !715
  %i.bn = freeze i64 %.sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i.i
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i
  %.sroa.10.0..sroa.10.0..sroa.10.16..i.i = phi i64 [ %.sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i ]
  %.sroa.689.0..sroa.689.0..sroa.689.8..i.i = phi i64 [ %i.bn, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i ], [ 1, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i ] ; 2 uses
  %.sroa.088.1.i.i = phi i64 [ %i.bm, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i.i ], [ %.sroa.0.1.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  %i.bo = load i8, ptr %i.an, align 1, !range !770, !alias.scope !659, !noalias !660, !noundef !4
  %.not54.i.i = icmp eq i8 %i.bo, 2
  br i1 %.not54.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i
  %.val.i.i = load i64, ptr %i.ao, align 8, !alias.scope !771, !noalias !774, !noundef !4
  %.val61.i.i = load i64, ptr %i.ap, align 8, !alias.scope !776, !noalias !777, !noundef !4
  %i.bp = icmp ule i64 %.val61.i.i, %.val.i.i
  %i.bq = trunc nuw i64 %.sroa.6.0..sroa.6.0..sroa.6.8..i.i to i1
  %i.br = trunc i64 %.sroa.689.0..sroa.689.0..sroa.689.8..i.i to i1
  %op.rdx = and i1 %i.bp, %i.br
  %op.rdx12 = select i1 %op.rdx, i1 %i.bq, i1 false
  br i1 %op.rdx12, label %bb.q, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

bb.p:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i.i
  %i.bs = and i64 %.sroa.689.0..sroa.689.0..sroa.689.8..i.i, %.sroa.6.0..sroa.6.0..sroa.6.8..i.i
  %or.cond55.i.i = trunc nuw i64 %i.bs to i1
  br i1 %or.cond55.i.i, label %bb.q, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bt = add i64 %.sroa.10.0..sroa.10.0..sroa.10.16..i.i, %.sroa.9.0..sroa.9.0..sroa.9.16..i.i
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit: ; preds = %bb.o, %bb.p, %bb.q
  %.sink100.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.q ], [ %.sroa.5, %bb.p ], [ %.sroa.5, %bb.o ]
  %.sink.i.i = phi i64 [ %i.bt, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i, ptr %.sink100.i.i.sroa.phi, align 8, !alias.scope !660, !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bu = call i64 @llvm.uadd.sat.i64(i64 %.sroa.088.1.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.aq, i64 noundef range(i64 1, 0) %i.bu, i64 noundef 8, i64 noundef 48)
          to label %.noexc5 unwind label %.loopexit

.noexc5:                                          ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit, %bb.d
  %i.bv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !647, !noalias !648, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !648
  %i.bx = add nuw nsw i64 %i.aq, 1
  store i64 %i.bx, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !647, !noalias !648
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %i.c) #19
          to label %.noexc6 unwind label %.loopexit

.noexc6:                                          ; preds = %.noexc5
  %i.by = load i64, ptr %i.a, align 8, !range !69, !noalias !645, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.d, label %.loopexit9

bb.r:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cb, align 8
  br label %bb.s

bb.s:                                             ; preds = %.loopexit9, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_.exit, %.noexc5
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit unwind label %bb.u

.loopexit9:                                       ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit: ; preds = %bb.t
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB2f_3map3MapINtNtNtB2j_3ops5range5RangejENCNvNvNvMs0_NtB13_6headerNtB42_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB37_B36_NCNCB3U_00ENCB3U_0EE9from_iterB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [232 x i8], align 8               ; 14 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.d = alloca [56 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef align 8 dereferenceable(232) %1) #19
  %i.f = load i64, ptr %i.d, align 8, !range !69, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i64, ptr %i.i, align 8, !range !69, !alias.scope !788, !noalias !789, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !790, !noalias !795, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !799, !noalias !800, !noundef !4
  %spec.select.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i, i64 %.val.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = load i64, ptr %i.n, align 8, !range !69, !alias.scope !788, !noalias !789, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i60.i.i = load i64, ptr %i.q, align 8, !alias.scope !801, !noalias !806, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3.i61.i.i = load i64, ptr %i.r, align 8, !alias.scope !810, !noalias !811, !noundef !4
  %spec.select.i.i.i.i.i62.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i, i64 %.val.i60.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i: ; preds = %bb.d, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i, %bb.d ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i ] ; 2 uses
  %i.s = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i, i64 %.sroa.8.0.i.i)
  %i.t = load i64, ptr %1, align 8, !range !69, !alias.scope !788, !noalias !789, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.v, align 8, !alias.scope !812, !noalias !815, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val58.i.i = load i64, ptr %i.w, align 8, !alias.scope !817, !noalias !818, !noundef !4
  %.not.i.i = icmp ugt i64 %.val58.i.i, %.val.i.i
  br i1 %.not.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i
  %i.x = add i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit: ; preds = %bb.e, %bb.f
  %.sink78.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.x, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink78.i.i.sroa.phi, align 8, !alias.scope !789, !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %i.s, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.y, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
  %i.z = load i64, ptr %i.b, align 8, !range !69, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !70, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.g, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit, !prof !14

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit
  %i.ae = load i64, ptr %i.ad, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #18
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp ule i64 %..i, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  store i64 %i.ac, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.c, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !829
  invoke fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.c) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %i.ah = load i64, ptr %i.a, align 8, !range !69, !noalias !830, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i, label %.loopexit9

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 168
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtB2f_3map3MapINtNtNtB2j_3ops5range5RangejENCNvNvNvMs0_NtB13_6headerNtB42_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB37_B36_NCNCB3U_00ENCB3U_0EE9from_iterB15_:bb.a
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.h, label %.loopexit9

bb.n:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bl, align 8
  br label %bb.o

bb.o:                                             ; preds = %.loopexit9, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB22_.exit.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesE7reserveBI_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsdsTQD3x2eOp_3exr.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit unwind label %bb.q

.loopexit9:                                       ; preds = %.noexc6, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdsTQD3x2eOp_3exr4meta11TileIndicesEEB1c_.exit: ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB7_3VectEINtB5_10SpecExtendtINtNtB7_9into_iter8IntoItertEE11spec_extendCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertE8as_sliceCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !876, !noundef !4 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !13, !alias.scope !876, !noundef !4
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i, !prof !14

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 2, i64 noundef 2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !881, !noundef !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, 4611686018427387904
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 4611686018427387904
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !881, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.m
  %i.q = shl nuw nsw i64 %i.d, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.p, ptr readonly align 2 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !881
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.c, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !881
  %i.t = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VectE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoItertENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoItertEECsdsTQD3x2eOp_3exr.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXs1_NtCslM68MWqqr2K_4lebe2ioINtNtCs4wP2HXfJTCR_5alloc3vec3VechEINtB5_11WriteEndiantE22write_as_little_endianCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i16, ptr %1, align 2, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !882, !noalias !893, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !882, !noalias !893, !noundef !4
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i.i.i.i, label %_RNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsdsTQD3x2eOp_3exr.exit, !prof !14

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i.i.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !893
  %i.g = load i64, ptr %i.b, align 8, !alias.scope !896, !noalias !893, !noundef !4
  br label %_RNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsdsTQD3x2eOp_3exr.exit

_RNvXs7_NtNtCs4wP2HXfJTCR_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsdsTQD3x2eOp_3exr.exit: ; preds = %bb.a, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i.i.i.i
  %.sink1 = phi i64 [ %i.g, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsdsTQD3x2eOp_3exr.exit.thread.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp sgt i64 %.sink1, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !896, !noalias !893, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink1
  store i16 %i.a, ptr %i.k, align 1
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !896, !noalias !893
  %i.l = add i64 %.pre.i.i.i.i, 2
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !896, !noalias !893
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1_NtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCsj6eKBz9Db1c_4core2io6cursor18WriteThroughCursor9write_allCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io6cursor13vec_write_allNtNtB6_5alloc6GlobalECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = extractvalue { i64, ptr } %i.b, 1
  %.sroa.0.0 = select i1 %i.d, ptr %i.e, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB27_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(608) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [232 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !905
  %i.t = load i64, ptr %i.d, align 8, !range !53, !alias.scope !907, !noalias !908, !noundef !4
  %.not.i.i = icmp eq i64 %i.t, 2
  br i1 %.not.i.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.d) #19, !noalias !908
  %i.u = load i64, ptr %i.b, align 8, !range !69, !noalias !905, !noundef !4
  %2 = trunc nuw i64 %i.u to i1
  br i1 %2, label %bb.d, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i: ; preds = %bb.c
  store i64 2, ptr %i.d, align 8, !alias.scope !907, !noalias !908
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx6.i, i64 48, i1 false), !noalias !900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !905
  store i64 1, ptr %0, align 8, !alias.scope !897, !noalias !900
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !909
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.v = load i64, ptr %1, align 8, !range !53, !alias.scope !913, !noalias !914, !noundef !4 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.v, 2
  br i1 %.not.i1.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %i.w = trunc nuw i64 %i.v to i1
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %.promoted24.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !922, !noalias !927 ; 4 uses
  %.promoted25.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %.promoted26.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !922, !noalias !927 ; 4 uses
  br i1 %i.w, label %.split.us.preheader.i.i.i.i.i.i, label %.split.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i:                  ; preds = %bb.e
  %i.x = load i64, ptr %i.j, align 8, !alias.scope !922, !noalias !927 ; 2 uses
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted26.i.i.i.i.i.i, i64 %i.x) ; 2 uses
  %i.y = trunc nuw i64 %.promoted.i.i.i.i.i.i to i1
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.split.us.preheader.i.i.i.i.i.i
  %i.z = icmp ult i64 %.promoted24.i.i.i.i.i.i, %.promoted25.i.i.i.i.i.i
  br i1 %i.z, label %.split28.us.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %i.e, align 8, !alias.scope !932, !noalias !935
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.us.preheader.i.i.i.i.i.i
  %exitcond.peel.not.not.i.i.i.i.i.i = icmp ult i64 %.promoted26.i.i.i.i.i.i, %i.x
  br i1 %exitcond.peel.not.not.i.i.i.i.i.i, label %.split.us.peel.next.i.i.i.i.i.i, label %.split30.us.i.i.i.i.i.i

.split.us.peel.next.i.i.i.i.i.i:                  ; preds = %bb.h
  store i64 0, ptr %i.f, align 8, !alias.scope !922, !noalias !927
  store i64 %.val.i.i.i.i.i.i.i.i, ptr %i.g, align 8, !alias.scope !922, !noalias !927
  %.not.i.i.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.split.us.peel.next.i.split.us.preheader.i.i.i.i.i, label %.split.us.peel.next.i.split.i.i.i.i.i

.split.us.peel.next.i.split.us.preheader.i.i.i.i.i: ; preds = %.split.us.peel.next.i.i.i.i.i.i
  %i.aa = add i64 %umax.i.i.i.i.i.i, -1
  store i64 %umax.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !937, !noalias !946
  store i64 0, ptr %i.e, align 8, !alias.scope !922, !noalias !927
  store i64 %i.aa, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !922, !noalias !927
  br label %.split30.us.i.i.i.i.i.i

.split.us.peel.next.i.split.i.i.i.i.i:            ; preds = %.split.us.peel.next.i.i.i.i.i.i
  %storemerge35.i.i.i.i.i.i = add nuw i64 %.promoted26.i.i.i.i.i.i, 1
  store i64 %storemerge35.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !937, !noalias !946
  store i64 1, ptr %i.e, align 8, !alias.scope !922, !noalias !927
  store i64 %.promoted26.i.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !922, !noalias !927
  br label %.split28.us.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.ab = trunc nuw i64 %.promoted.i.i.i.i.i.i to i1
  br i1 %i.ab, label %bb.i, label %.split30.us.i.i.i.i.i.i

bb.i:                                             ; preds = %.split.i.i.i.i.i.i
  %i.ac = icmp ult i64 %.promoted24.i.i.i.i.i.i, %.promoted25.i.i.i.i.i.i
  br i1 %i.ac, label %.split28.us.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.e, align 8, !alias.scope !932, !noalias !935
  br label %.split30.us.i.i.i.i.i.i

.split28.us.i.i.i.i.i.i:                          ; preds = %bb.i, %.split.us.peel.next.i.split.i.i.i.i.i, %bb.f
  %.us-phi.i.i.i.i.i.i = phi i64 [ %.promoted24.i.i.i.i.i.i, %bb.i ], [ %.promoted24.i.i.i.i.i.i, %bb.f ], [ 0, %.split.us.peel.next.i.split.i.i.i.i.i ] ; 2 uses
  %i.ad = add nuw i64 %.us-phi.i.i.i.i.i.i, 1
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !949, !noalias !958
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i

.split30.us.i.i.i.i.i.i:                          ; preds = %bb.j, %.split.i.i.i.i.i.i, %.split.us.peel.next.i.split.us.preheader.i.i.i.i.i, %bb.h
  %i.ae = load i64, ptr %i.k, align 8, !range !69, !alias.scope !961, !noalias !964, !noundef !4
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i

bb.k:                                             ; preds = %.split30.us.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.ag = load i64, ptr %i.l, align 8, !alias.scope !971, !noalias !980, !noundef !4 ; 3 uses
  %i.ah = load i64, ptr %i.m, align 8, !alias.scope !983, !noalias !984, !noundef !4
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i, label %bb.l

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i: ; preds = %bb.k
  %i.aj = add nuw i64 %i.ag, 1
  store i64 %i.aj, ptr %i.l, align 8, !alias.scope !985, !noalias !986
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.k, align 8, !alias.scope !961, !noalias !964
  br label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i, %.split28.us.i.i.i.i.i.i
  %.sroa.9.0.ph.in.i.i.i.i = phi ptr [ %i.n, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i, %.split28.us.i.i.i.i.i.i ]
  %.sroa.6.0.ph.i.i.i.i = phi i64 [ %i.ag, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtBY_8function6FnOnceTQB5_EE9call_onceB1t_.exit.i5.i.i.i.i.i.i ], [ %.us-phi.i.i.i.i.i.i, %.split28.us.i.i.i.i.i.i ] ; 2 uses
  %.sroa.9.0.ph.i.i.i.i = load i64, ptr %.sroa.9.0.ph.in.i.i.i.i, align 8, !alias.scope !922, !noalias !927, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.ak = load i8, ptr %i.p, align 8, !range !990, !alias.scope !991, !noalias !992, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  %i.am = load i64, ptr %i.o, align 8, !alias.scope !991, !noalias !992, !noundef !4
  %i.an = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.al, i64 noundef %i.am, i64 noundef %.sroa.6.0.ph.i.i.i.i), !noalias !994
  %i.ao = load i64, ptr %i.q, align 8, !alias.scope !991, !noalias !992, !noundef !4
  %i.ap = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.al, i64 noundef %i.ao, i64 noundef %.sroa.9.0.ph.i.i.i.i), !noalias !994
  %.val.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !995, !noalias !996, !noundef !4
  %.val1.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !995, !noalias !996, !noundef !4
  call void @_RNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB7_6Header25blocks_increasing_y_order8tiles_of(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.c, i64 noundef %i.an, i64 noundef %i.ap, i64 noundef %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %.sroa.6.0.ph.i.i.i.i, i64 noundef %.sroa.9.0.ph.i.i.i.i), !noalias !997
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !909
  %.not.i = icmp eq i64 %.pr.i, 2
  br i1 %.not.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !909
  br label %bb.b

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.i, %.split30.us.i.i.i.i.i.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i, %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1003
  %i.ar = load i64, ptr %i.aq, align 8, !range !53, !alias.scope !1004, !noalias !1005, !noundef !4
  %.not.i2.i = icmp eq i64 %i.ar, 2
  br i1 %.not.i2.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.aq) #19, !noalias !1005
  %i.as = load i64, ptr %i.a, align 8, !range !69, !noalias !1003, !noundef !4
  %3 = trunc nuw i64 %i.as to i1
  br i1 %3, label %bb.p, label %bb.q

bb.o:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBZ_B1G_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2k_0ENCNvB2m_14rip_map_levels0ENCNvMs0_NtB2m_6headerNtB3L_6Header25blocks_increasing_y_orders_0EEINtB5_8FuseImplBY_E4nextB2o_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !1005, !noalias !1004
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.p:                                             ; preds = %bb.q, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1004
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.q:                                             ; preds = %bb.n
  store i64 2, ptr %i.aq, align 8, !alias.scope !1004, !noalias !1005
  br label %bb.p

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !909
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator4nextB2t_.exit: ; preds = %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapIBR_INtNtNtBb_3ops5range5RangejEIB15_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB23_0ENCNvB25_14rip_map_levels0EIBR_IB15_B1o_NCNvNvNvMs0_NtB25_6headerNtB3L_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B3q_NCNCB3D_00ENCB3D_0ENCB3F_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB27_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6103.i = alloca i64, align 8             ; 6 uses
  %.sroa.9104.i = alloca i64, align 8             ; 5 uses
  %.sroa.6100.i = alloca i64, align 8             ; 5 uses
  %.sroa.10.i = alloca i64, align 8               ; 4 uses
  %.sroa.6.i = alloca i64, align 8                ; 5 uses
  %.sroa.9.i = alloca i64, align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i64, ptr %i.a, align 8, !range !53, !alias.scope !1009, !noalias !1006, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  br i1 %.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load i64, ptr %i.c, align 8, !range !69, !alias.scope !1031, !noalias !1032, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1034, !noalias !1039, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val3.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !1043, !noalias !1044, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.i = load i64, ptr %i.h, align 8, !range !69, !alias.scope !1031, !noalias !1032, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val.i60.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1045, !noalias !1050, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320
  %.val3.i61.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1054, !noalias !1055, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i.i, i64 %.val.i60.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i: ; preds = %bb.d, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i.i, %bb.d ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i ] ; 2 uses
  %i.m = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i)
  %i.n = trunc nuw i64 %i.b to i1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1056, !noalias !1059, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val58.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !1061, !noalias !1062, !noundef !4
  %.not.i.i.i.i.i = icmp ugt i64 %.val58.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.q = add i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.r = icmp uge i64 %i.q, %.sroa.7.0.i.i.i.i.i
  %..i.i.i.i.i = zext i1 %i.r to i64
  store i64 %..i.i.i.i.i, ptr %.sroa.6.i, align 8, !alias.scope !1063, !noalias !1064
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink78.i.i.i.i.sroa.phi.i = phi ptr [ %.sroa.9.i, %bb.f ], [ %.sroa.6.i, %bb.e ]
  %.sink.i.i.i.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink78.i.i.i.i.sroa.phi.i, align 8, !alias.scope !1063, !noalias !1064
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i = load i64, ptr %.sroa.6.i, align 8, !range !69, !noalias !1065
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i = load i64, ptr %.sroa.9.i, align 8, !noalias !1065
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, %bb.a
  %.sroa.9.0..sroa.9.0..sroa.9.16..i = phi i64 [ %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0..sroa.6.0..sroa.6.8..i = phi i64 [ %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 1, %bb.a ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.m, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6100.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.t = load i64, ptr %i.s, align 8, !range !53, !alias.scope !1009, !noalias !1006, !noundef !4 ; 2 uses
  %.not53.i = icmp eq i64 %i.t, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  br i1 %.not53.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.v = load i64, ptr %i.u, align 8, !range !69, !alias.scope !1086, !noalias !1087, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val.i.i.i.i.i75.i = load i64, ptr %i.x, align 8, !alias.scope !1089, !noalias !1094, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 480
  %.val3.i.i.i.i.i76.i = load i64, ptr %i.y, align 8, !alias.scope !1098, !noalias !1099, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i77.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i76.i, i64 %.val.i.i.i.i.i75.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i: ; preds = %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i62.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i77.i, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.aa = load i64, ptr %i.z, align 8, !range !69, !alias.scope !1086, !noalias !1087, !noundef !4
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i

bb.i:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.val.i60.i.i.i.i72.i = load i64, ptr %i.ac, align 8, !alias.scope !1100, !noalias !1105, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 552
  %.val3.i61.i.i.i.i73.i = load i64, ptr %i.ad, align 8, !alias.scope !1109, !noalias !1110, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i74.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i73.i, i64 %.val.i60.i.i.i.i72.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i: ; preds = %bb.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i
  %.sroa.8.0.i.i.i.i64.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i74.i, %bb.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i61.i ] ; 2 uses
  %i.ae = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i62.i, i64 %.sroa.8.0.i.i.i.i64.i)
  %i.af = trunc nuw i64 %i.t to i1
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.val.i.i.i.i69.i = load i64, ptr %i.ag, align 8, !alias.scope !1111, !noalias !1114, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val58.i.i.i.i70.i = load i64, ptr %i.ah, align 8, !alias.scope !1116, !noalias !1117, !noundef !4
  %.not.i.i.i.i71.i = icmp ugt i64 %.val58.i.i.i.i70.i, %.val.i.i.i.i69.i
  br i1 %.not.i.i.i.i71.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i63.i
  %i.ai = add i64 %.sroa.8.0.i.i.i.i64.i, %.sroa.7.0.i.i.i.i62.i ; 2 uses
  %i.aj = icmp uge i64 %i.ai, %.sroa.7.0.i.i.i.i62.i
  %..i.i.i.i65.i = zext i1 %i.aj to i64
  store i64 %..i.i.i.i65.i, ptr %.sroa.6100.i, align 8, !alias.scope !1118, !noalias !1119
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i: ; preds = %bb.k, %bb.j
  %.sink78.i.i.i.i67.sroa.phi.i = phi ptr [ %.sroa.10.i, %bb.k ], [ %.sroa.6100.i, %bb.j ]
  %.sink.i.i.i.i68.i = phi i64 [ %i.ai, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i.i.i68.i, ptr %.sink78.i.i.i.i67.sroa.phi.i, align 8, !alias.scope !1118, !noalias !1119
  %i.ak = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.1.i, i64 %i.ae)
  %.sroa.6100.i.0..sroa.6100.i.0..sroa.6100.i.0..sroa.6100.0..sroa.6100.0..sroa.6100.8..pre.i = load i64, ptr %.sroa.6100.i, align 8, !range !69, !noalias !1065
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i = load i64, ptr %.sroa.10.i, align 8, !noalias !1065
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  %.sroa.10.0..sroa.10.0..sroa.10.16..i = phi i64 [ %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ]
  %.sroa.6100.0..sroa.6100.0..sroa.6100.8..i = phi i64 [ %.sroa.6100.i.0..sroa.6100.i.0..sroa.6100.i.0..sroa.6100.0..sroa.6100.0..sroa.6100.8..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i ], [ 1, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  %.sroa.099.1.i = phi i64 [ %i.ak, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i66.i ], [ %.sroa.0.1.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6100.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6103.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9104.i)
  %i.al = load i64, ptr %1, align 8, !range !53, !alias.scope !1009, !noalias !1006, !noundef !4 ; 2 uses
  %.not54.i = icmp eq i64 %i.al, 2
  br i1 %.not54.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !range !69, !alias.scope !1140, !noalias !1141, !noundef !4
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.m, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i.i89.i = load i64, ptr %i.ap, align 8, !alias.scope !1142, !noalias !1147, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i.i.i.i.i90.i = load i64, ptr %i.aq, align 8, !alias.scope !1151, !noalias !1152, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i90.i, i64 %.val.i.i.i.i.i89.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.7.0.i.i.i.i79.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !range !69, !alias.scope !1140, !noalias !1141, !noundef !4
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.n, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i

bb.n:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i60.i.i.i.i87.i = load i64, ptr %i.au, align 8, !alias.scope !1153, !noalias !1158, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val3.i61.i.i.i.i88.i = load i64, ptr %i.av, align 8, !alias.scope !1162, !noalias !1163, !noundef !4
  %spec.select.i.i.i.i62.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i88.i, i64 %.val.i60.i.i.i.i87.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i: ; preds = %bb.n, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i80.i = phi i64 [ %spec.select.i.i.i.i62.i.i.i.i.i, %bb.n ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit.i.i.i.i.i ] ; 2 uses
  %i.aw = trunc nuw i64 %i.al to i1
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i84.i = load i64, ptr %i.ax, align 8, !alias.scope !1164, !noalias !1167, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val58.i.i.i.i85.i = load i64, ptr %i.ay, align 8, !alias.scope !1169, !noalias !1170, !noundef !4
  %.not.i.i.i.i86.i = icmp ugt i64 %.val58.i.i.i.i85.i, %.val.i.i.i.i84.i
  br i1 %.not.i.i.i.i86.i, label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_3ops5range5RangejENCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1R_.exit63.i.i.i.i.i
  %i.az = add i64 %.sroa.8.0.i.i.i.i80.i, %.sroa.7.0.i.i.i.i79.i ; 2 uses
  %i.ba = icmp uge i64 %i.az, %.sroa.7.0.i.i.i.i79.i
  %..i.i.i.i81.i = zext i1 %i.ba to i64
  store i64 %..i.i.i.i81.i, ptr %.sroa.6103.i, align 8, !alias.scope !1171, !noalias !1172
  br label %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i

_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i: ; preds = %bb.p, %bb.o
  %.sink78.i.i.i.i82.sroa.phi.i = phi ptr [ %.sroa.9104.i, %bb.p ], [ %.sroa.6103.i, %bb.o ]
  %.sink.i.i.i.i83.i = phi i64 [ %i.az, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i.i.i83.i, ptr %.sink78.i.i.i.i82.sroa.phi.i, align 8, !alias.scope !1171, !noalias !1172
  %.sroa.6103.i.0..sroa.6103.i.0..sroa.6103.i.0..sroa.6103.0..sroa.6103.0..sroa.6103.8..i = load i64, ptr %.sroa.6103.i, align 8, !range !69, !noalias !1065, !noundef !4
  %.sroa.9104.i.0..sroa.9104.i.0..sroa.9104.i.0..sroa.9104.0..sroa.9104.0..sroa.9104.16..i = load i64, ptr %.sroa.9104.i, align 8, !noalias !1065
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6103.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9104.i)
  %i.bb = or i64 %.sroa.8.0.i.i.i.i80.i, %.sroa.7.0.i.i.i.i79.i
  %i.bc = icmp eq i64 %i.bb, 0
  %2 = icmp eq i64 %.sroa.9104.i.0..sroa.9104.i.0..sroa.9104.i.0..sroa.9104.0..sroa.9104.0..sroa.9104.16..i, 0
  %3 = and i64 %.sroa.6.0..sroa.6.0..sroa.6.8..i, %.sroa.6103.i.0..sroa.6103.i.0..sroa.6103.i.0..sroa.6103.0..sroa.6103.0..sroa.6103.8..i
  %4 = and i64 %3, %.sroa.6100.0..sroa.6100.0..sroa.6100.8..i
  %i.bd = trunc nuw i64 %4 to i1
  %i.be = and i1 %i.bc, %i.bd
  %or.cond60.i = select i1 %i.be, i1 %2, i1 false
  br i1 %or.cond60.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6103.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9104.i)
  %i.bf = and i64 %.sroa.6100.0..sroa.6100.0..sroa.6100.8..i, %.sroa.6.0..sroa.6.0..sroa.6.8..i
  %or.cond55.i = trunc nuw i64 %i.bf to i1
  br i1 %or.cond55.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i
  store i64 %.sroa.099.1.i, ptr %0, align 8, !alias.scope !1006, !noalias !1009
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2t_.exit

bb.s:                                             ; preds = %bb.q, %_RNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_7flatten7FlatMapINtNtNtBb_3ops5range5RangejEIBN_B1o_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB22_0ENCNvB24_14rip_map_levels0ENCNvMs0_NtB24_6headerNtB3t_6Header25blocks_increasing_y_orders_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB26_.exit.i
  %i.bg = add i64 %.sroa.10.0..sroa.10.0..sroa.10.16..i, %.sroa.9.0..sroa.9.0..sroa.9.16..i ; 2 uses
  %i.bh = icmp uge i64 %i.bg, %.sroa.9.0..sroa.9.0..sroa.9.16..i
  %.56.i = zext i1 %i.bh to i64
  store i64 %.sroa.099.1.i, ptr %0, align 8, !alias.scope !1006, !noalias !1009
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i, ptr %i.bi, align 8, !alias.scope !1006, !noalias !1009
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2t_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtB5_7FlatMapINtNtNtBb_3ops5range5RangejEIB1c_B1K_NCNCNvNtCsdsTQD3x2eOp_3exr4meta15rip_map_indices00ENCB2p_0ENCNvB2r_14rip_map_levels0ENCNvMs0_NtB2r_6headerNtB3Q_6Header25blocks_increasing_y_orders_0EIB1x_IB1c_B1K_NCNvNvB3K_8tiles_of15divide_and_rest0EIB1c_B4Q_NCNCB53_00ENCB53_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2t_.exit: ; preds = %bb.r, %bb.s
  %.sink115.i = phi i64 [ 16, %bb.s ], [ 8, %bb.r ]
  %.sink.i = phi i64 [ %i.bg, %bb.s ], [ 0, %bb.r ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink115.i
  store i64 %.sink.i, ptr %i.bj, align 8, !alias.scope !1006, !noalias !1009
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB1S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(528) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [232 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %.sroa.7.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1181
  %i.l = load i64, ptr %1, align 8, !range !53, !alias.scope !1183, !noalias !1184, !noundef !4
  %.not.i.i = icmp eq i64 %i.l, 2
  br i1 %.not.i.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(528) %1) #19, !noalias !1184
  %i.m = load i64, ptr %i.b, align 8, !range !69, !noalias !1181, !noundef !4
  %2 = trunc nuw i64 %i.m to i1
  br i1 %2, label %bb.d, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i: ; preds = %bb.c
  store i64 2, ptr %1, align 8, !alias.scope !1183, !noalias !1184
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx6.i, i64 48, i1 false), !noalias !1176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1181
  store i64 1, ptr %0, align 8, !alias.scope !1173, !noalias !1176
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1185
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.n = load i8, ptr %i.e, align 1, !range !770, !alias.scope !1189, !noalias !1190, !noundef !4
  %.not.i1.i = icmp eq i8 %i.n, 2
  br i1 %.not.i1.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  %i.o = load i64, ptr %i.d, align 8, !alias.scope !1203, !noalias !1208, !noundef !4 ; 6 uses
  %i.p = load i64, ptr %i.f, align 8, !alias.scope !1211, !noalias !1212, !noundef !4
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i: ; preds = %bb.e
  %i.r = add nuw i64 %i.o, 1
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !1213, !noalias !1214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.s = load i8, ptr %i.h, align 8, !range !990, !alias.scope !1218, !noalias !1219, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !alias.scope !1218, !noalias !1219, !noundef !4
  %i.v = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.t, i64 noundef %i.u, i64 noundef %i.o), !noalias !1221
  %i.w = load i64, ptr %i.i, align 8, !alias.scope !1218, !noalias !1219, !noundef !4
  %i.x = tail call noundef i64 @_RNvNtCsdsTQD3x2eOp_3exr4meta18compute_level_size(i1 noundef zeroext %i.t, i64 noundef %i.w, i64 noundef %i.o), !noalias !1221
  %.val.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1222, !noalias !1223, !noundef !4
  %.val1.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1222, !noalias !1223, !noundef !4
  call void @_RNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB7_6Header25blocks_increasing_y_order8tiles_of(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.c, i64 noundef %i.v, i64 noundef %i.x, i64 noundef %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %i.o, i64 noundef %i.o), !noalias !1224
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !1185
  %.not.i = icmp eq i64 %.pr.i, 2
  br i1 %.not.i, label %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %1, ptr noundef nonnull align 8 dereferenceable(232) %i.c, i64 232, i1 false), !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1185
  br label %bb.b

_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i: ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.i, %bb.e, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit.thread.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1230
  %i.z = load i64, ptr %i.y, align 8, !range !53, !alias.scope !1231, !noalias !1232, !noundef !4
  %.not.i2.i = icmp eq i64 %i.z, 2
  br i1 %.not.i2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i
  call fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.y) #19, !noalias !1232
  %i.aa = load i64, ptr %i.a, align 8, !range !69, !noalias !1230, !noundef !4
  %3 = trunc nuw i64 %i.aa to i1
  br i1 %3, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RNvXs9_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB1O_6headerNtB2D_6Header25blocks_increasing_y_order0EEINtB5_8FuseImplBY_E4nextB1Q_.exit.thread.i
  store i64 0, ptr %0, align 8, !alias.scope !1232, !noalias !1231
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.i:                                             ; preds = %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1231
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i

bb.j:                                             ; preds = %bb.g
  store i64 2, ptr %i.y, align 8, !alias.scope !1231, !noalias !1232
  br label %bb.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1185
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit: ; preds = %bb.d, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB4_3map3MapINtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2e_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1l_B1k_NCNCB26_00ENCB26_0ENtB2g_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2i_.exit4.i
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0EIBR_IB15_B1k_NCNvNvNvMs0_NtB1Q_6headerNtB2W_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B2B_NCNCB2O_00ENCB2O_0ENCB2Q_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.689.i = alloca i64, align 8              ; 5 uses
  %.sroa.10.i = alloca i64, align 8               ; 4 uses
  %.sroa.6.i = alloca i64, align 8                ; 5 uses
  %.sroa.9.i = alloca i64, align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  %i.a = load i64, ptr %1, align 8, !range !53, !alias.scope !1236, !noalias !1233, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  br i1 %.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load i64, ptr %i.b, align 8, !range !69, !alias.scope !1258, !noalias !1259, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1261, !noalias !1266, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val3.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !1270, !noalias !1271, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i.i, i64 %.val.i.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load i64, ptr %i.g, align 8, !range !69, !alias.scope !1258, !noalias !1259, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.d, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

bb.d:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i60.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1272, !noalias !1277, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val3.i61.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1281, !noalias !1282, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i.i, i64 %.val.i60.i.i.i.i.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i: ; preds = %bb.d, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i.i, %bb.d ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i.i ] ; 2 uses
  %i.l = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i)
  %i.m = trunc nuw i64 %i.a to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !1283, !noalias !1286, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val58.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1288, !noalias !1289, !noundef !4
  %.not.i.i.i.i.i = icmp ugt i64 %.val58.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i.i
  %i.p = add i64 %.sroa.8.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i ; 2 uses
  %i.q = icmp uge i64 %i.p, %.sroa.7.0.i.i.i.i.i
  %..i.i.i.i.i = zext i1 %i.q to i64
  store i64 %..i.i.i.i.i, ptr %.sroa.6.i, align 8, !alias.scope !1290, !noalias !1291
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink78.i.i.i.i.sroa.phi.i = phi ptr [ %.sroa.9.i, %bb.f ], [ %.sroa.6.i, %bb.e ]
  %.sink.i.i.i.i.i = phi i64 [ %i.p, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink78.i.i.i.i.sroa.phi.i, align 8, !alias.scope !1290, !noalias !1291
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i = load i64, ptr %.sroa.6.i, align 8, !range !69, !noalias !1292
  %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i = load i64, ptr %.sroa.9.i, align 8, !noalias !1292
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i, %bb.a
  %.sroa.9.0..sroa.9.0..sroa.9.16..i = phi i64 [ %.sroa.9.i.0..sroa.9.i.0..sroa.9.i.0..sroa.9.0..sroa.9.0..sroa.9.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0..sroa.6.0..sroa.6.8..i = phi i64 [ %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 1, %bb.a ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.l, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.689.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.s = load i64, ptr %i.r, align 8, !range !53, !alias.scope !1236, !noalias !1233, !noundef !4 ; 2 uses
  %.not53.i = icmp eq i64 %i.s, 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  br i1 %.not53.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.u = load i64, ptr %i.t, align 8, !range !69, !alias.scope !1313, !noalias !1314, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.h, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val.i.i.i.i.i76.i = load i64, ptr %i.w, align 8, !alias.scope !1316, !noalias !1321, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.val3.i.i.i.i.i77.i = load i64, ptr %i.x, align 8, !alias.scope !1325, !noalias !1326, !noundef !4
  %spec.select.i.i.i.i.i.i.i.i.i78.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i.i.i.i.i77.i, i64 %.val.i.i.i.i.i76.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i: ; preds = %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i63.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i78.i, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.z = load i64, ptr %i.y, align 8, !range !69, !alias.scope !1313, !noalias !1314, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i

bb.i:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.val.i60.i.i.i.i73.i = load i64, ptr %i.ab, align 8, !alias.scope !1327, !noalias !1332, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.val3.i61.i.i.i.i74.i = load i64, ptr %i.ac, align 8, !alias.scope !1336, !noalias !1337, !noundef !4
  %spec.select.i.i.i.i.i62.i.i.i.i75.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i61.i.i.i.i74.i, i64 %.val.i60.i.i.i.i73.i)
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i: ; preds = %bb.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i
  %.sroa.8.0.i.i.i.i65.i = phi i64 [ %spec.select.i.i.i.i.i62.i.i.i.i75.i, %bb.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit.i.i.i.i62.i ] ; 2 uses
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i63.i, i64 %.sroa.8.0.i.i.i.i65.i)
  %i.ae = trunc nuw i64 %i.s to i1
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val.i.i.i.i70.i = load i64, ptr %i.af, align 8, !alias.scope !1338, !noalias !1341, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val58.i.i.i.i71.i = load i64, ptr %i.ag, align 8, !alias.scope !1343, !noalias !1344, !noundef !4
  %.not.i.i.i.i72.i = icmp ugt i64 %.val58.i.i.i.i71.i, %.val.i.i.i.i70.i
  br i1 %.not.i.i.i.i72.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapIBK_INtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Z_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1R_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB23_.exit63.i.i.i.i64.i
  %i.ah = add i64 %.sroa.8.0.i.i.i.i65.i, %.sroa.7.0.i.i.i.i63.i ; 2 uses
  %i.ai = icmp uge i64 %i.ah, %.sroa.7.0.i.i.i.i63.i
  %..i.i.i.i66.i = zext i1 %i.ai to i64
  store i64 %..i.i.i.i66.i, ptr %.sroa.689.i, align 8, !alias.scope !1345, !noalias !1346
  br label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i: ; preds = %bb.k, %bb.j
  %.sink78.i.i.i.i68.sroa.phi.i = phi ptr [ %.sroa.10.i, %bb.k ], [ %.sroa.689.i, %bb.j ]
  %.sink.i.i.i.i69.i = phi i64 [ %i.ah, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i.i.i69.i, ptr %.sink78.i.i.i.i68.sroa.phi.i, align 8, !alias.scope !1345, !noalias !1346
  %i.aj = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.1.i, i64 %i.ad)
  %.sroa.689.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i = load i64, ptr %.sroa.689.i, align 8, !range !69, !noalias !1292
  %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i = load i64, ptr %.sroa.10.i, align 8, !noalias !1292
  %i.ak = freeze i64 %.sroa.689.i.0..sroa.689.i.0..sroa.689.i.0..sroa.689.0..sroa.689.0..sroa.689.8..pre.i
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i: ; preds = %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i
  %.sroa.10.0..sroa.10.0..sroa.10.16..i = phi i64 [ %.sroa.10.i.0..sroa.10.i.0..sroa.10.i.0..sroa.10.0..sroa.10.0..sroa.10.16..pre.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ]
  %.sroa.689.0..sroa.689.0..sroa.689.8..i = phi i64 [ %i.ak, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i ], [ 1, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  %.sroa.088.1.i = phi i64 [ %i.aj, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten7FlatMapINtNtBa_3map3MapINtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1V_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB12_B11_NCNCB1N_00ENCB1N_0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtB1m_8function6FnOnceTRB5_EE9call_onceB1Z_.exit.i67.i ], [ %.sroa.0.1.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 521
  %i.am = load i8, ptr %i.al, align 1, !range !770, !alias.scope !1236, !noalias !1233, !noundef !4
  %.not54.i = icmp eq i8 %i.am, 2
  br i1 %.not54.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 464
  %.val.i = load i64, ptr %i.an, align 8, !alias.scope !1347, !noalias !1350, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.val61.i = load i64, ptr %i.ao, align 8, !alias.scope !1352, !noalias !1353, !noundef !4
  %i.ap = icmp ule i64 %.val61.i, %.val.i
  %i.aq = trunc nuw i64 %.sroa.6.0..sroa.6.0..sroa.6.8..i to i1
  %i.ar = trunc i64 %.sroa.689.0..sroa.689.0..sroa.689.8..i to i1
  %op.rdx = and i1 %i.ap, %i.ar
  %op.rdx2 = select i1 %op.rdx, i1 %i.aq, i1 false
  br i1 %op.rdx2, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtBO_3map3MapINtNtNtB5_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2j_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB1q_B1p_NCNCB2b_00ENCB2b_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2n_.exit79.i
  %i.as = and i64 %.sroa.689.0..sroa.689.0..sroa.689.8..i, %.sroa.6.0..sroa.6.0..sroa.6.8..i
  %or.cond55.i = trunc nuw i64 %i.as to i1
  br i1 %or.cond55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 %.sroa.088.1.i, ptr %0, align 8, !alias.scope !1233, !noalias !1236
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.at = add i64 %.sroa.10.0..sroa.10.0..sroa.10.16..i, %.sroa.9.0..sroa.9.0..sroa.9.16..i ; 2 uses
  %i.au = icmp uge i64 %i.at, %.sroa.9.0..sroa.9.0..sroa.9.16..i
  %.56.i = zext i1 %i.au to i64
  store i64 %.sroa.088.1.i, ptr %0, align 8, !alias.scope !1233, !noalias !1236
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.56.i, ptr %i.av, align 8, !alias.scope !1233, !noalias !1236
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNtCsdsTQD3x2eOp_3exr4meta14mip_map_levels0ENCNvMs0_NtB22_6headerNtB2R_6Header25blocks_increasing_y_order0EINtB5_7FlatMapIB1c_B1w_NCNvNvB2L_8tiles_of15divide_and_rest0EIB1c_B3Y_NCNCB4b_00ENCB4b_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB24_.exit: ; preds = %bb.n, %bb.o
  %.sink100.i = phi i64 [ 16, %bb.o ], [ 8, %bb.n ]
  %.sink.i = phi i64 [ %i.at, %bb.o ], [ 0, %bb.n ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink100.i
  store i64 %.sink.i, ptr %i.aw, align 8, !alias.scope !1233, !noalias !1236
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(232) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 12 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.724.i = alloca [64 x i8], align 8        ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  %.promoted.i = load i64, ptr %i.q, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.t = load i64, ptr %1, align 8, !range !69, !alias.scope !1357, !noalias !1354
  %.fr41.i = freeze i64 %i.t
  %i.u = trunc i64 %.fr41.i to i1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1357, !noalias !1354 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !1357, !noalias !1354 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !1357, !noalias !1354 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %.promoted34.i = load i64, ptr %i.v, align 8, !alias.scope !1357, !noalias !1354 ; 9 uses
  br i1 %i.u, label %.split.us.preheader.i, label %.split.i

.split.us.preheader.i:                            ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1357, !noalias !1354 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted34.i, i64 %i.ai)
  %umax42.i = tail call i64 @llvm.umax.i64(i64 %.promoted34.i, i64 %.val.i.i.i.i)
  %i.aj = trunc nuw i64 %.promoted.i to i1
  br i1 %i.aj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split.us.preheader.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  %i.ak = load i64, ptr %i.r, align 8, !alias.scope !1364, !noalias !1377, !noundef !4 ; 2 uses
  %i.al = load i64, ptr %i.s, align 8, !alias.scope !1382, !noalias !1383, !noundef !4
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %.split36.us.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.q, align 8, !alias.scope !1384, !noalias !1385
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %exitcond.peel.not.not.i = icmp ult i64 %.promoted34.i, %i.ai
  br i1 %exitcond.peel.not.not.i, label %bb.e, label %.split38.us.i

bb.e:                                             ; preds = %bb.d
  %i.an = add nuw i64 %.promoted34.i, 1           ; 3 uses
  store i64 %i.an, ptr %i.v, align 8, !alias.scope !1395, !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1404
  store i64 %.val.i.i.i.i, ptr %i.i, align 8, !noalias !1405
  store i64 %.promoted34.i, ptr %i.h, align 8, !noalias !1405
  %exitcond43.peel.not.not.i = icmp ult i64 %.promoted34.i, %.val.i.i.i.i
  br i1 %exitcond43.peel.not.not.i, label %.split.us.peel.next.i, label %.split40.us.i

.split.us.peel.next.i:                            ; preds = %bb.e
  %i.ao = add i64 %.promoted34.i, %.val2.i.i.i.i
  %.not13.i.i.i.i.i.us.peel.i = icmp ugt i64 %i.ao, %.val.i.i.i.i
  %i.ap = sub nuw i64 %.val.i.i.i.i, %.promoted34.i
  %spec.select.i.i.i.i.us.peel.i = select i1 %.not13.i.i.i.i.i.us.peel.i, i64 %i.ap, i64 %.val2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1408
  call void @_RNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB9_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(64) %i.k, i64 noundef %i.z, i64 noundef %i.ab), !noalias !1409
  store i64 %i.ad, ptr %i.ag, align 8, !alias.scope !1412, !noalias !1409
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1409
  store i64 %spec.select.i.i.i.i.us.peel.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1409
  store i64 %.promoted34.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !1414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1408
  store i64 1, ptr %i.q, align 8, !alias.scope !1357, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, i64 64, i1 false), !noalias !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.aq = load i64, ptr %i.r, align 8, !alias.scope !1419, !noalias !1424, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %i.s, align 8, !alias.scope !1425, !noalias !1426, !noundef !4
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %.split36.us.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split.us.peel.next.i
  store i64 0, ptr %i.q, align 8, !alias.scope !1427, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  %exitcond.not.i8 = icmp eq i64 %i.ai, %i.an
  br i1 %exitcond.not.i8, label %.split38.us.i, label %.lr.ph9

.lr.ph:                                           ; preds = %bb.f
  store i64 0, ptr %i.q, align 8, !alias.scope !1429, !noalias !1385
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  %exitcond.not.i = icmp eq i64 %i.au, %umax.i
  br i1 %exitcond.not.i, label %.split38.us.i, label %.lr.ph9, !llvm.loop !1431

.lr.ph9:                                          ; preds = %.lr.ph.preheader, %.lr.ph
  %i.at = phi i64 [ %i.au, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1449)
  %i.au = add i64 %i.at, 1                        ; 3 uses
  store i64 %i.au, ptr %i.v, align 8, !alias.scope !1451, !noalias !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1452
  store i64 %.val.i.i.i.i, ptr %i.i, align 8, !noalias !1455
  store i64 %i.at, ptr %i.h, align 8, !noalias !1455
  %exitcond43.not.i = icmp eq i64 %i.at, %umax42.i
  br i1 %exitcond43.not.i, label %.split40.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph9
  %i.av = add i64 %i.at, %.val2.i.i.i.i
  %.not13.i.i.i.i.i.us.i = icmp ugt i64 %i.av, %.val.i.i.i.i
  %i.aw = sub nuw i64 %.val.i.i.i.i, %i.at
  %spec.select.i.i.i.i.us.i = select i1 %.not13.i.i.i.i.i.us.i, i64 %i.aw, i64 %.val2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1456
  call void @_RNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB9_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(64) %i.k, i64 noundef %i.z, i64 noundef %i.ab), !noalias !1457
  store i64 %i.ad, ptr %i.ag, align 8, !alias.scope !1412, !noalias !1457
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1457
  store i64 %spec.select.i.i.i.i.us.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1457
  store i64 %i.at, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1412, !noalias !1457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !1458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1456
  store i64 1, ptr %i.q, align 8, !alias.scope !1357, !noalias !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.724.i, i64 64, i1 false), !noalias !1354
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.ax = load i64, ptr %i.r, align 8, !alias.scope !1463, !noalias !1468, !noundef !4 ; 2 uses
  %i.ay = load i64, ptr %i.s, align 8, !alias.scope !1469, !noalias !1470, !noundef !4
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %.split36.us.i, label %.lr.ph, !llvm.loop !1431

.split.i:                                         ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  %i.ba = trunc nuw i64 %.promoted.i to i1
  br i1 %i.ba, label %bb.g, label %.split38.i
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1Y_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0EIB15_B14_NCNCB1Q_00ENCB1Q_0ENtNtNtB9_6traits8iterator8Iterator4nextB22_:bb.a
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1482
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.o, ptr %i.bh, align 8, !noalias !1482
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1482
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull @8, ptr noundef nonnull %i.m), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1482
  store i64 2, ptr %i.p, align 8, !alias.scope !1479, !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !1478
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 26, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.j unwind label %bb.i, !noalias !1483

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #17
          to label %common.resume.i unwind label %bb.k, !noalias !1483

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1483
  unreachable

common.resume.i:                                  ; preds = %bb.t, %bb.n, %bb.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bi, %bb.i ], [ %i.ch, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %bb.g
  store i64 0, ptr %i.q, align 8, !alias.scope !1486, !noalias !1385
  br label %.split38.i

bb.m:                                             ; preds = %.split36.us.i
  %i.bk = add i64 %.val2.i.i.i.i.i, %.us-phi.i
  %.not13.i.i.i.i.i.i.i = icmp ugt i64 %i.bk, %.val.i.i.i.i.i
  %i.bl = sub nuw i64 %.val.i.i.i.i.i, %.us-phi.i
  %spec.select.i.i.i.i.i.i = select i1 %.not13.i.i.i.i.i.i.i, i64 %i.bl, i64 %.val2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1478
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !1487, !noalias !1490, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1487, !noalias !1490, !noundef !4
  store i64 1, ptr %0, align 8, !alias.scope !1354, !noalias !1357
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1354, !noalias !1357
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1354, !noalias !1357
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.br = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !1487, !noalias !1490
  store <2 x i64> %i.br, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1354, !noalias !1357
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %spec.select.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1354, !noalias !1357
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bo, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1354, !noalias !1357
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2a_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCB22_0EIB1c_B1r_NCNCB22_00EENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit

.split38.i:                                       ; preds = %bb.l, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.724.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  br label %.split38.us.i

.split40.us.i:                                    ; preds = %.lr.ph9, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1455
  store ptr %i.h, ptr %i.g, align 8, !noalias !1455
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1455
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.bs, align 8, !noalias !1455
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1455
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull @8, ptr noundef nonnull %i.g), !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1455
  store i64 2, ptr %i.j, align 8, !alias.scope !1453, !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !1452
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 26, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.o unwind label %bb.n, !noalias !1492

bb.n:                                             ; preds = %.split40.us.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #17
          to label %common.resume.i unwind label %bb.p, !noalias !1492

bb.o:                                             ; preds = %.split40.us.i
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1492
  unreachable

.split38.us.i:                                    ; preds = %.lr.ph, %.lr.ph.preheader, %.split38.i, %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.bw = load i64, ptr %i.bv, align 8, !range !69, !alias.scope !1500, !noalias !1501, !noundef !4
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %bb.q, label %bb.w

bb.q:                                             ; preds = %.split38.us.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.ca = load i64, ptr %i.by, align 8, !alias.scope !1516, !noalias !1521, !noundef !4 ; 7 uses
  %i.cb = load i64, ptr %i.bz, align 8, !alias.scope !1525, !noalias !1526, !noundef !4
  %i.cc = icmp ult i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.cd = add nuw i64 %i.ca, 1
  store i64 %i.cd, ptr %i.by, align 8, !alias.scope !1527, !noalias !1528
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i.i.i.i13.i = load i64, ptr %i.ce, align 8, !alias.scope !1529, !noalias !1528, !noundef !4 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val2.i.i.i.i14.i = load i64, ptr %i.cf, align 8, !alias.scope !1529, !noalias !1528, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1530
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1530
  store i64 %.val.i.i.i.i13.i, ptr %i.d, align 8, !noalias !1534
  store i64 %i.ca, ptr %i.c, align 8, !noalias !1534
  %.not.i.i.i.i.i.i15.i = icmp ult i64 %i.ca, %.val.i.i.i.i13.i
  br i1 %.not.i.i.i.i.i.i15.i, label %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1534
  store ptr %i.c, ptr %i.b, align 8, !noalias !1534
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i16.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i16.i, align 8, !noalias !1534
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.cg, align 8, !noalias !1534
  %.sroa.48.0..sroa_idx.i.i.i.i.i.i17.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i.i17.i, align 8, !noalias !1534
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i18.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i18.i, ptr noundef nonnull @8, ptr noundef nonnull %i.b), !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1534
  store i64 2, ptr %i.e, align 8, !alias.scope !1531, !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !1530
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18
          to label %bb.u unwind label %bb.t, !noalias !1535

bb.t:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #17
          to label %common.resume.i unwind label %bb.v, !noalias !1535

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1535
  unreachable

_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i: ; preds = %bb.r
  %i.cj = add i64 %.val2.i.i.i.i14.i, %i.ca
  %.not13.i.i.i.i.i.i20.i = icmp ugt i64 %i.cj, %.val.i.i.i.i13.i
  %i.ck = sub nuw i64 %.val.i.i.i.i13.i, %i.ca
  %spec.select.i.i.i.i.i21.i = select i1 %.not13.i.i.i.i.i.i20.i, i64 %i.ck, i64 %.val2.i.i.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1530
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !1538, !noalias !1541, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !1538, !noalias !1541, !noundef !4
  %i.cq = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !1538, !noalias !1541
  br label %bb.x

bb.w:                                             ; preds = %.split38.us.i
  store i64 0, ptr %0, align 8, !alias.scope !1501, !noalias !1500
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i

bb.x:                                             ; preds = %bb.y, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i
  %storemerge.i.i20.i1.i = phi i64 [ 1, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ], [ 0, %bb.y ]
  %.sroa.7.018.i2.i = phi i64 [ %i.cp, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ], [ undef, %bb.y ]
  %.sroa.10.012.i5.i = phi i64 [ %spec.select.i.i.i.i.i21.i, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ], [ undef, %bb.y ]
  %.sroa.11.010.i6.i = phi i64 [ %i.cn, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ], [ undef, %bb.y ]
  %i.cr = phi <2 x i64> [ %i.cq, %_RNvYNvYINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB6_INtNtNtBe_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB1B_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1t_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtB12_8function6FnOnceTQB5_EE9call_onceB1F_.exit.i19.i ], [ undef, %bb.y ]
  store i64 %storemerge.i.i20.i1.i, ptr %0, align 8, !alias.scope !1501, !noalias !1500
  %.sroa.6.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ca, ptr %.sroa.6.0..sroa_idx.i7.i, align 8, !alias.scope !1501, !noalias !1500
  %.sroa.7.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.018.i2.i, ptr %.sroa.7.0..sroa_idx.i8.i, align 8, !alias.scope !1501, !noalias !1500
  %.sroa.8.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.cr, ptr %.sroa.8.0..sroa_idx.i9.i, align 8, !alias.scope !1501, !noalias !1500
  %.sroa.10.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.10.012.i5.i, ptr %.sroa.10.0..sroa_idx.i11.i, align 8, !alias.scope !1501, !noalias !1500
  %.sroa.11.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.11.010.i6.i, ptr %.sroa.11.0..sroa_idx.i12.i, align 8, !alias.scope !1501, !noalias !1500
  br label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i

bb.y:                                             ; preds = %bb.q
  store i64 0, ptr %i.bv, align 8, !alias.scope !1500, !noalias !1501
  br label %bb.x

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.724.i)
  br label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2a_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCB22_0EIB1c_B1r_NCNCB22_00EENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB2a_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCB22_0EIB1c_B1r_NCNCB22_00EENtNtNtB9_6traits8iterator8Iterator4nextB2e_.exit: ; preds = %bb.m, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapIB17_INtNtNtB8_3ops5range5RangejENCNvNvNvMs0_NtNtCsdsTQD3x2eOp_3exr4meta6headerNtB25_6Header25blocks_increasing_y_order8tiles_of15divide_and_rest0ENCNCB1X_00ENtB27_11TileIndicesNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB29_.exit22.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextENtB6_5Debug3fmtB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !248, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextNtB5_5Debug3fmtBB_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 3 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !1543, !noundef !4
  %i.j = sub nuw i64 %i.g, %i.d                   ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.d ; 3 uses
  store ptr %i.k, ptr %0, align 8, !captures !246
  store i64 %i.j, ptr %i.f, align 8
  %.not = icmp ugt i64 %i.b, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.b
  %i.m = sub nuw i64 %i.j, %i.b
  store ptr %i.l, ptr %0, align 8, !captures !246
  store i64 %i.m, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.k, %bb.d ], [ null, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.b, 1
  ret { ptr, i64 } %i.o

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactfENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 3 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !1544, !noundef !4
  %i.j = sub nuw i64 %i.g, %i.d                   ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.d ; 3 uses
  store ptr %i.k, ptr %0, align 8, !captures !246
  store i64 %i.j, ptr %i.f, align 8
  %.not = icmp ugt i64 %i.b, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  %i.m = sub nuw i64 %i.j, %i.b
  store ptr %i.l, ptr %0, align 8, !captures !246
  store i64 %i.m, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.k, %bb.d ], [ null, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.b, 1
  ret { ptr, i64 } %i.o

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExactmENtNtNtNtBa_4iter6traits8iterator8Iterator3nthCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.b) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 0         ; 3 uses
  %i.e = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !1544, !noundef !4
  %i.j = sub nuw i64 %i.g, %i.d                   ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.d ; 3 uses
  store ptr %i.k, ptr %0, align 8, !captures !246
  store i64 %i.j, ptr %i.f, align 8
  %.not = icmp ugt i64 %i.b, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  %i.m = sub nuw i64 %i.j, %i.b
  store ptr %i.l, ptr %0, align 8, !captures !246
  store i64 %i.m, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.0.1 = phi ptr [ null, %bb.f ], [ %i.k, %bb.d ], [ null, %bb.c ]
  %i.n = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.o = insertvalue { ptr, i64 } %i.n, i64 %i.b, 1
  ret { ptr, i64 } %i.o

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCsdsTQD3x2eOp_3exr5errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !57, !noundef !4
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 7)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 12, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_2
