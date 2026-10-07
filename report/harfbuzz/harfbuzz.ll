Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZL19setup_syllables_usePK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
  br i1 %i.ey, label %.lr.ph2043.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.i"

.lr.ph2043.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i270.i
  %i.ez = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i256.i, align 8, !tbaa !662, !noalias !5176
  br label %.lr.ph2043

bb.l:                                             ; preds = %.lr.ph2043
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i272.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i272.i2042, 1 ; 2 uses
  %i.fa = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i272.i, %i.ex
  br i1 %i.fa, label %.lr.ph2043, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.i", !llvm.loop !186

.lr.ph2043:                                       ; preds = %.lr.ph2043.preheader, %bb.l
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i272.i2042 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i272.i, %bb.l ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i272.i2041, %.lr.ph2043.preheader ] ; 2 uses
  %i.fb = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i272.i2042 to i64
  %i.fc = getelementptr inbounds nuw [20 x i8], ptr %i.ez, i64 %i.fb ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i275.i = load i8, ptr %i.fd, align 2, !tbaa !280, !noalias !5176
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i276.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i275.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i276.i, label %bb.l, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i277.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i277.i": ; preds = %.lr.ph2043
  %i.fe = getelementptr i8, ptr %i.fc, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i278.i = load i16, ptr %i.fe, align 4, !tbaa !280, !noalias !5176
  %i.ff = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i278.i, 31
  %i.fg = zext nneg i16 %i.ff to i32
  %i.fh = shl nuw i32 1, %i.fg
  %i.fi = and i32 %i.fh, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i279.i = icmp eq i32 %i.fi, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i279.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.i", label %bb.k, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.loopexit.i": ; preds = %bb.k, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i265.i
  %.lcssa1455 = phi i32 [ %i.el, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i265.i ], [ %i.ej, %bb.k ]
  %.lcssa1452 = phi ptr [ %i.em, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i265.i ], [ %i.ek, %bb.k ]
  %i.fj = mul i32 %.val112.i.i.i.i.i.i.i.i.i264.i, %i.ec
  %i.fk = add i32 %i.ei, %i.fj
  %i.fl = add i32 %.val112.i.i.i.i.i.i.i.i.i264.i, %i.eg
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i268.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.loopexit.i"
  %i.fm = phi i32 [ %.lcssa1455, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.loopexit.i" ], [ %i.eo, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i268.i ]
  %i.fn = phi ptr [ %.lcssa1452, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.loopexit.i" ], [ %i.en, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i268.i ]
  %.lcssa2575.sink.i = phi i32 [ %i.fk, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.loopexit.i" ], [ %i.et, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i268.i ]
  %.lcssa2569.sink.i = phi i32 [ %i.fl, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.loopexit.i" ], [ %i.es, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i268.i ]
  store i32 %.lcssa2575.sink.i, ptr %i.dy, align 8, !tbaa !1871, !alias.scope !5176
  store i32 %i.fm, ptr %i.dz, align 8, !tbaa !1868, !alias.scope !5176
  store i32 %.lcssa2569.sink.i, ptr %i.ed, align 4, !tbaa !1872, !alias.scope !5176
  store ptr %i.fn, ptr %i.ea, align 8, !tbaa !1869, !alias.scope !5176
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i277.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i270.i, %bb.l, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit280.sink.split.i", %bb.j
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  br label %bb.gr

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5179)
  call void @llvm.experimental.noalias.scope.decl(metadata !5180)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %7, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.fp = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5181, !noundef !293
  store i8 %i.fp, ptr %i.fo, align 8, !tbaa !1867, !alias.scope !5181
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !1870, !alias.scope !5179
  %.promoted.i.i.i.i.i.i.i282.i = load i32, ptr %7, align 8, !tbaa !1871, !alias.scope !5179
  %i.fs = add i32 %.promoted.i.i.i.i.i.i.i282.i, %i.fr
  store i32 %i.fs, ptr %7, align 8, !tbaa !1871, !alias.scope !5179
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i283.i = load i32, ptr %i.fu, align 8, !tbaa !1868, !alias.scope !5179 ; 2 uses
  %.not215.i.i.i.i.i.i.i284.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i283.i, 0
  br i1 %.not215.i.i.i.i.i.i.i284.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i", label %.lr.ph.i.i3.i.i.i.i.i285.i

.lr.ph.i.i3.i.i.i.i.i285.i:                       ; preds = %bb.m
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !1870, !alias.scope !5179 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 56
  %.val2.i.i.i.i.i.i.i.i.i286.i = load ptr, ptr %i.fz, align 8, !alias.scope !5179
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.val.i.i.i.i.i.i.i.i.i287.i = load ptr, ptr %i.ga, align 8, !alias.scope !5179
  %.promoted19.i.i.i.i.i.i.i288.i = load i32, ptr %i.ft, align 8, !tbaa !1871, !alias.scope !5179
  %.promoted14.i.i.pre.i.i.i.i.i.i.i289.i = load ptr, ptr %i.fv, align 8, !alias.scope !5179
  %.promoted15.i.i.pre.i.i.i.i.i.i.i290.i = load i32, ptr %i.fy, align 4, !alias.scope !5179
  br label %bb.n

bb.n:                                             ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i", %.lr.ph.i.i3.i.i.i.i.i285.i
  %i.gb = phi i32 [ %i.gn, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i290.i, %.lr.ph.i.i3.i.i.i.i.i285.i ] ; 2 uses
  %i.gc = phi ptr [ %i.gi, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i289.i, %.lr.ph.i.i3.i.i.i.i.i285.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i294.i = phi i32 [ %i.gj, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i" ], [ %.promoted.i.i2.i.i.i.i.i283.i, %.lr.ph.i.i3.i.i.i.i.i285.i ] ; 3 uses
  %i.gd = phi i32 [ %i.go, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i" ], [ %.promoted19.i.i.i.i.i.i.i288.i, %.lr.ph.i.i3.i.i.i.i.i285.i ] ; 2 uses
  %i.ge = add i32 %.val112.i.i.i.i.i.i.i.i.i294.i, -1 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i297.i2016 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i297.i2016, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i
  %i.gg = add i32 %i.gj, -1                       ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gi, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i297.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i297.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i: ; preds = %bb.n, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i
  %i.gi = phi ptr [ %i.gh, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i ], [ %i.gf, %bb.n ] ; 5 uses
  %i.gj = phi i32 [ %i.gg, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i ], [ %i.ge, %bb.n ] ; 4 uses
  %i.gk = phi i32 [ %i.go, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i ], [ %i.gd, %bb.n ]
  %i.gl = phi ptr [ %i.gi, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i ], [ %i.gc, %bb.n ]
  %i.gm = phi i32 [ %i.gn, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i ], [ %i.gb, %bb.n ]
  %i.gn = add i32 %i.gm, 1                        ; 4 uses
  %i.go = add i32 %i.gk, %i.fx                    ; 5 uses
  %i.gp = getelementptr i8, ptr %i.gl, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i299.i = load i8, ptr %i.gp, align 2, !tbaa !280, !noalias !5179
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i299.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i300.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i300.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i
  store i32 %i.go, ptr %i.ft, align 8, !tbaa !1871, !alias.scope !5179
  store i32 %i.gj, ptr %i.fu, align 8, !tbaa !1868, !alias.scope !5179
  store i32 %i.gn, ptr %i.fy, align 4, !tbaa !1872, !alias.scope !5179
  store ptr %i.gi, ptr %i.fv, align 8, !tbaa !1869, !alias.scope !5179
  %i.gq = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i287.i, align 8, !tbaa !1853, !noalias !5179
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !607, !noalias !5179 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i2027 = add i32 %i.go, 1 ; 2 uses
  %i.gt = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i2027, %i.gs
  br i1 %i.gt, label %.lr.ph2029.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i"

.lr.ph2029.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i300.i
  %i.gu = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i286.i, align 8, !tbaa !662, !noalias !5179
  br label %.lr.ph2029

bb.o:                                             ; preds = %.lr.ph2029
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i2028, 1 ; 2 uses
  %i.gv = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i, %i.gs
  br i1 %i.gv, label %.lr.ph2029, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i", !llvm.loop !186

.lr.ph2029:                                       ; preds = %.lr.ph2029.preheader, %bb.o
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i2028 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i, %bb.o ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i2027, %.lr.ph2029.preheader ] ; 2 uses
  %i.gw = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i302.i2028 to i64
  %i.gx = getelementptr inbounds nuw [20 x i8], ptr %i.gu, i64 %i.gw ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i305.i = load i8, ptr %i.gy, align 2, !tbaa !280, !noalias !5179
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i306.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i305.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i306.i, label %bb.o, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i": ; preds = %.lr.ph2029
  %i.gz = getelementptr i8, ptr %i.gx, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i308.i = load i16, ptr %i.gz, align 4, !tbaa !280, !noalias !5179
  %i.ha = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i308.i, 31
  %i.hb = zext nneg i16 %i.ha to i32
  %i.hc = shl nuw i32 1, %i.hb
  %i.hd = and i32 %i.hc, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i309.i = icmp eq i32 %i.hd, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i309.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i", label %bb.n, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i": ; preds = %bb.n, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i
  %.lcssa1477 = phi i32 [ %i.gg, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i ], [ %i.ge, %bb.n ]
  %.lcssa1474 = phi ptr [ %i.gh, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i295.i ], [ %i.gf, %bb.n ]
  %i.he = mul i32 %.val112.i.i.i.i.i.i.i.i.i294.i, %i.fx
  %i.hf = add i32 %i.gd, %i.he
  %i.hg = add i32 %.val112.i.i.i.i.i.i.i.i.i294.i, %i.gb
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i"
  %i.hh = phi i32 [ %.lcssa1477, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i" ], [ %i.gj, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i ]
  %i.hi = phi ptr [ %.lcssa1474, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i" ], [ %i.gi, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i ]
  %.lcssa2596.sink.i = phi i32 [ %i.hf, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i" ], [ %i.go, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i ]
  %.lcssa2590.sink.i = phi i32 [ %i.hg, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.loopexit.i" ], [ %i.gn, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i298.i ]
  store i32 %.lcssa2596.sink.i, ptr %i.ft, align 8, !tbaa !1871, !alias.scope !5179
  store i32 %i.hh, ptr %i.fu, align 8, !tbaa !1868, !alias.scope !5179
  store i32 %.lcssa2590.sink.i, ptr %i.fy, align 4, !tbaa !1872, !alias.scope !5179
  store ptr %i.hi, ptr %i.fv, align 8, !tbaa !1869, !alias.scope !5179
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i307.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i300.i, %bb.o, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.sink.split.i", %bb.m
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i312.i = load i32, ptr %i.hj, align 8, !tbaa !324, !noalias !5182 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !1868, !noalias !5182
  %.not.i.i.i.i.i.i.i.i.i.i.i.i313.i = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i313.i, label %bb.p, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit316.i", !prof !267

bb.p:                                             ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5182
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit316.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit316.i": ; preds = %bb.p, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit310.i"
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i318.i = load i32, ptr %i.hm, align 8, !tbaa !324, !noalias !5183
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !1868, !noalias !5183
  %.not.i.i.i.i.i.i.i.i.i.i.i.i319.i = icmp eq i32 %i.ho, 0
  %.1.tr212.i = trunc i32 %.1.i to i8
  %i.hp = shl i8 %.1.tr212.i, 4
  %i.hq = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i312.i to i64
  %umax2437.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i312.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i318.i)
  %wide.trip.count2438.i = zext i32 %umax2437.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit316.i"
  %indvars.iv2434.i = phi i64 [ %indvars.iv.next2435.i, %bb.t ], [ %i.hq, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit316.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i319.i, label %bb.r, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit322.i", !prof !267

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5183
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit322.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit322.i": ; preds = %bb.r, %bb.q
  %exitcond2439.not.i = icmp eq i64 %indvars.iv2434.i, %wide.trip.count2438.i
  br i1 %exitcond2439.not.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit322.i"
  %i.hr = add i32 %.1.i, 1                        ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 16
  %spec.store.select.i = select i1 %i.hs, i32 1, i32 %i.hr
  br label %bb.gr

bb.t:                                             ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit322.i"
  %i.ht = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.hu = getelementptr inbounds nuw [20 x i8], ptr %i.ht, i64 %indvars.iv2434.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 15
  store i8 %i.hp, ptr %i.hv, align 1, !tbaa !280
  %indvars.iv.next2435.i = add nuw nsw i64 %indvars.iv2434.i, 1
  br label %bb.q, !llvm.loop !4731

bb.u:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5184)
  call void @llvm.experimental.noalias.scope.decl(metadata !5185)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.hx = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5186, !noundef !293
  store i8 %i.hx, ptr %i.hw, align 8, !tbaa !1867, !alias.scope !5186
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !1870, !alias.scope !5184
  %.promoted.i.i.i.i.i.i.i324.i = load i32, ptr %8, align 8, !tbaa !1871, !alias.scope !5184
  %i.ia = add i32 %.promoted.i.i.i.i.i.i.i324.i, %i.hz
  store i32 %i.ia, ptr %8, align 8, !tbaa !1871, !alias.scope !5184
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i325.i = load i32, ptr %i.ic, align 8, !tbaa !1868, !alias.scope !5184 ; 2 uses
  %.not215.i.i.i.i.i.i.i326.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i325.i, 0
  br i1 %.not215.i.i.i.i.i.i.i326.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i", label %.lr.ph.i.i3.i.i.i.i.i327.i

.lr.ph.i.i3.i.i.i.i.i327.i:                       ; preds = %bb.u
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !1870, !alias.scope !5184 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.val2.i.i.i.i.i.i.i.i.i328.i = load ptr, ptr %i.ih, align 8, !alias.scope !5184
  %i.ii = getelementptr inbounds nuw i8, ptr %8, i64 48
  %.val.i.i.i.i.i.i.i.i.i329.i = load ptr, ptr %i.ii, align 8, !alias.scope !5184
  %.promoted19.i.i.i.i.i.i.i330.i = load i32, ptr %i.ib, align 8, !tbaa !1871, !alias.scope !5184
  %.promoted14.i.i.pre.i.i.i.i.i.i.i331.i = load ptr, ptr %i.id, align 8, !alias.scope !5184
  %.promoted15.i.i.pre.i.i.i.i.i.i.i332.i = load i32, ptr %i.ig, align 4, !alias.scope !5184
  br label %bb.v

bb.v:                                             ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i", %.lr.ph.i.i3.i.i.i.i.i327.i
  %i.ij = phi i32 [ %i.iv, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i332.i, %.lr.ph.i.i3.i.i.i.i.i327.i ] ; 2 uses
  %i.ik = phi ptr [ %i.iq, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i331.i, %.lr.ph.i.i3.i.i.i.i.i327.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i336.i = phi i32 [ %i.ir, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i" ], [ %.promoted.i.i2.i.i.i.i.i325.i, %.lr.ph.i.i3.i.i.i.i.i327.i ] ; 3 uses
  %i.il = phi i32 [ %i.iw, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i" ], [ %.promoted19.i.i.i.i.i.i.i330.i, %.lr.ph.i.i3.i.i.i.i.i327.i ] ; 2 uses
  %i.im = add i32 %.val112.i.i.i.i.i.i.i.i.i336.i, -1 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i339.i2002 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i339.i2002, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i
  %i.io = add i32 %i.ir, -1                       ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.iq, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i339.i = icmp eq i32 %i.io, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i339.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i: ; preds = %bb.v, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i
  %i.iq = phi ptr [ %i.ip, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i ], [ %i.in, %bb.v ] ; 5 uses
  %i.ir = phi i32 [ %i.io, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i ], [ %i.im, %bb.v ] ; 4 uses
  %i.is = phi i32 [ %i.iw, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i ], [ %i.il, %bb.v ]
  %i.it = phi ptr [ %i.iq, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i ], [ %i.ik, %bb.v ]
  %i.iu = phi i32 [ %i.iv, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i ], [ %i.ij, %bb.v ]
  %i.iv = add i32 %i.iu, 1                        ; 4 uses
  %i.iw = add i32 %i.is, %i.if                    ; 5 uses
  %i.ix = getelementptr i8, ptr %i.it, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i341.i = load i8, ptr %i.ix, align 2, !tbaa !280, !noalias !5184
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i341.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i342.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i342.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i
  store i32 %i.iw, ptr %i.ib, align 8, !tbaa !1871, !alias.scope !5184
  store i32 %i.ir, ptr %i.ic, align 8, !tbaa !1868, !alias.scope !5184
  store i32 %i.iv, ptr %i.ig, align 4, !tbaa !1872, !alias.scope !5184
  store ptr %i.iq, ptr %i.id, align 8, !tbaa !1869, !alias.scope !5184
  %i.iy = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i329.i, align 8, !tbaa !1853, !noalias !5184
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !607, !noalias !5184 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i2013 = add i32 %i.iw, 1 ; 2 uses
  %i.jb = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i2013, %i.ja
  br i1 %i.jb, label %.lr.ph2015.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i"

.lr.ph2015.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i342.i
  %i.jc = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i328.i, align 8, !tbaa !662, !noalias !5184
  br label %.lr.ph2015

bb.w:                                             ; preds = %.lr.ph2015
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i2014, 1 ; 2 uses
  %i.jd = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i, %i.ja
  br i1 %i.jd, label %.lr.ph2015, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i", !llvm.loop !186

.lr.ph2015:                                       ; preds = %.lr.ph2015.preheader, %bb.w
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i2014 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i, %bb.w ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i2013, %.lr.ph2015.preheader ] ; 2 uses
  %i.je = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i344.i2014 to i64
  %i.jf = getelementptr inbounds nuw [20 x i8], ptr %i.jc, i64 %i.je ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i347.i = load i8, ptr %i.jg, align 2, !tbaa !280, !noalias !5184
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i348.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i347.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i348.i, label %bb.w, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i": ; preds = %.lr.ph2015
  %i.jh = getelementptr i8, ptr %i.jf, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i350.i = load i16, ptr %i.jh, align 4, !tbaa !280, !noalias !5184
  %i.ji = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i350.i, 31
  %i.jj = zext nneg i16 %i.ji to i32
  %i.jk = shl nuw i32 1, %i.jj
  %i.jl = and i32 %i.jk, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i351.i = icmp eq i32 %i.jl, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i351.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i", label %bb.v, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i": ; preds = %bb.v, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i
  %.lcssa1499 = phi i32 [ %i.io, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i ], [ %i.im, %bb.v ]
  %.lcssa1496 = phi ptr [ %i.ip, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i337.i ], [ %i.in, %bb.v ]
  %i.jm = mul i32 %.val112.i.i.i.i.i.i.i.i.i336.i, %i.if
  %i.jn = add i32 %i.il, %i.jm
  %i.jo = add i32 %.val112.i.i.i.i.i.i.i.i.i336.i, %i.ij
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i"
  %i.jp = phi i32 [ %.lcssa1499, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i" ], [ %i.ir, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i ]
  %i.jq = phi ptr [ %.lcssa1496, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i" ], [ %i.iq, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i ]
  %.lcssa2617.sink.i = phi i32 [ %i.jn, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i" ], [ %i.iw, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i ]
  %.lcssa2611.sink.i = phi i32 [ %i.jo, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.loopexit.i" ], [ %i.iv, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i340.i ]
  store i32 %.lcssa2617.sink.i, ptr %i.ib, align 8, !tbaa !1871, !alias.scope !5184
  store i32 %i.jp, ptr %i.ic, align 8, !tbaa !1868, !alias.scope !5184
  store i32 %.lcssa2611.sink.i, ptr %i.ig, align 4, !tbaa !1872, !alias.scope !5184
  store ptr %i.jq, ptr %i.id, align 8, !tbaa !1869, !alias.scope !5184
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i349.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i342.i, %bb.w, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.sink.split.i", %bb.u
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i354.i = load i32, ptr %i.jr, align 8, !tbaa !324, !noalias !5187 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !1868, !noalias !5187
  %.not.i.i.i.i.i.i.i.i.i.i.i.i355.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i355.i, label %bb.x, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit358.i", !prof !267

bb.x:                                             ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5187
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit358.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit358.i": ; preds = %bb.x, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit352.i"
  %i.ju = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i360.i = load i32, ptr %i.ju, align 8, !tbaa !324, !noalias !5188
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !1868, !noalias !5188
  %.not.i.i.i.i.i.i.i.i.i.i.i.i361.i = icmp eq i32 %i.jw, 0
  %.1.tr211.i = trunc i32 %.1.i to i8
  %i.jx = shl i8 %.1.tr211.i, 4
  %i.jy = or disjoint i8 %i.jx, 1
  %i.jz = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i354.i to i64
  %umax2431.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i354.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i360.i)
  %wide.trip.count2432.i = zext i32 %umax2431.i to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit358.i"
  %indvars.iv2428.i = phi i64 [ %indvars.iv.next2429.i, %bb.ab ], [ %i.jz, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit358.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i361.i, label %bb.z, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit364.i", !prof !267

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5188
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit364.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit364.i": ; preds = %bb.z, %bb.y
  %exitcond2433.not.i = icmp eq i64 %indvars.iv2428.i, %wide.trip.count2432.i
  br i1 %exitcond2433.not.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit364.i"
  %i.ka = add i32 %.1.i, 1                        ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 16
  %spec.store.select2.i = select i1 %i.kb, i32 1, i32 %i.ka
  br label %bb.gr

bb.ab:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit364.i"
  %i.kc = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.kd = getelementptr inbounds nuw [20 x i8], ptr %i.kc, i64 %indvars.iv2428.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 15
  store i8 %i.jy, ptr %i.ke, align 1, !tbaa !280
  %indvars.iv.next2429.i = add nuw nsw i64 %indvars.iv2428.i, 1
  br label %bb.y, !llvm.loop !4752

bb.ac:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5189)
  call void @llvm.experimental.noalias.scope.decl(metadata !5190)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %9, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.kg = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5191, !noundef !293
  store i8 %i.kg, ptr %i.kf, align 8, !tbaa !1867, !alias.scope !5191
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !1870, !alias.scope !5189
  %.promoted.i.i.i.i.i.i.i366.i = load i32, ptr %9, align 8, !tbaa !1871, !alias.scope !5189
  %i.kj = add i32 %.promoted.i.i.i.i.i.i.i366.i, %i.ki
  store i32 %i.kj, ptr %9, align 8, !tbaa !1871, !alias.scope !5189
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i367.i = load i32, ptr %i.kl, align 8, !tbaa !1868, !alias.scope !5189 ; 2 uses
  %.not215.i.i.i.i.i.i.i368.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i367.i, 0
  br i1 %.not215.i.i.i.i.i.i.i368.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i", label %.lr.ph.i.i3.i.i.i.i.i369.i

.lr.ph.i.i3.i.i.i.i.i369.i:                       ; preds = %bb.ac
  %i.km = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !1870, !alias.scope !5189 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %9, i64 56
  %.val2.i.i.i.i.i.i.i.i.i370.i = load ptr, ptr %i.kq, align 8, !alias.scope !5189
  %i.kr = getelementptr inbounds nuw i8, ptr %9, i64 48
  %.val.i.i.i.i.i.i.i.i.i371.i = load ptr, ptr %i.kr, align 8, !alias.scope !5189
  %.promoted19.i.i.i.i.i.i.i372.i = load i32, ptr %i.kk, align 8, !tbaa !1871, !alias.scope !5189
  %.promoted14.i.i.pre.i.i.i.i.i.i.i373.i = load ptr, ptr %i.km, align 8, !alias.scope !5189
  %.promoted15.i.i.pre.i.i.i.i.i.i.i374.i = load i32, ptr %i.kp, align 4, !alias.scope !5189
  br label %bb.ad

bb.ad:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i", %.lr.ph.i.i3.i.i.i.i.i369.i
  %i.ks = phi i32 [ %i.le, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i374.i, %.lr.ph.i.i3.i.i.i.i.i369.i ] ; 2 uses
  %i.kt = phi ptr [ %i.kz, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i373.i, %.lr.ph.i.i3.i.i.i.i.i369.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i378.i = phi i32 [ %i.la, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i" ], [ %.promoted.i.i2.i.i.i.i.i367.i, %.lr.ph.i.i3.i.i.i.i.i369.i ] ; 3 uses
  %i.ku = phi i32 [ %i.lf, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i" ], [ %.promoted19.i.i.i.i.i.i.i372.i, %.lr.ph.i.i3.i.i.i.i.i369.i ] ; 2 uses
  %i.kv = add i32 %.val112.i.i.i.i.i.i.i.i.i378.i, -1 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i381.i1988 = icmp eq i32 %i.kv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i381.i1988, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i
  %i.kx = add i32 %i.la, -1                       ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kz, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i381.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i381.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i: ; preds = %bb.ad, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i
  %i.kz = phi ptr [ %i.ky, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i ], [ %i.kw, %bb.ad ] ; 5 uses
  %i.la = phi i32 [ %i.kx, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i ], [ %i.kv, %bb.ad ] ; 4 uses
  %i.lb = phi i32 [ %i.lf, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i ], [ %i.ku, %bb.ad ]
  %i.lc = phi ptr [ %i.kz, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i ], [ %i.kt, %bb.ad ]
  %i.ld = phi i32 [ %i.le, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i ], [ %i.ks, %bb.ad ]
  %i.le = add i32 %i.ld, 1                        ; 4 uses
  %i.lf = add i32 %i.lb, %i.ko                    ; 5 uses
  %i.lg = getelementptr i8, ptr %i.lc, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i383.i = load i8, ptr %i.lg, align 2, !tbaa !280, !noalias !5189
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i383.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i384.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i384.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i
  store i32 %i.lf, ptr %i.kk, align 8, !tbaa !1871, !alias.scope !5189
  store i32 %i.la, ptr %i.kl, align 8, !tbaa !1868, !alias.scope !5189
  store i32 %i.le, ptr %i.kp, align 4, !tbaa !1872, !alias.scope !5189
  store ptr %i.kz, ptr %i.km, align 8, !tbaa !1869, !alias.scope !5189
  %i.lh = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i371.i, align 8, !tbaa !1853, !noalias !5189
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !607, !noalias !5189 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i1999 = add i32 %i.lf, 1 ; 2 uses
  %i.lk = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i1999, %i.lj
  br i1 %i.lk, label %.lr.ph2001.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i"

.lr.ph2001.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i384.i
  %i.ll = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i370.i, align 8, !tbaa !662, !noalias !5189
  br label %.lr.ph2001

bb.ae:                                            ; preds = %.lr.ph2001
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i2000, 1 ; 2 uses
  %i.lm = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i, %i.lj
  br i1 %i.lm, label %.lr.ph2001, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i", !llvm.loop !186

.lr.ph2001:                                       ; preds = %.lr.ph2001.preheader, %bb.ae
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i2000 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i, %bb.ae ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i1999, %.lr.ph2001.preheader ] ; 2 uses
  %i.ln = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i386.i2000 to i64
  %i.lo = getelementptr inbounds nuw [20 x i8], ptr %i.ll, i64 %i.ln ; 2 uses
  %i.lp = getelementptr i8, ptr %i.lo, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i389.i = load i8, ptr %i.lp, align 2, !tbaa !280, !noalias !5189
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i390.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i389.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i390.i, label %bb.ae, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i": ; preds = %.lr.ph2001
  %i.lq = getelementptr i8, ptr %i.lo, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i392.i = load i16, ptr %i.lq, align 4, !tbaa !280, !noalias !5189
  %i.lr = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i392.i, 31
  %i.ls = zext nneg i16 %i.lr to i32
  %i.lt = shl nuw i32 1, %i.ls
  %i.lu = and i32 %i.lt, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i393.i = icmp eq i32 %i.lu, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i393.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i", label %bb.ad, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i": ; preds = %bb.ad, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i
  %.lcssa1521 = phi i32 [ %i.kx, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i ], [ %i.kv, %bb.ad ]
  %.lcssa1518 = phi ptr [ %i.ky, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i379.i ], [ %i.kw, %bb.ad ]
  %i.lv = mul i32 %.val112.i.i.i.i.i.i.i.i.i378.i, %i.ko
  %i.lw = add i32 %i.ku, %i.lv
  %i.lx = add i32 %.val112.i.i.i.i.i.i.i.i.i378.i, %i.ks
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i"
  %i.ly = phi i32 [ %.lcssa1521, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i" ], [ %i.la, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i ]
  %i.lz = phi ptr [ %.lcssa1518, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i" ], [ %i.kz, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i ]
  %.lcssa2638.sink.i = phi i32 [ %i.lw, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i" ], [ %i.lf, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i ]
  %.lcssa2632.sink.i = phi i32 [ %i.lx, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.loopexit.i" ], [ %i.le, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i382.i ]
  store i32 %.lcssa2638.sink.i, ptr %i.kk, align 8, !tbaa !1871, !alias.scope !5189
  store i32 %i.ly, ptr %i.kl, align 8, !tbaa !1868, !alias.scope !5189
  store i32 %.lcssa2632.sink.i, ptr %i.kp, align 4, !tbaa !1872, !alias.scope !5189
  store ptr %i.lz, ptr %i.km, align 8, !tbaa !1869, !alias.scope !5189
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i391.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i384.i, %bb.ae, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.sink.split.i", %bb.ac
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #63
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i396.i = load i32, ptr %i.ma, align 8, !tbaa !324, !noalias !5192 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !1868, !noalias !5192
  %.not.i.i.i.i.i.i.i.i.i.i.i.i397.i = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i397.i, label %bb.af, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit400.i", !prof !267

bb.af:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5192
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit400.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit400.i": ; preds = %bb.af, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit394.i"
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i402.i = load i32, ptr %i.md, align 8, !tbaa !324, !noalias !5193
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !1868, !noalias !5193
  %.not.i.i.i.i.i.i.i.i.i.i.i.i403.i = icmp eq i32 %i.mf, 0
  %.1.tr210.i = trunc i32 %.1.i to i8
  %i.mg = shl i8 %.1.tr210.i, 4
  %i.mh = or disjoint i8 %i.mg, 2
  %i.mi = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i396.i to i64
  %umax2425.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i396.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i402.i)
  %wide.trip.count2426.i = zext i32 %umax2425.i to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit400.i"
  %indvars.iv2422.i = phi i64 [ %indvars.iv.next2423.i, %bb.aj ], [ %i.mi, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit400.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i403.i, label %bb.ah, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit406.i", !prof !267

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5193
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit406.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit406.i": ; preds = %bb.ah, %bb.ag
  %exitcond2427.not.i = icmp eq i64 %indvars.iv2422.i, %wide.trip.count2426.i
  br i1 %exitcond2427.not.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit406.i"
  %i.mj = add i32 %.1.i, 1                        ; 2 uses
  %i.mk = icmp eq i32 %i.mj, 16
  %spec.store.select3.i = select i1 %i.mk, i32 1, i32 %i.mj
  br label %bb.gr

bb.aj:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit406.i"
  %i.ml = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.mm = getelementptr inbounds nuw [20 x i8], ptr %i.ml, i64 %indvars.iv2422.i
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 15
  store i8 %i.mh, ptr %i.mn, align 1, !tbaa !280
  %indvars.iv.next2423.i = add nuw nsw i64 %indvars.iv2422.i, 1
  br label %bb.ag, !llvm.loop !4773

bb.ak:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5194)
  call void @llvm.experimental.noalias.scope.decl(metadata !5195)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %10, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.mp = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5196, !noundef !293
  store i8 %i.mp, ptr %i.mo, align 8, !tbaa !1867, !alias.scope !5196
  %i.mq = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !1870, !alias.scope !5194
  %.promoted.i.i.i.i.i.i.i408.i = load i32, ptr %10, align 8, !tbaa !1871, !alias.scope !5194
  %i.ms = add i32 %.promoted.i.i.i.i.i.i.i408.i, %i.mr
  store i32 %i.ms, ptr %10, align 8, !tbaa !1871, !alias.scope !5194
  %i.mt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i409.i = load i32, ptr %i.mu, align 8, !tbaa !1868, !alias.scope !5194 ; 2 uses
  %.not215.i.i.i.i.i.i.i410.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i409.i, 0
  br i1 %.not215.i.i.i.i.i.i.i410.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i", label %.lr.ph.i.i3.i.i.i.i.i411.i

.lr.ph.i.i3.i.i.i.i.i411.i:                       ; preds = %bb.ak
  %i.mv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !1870, !alias.scope !5194 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %10, i64 56
  %.val2.i.i.i.i.i.i.i.i.i412.i = load ptr, ptr %i.mz, align 8, !alias.scope !5194
  %i.na = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.val.i.i.i.i.i.i.i.i.i413.i = load ptr, ptr %i.na, align 8, !alias.scope !5194
  %.promoted19.i.i.i.i.i.i.i414.i = load i32, ptr %i.mt, align 8, !tbaa !1871, !alias.scope !5194
  %.promoted14.i.i.pre.i.i.i.i.i.i.i415.i = load ptr, ptr %i.mv, align 8, !alias.scope !5194
  %.promoted15.i.i.pre.i.i.i.i.i.i.i416.i = load i32, ptr %i.my, align 4, !alias.scope !5194
  br label %bb.al

bb.al:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i", %.lr.ph.i.i3.i.i.i.i.i411.i
  %i.nb = phi i32 [ %i.nn, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i416.i, %.lr.ph.i.i3.i.i.i.i.i411.i ] ; 2 uses
  %i.nc = phi ptr [ %i.ni, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i415.i, %.lr.ph.i.i3.i.i.i.i.i411.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i420.i = phi i32 [ %i.nj, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i" ], [ %.promoted.i.i2.i.i.i.i.i409.i, %.lr.ph.i.i3.i.i.i.i.i411.i ] ; 3 uses
  %i.nd = phi i32 [ %i.no, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i" ], [ %.promoted19.i.i.i.i.i.i.i414.i, %.lr.ph.i.i3.i.i.i.i.i411.i ] ; 2 uses
  %i.ne = add i32 %.val112.i.i.i.i.i.i.i.i.i420.i, -1 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i423.i1974 = icmp eq i32 %i.ne, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i423.i1974, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i
  %i.ng = add i32 %i.nj, -1                       ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ni, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i423.i = icmp eq i32 %i.ng, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i423.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i: ; preds = %bb.al, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i
  %i.ni = phi ptr [ %i.nh, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i ], [ %i.nf, %bb.al ] ; 5 uses
  %i.nj = phi i32 [ %i.ng, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i ], [ %i.ne, %bb.al ] ; 4 uses
  %i.nk = phi i32 [ %i.no, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i ], [ %i.nd, %bb.al ]
  %i.nl = phi ptr [ %i.ni, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i ], [ %i.nc, %bb.al ]
  %i.nm = phi i32 [ %i.nn, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i ], [ %i.nb, %bb.al ]
  %i.nn = add i32 %i.nm, 1                        ; 4 uses
  %i.no = add i32 %i.nk, %i.mx                    ; 5 uses
  %i.np = getelementptr i8, ptr %i.nl, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i425.i = load i8, ptr %i.np, align 2, !tbaa !280, !noalias !5194
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i425.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i426.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i426.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i
  store i32 %i.no, ptr %i.mt, align 8, !tbaa !1871, !alias.scope !5194
  store i32 %i.nj, ptr %i.mu, align 8, !tbaa !1868, !alias.scope !5194
  store i32 %i.nn, ptr %i.my, align 4, !tbaa !1872, !alias.scope !5194
  store ptr %i.ni, ptr %i.mv, align 8, !tbaa !1869, !alias.scope !5194
  %i.nq = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i413.i, align 8, !tbaa !1853, !noalias !5194
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 96
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !607, !noalias !5194 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i1985 = add i32 %i.no, 1 ; 2 uses
  %i.nt = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i1985, %i.ns
  br i1 %i.nt, label %.lr.ph1987.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i"

.lr.ph1987.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i426.i
  %i.nu = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i412.i, align 8, !tbaa !662, !noalias !5194
  br label %.lr.ph1987

bb.am:                                            ; preds = %.lr.ph1987
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i1986, 1 ; 2 uses
  %i.nv = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i, %i.ns
  br i1 %i.nv, label %.lr.ph1987, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i", !llvm.loop !186

.lr.ph1987:                                       ; preds = %.lr.ph1987.preheader, %bb.am
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i1986 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i, %bb.am ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i1985, %.lr.ph1987.preheader ] ; 2 uses
  %i.nw = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i428.i1986 to i64
  %i.nx = getelementptr inbounds nuw [20 x i8], ptr %i.nu, i64 %i.nw ; 2 uses
  %i.ny = getelementptr i8, ptr %i.nx, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i431.i = load i8, ptr %i.ny, align 2, !tbaa !280, !noalias !5194
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i432.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i431.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i432.i, label %bb.am, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i": ; preds = %.lr.ph1987
  %i.nz = getelementptr i8, ptr %i.nx, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i434.i = load i16, ptr %i.nz, align 4, !tbaa !280, !noalias !5194
  %i.oa = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i434.i, 31
  %i.ob = zext nneg i16 %i.oa to i32
  %i.oc = shl nuw i32 1, %i.ob
  %i.od = and i32 %i.oc, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i435.i = icmp eq i32 %i.od, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i435.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i", label %bb.al, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i": ; preds = %bb.al, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i
  %.lcssa1543 = phi i32 [ %i.ng, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i ], [ %i.ne, %bb.al ]
  %.lcssa1540 = phi ptr [ %i.nh, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i421.i ], [ %i.nf, %bb.al ]
  %i.oe = mul i32 %.val112.i.i.i.i.i.i.i.i.i420.i, %i.mx
  %i.of = add i32 %i.nd, %i.oe
  %i.og = add i32 %.val112.i.i.i.i.i.i.i.i.i420.i, %i.nb
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i"
  %i.oh = phi i32 [ %.lcssa1543, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i" ], [ %i.nj, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i ]
  %i.oi = phi ptr [ %.lcssa1540, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i" ], [ %i.ni, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i ]
  %.lcssa2659.sink.i = phi i32 [ %i.of, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i" ], [ %i.no, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i ]
  %.lcssa2653.sink.i = phi i32 [ %i.og, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.loopexit.i" ], [ %i.nn, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i424.i ]
  store i32 %.lcssa2659.sink.i, ptr %i.mt, align 8, !tbaa !1871, !alias.scope !5194
  store i32 %i.oh, ptr %i.mu, align 8, !tbaa !1868, !alias.scope !5194
  store i32 %.lcssa2653.sink.i, ptr %i.my, align 4, !tbaa !1872, !alias.scope !5194
  store ptr %i.oi, ptr %i.mv, align 8, !tbaa !1869, !alias.scope !5194
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i433.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i426.i, %bb.am, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.sink.split.i", %bb.ak
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #63
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i438.i = load i32, ptr %i.oj, align 8, !tbaa !324, !noalias !5197 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !1868, !noalias !5197
  %.not.i.i.i.i.i.i.i.i.i.i.i.i439.i = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i439.i, label %bb.an, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit442.i", !prof !267

bb.an:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5197
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit442.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit442.i": ; preds = %bb.an, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit436.i"
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i444.i = load i32, ptr %i.om, align 8, !tbaa !324, !noalias !5198
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !1868, !noalias !5198
  %.not.i.i.i.i.i.i.i.i.i.i.i.i445.i = icmp eq i32 %i.oo, 0
  %.1.tr209.i = trunc i32 %.1.i to i8
  %i.op = shl i8 %.1.tr209.i, 4
  %i.oq = or disjoint i8 %i.op, 3
  %i.or = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i438.i to i64
  %umax2419.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i438.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i444.i)
  %wide.trip.count2420.i = zext i32 %umax2419.i to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit442.i"
  %indvars.iv2416.i = phi i64 [ %indvars.iv.next2417.i, %bb.ar ], [ %i.or, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit442.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i445.i, label %bb.ap, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit448.i", !prof !267

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5198
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit448.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit448.i": ; preds = %bb.ap, %bb.ao
  %exitcond2421.not.i = icmp eq i64 %indvars.iv2416.i, %wide.trip.count2420.i
  br i1 %exitcond2421.not.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit448.i"
  %i.os = add i32 %.1.i, 1                        ; 2 uses
  %i.ot = icmp eq i32 %i.os, 16
  %spec.store.select4.i = select i1 %i.ot, i32 1, i32 %i.os
  br label %bb.gr

bb.ar:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit448.i"
  %i.ou = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.ov = getelementptr inbounds nuw [20 x i8], ptr %i.ou, i64 %indvars.iv2416.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 15
  store i8 %i.oq, ptr %i.ow, align 1, !tbaa !280
  %indvars.iv.next2417.i = add nuw nsw i64 %indvars.iv2416.i, 1
  br label %bb.ao, !llvm.loop !4794

bb.as:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5199)
  call void @llvm.experimental.noalias.scope.decl(metadata !5200)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %11, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.ox = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.oy = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5201, !noundef !293
  store i8 %i.oy, ptr %i.ox, align 8, !tbaa !1867, !alias.scope !5201
  %i.oz = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !1870, !alias.scope !5199
  %.promoted.i.i.i.i.i.i.i450.i = load i32, ptr %11, align 8, !tbaa !1871, !alias.scope !5199
  %i.pb = add i32 %.promoted.i.i.i.i.i.i.i450.i, %i.pa
  store i32 %i.pb, ptr %11, align 8, !tbaa !1871, !alias.scope !5199
  %i.pc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i451.i = load i32, ptr %i.pd, align 8, !tbaa !1868, !alias.scope !5199 ; 2 uses
  %.not215.i.i.i.i.i.i.i452.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i451.i, 0
  br i1 %.not215.i.i.i.i.i.i.i452.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i", label %.lr.ph.i.i3.i.i.i.i.i453.i

.lr.ph.i.i3.i.i.i.i.i453.i:                       ; preds = %bb.as
  %i.pe = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !1870, !alias.scope !5199 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %11, i64 28 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %11, i64 56
  %.val2.i.i.i.i.i.i.i.i.i454.i = load ptr, ptr %i.pi, align 8, !alias.scope !5199
  %i.pj = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.val.i.i.i.i.i.i.i.i.i455.i = load ptr, ptr %i.pj, align 8, !alias.scope !5199
  %.promoted19.i.i.i.i.i.i.i456.i = load i32, ptr %i.pc, align 8, !tbaa !1871, !alias.scope !5199
  %.promoted14.i.i.pre.i.i.i.i.i.i.i457.i = load ptr, ptr %i.pe, align 8, !alias.scope !5199
  %.promoted15.i.i.pre.i.i.i.i.i.i.i458.i = load i32, ptr %i.ph, align 4, !alias.scope !5199
  br label %bb.at

bb.at:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i", %.lr.ph.i.i3.i.i.i.i.i453.i
  %i.pk = phi i32 [ %i.pw, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i458.i, %.lr.ph.i.i3.i.i.i.i.i453.i ] ; 2 uses
  %i.pl = phi ptr [ %i.pr, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i457.i, %.lr.ph.i.i3.i.i.i.i.i453.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i462.i = phi i32 [ %i.ps, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i" ], [ %.promoted.i.i2.i.i.i.i.i451.i, %.lr.ph.i.i3.i.i.i.i.i453.i ] ; 3 uses
  %i.pm = phi i32 [ %i.px, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i" ], [ %.promoted19.i.i.i.i.i.i.i456.i, %.lr.ph.i.i3.i.i.i.i.i453.i ] ; 2 uses
  %i.pn = add i32 %.val112.i.i.i.i.i.i.i.i.i462.i, -1 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i465.i1960 = icmp eq i32 %i.pn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i465.i1960, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i
  %i.pp = add i32 %i.ps, -1                       ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pr, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i465.i = icmp eq i32 %i.pp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i465.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i: ; preds = %bb.at, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i
  %i.pr = phi ptr [ %i.pq, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i ], [ %i.po, %bb.at ] ; 5 uses
  %i.ps = phi i32 [ %i.pp, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i ], [ %i.pn, %bb.at ] ; 4 uses
  %i.pt = phi i32 [ %i.px, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i ], [ %i.pm, %bb.at ]
  %i.pu = phi ptr [ %i.pr, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i ], [ %i.pl, %bb.at ]
  %i.pv = phi i32 [ %i.pw, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i ], [ %i.pk, %bb.at ]
  %i.pw = add i32 %i.pv, 1                        ; 4 uses
  %i.px = add i32 %i.pt, %i.pg                    ; 5 uses
  %i.py = getelementptr i8, ptr %i.pu, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i467.i = load i8, ptr %i.py, align 2, !tbaa !280, !noalias !5199
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i467.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i468.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i468.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i
  store i32 %i.px, ptr %i.pc, align 8, !tbaa !1871, !alias.scope !5199
  store i32 %i.ps, ptr %i.pd, align 8, !tbaa !1868, !alias.scope !5199
  store i32 %i.pw, ptr %i.ph, align 4, !tbaa !1872, !alias.scope !5199
  store ptr %i.pr, ptr %i.pe, align 8, !tbaa !1869, !alias.scope !5199
  %i.pz = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i455.i, align 8, !tbaa !1853, !noalias !5199
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 96
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !607, !noalias !5199 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i1971 = add i32 %i.px, 1 ; 2 uses
  %i.qc = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i1971, %i.qb
  br i1 %i.qc, label %.lr.ph1973.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i"

.lr.ph1973.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i468.i
  %i.qd = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i454.i, align 8, !tbaa !662, !noalias !5199
  br label %.lr.ph1973

bb.au:                                            ; preds = %.lr.ph1973
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i1972, 1 ; 2 uses
  %i.qe = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i, %i.qb
  br i1 %i.qe, label %.lr.ph1973, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i", !llvm.loop !186

.lr.ph1973:                                       ; preds = %.lr.ph1973.preheader, %bb.au
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i1972 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i, %bb.au ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i1971, %.lr.ph1973.preheader ] ; 2 uses
  %i.qf = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i470.i1972 to i64
  %i.qg = getelementptr inbounds nuw [20 x i8], ptr %i.qd, i64 %i.qf ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i473.i = load i8, ptr %i.qh, align 2, !tbaa !280, !noalias !5199
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i474.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i473.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i474.i, label %bb.au, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i": ; preds = %.lr.ph1973
  %i.qi = getelementptr i8, ptr %i.qg, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i476.i = load i16, ptr %i.qi, align 4, !tbaa !280, !noalias !5199
  %i.qj = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i476.i, 31
  %i.qk = zext nneg i16 %i.qj to i32
  %i.ql = shl nuw i32 1, %i.qk
  %i.qm = and i32 %i.ql, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i477.i = icmp eq i32 %i.qm, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i477.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i", label %bb.at, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i": ; preds = %bb.at, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i
  %.lcssa1565 = phi i32 [ %i.pp, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i ], [ %i.pn, %bb.at ]
  %.lcssa1562 = phi ptr [ %i.pq, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i463.i ], [ %i.po, %bb.at ]
  %i.qn = mul i32 %.val112.i.i.i.i.i.i.i.i.i462.i, %i.pg
  %i.qo = add i32 %i.pm, %i.qn
  %i.qp = add i32 %.val112.i.i.i.i.i.i.i.i.i462.i, %i.pk
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i"
  %i.qq = phi i32 [ %.lcssa1565, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i" ], [ %i.ps, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i ]
  %i.qr = phi ptr [ %.lcssa1562, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i" ], [ %i.pr, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i ]
  %.lcssa2680.sink.i = phi i32 [ %i.qo, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i" ], [ %i.px, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i ]
  %.lcssa2674.sink.i = phi i32 [ %i.qp, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.loopexit.i" ], [ %i.pw, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i466.i ]
  store i32 %.lcssa2680.sink.i, ptr %i.pc, align 8, !tbaa !1871, !alias.scope !5199
  store i32 %i.qq, ptr %i.pd, align 8, !tbaa !1868, !alias.scope !5199
  store i32 %.lcssa2674.sink.i, ptr %i.ph, align 4, !tbaa !1872, !alias.scope !5199
  store ptr %i.qr, ptr %i.pe, align 8, !tbaa !1869, !alias.scope !5199
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i475.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i468.i, %bb.au, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.sink.split.i", %bb.as
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #63
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i480.i = load i32, ptr %i.qs, align 8, !tbaa !324, !noalias !5202 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !1868, !noalias !5202
  %.not.i.i.i.i.i.i.i.i.i.i.i.i481.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i481.i, label %bb.av, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit484.i", !prof !267

bb.av:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5202
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit484.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit484.i": ; preds = %bb.av, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit478.i"
  %i.qv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i486.i = load i32, ptr %i.qv, align 8, !tbaa !324, !noalias !5203
  %i.qw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.qx = load i32, ptr %i.qw, align 8, !tbaa !1868, !noalias !5203
  %.not.i.i.i.i.i.i.i.i.i.i.i.i487.i = icmp eq i32 %i.qx, 0
  %.1.tr208.i = trunc i32 %.1.i to i8
  %i.qy = shl i8 %.1.tr208.i, 4
  %i.qz = or disjoint i8 %i.qy, 4
  %i.ra = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i480.i to i64
  %umax2413.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i480.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i486.i)
  %wide.trip.count2414.i = zext i32 %umax2413.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %bb.az, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit484.i"
  %indvars.iv2410.i = phi i64 [ %indvars.iv.next2411.i, %bb.az ], [ %i.ra, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit484.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i487.i, label %bb.ax, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit490.i", !prof !267

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5203
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit490.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit490.i": ; preds = %bb.ax, %bb.aw
  %exitcond2415.not.i = icmp eq i64 %indvars.iv2410.i, %wide.trip.count2414.i
  br i1 %exitcond2415.not.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit490.i"
  %i.rb = add i32 %.1.i, 1                        ; 2 uses
  %i.rc = icmp eq i32 %i.rb, 16
  %spec.store.select5.i = select i1 %i.rc, i32 1, i32 %i.rb
  br label %bb.gr

bb.az:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit490.i"
  %i.rd = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.re = getelementptr inbounds nuw [20 x i8], ptr %i.rd, i64 %indvars.iv2410.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 15
  store i8 %i.qz, ptr %i.rf, align 1, !tbaa !280
  %indvars.iv.next2411.i = add nuw nsw i64 %indvars.iv2410.i, 1
  br label %bb.aw, !llvm.loop !4815

bb.ba:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5204)
  call void @llvm.experimental.noalias.scope.decl(metadata !5205)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %12, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.rg = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.rh = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5206, !noundef !293
  store i8 %i.rh, ptr %i.rg, align 8, !tbaa !1867, !alias.scope !5206
  %i.ri = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !1870, !alias.scope !5204
  %.promoted.i.i.i.i.i.i.i492.i = load i32, ptr %12, align 8, !tbaa !1871, !alias.scope !5204
  %i.rk = add i32 %.promoted.i.i.i.i.i.i.i492.i, %i.rj
  store i32 %i.rk, ptr %12, align 8, !tbaa !1871, !alias.scope !5204
  %i.rl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i493.i = load i32, ptr %i.rm, align 8, !tbaa !1868, !alias.scope !5204 ; 2 uses
  %.not215.i.i.i.i.i.i.i494.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i493.i, 0
  br i1 %.not215.i.i.i.i.i.i.i494.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i", label %.lr.ph.i.i3.i.i.i.i.i495.i

.lr.ph.i.i3.i.i.i.i.i495.i:                       ; preds = %bb.ba
  %i.rn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !1870, !alias.scope !5204 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %12, i64 56
  %.val2.i.i.i.i.i.i.i.i.i496.i = load ptr, ptr %i.rr, align 8, !alias.scope !5204
  %i.rs = getelementptr inbounds nuw i8, ptr %12, i64 48
  %.val.i.i.i.i.i.i.i.i.i497.i = load ptr, ptr %i.rs, align 8, !alias.scope !5204
  %.promoted19.i.i.i.i.i.i.i498.i = load i32, ptr %i.rl, align 8, !tbaa !1871, !alias.scope !5204
  %.promoted14.i.i.pre.i.i.i.i.i.i.i499.i = load ptr, ptr %i.rn, align 8, !alias.scope !5204
  %.promoted15.i.i.pre.i.i.i.i.i.i.i500.i = load i32, ptr %i.rq, align 4, !alias.scope !5204
  br label %bb.bb

bb.bb:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i", %.lr.ph.i.i3.i.i.i.i.i495.i
  %i.rt = phi i32 [ %i.sf, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i500.i, %.lr.ph.i.i3.i.i.i.i.i495.i ] ; 2 uses
  %i.ru = phi ptr [ %i.sa, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i499.i, %.lr.ph.i.i3.i.i.i.i.i495.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i504.i = phi i32 [ %i.sb, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i" ], [ %.promoted.i.i2.i.i.i.i.i493.i, %.lr.ph.i.i3.i.i.i.i.i495.i ] ; 3 uses
  %i.rv = phi i32 [ %i.sg, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i" ], [ %.promoted19.i.i.i.i.i.i.i498.i, %.lr.ph.i.i3.i.i.i.i.i495.i ] ; 2 uses
  %i.rw = add i32 %.val112.i.i.i.i.i.i.i.i.i504.i, -1 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i507.i1946 = icmp eq i32 %i.rw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i507.i1946, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i
  %i.ry = add i32 %i.sb, -1                       ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.sa, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i507.i = icmp eq i32 %i.ry, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i507.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i: ; preds = %bb.bb, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i
  %i.sa = phi ptr [ %i.rz, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i ], [ %i.rx, %bb.bb ] ; 5 uses
  %i.sb = phi i32 [ %i.ry, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i ], [ %i.rw, %bb.bb ] ; 4 uses
  %i.sc = phi i32 [ %i.sg, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i ], [ %i.rv, %bb.bb ]
  %i.sd = phi ptr [ %i.sa, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i ], [ %i.ru, %bb.bb ]
  %i.se = phi i32 [ %i.sf, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i ], [ %i.rt, %bb.bb ]
  %i.sf = add i32 %i.se, 1                        ; 4 uses
  %i.sg = add i32 %i.sc, %i.rp                    ; 5 uses
  %i.sh = getelementptr i8, ptr %i.sd, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i509.i = load i8, ptr %i.sh, align 2, !tbaa !280, !noalias !5204
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i509.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i510.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i510.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i
  store i32 %i.sg, ptr %i.rl, align 8, !tbaa !1871, !alias.scope !5204
  store i32 %i.sb, ptr %i.rm, align 8, !tbaa !1868, !alias.scope !5204
  store i32 %i.sf, ptr %i.rq, align 4, !tbaa !1872, !alias.scope !5204
  store ptr %i.sa, ptr %i.rn, align 8, !tbaa !1869, !alias.scope !5204
  %i.si = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i497.i, align 8, !tbaa !1853, !noalias !5204
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 96
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !607, !noalias !5204 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i1957 = add i32 %i.sg, 1 ; 2 uses
  %i.sl = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i1957, %i.sk
  br i1 %i.sl, label %.lr.ph1959.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i"

.lr.ph1959.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i510.i
  %i.sm = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i496.i, align 8, !tbaa !662, !noalias !5204
  br label %.lr.ph1959

bb.bc:                                            ; preds = %.lr.ph1959
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i1958, 1 ; 2 uses
  %i.sn = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i, %i.sk
  br i1 %i.sn, label %.lr.ph1959, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i", !llvm.loop !186

.lr.ph1959:                                       ; preds = %.lr.ph1959.preheader, %bb.bc
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i1958 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i, %bb.bc ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i1957, %.lr.ph1959.preheader ] ; 2 uses
  %i.so = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i512.i1958 to i64
  %i.sp = getelementptr inbounds nuw [20 x i8], ptr %i.sm, i64 %i.so ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sp, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i515.i = load i8, ptr %i.sq, align 2, !tbaa !280, !noalias !5204
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i516.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i515.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i516.i, label %bb.bc, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i": ; preds = %.lr.ph1959
  %i.sr = getelementptr i8, ptr %i.sp, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i518.i = load i16, ptr %i.sr, align 4, !tbaa !280, !noalias !5204
  %i.ss = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i518.i, 31
  %i.st = zext nneg i16 %i.ss to i32
  %i.su = shl nuw i32 1, %i.st
  %i.sv = and i32 %i.su, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i519.i = icmp eq i32 %i.sv, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i519.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i", label %bb.bb, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i": ; preds = %bb.bb, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i
  %.lcssa1587 = phi i32 [ %i.ry, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i ], [ %i.rw, %bb.bb ]
  %.lcssa1584 = phi ptr [ %i.rz, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i505.i ], [ %i.rx, %bb.bb ]
  %i.sw = mul i32 %.val112.i.i.i.i.i.i.i.i.i504.i, %i.rp
  %i.sx = add i32 %i.rv, %i.sw
  %i.sy = add i32 %.val112.i.i.i.i.i.i.i.i.i504.i, %i.rt
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i"
  %i.sz = phi i32 [ %.lcssa1587, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i" ], [ %i.sb, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i ]
  %i.ta = phi ptr [ %.lcssa1584, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i" ], [ %i.sa, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i ]
  %.lcssa2701.sink.i = phi i32 [ %i.sx, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i" ], [ %i.sg, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i ]
  %.lcssa2695.sink.i = phi i32 [ %i.sy, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.loopexit.i" ], [ %i.sf, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i508.i ]
  store i32 %.lcssa2701.sink.i, ptr %i.rl, align 8, !tbaa !1871, !alias.scope !5204
  store i32 %i.sz, ptr %i.rm, align 8, !tbaa !1868, !alias.scope !5204
  store i32 %.lcssa2695.sink.i, ptr %i.rq, align 4, !tbaa !1872, !alias.scope !5204
  store ptr %i.ta, ptr %i.rn, align 8, !tbaa !1869, !alias.scope !5204
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i517.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i510.i, %bb.bc, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.sink.split.i", %bb.ba
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #63
  %i.tb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i522.i = load i32, ptr %i.tb, align 8, !tbaa !324, !noalias !5207 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !1868, !noalias !5207
  %.not.i.i.i.i.i.i.i.i.i.i.i.i523.i = icmp eq i32 %i.td, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i523.i, label %bb.bd, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit526.i", !prof !267

bb.bd:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5207
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit526.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit526.i": ; preds = %bb.bd, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit520.i"
  %i.te = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i528.i = load i32, ptr %i.te, align 8, !tbaa !324, !noalias !5208
  %i.tf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !1868, !noalias !5208
  %.not.i.i.i.i.i.i.i.i.i.i.i.i529.i = icmp eq i32 %i.tg, 0
  %.1.tr207.i = trunc i32 %.1.i to i8
  %i.th = shl i8 %.1.tr207.i, 4
  %i.ti = or disjoint i8 %i.th, 5
  %i.tj = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i522.i to i64
  %umax2407.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i522.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i528.i)
  %wide.trip.count2408.i = zext i32 %umax2407.i to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit526.i"
  %indvars.iv2404.i = phi i64 [ %indvars.iv.next2405.i, %bb.bh ], [ %i.tj, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit526.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i529.i, label %bb.bf, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit532.i", !prof !267

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5208
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit532.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit532.i": ; preds = %bb.bf, %bb.be
  %exitcond2409.not.i = icmp eq i64 %indvars.iv2404.i, %wide.trip.count2408.i
  br i1 %exitcond2409.not.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit532.i"
  %i.tk = add i32 %.1.i, 1                        ; 2 uses
  %i.tl = icmp eq i32 %i.tk, 16
  %spec.store.select6.i = select i1 %i.tl, i32 1, i32 %i.tk
  br label %bb.gr

bb.bh:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit532.i"
  %i.tm = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.tn = getelementptr inbounds nuw [20 x i8], ptr %i.tm, i64 %indvars.iv2404.i
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 15
  store i8 %i.ti, ptr %i.to, align 1, !tbaa !280
  %indvars.iv.next2405.i = add nuw nsw i64 %indvars.iv2404.i, 1
  br label %bb.be, !llvm.loop !4836

bb.bi:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5209)
  call void @llvm.experimental.noalias.scope.decl(metadata !5210)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %13, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.tq = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5211, !noundef !293
  store i8 %i.tq, ptr %i.tp, align 8, !tbaa !1867, !alias.scope !5211
  %i.tr = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !1870, !alias.scope !5209
  %.promoted.i.i.i.i.i.i.i534.i = load i32, ptr %13, align 8, !tbaa !1871, !alias.scope !5209
  %i.tt = add i32 %.promoted.i.i.i.i.i.i.i534.i, %i.ts
  store i32 %i.tt, ptr %13, align 8, !tbaa !1871, !alias.scope !5209
  %i.tu = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i535.i = load i32, ptr %i.tv, align 8, !tbaa !1868, !alias.scope !5209 ; 2 uses
  %.not215.i.i.i.i.i.i.i536.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i535.i, 0
  br i1 %.not215.i.i.i.i.i.i.i536.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i", label %.lr.ph.i.i3.i.i.i.i.i537.i

.lr.ph.i.i3.i.i.i.i.i537.i:                       ; preds = %bb.bi
  %i.tw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !1870, !alias.scope !5209 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %13, i64 28 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %13, i64 56
  %.val2.i.i.i.i.i.i.i.i.i538.i = load ptr, ptr %i.ua, align 8, !alias.scope !5209
  %i.ub = getelementptr inbounds nuw i8, ptr %13, i64 48
  %.val.i.i.i.i.i.i.i.i.i539.i = load ptr, ptr %i.ub, align 8, !alias.scope !5209
  %.promoted19.i.i.i.i.i.i.i540.i = load i32, ptr %i.tu, align 8, !tbaa !1871, !alias.scope !5209
  %.promoted14.i.i.pre.i.i.i.i.i.i.i541.i = load ptr, ptr %i.tw, align 8, !alias.scope !5209
  %.promoted15.i.i.pre.i.i.i.i.i.i.i542.i = load i32, ptr %i.tz, align 4, !alias.scope !5209
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i", %.lr.ph.i.i3.i.i.i.i.i537.i
  %i.uc = phi i32 [ %i.uo, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i542.i, %.lr.ph.i.i3.i.i.i.i.i537.i ] ; 2 uses
  %i.ud = phi ptr [ %i.uj, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i541.i, %.lr.ph.i.i3.i.i.i.i.i537.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i546.i = phi i32 [ %i.uk, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i" ], [ %.promoted.i.i2.i.i.i.i.i535.i, %.lr.ph.i.i3.i.i.i.i.i537.i ] ; 3 uses
  %i.ue = phi i32 [ %i.up, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i" ], [ %.promoted19.i.i.i.i.i.i.i540.i, %.lr.ph.i.i3.i.i.i.i.i537.i ] ; 2 uses
  %i.uf = add i32 %.val112.i.i.i.i.i.i.i.i.i546.i, -1 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i549.i1932 = icmp eq i32 %i.uf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i549.i1932, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i
  %i.uh = add i32 %i.uk, -1                       ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uj, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i549.i = icmp eq i32 %i.uh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i549.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i: ; preds = %bb.bj, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i
  %i.uj = phi ptr [ %i.ui, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i ], [ %i.ug, %bb.bj ] ; 5 uses
  %i.uk = phi i32 [ %i.uh, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i ], [ %i.uf, %bb.bj ] ; 4 uses
  %i.ul = phi i32 [ %i.up, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i ], [ %i.ue, %bb.bj ]
  %i.um = phi ptr [ %i.uj, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i ], [ %i.ud, %bb.bj ]
  %i.un = phi i32 [ %i.uo, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i ], [ %i.uc, %bb.bj ]
  %i.uo = add i32 %i.un, 1                        ; 4 uses
  %i.up = add i32 %i.ul, %i.ty                    ; 5 uses
  %i.uq = getelementptr i8, ptr %i.um, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i551.i = load i8, ptr %i.uq, align 2, !tbaa !280, !noalias !5209
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i551.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i552.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i552.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i
  store i32 %i.up, ptr %i.tu, align 8, !tbaa !1871, !alias.scope !5209
  store i32 %i.uk, ptr %i.tv, align 8, !tbaa !1868, !alias.scope !5209
  store i32 %i.uo, ptr %i.tz, align 4, !tbaa !1872, !alias.scope !5209
  store ptr %i.uj, ptr %i.tw, align 8, !tbaa !1869, !alias.scope !5209
  %i.ur = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i539.i, align 8, !tbaa !1853, !noalias !5209
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 96
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !607, !noalias !5209 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i1943 = add i32 %i.up, 1 ; 2 uses
  %i.uu = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i1943, %i.ut
  br i1 %i.uu, label %.lr.ph1945.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i"

.lr.ph1945.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i552.i
  %i.uv = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i538.i, align 8, !tbaa !662, !noalias !5209
  br label %.lr.ph1945

bb.bk:                                            ; preds = %.lr.ph1945
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i1944, 1 ; 2 uses
  %i.uw = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i, %i.ut
  br i1 %i.uw, label %.lr.ph1945, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i", !llvm.loop !186

.lr.ph1945:                                       ; preds = %.lr.ph1945.preheader, %bb.bk
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i1944 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i, %bb.bk ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i1943, %.lr.ph1945.preheader ] ; 2 uses
  %i.ux = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i554.i1944 to i64
  %i.uy = getelementptr inbounds nuw [20 x i8], ptr %i.uv, i64 %i.ux ; 2 uses
  %i.uz = getelementptr i8, ptr %i.uy, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i557.i = load i8, ptr %i.uz, align 2, !tbaa !280, !noalias !5209
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i558.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i557.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i558.i, label %bb.bk, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i": ; preds = %.lr.ph1945
  %i.va = getelementptr i8, ptr %i.uy, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i560.i = load i16, ptr %i.va, align 4, !tbaa !280, !noalias !5209
  %i.vb = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i560.i, 31
  %i.vc = zext nneg i16 %i.vb to i32
  %i.vd = shl nuw i32 1, %i.vc
  %i.ve = and i32 %i.vd, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i561.i = icmp eq i32 %i.ve, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i561.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i", label %bb.bj, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i": ; preds = %bb.bj, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i
  %.lcssa1609 = phi i32 [ %i.uh, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i ], [ %i.uf, %bb.bj ]
  %.lcssa1606 = phi ptr [ %i.ui, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i547.i ], [ %i.ug, %bb.bj ]
  %i.vf = mul i32 %.val112.i.i.i.i.i.i.i.i.i546.i, %i.ty
  %i.vg = add i32 %i.ue, %i.vf
  %i.vh = add i32 %.val112.i.i.i.i.i.i.i.i.i546.i, %i.uc
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i"
  %i.vi = phi i32 [ %.lcssa1609, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i" ], [ %i.uk, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i ]
  %i.vj = phi ptr [ %.lcssa1606, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i" ], [ %i.uj, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i ]
  %.lcssa2722.sink.i = phi i32 [ %i.vg, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i" ], [ %i.up, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i ]
  %.lcssa2716.sink.i = phi i32 [ %i.vh, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.loopexit.i" ], [ %i.uo, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i550.i ]
  store i32 %.lcssa2722.sink.i, ptr %i.tu, align 8, !tbaa !1871, !alias.scope !5209
  store i32 %i.vi, ptr %i.tv, align 8, !tbaa !1868, !alias.scope !5209
  store i32 %.lcssa2716.sink.i, ptr %i.tz, align 4, !tbaa !1872, !alias.scope !5209
  store ptr %i.vj, ptr %i.tw, align 8, !tbaa !1869, !alias.scope !5209
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i559.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i552.i, %bb.bk, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.sink.split.i", %bb.bi
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #63
  %i.vk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i564.i = load i32, ptr %i.vk, align 8, !tbaa !324, !noalias !5212 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !1868, !noalias !5212
  %.not.i.i.i.i.i.i.i.i.i.i.i.i565.i = icmp eq i32 %i.vm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i565.i, label %bb.bl, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit568.i", !prof !267

bb.bl:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5212
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit568.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit568.i": ; preds = %bb.bl, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit562.i"
  %i.vn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i570.i = load i32, ptr %i.vn, align 8, !tbaa !324, !noalias !5213
  %i.vo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !1868, !noalias !5213
  %.not.i.i.i.i.i.i.i.i.i.i.i.i571.i = icmp eq i32 %i.vp, 0
  %.1.tr206.i = trunc i32 %.1.i to i8
  %i.vq = shl i8 %.1.tr206.i, 4
  %i.vr = or disjoint i8 %i.vq, 6
  %i.vs = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i564.i to i64
  %umax2401.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i564.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i570.i)
  %wide.trip.count2402.i = zext i32 %umax2401.i to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bp, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit568.i"
  %indvars.iv2398.i = phi i64 [ %indvars.iv.next2399.i, %bb.bp ], [ %i.vs, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit568.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i571.i, label %bb.bn, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit574.i", !prof !267

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5213
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit574.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit574.i": ; preds = %bb.bn, %bb.bm
  %exitcond2403.not.i = icmp eq i64 %indvars.iv2398.i, %wide.trip.count2402.i
  br i1 %exitcond2403.not.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit574.i"
  %i.vt = add i32 %.1.i, 1                        ; 2 uses
  %i.vu = icmp eq i32 %i.vt, 16
  %spec.store.select7.i = select i1 %i.vu, i32 1, i32 %i.vt
  br label %bb.gr

bb.bp:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit574.i"
  %i.vv = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.vw = getelementptr inbounds nuw [20 x i8], ptr %i.vv, i64 %indvars.iv2398.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 15
  store i8 %i.vr, ptr %i.vx, align 1, !tbaa !280
  %indvars.iv.next2399.i = add nuw nsw i64 %indvars.iv2398.i, 1
  br label %bb.bm, !llvm.loop !4857

bb.bq:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5214)
  call void @llvm.experimental.noalias.scope.decl(metadata !5215)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %14, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.vy = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.vz = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5216, !noundef !293
  store i8 %i.vz, ptr %i.vy, align 8, !tbaa !1867, !alias.scope !5216
  %i.wa = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !1870, !alias.scope !5214
  %.promoted.i.i.i.i.i.i.i576.i = load i32, ptr %14, align 8, !tbaa !1871, !alias.scope !5214
  %i.wc = add i32 %.promoted.i.i.i.i.i.i.i576.i, %i.wb
  store i32 %i.wc, ptr %14, align 8, !tbaa !1871, !alias.scope !5214
  %i.wd = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i577.i = load i32, ptr %i.we, align 8, !tbaa !1868, !alias.scope !5214 ; 2 uses
  %.not215.i.i.i.i.i.i.i578.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i577.i, 0
  br i1 %.not215.i.i.i.i.i.i.i578.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i", label %.lr.ph.i.i3.i.i.i.i.i579.i

.lr.ph.i.i3.i.i.i.i.i579.i:                       ; preds = %bb.bq
  %i.wf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !1870, !alias.scope !5214 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %14, i64 28 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %14, i64 56
  %.val2.i.i.i.i.i.i.i.i.i580.i = load ptr, ptr %i.wj, align 8, !alias.scope !5214
  %i.wk = getelementptr inbounds nuw i8, ptr %14, i64 48
  %.val.i.i.i.i.i.i.i.i.i581.i = load ptr, ptr %i.wk, align 8, !alias.scope !5214
  %.promoted19.i.i.i.i.i.i.i582.i = load i32, ptr %i.wd, align 8, !tbaa !1871, !alias.scope !5214
  %.promoted14.i.i.pre.i.i.i.i.i.i.i583.i = load ptr, ptr %i.wf, align 8, !alias.scope !5214
  %.promoted15.i.i.pre.i.i.i.i.i.i.i584.i = load i32, ptr %i.wi, align 4, !alias.scope !5214
  br label %bb.br

bb.br:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i", %.lr.ph.i.i3.i.i.i.i.i579.i
  %i.wl = phi i32 [ %i.wx, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i584.i, %.lr.ph.i.i3.i.i.i.i.i579.i ] ; 2 uses
  %i.wm = phi ptr [ %i.ws, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i583.i, %.lr.ph.i.i3.i.i.i.i.i579.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i588.i = phi i32 [ %i.wt, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i" ], [ %.promoted.i.i2.i.i.i.i.i577.i, %.lr.ph.i.i3.i.i.i.i.i579.i ] ; 3 uses
  %i.wn = phi i32 [ %i.wy, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i" ], [ %.promoted19.i.i.i.i.i.i.i582.i, %.lr.ph.i.i3.i.i.i.i.i579.i ] ; 2 uses
  %i.wo = add i32 %.val112.i.i.i.i.i.i.i.i.i588.i, -1 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i591.i1918 = icmp eq i32 %i.wo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i591.i1918, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i
  %i.wq = add i32 %i.wt, -1                       ; 3 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ws, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i591.i = icmp eq i32 %i.wq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i591.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i: ; preds = %bb.br, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i
  %i.ws = phi ptr [ %i.wr, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i ], [ %i.wp, %bb.br ] ; 5 uses
  %i.wt = phi i32 [ %i.wq, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i ], [ %i.wo, %bb.br ] ; 4 uses
  %i.wu = phi i32 [ %i.wy, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i ], [ %i.wn, %bb.br ]
  %i.wv = phi ptr [ %i.ws, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i ], [ %i.wm, %bb.br ]
  %i.ww = phi i32 [ %i.wx, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i ], [ %i.wl, %bb.br ]
  %i.wx = add i32 %i.ww, 1                        ; 4 uses
  %i.wy = add i32 %i.wu, %i.wh                    ; 5 uses
  %i.wz = getelementptr i8, ptr %i.wv, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i593.i = load i8, ptr %i.wz, align 2, !tbaa !280, !noalias !5214
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i593.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i594.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i594.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i
  store i32 %i.wy, ptr %i.wd, align 8, !tbaa !1871, !alias.scope !5214
  store i32 %i.wt, ptr %i.we, align 8, !tbaa !1868, !alias.scope !5214
  store i32 %i.wx, ptr %i.wi, align 4, !tbaa !1872, !alias.scope !5214
  store ptr %i.ws, ptr %i.wf, align 8, !tbaa !1869, !alias.scope !5214
  %i.xa = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i581.i, align 8, !tbaa !1853, !noalias !5214
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 96
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !607, !noalias !5214 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i1929 = add i32 %i.wy, 1 ; 2 uses
  %i.xd = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i1929, %i.xc
  br i1 %i.xd, label %.lr.ph1931.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i"

.lr.ph1931.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i594.i
  %i.xe = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i580.i, align 8, !tbaa !662, !noalias !5214
  br label %.lr.ph1931

bb.bs:                                            ; preds = %.lr.ph1931
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i1930, 1 ; 2 uses
  %i.xf = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i, %i.xc
  br i1 %i.xf, label %.lr.ph1931, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i", !llvm.loop !186

.lr.ph1931:                                       ; preds = %.lr.ph1931.preheader, %bb.bs
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i1930 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i, %bb.bs ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i1929, %.lr.ph1931.preheader ] ; 2 uses
  %i.xg = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i596.i1930 to i64
  %i.xh = getelementptr inbounds nuw [20 x i8], ptr %i.xe, i64 %i.xg ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i599.i = load i8, ptr %i.xi, align 2, !tbaa !280, !noalias !5214
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i600.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i599.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i600.i, label %bb.bs, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i": ; preds = %.lr.ph1931
  %i.xj = getelementptr i8, ptr %i.xh, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i602.i = load i16, ptr %i.xj, align 4, !tbaa !280, !noalias !5214
  %i.xk = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i602.i, 31
  %i.xl = zext nneg i16 %i.xk to i32
  %i.xm = shl nuw i32 1, %i.xl
  %i.xn = and i32 %i.xm, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i603.i = icmp eq i32 %i.xn, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i603.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i", label %bb.br, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i": ; preds = %bb.br, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i
  %.lcssa1631 = phi i32 [ %i.wq, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i ], [ %i.wo, %bb.br ]
  %.lcssa1628 = phi ptr [ %i.wr, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i589.i ], [ %i.wp, %bb.br ]
  %i.xo = mul i32 %.val112.i.i.i.i.i.i.i.i.i588.i, %i.wh
  %i.xp = add i32 %i.wn, %i.xo
  %i.xq = add i32 %.val112.i.i.i.i.i.i.i.i.i588.i, %i.wl
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i"
  %i.xr = phi i32 [ %.lcssa1631, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i" ], [ %i.wt, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i ]
  %i.xs = phi ptr [ %.lcssa1628, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i" ], [ %i.ws, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i ]
  %.lcssa2743.sink.i = phi i32 [ %i.xp, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i" ], [ %i.wy, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i ]
  %.lcssa2737.sink.i = phi i32 [ %i.xq, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.loopexit.i" ], [ %i.wx, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i592.i ]
  store i32 %.lcssa2743.sink.i, ptr %i.wd, align 8, !tbaa !1871, !alias.scope !5214
  store i32 %i.xr, ptr %i.we, align 8, !tbaa !1868, !alias.scope !5214
  store i32 %.lcssa2737.sink.i, ptr %i.wi, align 4, !tbaa !1872, !alias.scope !5214
  store ptr %i.xs, ptr %i.wf, align 8, !tbaa !1869, !alias.scope !5214
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i601.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i594.i, %bb.bs, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.sink.split.i", %bb.bq
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #63
  %i.xt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i606.i = load i32, ptr %i.xt, align 8, !tbaa !324, !noalias !5217 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !1868, !noalias !5217
  %.not.i.i.i.i.i.i.i.i.i.i.i.i607.i = icmp eq i32 %i.xv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i607.i, label %bb.bt, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit610.i", !prof !267

bb.bt:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5217
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit610.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit610.i": ; preds = %bb.bt, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit604.i"
  %i.xw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i612.i = load i32, ptr %i.xw, align 8, !tbaa !324, !noalias !5218
  %i.xx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !1868, !noalias !5218
  %.not.i.i.i.i.i.i.i.i.i.i.i.i613.i = icmp eq i32 %i.xy, 0
  %.1.tr205.i = trunc i32 %.1.i to i8
  %i.xz = shl i8 %.1.tr205.i, 4
  %i.ya = or disjoint i8 %i.xz, 7
  %i.yb = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i606.i to i64
  %umax2395.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i606.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i612.i)
  %wide.trip.count2396.i = zext i32 %umax2395.i to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit610.i"
  %indvars.iv2392.i = phi i64 [ %indvars.iv.next2393.i, %bb.bx ], [ %i.yb, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit610.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i613.i, label %bb.bv, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit616.i", !prof !267

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5218
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit616.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit616.i": ; preds = %bb.bv, %bb.bu
  %exitcond2397.not.i = icmp eq i64 %indvars.iv2392.i, %wide.trip.count2396.i
  br i1 %exitcond2397.not.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit616.i"
  %i.yc = add i32 %.1.i, 1                        ; 2 uses
  %i.yd = icmp eq i32 %i.yc, 16
  %spec.store.select8.i = select i1 %i.yd, i32 1, i32 %i.yc
  %i.ye = load ptr, ptr %i.b, align 8, !tbaa !1853
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 216 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !1367
  %i.yh = or i32 %i.yg, 32
  store i32 %i.yh, ptr %i.yf, align 4, !tbaa !1367
  br label %bb.gr

bb.bx:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit616.i"
  %i.yi = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.yj = getelementptr inbounds nuw [20 x i8], ptr %i.yi, i64 %indvars.iv2392.i
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 15
  store i8 %i.ya, ptr %i.yk, align 1, !tbaa !280
  %indvars.iv.next2393.i = add nuw nsw i64 %indvars.iv2392.i, 1
  br label %bb.bu, !llvm.loop !4878

bb.by:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5219)
  call void @llvm.experimental.noalias.scope.decl(metadata !5220)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %15, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.yl = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.ym = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5221, !noundef !293
  store i8 %i.ym, ptr %i.yl, align 8, !tbaa !1867, !alias.scope !5221
  %i.yn = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !1870, !alias.scope !5219
  %.promoted.i.i.i.i.i.i.i618.i = load i32, ptr %15, align 8, !tbaa !1871, !alias.scope !5219
  %i.yp = add i32 %.promoted.i.i.i.i.i.i.i618.i, %i.yo
  store i32 %i.yp, ptr %15, align 8, !tbaa !1871, !alias.scope !5219
  %i.yq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i619.i = load i32, ptr %i.yr, align 8, !tbaa !1868, !alias.scope !5219 ; 2 uses
  %.not215.i.i.i.i.i.i.i620.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i619.i, 0
  br i1 %.not215.i.i.i.i.i.i.i620.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i", label %.lr.ph.i.i3.i.i.i.i.i621.i

.lr.ph.i.i3.i.i.i.i.i621.i:                       ; preds = %bb.by
  %i.ys = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !1870, !alias.scope !5219 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %15, i64 28 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %15, i64 56
  %.val2.i.i.i.i.i.i.i.i.i622.i = load ptr, ptr %i.yw, align 8, !alias.scope !5219
  %i.yx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %.val.i.i.i.i.i.i.i.i.i623.i = load ptr, ptr %i.yx, align 8, !alias.scope !5219
  %.promoted19.i.i.i.i.i.i.i624.i = load i32, ptr %i.yq, align 8, !tbaa !1871, !alias.scope !5219
  %.promoted14.i.i.pre.i.i.i.i.i.i.i625.i = load ptr, ptr %i.ys, align 8, !alias.scope !5219
  %.promoted15.i.i.pre.i.i.i.i.i.i.i626.i = load i32, ptr %i.yv, align 4, !alias.scope !5219
  br label %bb.bz

bb.bz:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i", %.lr.ph.i.i3.i.i.i.i.i621.i
  %i.yy = phi i32 [ %i.zk, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i626.i, %.lr.ph.i.i3.i.i.i.i.i621.i ] ; 2 uses
  %i.yz = phi ptr [ %i.zf, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i625.i, %.lr.ph.i.i3.i.i.i.i.i621.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i630.i = phi i32 [ %i.zg, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i" ], [ %.promoted.i.i2.i.i.i.i.i619.i, %.lr.ph.i.i3.i.i.i.i.i621.i ] ; 3 uses
  %i.za = phi i32 [ %i.zl, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i" ], [ %.promoted19.i.i.i.i.i.i.i624.i, %.lr.ph.i.i3.i.i.i.i.i621.i ] ; 2 uses
  %i.zb = add i32 %.val112.i.i.i.i.i.i.i.i.i630.i, -1 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i633.i1904 = icmp eq i32 %i.zb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i633.i1904, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i
  %i.zd = add i32 %i.zg, -1                       ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zf, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i633.i = icmp eq i32 %i.zd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i633.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i: ; preds = %bb.bz, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i
  %i.zf = phi ptr [ %i.ze, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i ], [ %i.zc, %bb.bz ] ; 5 uses
  %i.zg = phi i32 [ %i.zd, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i ], [ %i.zb, %bb.bz ] ; 4 uses
  %i.zh = phi i32 [ %i.zl, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i ], [ %i.za, %bb.bz ]
  %i.zi = phi ptr [ %i.zf, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i ], [ %i.yz, %bb.bz ]
  %i.zj = phi i32 [ %i.zk, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i ], [ %i.yy, %bb.bz ]
  %i.zk = add i32 %i.zj, 1                        ; 4 uses
  %i.zl = add i32 %i.zh, %i.yu                    ; 5 uses
  %i.zm = getelementptr i8, ptr %i.zi, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i635.i = load i8, ptr %i.zm, align 2, !tbaa !280, !noalias !5219
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i635.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i636.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i636.i:      ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i
  store i32 %i.zl, ptr %i.yq, align 8, !tbaa !1871, !alias.scope !5219
  store i32 %i.zg, ptr %i.yr, align 8, !tbaa !1868, !alias.scope !5219
  store i32 %i.zk, ptr %i.yv, align 4, !tbaa !1872, !alias.scope !5219
  store ptr %i.zf, ptr %i.ys, align 8, !tbaa !1869, !alias.scope !5219
  %i.zn = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i623.i, align 8, !tbaa !1853, !noalias !5219
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 96
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !607, !noalias !5219 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i1915 = add i32 %i.zl, 1 ; 2 uses
  %i.zq = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i1915, %i.zp
  br i1 %i.zq, label %.lr.ph1917.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i"

.lr.ph1917.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i636.i
  %i.zr = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i622.i, align 8, !tbaa !662, !noalias !5219
  br label %.lr.ph1917

bb.ca:                                            ; preds = %.lr.ph1917
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i1916, 1 ; 2 uses
  %i.zs = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i, %i.zp
  br i1 %i.zs, label %.lr.ph1917, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i", !llvm.loop !186

.lr.ph1917:                                       ; preds = %.lr.ph1917.preheader, %bb.ca
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i1916 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i, %bb.ca ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i1915, %.lr.ph1917.preheader ] ; 2 uses
  %i.zt = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i638.i1916 to i64
  %i.zu = getelementptr inbounds nuw [20 x i8], ptr %i.zr, i64 %i.zt ; 2 uses
  %i.zv = getelementptr i8, ptr %i.zu, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i641.i = load i8, ptr %i.zv, align 2, !tbaa !280, !noalias !5219
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i642.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i641.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i642.i, label %bb.ca, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i": ; preds = %.lr.ph1917
  %i.zw = getelementptr i8, ptr %i.zu, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i644.i = load i16, ptr %i.zw, align 4, !tbaa !280, !noalias !5219
  %i.zx = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i644.i, 31
  %i.zy = zext nneg i16 %i.zx to i32
  %i.zz = shl nuw i32 1, %i.zy
  %i.aaa = and i32 %i.zz, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i645.i = icmp eq i32 %i.aaa, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i645.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i", label %bb.bz, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i": ; preds = %bb.bz, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i
  %.lcssa1653 = phi i32 [ %i.zd, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i ], [ %i.zb, %bb.bz ]
  %.lcssa1650 = phi ptr [ %i.ze, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i631.i ], [ %i.zc, %bb.bz ]
  %i.aab = mul i32 %.val112.i.i.i.i.i.i.i.i.i630.i, %i.yu
  %i.aac = add i32 %i.za, %i.aab
  %i.aad = add i32 %.val112.i.i.i.i.i.i.i.i.i630.i, %i.yy
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i"
  %i.aae = phi i32 [ %.lcssa1653, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i" ], [ %i.zg, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i ]
  %i.aaf = phi ptr [ %.lcssa1650, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i" ], [ %i.zf, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i ]
  %.lcssa2764.sink.i = phi i32 [ %i.aac, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i" ], [ %i.zl, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i ]
  %.lcssa2758.sink.i = phi i32 [ %i.aad, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.loopexit.i" ], [ %i.zk, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i634.i ]
  store i32 %.lcssa2764.sink.i, ptr %i.yq, align 8, !tbaa !1871, !alias.scope !5219
  store i32 %i.aae, ptr %i.yr, align 8, !tbaa !1868, !alias.scope !5219
  store i32 %.lcssa2758.sink.i, ptr %i.yv, align 4, !tbaa !1872, !alias.scope !5219
  store ptr %i.aaf, ptr %i.ys, align 8, !tbaa !1869, !alias.scope !5219
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i643.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i636.i, %bb.ca, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.sink.split.i", %bb.by
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #63
  %i.aag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i648.i = load i32, ptr %i.aag, align 8, !tbaa !324, !noalias !5222 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !1868, !noalias !5222
  %.not.i.i.i.i.i.i.i.i.i.i.i.i649.i = icmp eq i32 %i.aai, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i649.i, label %bb.cb, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit652.i", !prof !267

bb.cb:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5222
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit652.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit652.i": ; preds = %bb.cb, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit646.i"
  %i.aaj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i654.i = load i32, ptr %i.aaj, align 8, !tbaa !324, !noalias !5223
  %i.aak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !1868, !noalias !5223
  %.not.i.i.i.i.i.i.i.i.i.i.i.i655.i = icmp eq i32 %i.aal, 0
  %.1.tr204.i = trunc i32 %.1.i to i8
  %i.aam = shl i8 %.1.tr204.i, 4
  %i.aan = or disjoint i8 %i.aam, 8
  %i.aao = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i648.i to i64
  %umax2389.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i648.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i654.i)
  %wide.trip.count2390.i = zext i32 %umax2389.i to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cf, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit652.i"
  %indvars.iv2386.i = phi i64 [ %indvars.iv.next2387.i, %bb.cf ], [ %i.aao, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit652.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i655.i, label %bb.cd, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit658.i", !prof !267

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5223
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit658.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit658.i": ; preds = %bb.cd, %bb.cc
  %exitcond2391.not.i = icmp eq i64 %indvars.iv2386.i, %wide.trip.count2390.i
  br i1 %exitcond2391.not.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit658.i"
  %i.aap = add i32 %.1.i, 1                       ; 2 uses
  %i.aaq = icmp eq i32 %i.aap, 16
  %spec.store.select9.i = select i1 %i.aaq, i32 1, i32 %i.aap
  br label %bb.gr

bb.cf:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit658.i"
  %i.aar = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.aas = getelementptr inbounds nuw [20 x i8], ptr %i.aar, i64 %indvars.iv2386.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 15
  store i8 %i.aan, ptr %i.aat, align 1, !tbaa !280
  %indvars.iv.next2387.i = add nuw nsw i64 %indvars.iv2386.i, 1
  br label %bb.cc, !llvm.loop !4899

bb.cg:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.aau = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5224
  %i.aav = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5224
  %i.aaw = sub i32 %i.aav, %i.aau
  store i32 %i.aaw, ptr %3, align 8, !tbaa !1871, !noalias !5224
  %i.aax = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5224
  %.promoted.i.i.i.i.i.i.i659.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5224
  %.promoted10.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5224 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5224 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5224 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5224
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5224
  br label %bb.ch

bb.ch:                                            ; preds = %.backedge, %bb.cg
  %i.aay = phi ptr [ %.promoted15.i.i.i.i.i.i.i.i, %bb.cg ], [ %i.abi, %.backedge ]
  %.val112.i.i.i.i.i.i.i.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i.i, %bb.cg ], [ %.val114.i.i.i.i.i.i.i.i, %.backedge ]
  %i.aaz = phi i32 [ %.promoted10.i.i.i.i.i.i.i.i, %bb.cg ], [ %i.abj, %.backedge ]
  %i.aba = phi ptr [ %.promoted15.i.i.i.i.i.i.i.i, %bb.cg ], [ %.be, %.backedge ] ; 2 uses
  %i.abb = phi i32 [ %.promoted11.i.i.i.i.i.i.i.i, %bb.cg ], [ %.be2603, %.backedge ] ; 2 uses
  %i.abc = phi i32 [ %.promoted10.i.i.i.i.i.i.i.i, %bb.cg ], [ %.be2604, %.backedge ] ; 2 uses
  %i.abd = phi i32 [ %.promoted.i.i.i.i.i.i.i659.i, %bb.cg ], [ %i.abe, %.backedge ]
  %i.abe = sub i32 %i.abd, %i.aax                 ; 3 uses
  store i32 %i.abe, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5224
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.abc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ci, !prof !267

bb.ci:                                            ; preds = %bb.ch
  %i.abf = add i32 %i.abb, 1                      ; 3 uses
  store i32 %i.abf, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5224
  %i.abg = add i32 %i.abc, -1                     ; 3 uses
  store i32 %i.abg, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5224
  %i.abh = getelementptr inbounds i8, ptr %i.aba, i64 -20 ; 3 uses
  store ptr %i.abh, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5224
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %i.abi = phi ptr [ %i.aay, %bb.ch ], [ %i.abh, %bb.ci ] ; 3 uses
  %.val114.i.i.i.i.i.i.i.i = phi i32 [ %.val112.i.i.i.i.i.i.i.i, %bb.ch ], [ %i.abf, %bb.ci ] ; 3 uses
  %i.abj = phi i32 [ %i.aaz, %bb.ch ], [ %i.abg, %bb.ci ] ; 2 uses
  %i.abk = phi ptr [ %i.aba, %bb.ch ], [ %i.abh, %bb.ci ] ; 2 uses
  %i.abl = phi i32 [ %i.abb, %bb.ch ], [ %i.abf, %bb.ci ] ; 2 uses
  %i.abm = phi i32 [ 0, %bb.ch ], [ %i.abg, %bb.ci ]
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.abl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.abn = getelementptr i8, ptr %i.abk, i64 18
  %.val.i.i.i.i.i.i.i.i.i660.i = load i8, ptr %i.abn, align 2, !tbaa !280, !noalias !5224
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i660.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %.backedge, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i"

.backedge:                                        ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i"
  %.be = phi ptr [ %i.abk, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.abi, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i" ]
  %.be2603 = phi i32 [ %i.abl, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val114.i.i.i.i.i.i.i.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i" ]
  %.be2604 = phi i32 [ %i.abm, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.abj, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i" ]
  br label %bb.ch, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i661.i = icmp eq i32 %.val114.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i661.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i"
  %i.abo = getelementptr i8, ptr %i.abi, i64 18
  %.val4.val.i.i.i.i.i.i.i.i = load i8, ptr %i.abo, align 2, !tbaa !280, !noalias !5224
  %i.abp = icmp eq i8 %.val4.val.i.i.i.i.i.i.i.i, 14
  br i1 %i.abp, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i"
  %i.abq = load ptr, ptr %.val.i.i.i.i.i.i.i.i, align 8, !tbaa !1853, !noalias !5224
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 96
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !607, !noalias !5224 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i1901 = add i32 %i.abe, 1 ; 2 uses
  %i.abt = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i1901, %i.abs
  br i1 %i.abt, label %.lr.ph1903.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i"

.lr.ph1903.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.abu = load ptr, ptr %.val2.i.i.i.i.i.i.i.i, align 8, !tbaa !662, !noalias !5224
  br label %.lr.ph1903

bb.cj:                                            ; preds = %.lr.ph1903
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i1902, 1 ; 2 uses
  %i.abv = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.abs
  br i1 %i.abv, label %.lr.ph1903, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i", !llvm.loop !186

.lr.ph1903:                                       ; preds = %.lr.ph1903.preheader, %bb.cj
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i1902 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cj ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i1901, %.lr.ph1903.preheader ] ; 2 uses
  %i.abw = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i1902 to i64
  %i.abx = getelementptr inbounds nuw [20 x i8], ptr %i.abu, i64 %i.abw ; 2 uses
  %i.aby = getelementptr i8, ptr %i.abx, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.aby, align 2, !tbaa !280, !noalias !5224
  %.not.i.i.i.i.i.i.i.i.i.i.i.i662.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i662.i, label %bb.cj, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i": ; preds = %.lr.ph1903
  %i.abz = getelementptr i8, ptr %i.abx, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i663.i = load i16, ptr %i.abz, align 4, !tbaa !280, !noalias !5224
  %i.aca = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i663.i, 31
  %i.acb = zext nneg i16 %i.aca to i32
  %i.acc = shl nuw i32 1, %i.acb
  %i.acd = and i32 %i.acc, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.acd, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i", label %.backedge

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cj
  %i.ace = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i665.i = load i32, ptr %i.ace, align 8, !tbaa !324, !noalias !5225 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !1868, !noalias !5225
  %.not.i.i.i.i.i.i.i.i.i.i.i.i666.i = icmp eq i32 %i.acg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i666.i, label %bb.ck, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit669.i", !prof !267

bb.ck:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5225
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit669.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit669.i": ; preds = %bb.ck, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit.i"
  %i.ach = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i671.i = load i32, ptr %i.ach, align 8, !tbaa !324, !noalias !5226
  %i.aci = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !1868, !noalias !5226
  %.not.i.i.i.i.i.i.i.i.i.i.i.i672.i = icmp eq i32 %i.acj, 0
  %.1.tr203.i = trunc i32 %.1.i to i8
  %i.ack = shl i8 %.1.tr203.i, 4
  %i.acl = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i665.i to i64
  %umax2383.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i665.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i671.i)
  %wide.trip.count2384.i = zext i32 %umax2383.i to i64
  br label %bb.cl

bb.cl:                                            ; preds = %bb.co, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit669.i"
  %indvars.iv2380.i = phi i64 [ %indvars.iv.next2381.i, %bb.co ], [ %i.acl, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit669.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i672.i, label %bb.cm, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit675.i", !prof !267

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5226
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit675.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit675.i": ; preds = %bb.cm, %bb.cl
  %exitcond2385.not.i = icmp eq i64 %indvars.iv2380.i, %wide.trip.count2384.i
  br i1 %exitcond2385.not.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit675.i"
  %i.acm = add i32 %.1.i, 1                       ; 2 uses
  %i.acn = icmp eq i32 %i.acm, 16
  %spec.store.select10.i = select i1 %i.acn, i32 1, i32 %i.acm
  br label %bb.gr

bb.co:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit675.i"
  %i.aco = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.acp = getelementptr inbounds nuw [20 x i8], ptr %i.aco, i64 %indvars.iv2380.i
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 15
  store i8 %i.ack, ptr %i.acq, align 1, !tbaa !280
  %indvars.iv.next2381.i = add nuw nsw i64 %indvars.iv2380.i, 1
  br label %bb.cl, !llvm.loop !4918

bb.cp:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.acr = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5227
  %i.acs = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5227
  %i.act = sub i32 %i.acs, %i.acr
  store i32 %i.act, ptr %3, align 8, !tbaa !1871, !noalias !5227
  %i.acu = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5227
  %.promoted.i.i.i.i.i.i.i676.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5227
  %.promoted10.i.i.i.i.i.i.i677.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5227 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i678.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5227 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i679.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5227 ; 2 uses
  %.val2.i.i.i.i.i.i.i680.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5227
  %.val.i.i.i.i.i.i.i681.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5227
  br label %bb.cq

bb.cq:                                            ; preds = %.backedge2609, %bb.cp
  %i.acv = phi ptr [ %.promoted15.i.i.i.i.i.i.i679.i, %bb.cp ], [ %i.adf, %.backedge2609 ]
  %.val112.i.i.i.i.i.i.i683.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i678.i, %bb.cp ], [ %.val114.i.i.i.i.i.i.i686.i, %.backedge2609 ]
  %i.acw = phi i32 [ %.promoted10.i.i.i.i.i.i.i677.i, %bb.cp ], [ %i.adg, %.backedge2609 ]
  %i.acx = phi ptr [ %.promoted15.i.i.i.i.i.i.i679.i, %bb.cp ], [ %.be2612, %.backedge2609 ] ; 2 uses
  %i.acy = phi i32 [ %.promoted11.i.i.i.i.i.i.i678.i, %bb.cp ], [ %.be2613, %.backedge2609 ] ; 2 uses
  %i.acz = phi i32 [ %.promoted10.i.i.i.i.i.i.i677.i, %bb.cp ], [ %.be2614, %.backedge2609 ] ; 2 uses
  %i.ada = phi i32 [ %.promoted.i.i.i.i.i.i.i676.i, %bb.cp ], [ %i.adb, %.backedge2609 ]
  %i.adb = sub i32 %i.ada, %i.acu                 ; 3 uses
  store i32 %i.adb, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5227
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i684.i = icmp eq i32 %i.acz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i684.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i685.i, label %bb.cr, !prof !267

bb.cr:                                            ; preds = %bb.cq
  %i.adc = add i32 %i.acy, 1                      ; 3 uses
  store i32 %i.adc, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5227
  %i.add = add i32 %i.acz, -1                     ; 3 uses
  store i32 %i.add, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5227
  %i.ade = getelementptr inbounds i8, ptr %i.acx, i64 -20 ; 3 uses
  store ptr %i.ade, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5227
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i685.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i685.i: ; preds = %bb.cr, %bb.cq
  %i.adf = phi ptr [ %i.acv, %bb.cq ], [ %i.ade, %bb.cr ] ; 3 uses
  %.val114.i.i.i.i.i.i.i686.i = phi i32 [ %.val112.i.i.i.i.i.i.i683.i, %bb.cq ], [ %i.adc, %bb.cr ] ; 3 uses
  %i.adg = phi i32 [ %i.acw, %bb.cq ], [ %i.add, %bb.cr ] ; 2 uses
  %i.adh = phi ptr [ %i.acx, %bb.cq ], [ %i.ade, %bb.cr ] ; 2 uses
  %i.adi = phi i32 [ %i.acy, %bb.cq ], [ %i.adc, %bb.cr ] ; 2 uses
  %i.adj = phi i32 [ 0, %bb.cq ], [ %i.add, %bb.cr ]
  %.not.i.i.i.i.i.i.i.i.i687.i = icmp eq i32 %i.adi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i687.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i691.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i688.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i688.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i685.i
  %i.adk = getelementptr i8, ptr %i.adh, i64 18
  %.val.i.i.i.i.i.i.i.i.i689.i = load i8, ptr %i.adk, align 2, !tbaa !280, !noalias !5227
  %.not4.i.i.i.i.i.i.i.i.i690.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i689.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i690.i, label %.backedge2609, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i691.i"

.backedge2609:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i688.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i700.i"
  %.be2612 = phi ptr [ %i.adh, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i688.i ], [ %i.adf, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i700.i" ]
  %.be2613 = phi i32 [ %i.adi, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i688.i ], [ %.val114.i.i.i.i.i.i.i686.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i700.i" ]
  %.be2614 = phi i32 [ %i.adj, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i688.i ], [ %i.adg, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i700.i" ]
  br label %bb.cq, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i691.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i688.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i685.i
  %.not.i.i.i.i.i.i.i692.i = icmp eq i32 %.val114.i.i.i.i.i.i.i686.i, 0
  br i1 %.not.i.i.i.i.i.i.i692.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i693.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i693.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i691.i"
  %i.adl = getelementptr i8, ptr %i.adf, i64 18
  %.val4.val.i.i.i.i.i.i.i694.i = load i8, ptr %i.adl, align 2, !tbaa !280, !noalias !5227
  %i.adm = icmp eq i8 %.val4.val.i.i.i.i.i.i.i694.i, 14
  br i1 %i.adm, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i695.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i695.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i693.i"
  %i.adn = load ptr, ptr %.val.i.i.i.i.i.i.i681.i, align 8, !tbaa !1853, !noalias !5227
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 96
  %i.adp = load i32, ptr %i.ado, align 8, !tbaa !607, !noalias !5227 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i1898 = add i32 %i.adb, 1 ; 2 uses
  %i.adq = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i1898, %i.adp
  br i1 %i.adq, label %.lr.ph1900.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i"

.lr.ph1900.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i695.i
  %i.adr = load ptr, ptr %.val2.i.i.i.i.i.i.i680.i, align 8, !tbaa !662, !noalias !5227
  br label %.lr.ph1900

bb.cs:                                            ; preds = %.lr.ph1900
  %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i1899, 1 ; 2 uses
  %i.ads = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i, %i.adp
  br i1 %i.ads, label %.lr.ph1900, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i", !llvm.loop !186

.lr.ph1900:                                       ; preds = %.lr.ph1900.preheader, %bb.cs
  %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i1899 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i, %bb.cs ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i1898, %.lr.ph1900.preheader ] ; 2 uses
  %i.adt = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i697.i1899 to i64
  %i.adu = getelementptr inbounds nuw [20 x i8], ptr %i.adr, i64 %i.adt ; 2 uses
  %i.adv = getelementptr i8, ptr %i.adu, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i698.i = load i8, ptr %i.adv, align 2, !tbaa !280, !noalias !5227
  %.not.i.i.i.i.i.i.i.i.i.i.i.i699.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i698.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i699.i, label %bb.cs, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i700.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i700.i": ; preds = %.lr.ph1900
  %i.adw = getelementptr i8, ptr %i.adu, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i701.i = load i16, ptr %i.adw, align 4, !tbaa !280, !noalias !5227
  %i.adx = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i701.i, 31
  %i.ady = zext nneg i16 %i.adx to i32
  %i.adz = shl nuw i32 1, %i.ady
  %i.aea = and i32 %i.adz, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i702.i = icmp eq i32 %i.aea, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i702.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i", label %.backedge2609

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i700.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i693.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i691.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i695.i, %bb.cs
  %i.aeb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i705.i = load i32, ptr %i.aeb, align 8, !tbaa !324, !noalias !5228 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !1868, !noalias !5228
  %.not.i.i.i.i.i.i.i.i.i.i.i.i706.i = icmp eq i32 %i.aed, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i706.i, label %bb.ct, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit709.i", !prof !267

bb.ct:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5228
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit709.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit709.i": ; preds = %bb.ct, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit703.i"
  %i.aee = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i711.i = load i32, ptr %i.aee, align 8, !tbaa !324, !noalias !5229
  %i.aef = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aeg = load i32, ptr %i.aef, align 8, !tbaa !1868, !noalias !5229
  %.not.i.i.i.i.i.i.i.i.i.i.i.i712.i = icmp eq i32 %i.aeg, 0
  %.1.tr202.i = trunc i32 %.1.i to i8
  %i.aeh = shl i8 %.1.tr202.i, 4
  %i.aei = or disjoint i8 %i.aeh, 1
  %i.aej = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i705.i to i64
  %umax2377.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i705.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i711.i)
  %wide.trip.count2378.i = zext i32 %umax2377.i to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cx, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit709.i"
  %indvars.iv2374.i = phi i64 [ %indvars.iv.next2375.i, %bb.cx ], [ %i.aej, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit709.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i712.i, label %bb.cv, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit715.i", !prof !267

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5229
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit715.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit715.i": ; preds = %bb.cv, %bb.cu
  %exitcond2379.not.i = icmp eq i64 %indvars.iv2374.i, %wide.trip.count2378.i
  br i1 %exitcond2379.not.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit715.i"
  %i.aek = add i32 %.1.i, 1                       ; 2 uses
  %i.ael = icmp eq i32 %i.aek, 16
  %spec.store.select11.i = select i1 %i.ael, i32 1, i32 %i.aek
  br label %bb.gr

bb.cx:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit715.i"
  %i.aem = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.aen = getelementptr inbounds nuw [20 x i8], ptr %i.aem, i64 %indvars.iv2374.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 15
  store i8 %i.aei, ptr %i.aeo, align 1, !tbaa !280
  %indvars.iv.next2375.i = add nuw nsw i64 %indvars.iv2374.i, 1
  br label %bb.cu, !llvm.loop !4937

bb.cy:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.aep = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5230
  %i.aeq = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5230
  %i.aer = sub i32 %i.aeq, %i.aep
  store i32 %i.aer, ptr %3, align 8, !tbaa !1871, !noalias !5230
  %i.aes = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5230
  %.promoted.i.i.i.i.i.i.i716.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5230
  %.promoted10.i.i.i.i.i.i.i717.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5230 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i718.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5230 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i719.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5230 ; 2 uses
  %.val2.i.i.i.i.i.i.i720.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5230
  %.val.i.i.i.i.i.i.i721.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5230
  br label %bb.cz

bb.cz:                                            ; preds = %.backedge2619, %bb.cy
  %i.aet = phi ptr [ %.promoted15.i.i.i.i.i.i.i719.i, %bb.cy ], [ %i.afd, %.backedge2619 ]
  %.val112.i.i.i.i.i.i.i723.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i718.i, %bb.cy ], [ %.val114.i.i.i.i.i.i.i726.i, %.backedge2619 ]
  %i.aeu = phi i32 [ %.promoted10.i.i.i.i.i.i.i717.i, %bb.cy ], [ %i.afe, %.backedge2619 ]
  %i.aev = phi ptr [ %.promoted15.i.i.i.i.i.i.i719.i, %bb.cy ], [ %.be2622, %.backedge2619 ] ; 2 uses
  %i.aew = phi i32 [ %.promoted11.i.i.i.i.i.i.i718.i, %bb.cy ], [ %.be2623, %.backedge2619 ] ; 2 uses
  %i.aex = phi i32 [ %.promoted10.i.i.i.i.i.i.i717.i, %bb.cy ], [ %.be2624, %.backedge2619 ] ; 2 uses
  %i.aey = phi i32 [ %.promoted.i.i.i.i.i.i.i716.i, %bb.cy ], [ %i.aez, %.backedge2619 ]
  %i.aez = sub i32 %i.aey, %i.aes                 ; 3 uses
  store i32 %i.aez, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5230
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i724.i = icmp eq i32 %i.aex, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i724.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i725.i, label %bb.da, !prof !267

bb.da:                                            ; preds = %bb.cz
  %i.afa = add i32 %i.aew, 1                      ; 3 uses
  store i32 %i.afa, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5230
  %i.afb = add i32 %i.aex, -1                     ; 3 uses
  store i32 %i.afb, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5230
  %i.afc = getelementptr inbounds i8, ptr %i.aev, i64 -20 ; 3 uses
  store ptr %i.afc, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5230
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i725.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i725.i: ; preds = %bb.da, %bb.cz
  %i.afd = phi ptr [ %i.aet, %bb.cz ], [ %i.afc, %bb.da ] ; 3 uses
  %.val114.i.i.i.i.i.i.i726.i = phi i32 [ %.val112.i.i.i.i.i.i.i723.i, %bb.cz ], [ %i.afa, %bb.da ] ; 3 uses
  %i.afe = phi i32 [ %i.aeu, %bb.cz ], [ %i.afb, %bb.da ] ; 2 uses
  %i.aff = phi ptr [ %i.aev, %bb.cz ], [ %i.afc, %bb.da ] ; 2 uses
  %i.afg = phi i32 [ %i.aew, %bb.cz ], [ %i.afa, %bb.da ] ; 2 uses
  %i.afh = phi i32 [ 0, %bb.cz ], [ %i.afb, %bb.da ]
  %.not.i.i.i.i.i.i.i.i.i727.i = icmp eq i32 %i.afg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i727.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i731.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i728.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i728.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i725.i
  %i.afi = getelementptr i8, ptr %i.aff, i64 18
  %.val.i.i.i.i.i.i.i.i.i729.i = load i8, ptr %i.afi, align 2, !tbaa !280, !noalias !5230
  %.not4.i.i.i.i.i.i.i.i.i730.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i729.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i730.i, label %.backedge2619, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i731.i"

.backedge2619:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i728.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i740.i"
  %.be2622 = phi ptr [ %i.aff, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i728.i ], [ %i.afd, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i740.i" ]
  %.be2623 = phi i32 [ %i.afg, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i728.i ], [ %.val114.i.i.i.i.i.i.i726.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i740.i" ]
  %.be2624 = phi i32 [ %i.afh, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i728.i ], [ %i.afe, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i740.i" ]
  br label %bb.cz, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i731.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i728.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i725.i
  %.not.i.i.i.i.i.i.i732.i = icmp eq i32 %.val114.i.i.i.i.i.i.i726.i, 0
  br i1 %.not.i.i.i.i.i.i.i732.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i733.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i733.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i731.i"
  %i.afj = getelementptr i8, ptr %i.afd, i64 18
  %.val4.val.i.i.i.i.i.i.i734.i = load i8, ptr %i.afj, align 2, !tbaa !280, !noalias !5230
  %i.afk = icmp eq i8 %.val4.val.i.i.i.i.i.i.i734.i, 14
  br i1 %i.afk, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i735.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i735.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i733.i"
  %i.afl = load ptr, ptr %.val.i.i.i.i.i.i.i721.i, align 8, !tbaa !1853, !noalias !5230
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 96
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !607, !noalias !5230 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i1895 = add i32 %i.aez, 1 ; 2 uses
  %i.afo = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i1895, %i.afn
  br i1 %i.afo, label %.lr.ph1897.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i"

.lr.ph1897.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i735.i
  %i.afp = load ptr, ptr %.val2.i.i.i.i.i.i.i720.i, align 8, !tbaa !662, !noalias !5230
  br label %.lr.ph1897

bb.db:                                            ; preds = %.lr.ph1897
  %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i1896, 1 ; 2 uses
  %i.afq = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i, %i.afn
  br i1 %i.afq, label %.lr.ph1897, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i", !llvm.loop !186

.lr.ph1897:                                       ; preds = %.lr.ph1897.preheader, %bb.db
  %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i1896 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i, %bb.db ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i1895, %.lr.ph1897.preheader ] ; 2 uses
  %i.afr = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i737.i1896 to i64
  %i.afs = getelementptr inbounds nuw [20 x i8], ptr %i.afp, i64 %i.afr ; 2 uses
  %i.aft = getelementptr i8, ptr %i.afs, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i738.i = load i8, ptr %i.aft, align 2, !tbaa !280, !noalias !5230
  %.not.i.i.i.i.i.i.i.i.i.i.i.i739.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i738.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i739.i, label %bb.db, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i740.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i740.i": ; preds = %.lr.ph1897
  %i.afu = getelementptr i8, ptr %i.afs, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i741.i = load i16, ptr %i.afu, align 4, !tbaa !280, !noalias !5230
  %i.afv = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i741.i, 31
  %i.afw = zext nneg i16 %i.afv to i32
  %i.afx = shl nuw i32 1, %i.afw
  %i.afy = and i32 %i.afx, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i742.i = icmp eq i32 %i.afy, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i742.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i", label %.backedge2619

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i740.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i733.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i731.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i735.i, %bb.db
  %i.afz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i745.i = load i32, ptr %i.afz, align 8, !tbaa !324, !noalias !5231 ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !1868, !noalias !5231
  %.not.i.i.i.i.i.i.i.i.i.i.i.i746.i = icmp eq i32 %i.agb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i746.i, label %bb.dc, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit749.i", !prof !267

bb.dc:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5231
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit749.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit749.i": ; preds = %bb.dc, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit743.i"
  %i.agc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i751.i = load i32, ptr %i.agc, align 8, !tbaa !324, !noalias !5232
  %i.agd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.age = load i32, ptr %i.agd, align 8, !tbaa !1868, !noalias !5232
  %.not.i.i.i.i.i.i.i.i.i.i.i.i752.i = icmp eq i32 %i.age, 0
  %.1.tr201.i = trunc i32 %.1.i to i8
  %i.agf = shl i8 %.1.tr201.i, 4
  %i.agg = or disjoint i8 %i.agf, 2
  %i.agh = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i745.i to i64
  %umax2371.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i745.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i751.i)
  %wide.trip.count2372.i = zext i32 %umax2371.i to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dg, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit749.i"
  %indvars.iv2368.i = phi i64 [ %indvars.iv.next2369.i, %bb.dg ], [ %i.agh, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit749.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i752.i, label %bb.de, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit755.i", !prof !267

bb.de:                                            ; preds = %bb.dd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5232
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit755.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit755.i": ; preds = %bb.de, %bb.dd
  %exitcond2373.not.i = icmp eq i64 %indvars.iv2368.i, %wide.trip.count2372.i
  br i1 %exitcond2373.not.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit755.i"
  %i.agi = add i32 %.1.i, 1                       ; 2 uses
  %i.agj = icmp eq i32 %i.agi, 16
  %spec.store.select12.i = select i1 %i.agj, i32 1, i32 %i.agi
  br label %bb.gr

bb.dg:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit755.i"
  %i.agk = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.agl = getelementptr inbounds nuw [20 x i8], ptr %i.agk, i64 %indvars.iv2368.i
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 15
  store i8 %i.agg, ptr %i.agm, align 1, !tbaa !280
  %indvars.iv.next2369.i = add nuw nsw i64 %indvars.iv2368.i, 1
  br label %bb.dd, !llvm.loop !4956

bb.dh:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.agn = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5233
  %i.ago = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5233
  %i.agp = sub i32 %i.ago, %i.agn
  store i32 %i.agp, ptr %3, align 8, !tbaa !1871, !noalias !5233
  %i.agq = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5233
  %.promoted.i.i.i.i.i.i.i756.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5233
  %.promoted10.i.i.i.i.i.i.i757.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5233 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i758.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5233 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i759.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5233 ; 2 uses
  %.val2.i.i.i.i.i.i.i760.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5233
  %.val.i.i.i.i.i.i.i761.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5233
  br label %bb.di

bb.di:                                            ; preds = %.backedge2629, %bb.dh
  %i.agr = phi ptr [ %.promoted15.i.i.i.i.i.i.i759.i, %bb.dh ], [ %i.ahb, %.backedge2629 ]
  %.val112.i.i.i.i.i.i.i763.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i758.i, %bb.dh ], [ %.val114.i.i.i.i.i.i.i766.i, %.backedge2629 ]
  %i.ags = phi i32 [ %.promoted10.i.i.i.i.i.i.i757.i, %bb.dh ], [ %i.ahc, %.backedge2629 ]
  %i.agt = phi ptr [ %.promoted15.i.i.i.i.i.i.i759.i, %bb.dh ], [ %.be2632, %.backedge2629 ] ; 2 uses
  %i.agu = phi i32 [ %.promoted11.i.i.i.i.i.i.i758.i, %bb.dh ], [ %.be2633, %.backedge2629 ] ; 2 uses
  %i.agv = phi i32 [ %.promoted10.i.i.i.i.i.i.i757.i, %bb.dh ], [ %.be2634, %.backedge2629 ] ; 2 uses
  %i.agw = phi i32 [ %.promoted.i.i.i.i.i.i.i756.i, %bb.dh ], [ %i.agx, %.backedge2629 ]
  %i.agx = sub i32 %i.agw, %i.agq                 ; 3 uses
  store i32 %i.agx, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5233
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i764.i = icmp eq i32 %i.agv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i764.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i765.i, label %bb.dj, !prof !267

bb.dj:                                            ; preds = %bb.di
  %i.agy = add i32 %i.agu, 1                      ; 3 uses
  store i32 %i.agy, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5233
  %i.agz = add i32 %i.agv, -1                     ; 3 uses
  store i32 %i.agz, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5233
  %i.aha = getelementptr inbounds i8, ptr %i.agt, i64 -20 ; 3 uses
  store ptr %i.aha, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5233
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i765.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i765.i: ; preds = %bb.dj, %bb.di
  %i.ahb = phi ptr [ %i.agr, %bb.di ], [ %i.aha, %bb.dj ] ; 3 uses
  %.val114.i.i.i.i.i.i.i766.i = phi i32 [ %.val112.i.i.i.i.i.i.i763.i, %bb.di ], [ %i.agy, %bb.dj ] ; 3 uses
  %i.ahc = phi i32 [ %i.ags, %bb.di ], [ %i.agz, %bb.dj ] ; 2 uses
  %i.ahd = phi ptr [ %i.agt, %bb.di ], [ %i.aha, %bb.dj ] ; 2 uses
  %i.ahe = phi i32 [ %i.agu, %bb.di ], [ %i.agy, %bb.dj ] ; 2 uses
  %i.ahf = phi i32 [ 0, %bb.di ], [ %i.agz, %bb.dj ]
  %.not.i.i.i.i.i.i.i.i.i767.i = icmp eq i32 %i.ahe, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i767.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i771.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i768.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i768.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i765.i
  %i.ahg = getelementptr i8, ptr %i.ahd, i64 18
  %.val.i.i.i.i.i.i.i.i.i769.i = load i8, ptr %i.ahg, align 2, !tbaa !280, !noalias !5233
  %.not4.i.i.i.i.i.i.i.i.i770.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i769.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i770.i, label %.backedge2629, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i771.i"

.backedge2629:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i768.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i780.i"
  %.be2632 = phi ptr [ %i.ahd, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i768.i ], [ %i.ahb, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i780.i" ]
  %.be2633 = phi i32 [ %i.ahe, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i768.i ], [ %.val114.i.i.i.i.i.i.i766.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i780.i" ]
  %.be2634 = phi i32 [ %i.ahf, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i768.i ], [ %i.ahc, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i780.i" ]
  br label %bb.di, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i771.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i768.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i765.i
  %.not.i.i.i.i.i.i.i772.i = icmp eq i32 %.val114.i.i.i.i.i.i.i766.i, 0
  br i1 %.not.i.i.i.i.i.i.i772.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i773.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i773.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i771.i"
  %i.ahh = getelementptr i8, ptr %i.ahb, i64 18
  %.val4.val.i.i.i.i.i.i.i774.i = load i8, ptr %i.ahh, align 2, !tbaa !280, !noalias !5233
  %i.ahi = icmp eq i8 %.val4.val.i.i.i.i.i.i.i774.i, 14
  br i1 %i.ahi, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i775.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i775.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i773.i"
  %i.ahj = load ptr, ptr %.val.i.i.i.i.i.i.i761.i, align 8, !tbaa !1853, !noalias !5233
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 96
  %i.ahl = load i32, ptr %i.ahk, align 8, !tbaa !607, !noalias !5233 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i1892 = add i32 %i.agx, 1 ; 2 uses
  %i.ahm = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i1892, %i.ahl
  br i1 %i.ahm, label %.lr.ph1894.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i"

.lr.ph1894.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i775.i
  %i.ahn = load ptr, ptr %.val2.i.i.i.i.i.i.i760.i, align 8, !tbaa !662, !noalias !5233
  br label %.lr.ph1894

bb.dk:                                            ; preds = %.lr.ph1894
  %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i1893, 1 ; 2 uses
  %i.aho = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i, %i.ahl
  br i1 %i.aho, label %.lr.ph1894, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i", !llvm.loop !186

.lr.ph1894:                                       ; preds = %.lr.ph1894.preheader, %bb.dk
  %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i1893 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i, %bb.dk ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i1892, %.lr.ph1894.preheader ] ; 2 uses
  %i.ahp = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i777.i1893 to i64
  %i.ahq = getelementptr inbounds nuw [20 x i8], ptr %i.ahn, i64 %i.ahp ; 2 uses
  %i.ahr = getelementptr i8, ptr %i.ahq, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i778.i = load i8, ptr %i.ahr, align 2, !tbaa !280, !noalias !5233
  %.not.i.i.i.i.i.i.i.i.i.i.i.i779.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i778.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i779.i, label %bb.dk, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i780.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i780.i": ; preds = %.lr.ph1894
  %i.ahs = getelementptr i8, ptr %i.ahq, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i781.i = load i16, ptr %i.ahs, align 4, !tbaa !280, !noalias !5233
  %i.aht = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i781.i, 31
  %i.ahu = zext nneg i16 %i.aht to i32
  %i.ahv = shl nuw i32 1, %i.ahu
  %i.ahw = and i32 %i.ahv, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i782.i = icmp eq i32 %i.ahw, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i782.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i", label %.backedge2629

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i780.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i773.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i771.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i775.i, %bb.dk
  %i.ahx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i785.i = load i32, ptr %i.ahx, align 8, !tbaa !324, !noalias !5234 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !1868, !noalias !5234
  %.not.i.i.i.i.i.i.i.i.i.i.i.i786.i = icmp eq i32 %i.ahz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i786.i, label %bb.dl, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit789.i", !prof !267

bb.dl:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5234
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit789.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit789.i": ; preds = %bb.dl, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit783.i"
  %i.aia = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i791.i = load i32, ptr %i.aia, align 8, !tbaa !324, !noalias !5235
  %i.aib = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aic = load i32, ptr %i.aib, align 8, !tbaa !1868, !noalias !5235
  %.not.i.i.i.i.i.i.i.i.i.i.i.i792.i = icmp eq i32 %i.aic, 0
  %.1.tr200.i = trunc i32 %.1.i to i8
  %i.aid = shl i8 %.1.tr200.i, 4
  %i.aie = or disjoint i8 %i.aid, 3
  %i.aif = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i785.i to i64
  %umax2365.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i785.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i791.i)
  %wide.trip.count2366.i = zext i32 %umax2365.i to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dp, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit789.i"
  %indvars.iv2362.i = phi i64 [ %indvars.iv.next2363.i, %bb.dp ], [ %i.aif, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit789.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i792.i, label %bb.dn, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit795.i", !prof !267

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5235
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit795.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit795.i": ; preds = %bb.dn, %bb.dm
  %exitcond2367.not.i = icmp eq i64 %indvars.iv2362.i, %wide.trip.count2366.i
  br i1 %exitcond2367.not.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit795.i"
  %i.aig = add i32 %.1.i, 1                       ; 2 uses
  %i.aih = icmp eq i32 %i.aig, 16
  %spec.store.select13.i = select i1 %i.aih, i32 1, i32 %i.aig
  br label %bb.gr

bb.dp:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit795.i"
  %i.aii = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.aij = getelementptr inbounds nuw [20 x i8], ptr %i.aii, i64 %indvars.iv2362.i
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 15
  store i8 %i.aie, ptr %i.aik, align 1, !tbaa !280
  %indvars.iv.next2363.i = add nuw nsw i64 %indvars.iv2362.i, 1
  br label %bb.dm, !llvm.loop !4975

bb.dq:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.ail = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5236
  %i.aim = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5236
  %i.ain = sub i32 %i.aim, %i.ail
  store i32 %i.ain, ptr %3, align 8, !tbaa !1871, !noalias !5236
  %i.aio = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5236
  %.promoted.i.i.i.i.i.i.i796.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5236
  %.promoted10.i.i.i.i.i.i.i797.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5236 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i798.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5236 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i799.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5236 ; 2 uses
  %.val2.i.i.i.i.i.i.i800.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5236
  %.val.i.i.i.i.i.i.i801.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5236
  br label %bb.dr

bb.dr:                                            ; preds = %.backedge2639, %bb.dq
  %i.aip = phi ptr [ %.promoted15.i.i.i.i.i.i.i799.i, %bb.dq ], [ %i.aiz, %.backedge2639 ]
  %.val112.i.i.i.i.i.i.i803.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i798.i, %bb.dq ], [ %.val114.i.i.i.i.i.i.i806.i, %.backedge2639 ]
  %i.aiq = phi i32 [ %.promoted10.i.i.i.i.i.i.i797.i, %bb.dq ], [ %i.aja, %.backedge2639 ]
  %i.air = phi ptr [ %.promoted15.i.i.i.i.i.i.i799.i, %bb.dq ], [ %.be2642, %.backedge2639 ] ; 2 uses
  %i.ais = phi i32 [ %.promoted11.i.i.i.i.i.i.i798.i, %bb.dq ], [ %.be2643, %.backedge2639 ] ; 2 uses
  %i.ait = phi i32 [ %.promoted10.i.i.i.i.i.i.i797.i, %bb.dq ], [ %.be2644, %.backedge2639 ] ; 2 uses
  %i.aiu = phi i32 [ %.promoted.i.i.i.i.i.i.i796.i, %bb.dq ], [ %i.aiv, %.backedge2639 ]
  %i.aiv = sub i32 %i.aiu, %i.aio                 ; 3 uses
  store i32 %i.aiv, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5236
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i804.i = icmp eq i32 %i.ait, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i804.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i805.i, label %bb.ds, !prof !267

bb.ds:                                            ; preds = %bb.dr
  %i.aiw = add i32 %i.ais, 1                      ; 3 uses
  store i32 %i.aiw, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5236
  %i.aix = add i32 %i.ait, -1                     ; 3 uses
  store i32 %i.aix, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5236
  %i.aiy = getelementptr inbounds i8, ptr %i.air, i64 -20 ; 3 uses
  store ptr %i.aiy, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5236
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i805.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i805.i: ; preds = %bb.ds, %bb.dr
  %i.aiz = phi ptr [ %i.aip, %bb.dr ], [ %i.aiy, %bb.ds ] ; 3 uses
  %.val114.i.i.i.i.i.i.i806.i = phi i32 [ %.val112.i.i.i.i.i.i.i803.i, %bb.dr ], [ %i.aiw, %bb.ds ] ; 3 uses
  %i.aja = phi i32 [ %i.aiq, %bb.dr ], [ %i.aix, %bb.ds ] ; 2 uses
  %i.ajb = phi ptr [ %i.air, %bb.dr ], [ %i.aiy, %bb.ds ] ; 2 uses
  %i.ajc = phi i32 [ %i.ais, %bb.dr ], [ %i.aiw, %bb.ds ] ; 2 uses
  %i.ajd = phi i32 [ 0, %bb.dr ], [ %i.aix, %bb.ds ]
  %.not.i.i.i.i.i.i.i.i.i807.i = icmp eq i32 %i.ajc, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i807.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i811.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i808.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i808.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i805.i
  %i.aje = getelementptr i8, ptr %i.ajb, i64 18
  %.val.i.i.i.i.i.i.i.i.i809.i = load i8, ptr %i.aje, align 2, !tbaa !280, !noalias !5236
  %.not4.i.i.i.i.i.i.i.i.i810.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i809.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i810.i, label %.backedge2639, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i811.i"

.backedge2639:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i808.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i820.i"
  %.be2642 = phi ptr [ %i.ajb, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i808.i ], [ %i.aiz, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i820.i" ]
  %.be2643 = phi i32 [ %i.ajc, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i808.i ], [ %.val114.i.i.i.i.i.i.i806.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i820.i" ]
  %.be2644 = phi i32 [ %i.ajd, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i808.i ], [ %i.aja, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i820.i" ]
  br label %bb.dr, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i811.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i808.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i805.i
  %.not.i.i.i.i.i.i.i812.i = icmp eq i32 %.val114.i.i.i.i.i.i.i806.i, 0
  br i1 %.not.i.i.i.i.i.i.i812.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i813.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i813.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i811.i"
  %i.ajf = getelementptr i8, ptr %i.aiz, i64 18
  %.val4.val.i.i.i.i.i.i.i814.i = load i8, ptr %i.ajf, align 2, !tbaa !280, !noalias !5236
  %i.ajg = icmp eq i8 %.val4.val.i.i.i.i.i.i.i814.i, 14
  br i1 %i.ajg, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i815.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i815.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i813.i"
  %i.ajh = load ptr, ptr %.val.i.i.i.i.i.i.i801.i, align 8, !tbaa !1853, !noalias !5236
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 96
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !607, !noalias !5236 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i1889 = add i32 %i.aiv, 1 ; 2 uses
  %i.ajk = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i1889, %i.ajj
  br i1 %i.ajk, label %.lr.ph1891.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i"

.lr.ph1891.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i815.i
  %i.ajl = load ptr, ptr %.val2.i.i.i.i.i.i.i800.i, align 8, !tbaa !662, !noalias !5236
  br label %.lr.ph1891

bb.dt:                                            ; preds = %.lr.ph1891
  %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i1890, 1 ; 2 uses
  %i.ajm = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i, %i.ajj
  br i1 %i.ajm, label %.lr.ph1891, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i", !llvm.loop !186

.lr.ph1891:                                       ; preds = %.lr.ph1891.preheader, %bb.dt
  %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i1890 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i, %bb.dt ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i1889, %.lr.ph1891.preheader ] ; 2 uses
  %i.ajn = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i817.i1890 to i64
  %i.ajo = getelementptr inbounds nuw [20 x i8], ptr %i.ajl, i64 %i.ajn ; 2 uses
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i818.i = load i8, ptr %i.ajp, align 2, !tbaa !280, !noalias !5236
  %.not.i.i.i.i.i.i.i.i.i.i.i.i819.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i818.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i819.i, label %bb.dt, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i820.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i820.i": ; preds = %.lr.ph1891
  %i.ajq = getelementptr i8, ptr %i.ajo, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i821.i = load i16, ptr %i.ajq, align 4, !tbaa !280, !noalias !5236
  %i.ajr = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i821.i, 31
  %i.ajs = zext nneg i16 %i.ajr to i32
  %i.ajt = shl nuw i32 1, %i.ajs
  %i.aju = and i32 %i.ajt, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i822.i = icmp eq i32 %i.aju, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i822.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i", label %.backedge2639

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i820.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i813.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i811.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i815.i, %bb.dt
  %i.ajv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i825.i = load i32, ptr %i.ajv, align 8, !tbaa !324, !noalias !5237 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ajx = load i32, ptr %i.ajw, align 8, !tbaa !1868, !noalias !5237
  %.not.i.i.i.i.i.i.i.i.i.i.i.i826.i = icmp eq i32 %i.ajx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i826.i, label %bb.du, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit829.i", !prof !267

bb.du:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5237
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit829.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit829.i": ; preds = %bb.du, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit823.i"
  %i.ajy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i831.i = load i32, ptr %i.ajy, align 8, !tbaa !324, !noalias !5238
  %i.ajz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aka = load i32, ptr %i.ajz, align 8, !tbaa !1868, !noalias !5238
  %.not.i.i.i.i.i.i.i.i.i.i.i.i832.i = icmp eq i32 %i.aka, 0
  %.1.tr199.i = trunc i32 %.1.i to i8
  %i.akb = shl i8 %.1.tr199.i, 4
  %i.akc = or disjoint i8 %i.akb, 4
  %i.akd = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i825.i to i64
  %umax2359.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i825.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i831.i)
  %wide.trip.count2360.i = zext i32 %umax2359.i to i64
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dy, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit829.i"
  %indvars.iv2356.i = phi i64 [ %indvars.iv.next2357.i, %bb.dy ], [ %i.akd, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit829.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i832.i, label %bb.dw, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit835.i", !prof !267

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5238
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit835.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit835.i": ; preds = %bb.dw, %bb.dv
  %exitcond2361.not.i = icmp eq i64 %indvars.iv2356.i, %wide.trip.count2360.i
  br i1 %exitcond2361.not.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit835.i"
  %i.ake = add i32 %.1.i, 1                       ; 2 uses
  %i.akf = icmp eq i32 %i.ake, 16
  %spec.store.select14.i = select i1 %i.akf, i32 1, i32 %i.ake
  br label %bb.gr

bb.dy:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit835.i"
  %i.akg = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.akh = getelementptr inbounds nuw [20 x i8], ptr %i.akg, i64 %indvars.iv2356.i
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 15
  store i8 %i.akc, ptr %i.aki, align 1, !tbaa !280
  %indvars.iv.next2357.i = add nuw nsw i64 %indvars.iv2356.i, 1
  br label %bb.dv, !llvm.loop !4994

bb.dz:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.akj = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5239
  %i.akk = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5239
  %i.akl = sub i32 %i.akk, %i.akj
  store i32 %i.akl, ptr %3, align 8, !tbaa !1871, !noalias !5239
  %i.akm = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5239
  %.promoted.i.i.i.i.i.i.i836.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5239
  %.promoted10.i.i.i.i.i.i.i837.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5239 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i838.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5239 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i839.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5239 ; 2 uses
  %.val2.i.i.i.i.i.i.i840.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5239
  %.val.i.i.i.i.i.i.i841.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5239
  br label %bb.ea

bb.ea:                                            ; preds = %.backedge2649, %bb.dz
  %i.akn = phi ptr [ %.promoted15.i.i.i.i.i.i.i839.i, %bb.dz ], [ %i.akx, %.backedge2649 ]
  %.val112.i.i.i.i.i.i.i843.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i838.i, %bb.dz ], [ %.val114.i.i.i.i.i.i.i846.i, %.backedge2649 ]
  %i.ako = phi i32 [ %.promoted10.i.i.i.i.i.i.i837.i, %bb.dz ], [ %i.aky, %.backedge2649 ]
  %i.akp = phi ptr [ %.promoted15.i.i.i.i.i.i.i839.i, %bb.dz ], [ %.be2652, %.backedge2649 ] ; 2 uses
  %i.akq = phi i32 [ %.promoted11.i.i.i.i.i.i.i838.i, %bb.dz ], [ %.be2653, %.backedge2649 ] ; 2 uses
  %i.akr = phi i32 [ %.promoted10.i.i.i.i.i.i.i837.i, %bb.dz ], [ %.be2654, %.backedge2649 ] ; 2 uses
  %i.aks = phi i32 [ %.promoted.i.i.i.i.i.i.i836.i, %bb.dz ], [ %i.akt, %.backedge2649 ]
  %i.akt = sub i32 %i.aks, %i.akm                 ; 3 uses
  store i32 %i.akt, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5239
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i844.i = icmp eq i32 %i.akr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i844.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i845.i, label %bb.eb, !prof !267

bb.eb:                                            ; preds = %bb.ea
  %i.aku = add i32 %i.akq, 1                      ; 3 uses
  store i32 %i.aku, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5239
  %i.akv = add i32 %i.akr, -1                     ; 3 uses
  store i32 %i.akv, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5239
  %i.akw = getelementptr inbounds i8, ptr %i.akp, i64 -20 ; 3 uses
  store ptr %i.akw, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5239
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i845.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i845.i: ; preds = %bb.eb, %bb.ea
  %i.akx = phi ptr [ %i.akn, %bb.ea ], [ %i.akw, %bb.eb ] ; 3 uses
  %.val114.i.i.i.i.i.i.i846.i = phi i32 [ %.val112.i.i.i.i.i.i.i843.i, %bb.ea ], [ %i.aku, %bb.eb ] ; 3 uses
  %i.aky = phi i32 [ %i.ako, %bb.ea ], [ %i.akv, %bb.eb ] ; 2 uses
  %i.akz = phi ptr [ %i.akp, %bb.ea ], [ %i.akw, %bb.eb ] ; 2 uses
  %i.ala = phi i32 [ %i.akq, %bb.ea ], [ %i.aku, %bb.eb ] ; 2 uses
  %i.alb = phi i32 [ 0, %bb.ea ], [ %i.akv, %bb.eb ]
  %.not.i.i.i.i.i.i.i.i.i847.i = icmp eq i32 %i.ala, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i847.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i851.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i848.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i848.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i845.i
  %i.alc = getelementptr i8, ptr %i.akz, i64 18
  %.val.i.i.i.i.i.i.i.i.i849.i = load i8, ptr %i.alc, align 2, !tbaa !280, !noalias !5239
  %.not4.i.i.i.i.i.i.i.i.i850.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i849.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i850.i, label %.backedge2649, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i851.i"

.backedge2649:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i848.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i860.i"
  %.be2652 = phi ptr [ %i.akz, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i848.i ], [ %i.akx, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i860.i" ]
  %.be2653 = phi i32 [ %i.ala, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i848.i ], [ %.val114.i.i.i.i.i.i.i846.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i860.i" ]
  %.be2654 = phi i32 [ %i.alb, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i848.i ], [ %i.aky, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i860.i" ]
  br label %bb.ea, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i851.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i848.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i845.i
  %.not.i.i.i.i.i.i.i852.i = icmp eq i32 %.val114.i.i.i.i.i.i.i846.i, 0
  br i1 %.not.i.i.i.i.i.i.i852.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i853.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i853.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i851.i"
  %i.ald = getelementptr i8, ptr %i.akx, i64 18
  %.val4.val.i.i.i.i.i.i.i854.i = load i8, ptr %i.ald, align 2, !tbaa !280, !noalias !5239
  %i.ale = icmp eq i8 %.val4.val.i.i.i.i.i.i.i854.i, 14
  br i1 %i.ale, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i855.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i855.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i853.i"
  %i.alf = load ptr, ptr %.val.i.i.i.i.i.i.i841.i, align 8, !tbaa !1853, !noalias !5239
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 96
  %i.alh = load i32, ptr %i.alg, align 8, !tbaa !607, !noalias !5239 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i1886 = add i32 %i.akt, 1 ; 2 uses
  %i.ali = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i1886, %i.alh
  br i1 %i.ali, label %.lr.ph1888.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i"

.lr.ph1888.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i855.i
  %i.alj = load ptr, ptr %.val2.i.i.i.i.i.i.i840.i, align 8, !tbaa !662, !noalias !5239
  br label %.lr.ph1888

bb.ec:                                            ; preds = %.lr.ph1888
  %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i1887, 1 ; 2 uses
  %i.alk = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i, %i.alh
  br i1 %i.alk, label %.lr.ph1888, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i", !llvm.loop !186

.lr.ph1888:                                       ; preds = %.lr.ph1888.preheader, %bb.ec
  %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i1887 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i, %bb.ec ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i1886, %.lr.ph1888.preheader ] ; 2 uses
  %i.all = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i857.i1887 to i64
  %i.alm = getelementptr inbounds nuw [20 x i8], ptr %i.alj, i64 %i.all ; 2 uses
  %i.aln = getelementptr i8, ptr %i.alm, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i858.i = load i8, ptr %i.aln, align 2, !tbaa !280, !noalias !5239
  %.not.i.i.i.i.i.i.i.i.i.i.i.i859.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i858.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i859.i, label %bb.ec, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i860.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i860.i": ; preds = %.lr.ph1888
  %i.alo = getelementptr i8, ptr %i.alm, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i861.i = load i16, ptr %i.alo, align 4, !tbaa !280, !noalias !5239
  %i.alp = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i861.i, 31
  %i.alq = zext nneg i16 %i.alp to i32
  %i.alr = shl nuw i32 1, %i.alq
  %i.als = and i32 %i.alr, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i862.i = icmp eq i32 %i.als, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i862.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i", label %.backedge2649

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i860.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i853.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i851.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i855.i, %bb.ec
  %i.alt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i865.i = load i32, ptr %i.alt, align 8, !tbaa !324, !noalias !5240 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !1868, !noalias !5240
  %.not.i.i.i.i.i.i.i.i.i.i.i.i866.i = icmp eq i32 %i.alv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i866.i, label %bb.ed, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit869.i", !prof !267

bb.ed:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5240
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit869.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit869.i": ; preds = %bb.ed, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit863.i"
  %i.alw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i871.i = load i32, ptr %i.alw, align 8, !tbaa !324, !noalias !5241
  %i.alx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aly = load i32, ptr %i.alx, align 8, !tbaa !1868, !noalias !5241
  %.not.i.i.i.i.i.i.i.i.i.i.i.i872.i = icmp eq i32 %i.aly, 0
  %.1.tr198.i = trunc i32 %.1.i to i8
  %i.alz = shl i8 %.1.tr198.i, 4
  %i.ama = or disjoint i8 %i.alz, 5
  %i.amb = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i865.i to i64
  %umax2353.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i865.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i871.i)
  %wide.trip.count2354.i = zext i32 %umax2353.i to i64
  br label %bb.ee

bb.ee:                                            ; preds = %bb.eh, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit869.i"
  %indvars.iv2350.i = phi i64 [ %indvars.iv.next2351.i, %bb.eh ], [ %i.amb, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit869.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i872.i, label %bb.ef, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit875.i", !prof !267

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5241
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit875.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit875.i": ; preds = %bb.ef, %bb.ee
  %exitcond2355.not.i = icmp eq i64 %indvars.iv2350.i, %wide.trip.count2354.i
  br i1 %exitcond2355.not.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit875.i"
  %i.amc = add i32 %.1.i, 1                       ; 2 uses
  %i.amd = icmp eq i32 %i.amc, 16
  %spec.store.select15.i = select i1 %i.amd, i32 1, i32 %i.amc
  br label %bb.gr

bb.eh:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit875.i"
  %i.ame = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.amf = getelementptr inbounds nuw [20 x i8], ptr %i.ame, i64 %indvars.iv2350.i
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 15
  store i8 %i.ama, ptr %i.amg, align 1, !tbaa !280
  %indvars.iv.next2351.i = add nuw nsw i64 %indvars.iv2350.i, 1
  br label %bb.ee, !llvm.loop !5013

bb.ei:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.amh = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5242
  %i.ami = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5242
  %i.amj = sub i32 %i.ami, %i.amh
  store i32 %i.amj, ptr %3, align 8, !tbaa !1871, !noalias !5242
  %i.amk = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5242
  %.promoted.i.i.i.i.i.i.i876.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5242
  %.promoted10.i.i.i.i.i.i.i877.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5242 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i878.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5242 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i879.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5242 ; 2 uses
  %.val2.i.i.i.i.i.i.i880.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5242
  %.val.i.i.i.i.i.i.i881.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5242
  br label %bb.ej

bb.ej:                                            ; preds = %.backedge2659, %bb.ei
  %i.aml = phi ptr [ %.promoted15.i.i.i.i.i.i.i879.i, %bb.ei ], [ %i.amv, %.backedge2659 ]
  %.val112.i.i.i.i.i.i.i883.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i878.i, %bb.ei ], [ %.val114.i.i.i.i.i.i.i886.i, %.backedge2659 ]
  %i.amm = phi i32 [ %.promoted10.i.i.i.i.i.i.i877.i, %bb.ei ], [ %i.amw, %.backedge2659 ]
  %i.amn = phi ptr [ %.promoted15.i.i.i.i.i.i.i879.i, %bb.ei ], [ %.be2662, %.backedge2659 ] ; 2 uses
  %i.amo = phi i32 [ %.promoted11.i.i.i.i.i.i.i878.i, %bb.ei ], [ %.be2663, %.backedge2659 ] ; 2 uses
  %i.amp = phi i32 [ %.promoted10.i.i.i.i.i.i.i877.i, %bb.ei ], [ %.be2664, %.backedge2659 ] ; 2 uses
  %i.amq = phi i32 [ %.promoted.i.i.i.i.i.i.i876.i, %bb.ei ], [ %i.amr, %.backedge2659 ]
  %i.amr = sub i32 %i.amq, %i.amk                 ; 3 uses
  store i32 %i.amr, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5242
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i884.i = icmp eq i32 %i.amp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i884.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i885.i, label %bb.ek, !prof !267

bb.ek:                                            ; preds = %bb.ej
  %i.ams = add i32 %i.amo, 1                      ; 3 uses
  store i32 %i.ams, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5242
  %i.amt = add i32 %i.amp, -1                     ; 3 uses
  store i32 %i.amt, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5242
  %i.amu = getelementptr inbounds i8, ptr %i.amn, i64 -20 ; 3 uses
  store ptr %i.amu, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5242
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i885.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i885.i: ; preds = %bb.ek, %bb.ej
  %i.amv = phi ptr [ %i.aml, %bb.ej ], [ %i.amu, %bb.ek ] ; 3 uses
  %.val114.i.i.i.i.i.i.i886.i = phi i32 [ %.val112.i.i.i.i.i.i.i883.i, %bb.ej ], [ %i.ams, %bb.ek ] ; 3 uses
  %i.amw = phi i32 [ %i.amm, %bb.ej ], [ %i.amt, %bb.ek ] ; 2 uses
  %i.amx = phi ptr [ %i.amn, %bb.ej ], [ %i.amu, %bb.ek ] ; 2 uses
  %i.amy = phi i32 [ %i.amo, %bb.ej ], [ %i.ams, %bb.ek ] ; 2 uses
  %i.amz = phi i32 [ 0, %bb.ej ], [ %i.amt, %bb.ek ]
  %.not.i.i.i.i.i.i.i.i.i887.i = icmp eq i32 %i.amy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i887.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i891.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i888.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i888.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i885.i
  %i.ana = getelementptr i8, ptr %i.amx, i64 18
  %.val.i.i.i.i.i.i.i.i.i889.i = load i8, ptr %i.ana, align 2, !tbaa !280, !noalias !5242
  %.not4.i.i.i.i.i.i.i.i.i890.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i889.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i890.i, label %.backedge2659, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i891.i"

.backedge2659:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i888.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i900.i"
  %.be2662 = phi ptr [ %i.amx, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i888.i ], [ %i.amv, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i900.i" ]
  %.be2663 = phi i32 [ %i.amy, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i888.i ], [ %.val114.i.i.i.i.i.i.i886.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i900.i" ]
  %.be2664 = phi i32 [ %i.amz, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i888.i ], [ %i.amw, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i900.i" ]
  br label %bb.ej, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i891.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i888.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i885.i
  %.not.i.i.i.i.i.i.i892.i = icmp eq i32 %.val114.i.i.i.i.i.i.i886.i, 0
  br i1 %.not.i.i.i.i.i.i.i892.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i893.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i893.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i891.i"
  %i.anb = getelementptr i8, ptr %i.amv, i64 18
  %.val4.val.i.i.i.i.i.i.i894.i = load i8, ptr %i.anb, align 2, !tbaa !280, !noalias !5242
  %i.anc = icmp eq i8 %.val4.val.i.i.i.i.i.i.i894.i, 14
  br i1 %i.anc, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i895.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i895.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i893.i"
  %i.and = load ptr, ptr %.val.i.i.i.i.i.i.i881.i, align 8, !tbaa !1853, !noalias !5242
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 96
  %i.anf = load i32, ptr %i.ane, align 8, !tbaa !607, !noalias !5242 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i1883 = add i32 %i.amr, 1 ; 2 uses
  %i.ang = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i1883, %i.anf
  br i1 %i.ang, label %.lr.ph1885.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i"

.lr.ph1885.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i895.i
  %i.anh = load ptr, ptr %.val2.i.i.i.i.i.i.i880.i, align 8, !tbaa !662, !noalias !5242
  br label %.lr.ph1885

bb.el:                                            ; preds = %.lr.ph1885
  %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i1884, 1 ; 2 uses
  %i.ani = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i, %i.anf
  br i1 %i.ani, label %.lr.ph1885, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i", !llvm.loop !186

.lr.ph1885:                                       ; preds = %.lr.ph1885.preheader, %bb.el
  %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i1884 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i, %bb.el ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i1883, %.lr.ph1885.preheader ] ; 2 uses
  %i.anj = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i897.i1884 to i64
  %i.ank = getelementptr inbounds nuw [20 x i8], ptr %i.anh, i64 %i.anj ; 2 uses
  %i.anl = getelementptr i8, ptr %i.ank, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i898.i = load i8, ptr %i.anl, align 2, !tbaa !280, !noalias !5242
  %.not.i.i.i.i.i.i.i.i.i.i.i.i899.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i898.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i899.i, label %bb.el, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i900.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i900.i": ; preds = %.lr.ph1885
  %i.anm = getelementptr i8, ptr %i.ank, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i901.i = load i16, ptr %i.anm, align 4, !tbaa !280, !noalias !5242
  %i.ann = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i901.i, 31
  %i.ano = zext nneg i16 %i.ann to i32
  %i.anp = shl nuw i32 1, %i.ano
  %i.anq = and i32 %i.anp, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i902.i = icmp eq i32 %i.anq, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i902.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i", label %.backedge2659

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i900.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i893.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i891.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i895.i, %bb.el
  %i.anr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i905.i = load i32, ptr %i.anr, align 8, !tbaa !324, !noalias !5243 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ant = load i32, ptr %i.ans, align 8, !tbaa !1868, !noalias !5243
  %.not.i.i.i.i.i.i.i.i.i.i.i.i906.i = icmp eq i32 %i.ant, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i906.i, label %bb.em, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit909.i", !prof !267

bb.em:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5243
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit909.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit909.i": ; preds = %bb.em, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit903.i"
  %i.anu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i911.i = load i32, ptr %i.anu, align 8, !tbaa !324, !noalias !5244
  %i.anv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.anw = load i32, ptr %i.anv, align 8, !tbaa !1868, !noalias !5244
  %.not.i.i.i.i.i.i.i.i.i.i.i.i912.i = icmp eq i32 %i.anw, 0
  %.1.tr197.i = trunc i32 %.1.i to i8
  %i.anx = shl i8 %.1.tr197.i, 4
  %i.any = or disjoint i8 %i.anx, 6
  %i.anz = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i905.i to i64
  %umax2347.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i905.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i911.i)
  %wide.trip.count2348.i = zext i32 %umax2347.i to i64
  br label %bb.en

bb.en:                                            ; preds = %bb.eq, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit909.i"
  %indvars.iv2344.i = phi i64 [ %indvars.iv.next2345.i, %bb.eq ], [ %i.anz, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit909.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i912.i, label %bb.eo, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit915.i", !prof !267

bb.eo:                                            ; preds = %bb.en
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5244
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit915.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit915.i": ; preds = %bb.eo, %bb.en
  %exitcond2349.not.i = icmp eq i64 %indvars.iv2344.i, %wide.trip.count2348.i
  br i1 %exitcond2349.not.i, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit915.i"
  %i.aoa = add i32 %.1.i, 1                       ; 2 uses
  %i.aob = icmp eq i32 %i.aoa, 16
  %spec.store.select16.i = select i1 %i.aob, i32 1, i32 %i.aoa
  br label %bb.gr

bb.eq:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit915.i"
  %i.aoc = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.aod = getelementptr inbounds nuw [20 x i8], ptr %i.aoc, i64 %indvars.iv2344.i
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 15
  store i8 %i.any, ptr %i.aoe, align 1, !tbaa !280
  %indvars.iv.next2345.i = add nuw nsw i64 %indvars.iv2344.i, 1
  br label %bb.en, !llvm.loop !5032

bb.er:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.aof = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5245
  %i.aog = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5245
  %i.aoh = sub i32 %i.aog, %i.aof
  store i32 %i.aoh, ptr %3, align 8, !tbaa !1871, !noalias !5245
  %i.aoi = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5245
  %.promoted.i.i.i.i.i.i.i916.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5245
  %.promoted10.i.i.i.i.i.i.i917.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5245 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i918.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5245 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i919.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5245 ; 2 uses
  %.val2.i.i.i.i.i.i.i920.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5245
  %.val.i.i.i.i.i.i.i921.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5245
  br label %bb.es

bb.es:                                            ; preds = %.backedge2669, %bb.er
  %i.aoj = phi ptr [ %.promoted15.i.i.i.i.i.i.i919.i, %bb.er ], [ %i.aot, %.backedge2669 ]
  %.val112.i.i.i.i.i.i.i923.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i918.i, %bb.er ], [ %.val114.i.i.i.i.i.i.i926.i, %.backedge2669 ]
  %i.aok = phi i32 [ %.promoted10.i.i.i.i.i.i.i917.i, %bb.er ], [ %i.aou, %.backedge2669 ]
  %i.aol = phi ptr [ %.promoted15.i.i.i.i.i.i.i919.i, %bb.er ], [ %.be2672, %.backedge2669 ] ; 2 uses
  %i.aom = phi i32 [ %.promoted11.i.i.i.i.i.i.i918.i, %bb.er ], [ %.be2673, %.backedge2669 ] ; 2 uses
  %i.aon = phi i32 [ %.promoted10.i.i.i.i.i.i.i917.i, %bb.er ], [ %.be2674, %.backedge2669 ] ; 2 uses
  %i.aoo = phi i32 [ %.promoted.i.i.i.i.i.i.i916.i, %bb.er ], [ %i.aop, %.backedge2669 ]
  %i.aop = sub i32 %i.aoo, %i.aoi                 ; 3 uses
  store i32 %i.aop, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5245
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i924.i = icmp eq i32 %i.aon, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i924.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i925.i, label %bb.et, !prof !267

bb.et:                                            ; preds = %bb.es
  %i.aoq = add i32 %i.aom, 1                      ; 3 uses
  store i32 %i.aoq, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5245
  %i.aor = add i32 %i.aon, -1                     ; 3 uses
  store i32 %i.aor, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5245
  %i.aos = getelementptr inbounds i8, ptr %i.aol, i64 -20 ; 3 uses
  store ptr %i.aos, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5245
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i925.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i925.i: ; preds = %bb.et, %bb.es
  %i.aot = phi ptr [ %i.aoj, %bb.es ], [ %i.aos, %bb.et ] ; 3 uses
  %.val114.i.i.i.i.i.i.i926.i = phi i32 [ %.val112.i.i.i.i.i.i.i923.i, %bb.es ], [ %i.aoq, %bb.et ] ; 3 uses
  %i.aou = phi i32 [ %i.aok, %bb.es ], [ %i.aor, %bb.et ] ; 2 uses
  %i.aov = phi ptr [ %i.aol, %bb.es ], [ %i.aos, %bb.et ] ; 2 uses
  %i.aow = phi i32 [ %i.aom, %bb.es ], [ %i.aoq, %bb.et ] ; 2 uses
  %i.aox = phi i32 [ 0, %bb.es ], [ %i.aor, %bb.et ]
  %.not.i.i.i.i.i.i.i.i.i927.i = icmp eq i32 %i.aow, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i927.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i931.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i928.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i928.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i925.i
  %i.aoy = getelementptr i8, ptr %i.aov, i64 18
  %.val.i.i.i.i.i.i.i.i.i929.i = load i8, ptr %i.aoy, align 2, !tbaa !280, !noalias !5245
  %.not4.i.i.i.i.i.i.i.i.i930.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i929.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i930.i, label %.backedge2669, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i931.i"

.backedge2669:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i928.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i940.i"
  %.be2672 = phi ptr [ %i.aov, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i928.i ], [ %i.aot, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i940.i" ]
  %.be2673 = phi i32 [ %i.aow, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i928.i ], [ %.val114.i.i.i.i.i.i.i926.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i940.i" ]
  %.be2674 = phi i32 [ %i.aox, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i928.i ], [ %i.aou, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i940.i" ]
  br label %bb.es, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i931.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i928.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i925.i
  %.not.i.i.i.i.i.i.i932.i = icmp eq i32 %.val114.i.i.i.i.i.i.i926.i, 0
  br i1 %.not.i.i.i.i.i.i.i932.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i933.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i933.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i931.i"
  %i.aoz = getelementptr i8, ptr %i.aot, i64 18
  %.val4.val.i.i.i.i.i.i.i934.i = load i8, ptr %i.aoz, align 2, !tbaa !280, !noalias !5245
  %i.apa = icmp eq i8 %.val4.val.i.i.i.i.i.i.i934.i, 14
  br i1 %i.apa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i935.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i935.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i933.i"
  %i.apb = load ptr, ptr %.val.i.i.i.i.i.i.i921.i, align 8, !tbaa !1853, !noalias !5245
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 96
  %i.apd = load i32, ptr %i.apc, align 8, !tbaa !607, !noalias !5245 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i1880 = add i32 %i.aop, 1 ; 2 uses
  %i.ape = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i1880, %i.apd
  br i1 %i.ape, label %.lr.ph1882.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i"

.lr.ph1882.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i935.i
  %i.apf = load ptr, ptr %.val2.i.i.i.i.i.i.i920.i, align 8, !tbaa !662, !noalias !5245
  br label %.lr.ph1882

bb.eu:                                            ; preds = %.lr.ph1882
  %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i1881, 1 ; 2 uses
  %i.apg = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i, %i.apd
  br i1 %i.apg, label %.lr.ph1882, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i", !llvm.loop !186

.lr.ph1882:                                       ; preds = %.lr.ph1882.preheader, %bb.eu
  %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i1881 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i, %bb.eu ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i1880, %.lr.ph1882.preheader ] ; 2 uses
  %i.aph = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i937.i1881 to i64
  %i.api = getelementptr inbounds nuw [20 x i8], ptr %i.apf, i64 %i.aph ; 2 uses
  %i.apj = getelementptr i8, ptr %i.api, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i938.i = load i8, ptr %i.apj, align 2, !tbaa !280, !noalias !5245
  %.not.i.i.i.i.i.i.i.i.i.i.i.i939.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i938.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i939.i, label %bb.eu, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i940.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i940.i": ; preds = %.lr.ph1882
  %i.apk = getelementptr i8, ptr %i.api, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i941.i = load i16, ptr %i.apk, align 4, !tbaa !280, !noalias !5245
  %i.apl = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i941.i, 31
  %i.apm = zext nneg i16 %i.apl to i32
  %i.apn = shl nuw i32 1, %i.apm
  %i.apo = and i32 %i.apn, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i942.i = icmp eq i32 %i.apo, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i942.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i", label %.backedge2669

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i940.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i933.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i931.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i935.i, %bb.eu
  %i.app = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i945.i = load i32, ptr %i.app, align 8, !tbaa !324, !noalias !5246 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.apr = load i32, ptr %i.apq, align 8, !tbaa !1868, !noalias !5246
  %.not.i.i.i.i.i.i.i.i.i.i.i.i946.i = icmp eq i32 %i.apr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i946.i, label %bb.ev, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit949.i", !prof !267

bb.ev:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5246
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit949.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit949.i": ; preds = %bb.ev, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit943.i"
  %i.aps = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i951.i = load i32, ptr %i.aps, align 8, !tbaa !324, !noalias !5247
  %i.apt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !1868, !noalias !5247
  %.not.i.i.i.i.i.i.i.i.i.i.i.i952.i = icmp eq i32 %i.apu, 0
  %.1.tr196.i = trunc i32 %.1.i to i8
  %i.apv = shl i8 %.1.tr196.i, 4
  %i.apw = or disjoint i8 %i.apv, 7
  %i.apx = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i945.i to i64
  %umax2341.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i945.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i951.i)
  %wide.trip.count2342.i = zext i32 %umax2341.i to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ez, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit949.i"
  %indvars.iv2338.i = phi i64 [ %indvars.iv.next2339.i, %bb.ez ], [ %i.apx, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit949.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i952.i, label %bb.ex, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit955.i", !prof !267

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5247
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit955.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit955.i": ; preds = %bb.ex, %bb.ew
  %exitcond2343.not.i = icmp eq i64 %indvars.iv2338.i, %wide.trip.count2342.i
  br i1 %exitcond2343.not.i, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit955.i"
  %i.apy = add i32 %.1.i, 1                       ; 2 uses
  %i.apz = icmp eq i32 %i.apy, 16
  %spec.store.select17.i = select i1 %i.apz, i32 1, i32 %i.apy
  %i.aqa = load ptr, ptr %i.b, align 8, !tbaa !1853
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 216 ; 2 uses
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !1367
  %i.aqd = or i32 %i.aqc, 32
  store i32 %i.aqd, ptr %i.aqb, align 4, !tbaa !1367
  br label %bb.gr

bb.ez:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit955.i"
  %i.aqe = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.aqf = getelementptr inbounds nuw [20 x i8], ptr %i.aqe, i64 %indvars.iv2338.i
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 15
  store i8 %i.apw, ptr %i.aqg, align 1, !tbaa !280
  %indvars.iv.next2339.i = add nuw nsw i64 %indvars.iv2338.i, 1
  br label %bb.ew, !llvm.loop !5051

bb.fa:                                            ; preds = %bb.i
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %3)
  %i.aqh = load i32, ptr %.sroa.8.0..sroa_idx2494.i5465, align 4, !tbaa !1870, !noalias !5248
  %i.aqi = load i32, ptr %3, align 8, !tbaa !1871, !noalias !5248
  %i.aqj = sub i32 %i.aqi, %i.aqh
  store i32 %i.aqj, ptr %3, align 8, !tbaa !1871, !noalias !5248
  %i.aqk = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 4, !tbaa !1870, !noalias !5248
  %.promoted.i.i.i.i.i.i.i956.i = load i32, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5248
  %.promoted10.i.i.i.i.i.i.i957.i = load i32, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5248 ; 2 uses
  %.promoted11.i.i.i.i.i.i.i958.i = load i32, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5248 ; 2 uses
  %.promoted15.i.i.i.i.i.i.i959.i = load ptr, ptr %.sroa.51477.0..sroa_idx.i, align 8, !noalias !5248 ; 2 uses
  %.val2.i.i.i.i.i.i.i960.i = load ptr, ptr %.sroa.101481.0..sroa_idx.i, align 8, !noalias !5248
  %.val.i.i.i.i.i.i.i961.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !5248
  br label %bb.fb

bb.fb:                                            ; preds = %.backedge2679, %bb.fa
  %i.aql = phi ptr [ %.promoted15.i.i.i.i.i.i.i959.i, %bb.fa ], [ %i.aqv, %.backedge2679 ]
  %.val112.i.i.i.i.i.i.i963.i = phi i32 [ %.promoted11.i.i.i.i.i.i.i958.i, %bb.fa ], [ %.val114.i.i.i.i.i.i.i966.i, %.backedge2679 ]
  %i.aqm = phi i32 [ %.promoted10.i.i.i.i.i.i.i957.i, %bb.fa ], [ %i.aqw, %.backedge2679 ]
  %i.aqn = phi ptr [ %.promoted15.i.i.i.i.i.i.i959.i, %bb.fa ], [ %.be2682, %.backedge2679 ] ; 2 uses
  %i.aqo = phi i32 [ %.promoted11.i.i.i.i.i.i.i958.i, %bb.fa ], [ %.be2683, %.backedge2679 ] ; 2 uses
  %i.aqp = phi i32 [ %.promoted10.i.i.i.i.i.i.i957.i, %bb.fa ], [ %.be2684, %.backedge2679 ] ; 2 uses
  %i.aqq = phi i32 [ %.promoted.i.i.i.i.i.i.i956.i, %bb.fa ], [ %i.aqr, %.backedge2679 ]
  %i.aqr = sub i32 %i.aqq, %i.aqk                 ; 3 uses
  store i32 %i.aqr, ptr %.sroa.41476.0..sroa_idx.i, align 8, !tbaa !1871, !noalias !5248
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i964.i = icmp eq i32 %i.aqp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i964.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i965.i, label %bb.fc, !prof !267

bb.fc:                                            ; preds = %bb.fb
  %i.aqs = add i32 %i.aqo, 1                      ; 3 uses
  store i32 %i.aqs, ptr %.sroa.61478.0..sroa_idx.i, align 8, !tbaa !1868, !noalias !5248
  %i.aqt = add i32 %i.aqp, -1                     ; 3 uses
  store i32 %i.aqt, ptr %.sroa.20.0..sroa_idx2495.i5267, align 4, !tbaa !1872, !noalias !5248
  %i.aqu = getelementptr inbounds i8, ptr %i.aqn, i64 -20 ; 3 uses
  store ptr %i.aqu, ptr %.sroa.51477.0..sroa_idx.i, align 8, !tbaa !1869, !noalias !5248
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i965.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i965.i: ; preds = %bb.fc, %bb.fb
  %i.aqv = phi ptr [ %i.aql, %bb.fb ], [ %i.aqu, %bb.fc ] ; 3 uses
  %.val114.i.i.i.i.i.i.i966.i = phi i32 [ %.val112.i.i.i.i.i.i.i963.i, %bb.fb ], [ %i.aqs, %bb.fc ] ; 3 uses
  %i.aqw = phi i32 [ %i.aqm, %bb.fb ], [ %i.aqt, %bb.fc ] ; 2 uses
  %i.aqx = phi ptr [ %i.aqn, %bb.fb ], [ %i.aqu, %bb.fc ] ; 2 uses
  %i.aqy = phi i32 [ %i.aqo, %bb.fb ], [ %i.aqs, %bb.fc ] ; 2 uses
  %i.aqz = phi i32 [ 0, %bb.fb ], [ %i.aqt, %bb.fc ]
  %.not.i.i.i.i.i.i.i.i.i967.i = icmp eq i32 %i.aqy, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i967.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i971.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i968.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i968.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i965.i
  %i.ara = getelementptr i8, ptr %i.aqx, i64 18
  %.val.i.i.i.i.i.i.i.i.i969.i = load i8, ptr %i.ara, align 2, !tbaa !280, !noalias !5248
  %.not4.i.i.i.i.i.i.i.i.i970.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i969.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i970.i, label %.backedge2679, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i971.i"

.backedge2679:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i968.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i980.i"
  %.be2682 = phi ptr [ %i.aqx, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i968.i ], [ %i.aqv, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i980.i" ]
  %.be2683 = phi i32 [ %i.aqy, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i968.i ], [ %.val114.i.i.i.i.i.i.i966.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i980.i" ]
  %.be2684 = phi i32 [ %i.aqz, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i968.i ], [ %i.aqw, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i980.i" ]
  br label %bb.fb, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i971.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i968.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i965.i
  %.not.i.i.i.i.i.i.i972.i = icmp eq i32 %.val114.i.i.i.i.i.i.i966.i, 0
  br i1 %.not.i.i.i.i.i.i.i972.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i973.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i973.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i971.i"
  %i.arb = getelementptr i8, ptr %i.aqv, i64 18
  %.val4.val.i.i.i.i.i.i.i974.i = load i8, ptr %i.arb, align 2, !tbaa !280, !noalias !5248
  %i.arc = icmp eq i8 %.val4.val.i.i.i.i.i.i.i974.i, 14
  br i1 %i.arc, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i975.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i975.i:          ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i973.i"
  %i.ard = load ptr, ptr %.val.i.i.i.i.i.i.i961.i, align 8, !tbaa !1853, !noalias !5248
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 96
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !607, !noalias !5248 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i1877 = add i32 %i.aqr, 1 ; 2 uses
  %i.arg = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i1877, %i.arf
  br i1 %i.arg, label %.lr.ph1879.preheader, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i"

.lr.ph1879.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i975.i
  %i.arh = load ptr, ptr %.val2.i.i.i.i.i.i.i960.i, align 8, !tbaa !662, !noalias !5248
  br label %.lr.ph1879

bb.fd:                                            ; preds = %.lr.ph1879
  %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i1878, 1 ; 2 uses
  %i.ari = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i, %i.arf
  br i1 %i.ari, label %.lr.ph1879, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i", !llvm.loop !186

.lr.ph1879:                                       ; preds = %.lr.ph1879.preheader, %bb.fd
  %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i1878 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i, %bb.fd ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i1877, %.lr.ph1879.preheader ] ; 2 uses
  %i.arj = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i977.i1878 to i64
  %i.ark = getelementptr inbounds nuw [20 x i8], ptr %i.arh, i64 %i.arj ; 2 uses
  %i.arl = getelementptr i8, ptr %i.ark, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i978.i = load i8, ptr %i.arl, align 2, !tbaa !280, !noalias !5248
  %.not.i.i.i.i.i.i.i.i.i.i.i.i979.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i978.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i979.i, label %bb.fd, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i980.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i980.i": ; preds = %.lr.ph1879
  %i.arm = getelementptr i8, ptr %i.ark, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i981.i = load i16, ptr %i.arm, align 4, !tbaa !280, !noalias !5248
  %i.arn = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i981.i, 31
  %i.aro = zext nneg i16 %i.arn to i32
  %i.arp = shl nuw i32 1, %i.aro
  %i.arq = and i32 %i.arp, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i982.i = icmp eq i32 %i.arq, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i982.i, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i", label %.backedge2679

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i980.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i973.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i971.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i975.i, %bb.fd
  %i.arr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i985.i = load i32, ptr %i.arr, align 8, !tbaa !324, !noalias !5249 ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !1868, !noalias !5249
  %.not.i.i.i.i.i.i.i.i.i.i.i.i986.i = icmp eq i32 %i.art, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i986.i, label %bb.fe, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit989.i", !prof !267

bb.fe:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5249
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit989.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit989.i": ; preds = %bb.fe, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmmEi.exit983.i"
  %i.aru = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i991.i = load i32, ptr %i.aru, align 8, !tbaa !324, !noalias !5250
  %i.arv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !1868, !noalias !5250
  %.not.i.i.i.i.i.i.i.i.i.i.i.i992.i = icmp eq i32 %i.arw, 0
  %.1.tr195.i = trunc i32 %.1.i to i8
  %i.arx = shl i8 %.1.tr195.i, 4
  %i.ary = or disjoint i8 %i.arx, 8
  %i.arz = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i985.i to i64
  %umax2335.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i985.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i991.i)
  %wide.trip.count2336.i = zext i32 %umax2335.i to i64
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fi, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit989.i"
  %indvars.iv2332.i = phi i64 [ %indvars.iv.next2333.i, %bb.fi ], [ %i.arz, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit989.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i992.i, label %bb.fg, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit995.i", !prof !267

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5250
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit995.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit995.i": ; preds = %bb.fg, %bb.ff
  %exitcond2337.not.i = icmp eq i64 %indvars.iv2332.i, %wide.trip.count2336.i
  br i1 %exitcond2337.not.i, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit995.i"
  %i.asa = add i32 %.1.i, 1                       ; 2 uses
  %i.asb = icmp eq i32 %i.asa, 16
  %spec.store.select18.i = select i1 %i.asb, i32 1, i32 %i.asa
  br label %bb.gr

bb.fi:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit995.i"
  %i.asc = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.asd = getelementptr inbounds nuw [20 x i8], ptr %i.asc, i64 %indvars.iv2332.i
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 15
  store i8 %i.ary, ptr %i.ase, align 1, !tbaa !280
  %indvars.iv.next2333.i = add nuw nsw i64 %indvars.iv2332.i, 1
  br label %bb.ff, !llvm.loop !5070

bb.fj:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5251)
  call void @llvm.experimental.noalias.scope.decl(metadata !5252)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %16, ptr noundef nonnull readonly align 8 dereferenceable(73) %5, i64 72, i1 false)
  %i.asf = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.asg = load i8, ptr %i.cl, align 8, !tbaa !1867, !range !380, !noalias !5253, !noundef !293
  store i8 %i.asg, ptr %i.asf, align 8, !tbaa !1867, !alias.scope !5253
  %i.ash = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !1870, !alias.scope !5251
  %.promoted.i.i.i.i.i.i.i996.i = load i32, ptr %16, align 8, !tbaa !1871, !alias.scope !5251
  %i.asj = sub i32 %.promoted.i.i.i.i.i.i.i996.i, %i.asi
  store i32 %i.asj, ptr %16, align 8, !tbaa !1871, !alias.scope !5251
  %i.ask = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %.promoted.i.i2.i.i.i.i.i997.i = load i32, ptr %i.asl, align 8, !tbaa !1868, !alias.scope !5251 ; 3 uses
  %.not210.i.i.i.i.i.i.i.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i997.i, 0
  br i1 %.not210.i.i.i.i.i.i.i.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.i", label %.lr.ph.i.i3.i.i.i.i.i998.i

.lr.ph.i.i3.i.i.i.i.i998.i:                       ; preds = %bb.fj
  %i.asm = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !1870, !alias.scope !5251
  %i.aso = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %16, i64 56
  %.val2.i.i.i.i.i.i.i.i.i999.i = load ptr, ptr %i.asq, align 8, !alias.scope !5251
  %i.asr = getelementptr inbounds nuw i8, ptr %16, i64 48
  %.val.i.i.i.i.i.i.i.i.i1000.i = load ptr, ptr %i.asr, align 8, !alias.scope !5251
  %.promoted14.i.i.i.i.i.i.i.i = load i32, ptr %i.ask, align 8, !tbaa !1871, !alias.scope !5251
  %.promoted10.i.i.pre.i.i.i.i.i.i.i.i = load i32, ptr %i.aso, align 4, !tbaa !1872, !alias.scope !5251 ; 2 uses
  %.promoted15.i.i.pre.i.i.i.i.i.i.i1001.i = load ptr, ptr %i.asp, align 8, !alias.scope !5251 ; 2 uses
  br label %bb.fk

bb.fk:                                            ; preds = %.backedge2689, %.lr.ph.i.i3.i.i.i.i.i998.i
  %i.ass = phi ptr [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1001.i, %.lr.ph.i.i3.i.i.i.i.i998.i ], [ %i.atc, %.backedge2689 ]
  %.val112.i.i.i.i.i.i.i.i.i1002.i = phi i32 [ %.promoted.i.i2.i.i.i.i.i997.i, %.lr.ph.i.i3.i.i.i.i.i998.i ], [ %.val114.i.i.i.i.i.i.i.i.i.i, %.backedge2689 ]
  %i.ast = phi i32 [ %.promoted10.i.i.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i3.i.i.i.i.i998.i ], [ %i.atd, %.backedge2689 ]
  %i.asu = phi ptr [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1001.i, %.lr.ph.i.i3.i.i.i.i.i998.i ], [ %.be2692, %.backedge2689 ] ; 2 uses
  %i.asv = phi i32 [ %.promoted.i.i2.i.i.i.i.i997.i, %.lr.ph.i.i3.i.i.i.i.i998.i ], [ %.be2693, %.backedge2689 ] ; 2 uses
  %i.asw = phi i32 [ %.promoted10.i.i.pre.i.i.i.i.i.i.i.i, %.lr.ph.i.i3.i.i.i.i.i998.i ], [ %.be2694, %.backedge2689 ] ; 2 uses
  %i.asx = phi i32 [ %.promoted14.i.i.i.i.i.i.i.i, %.lr.ph.i.i3.i.i.i.i.i998.i ], [ %i.asy, %.backedge2689 ]
  %i.asy = sub i32 %i.asx, %i.asn                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.asw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.fl, !prof !267

bb.fl:                                            ; preds = %bb.fk
  %i.asz = add i32 %i.asv, 1                      ; 3 uses
  store i32 %i.asz, ptr %i.asl, align 8, !tbaa !1868, !alias.scope !5251
  %i.ata = add i32 %i.asw, -1                     ; 3 uses
  store i32 %i.ata, ptr %i.aso, align 4, !tbaa !1872, !alias.scope !5251
  %i.atb = getelementptr inbounds i8, ptr %i.asu, i64 -20 ; 3 uses
  store ptr %i.atb, ptr %i.asp, align 8, !tbaa !1869, !alias.scope !5251
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  %i.atc = phi ptr [ %i.ass, %bb.fk ], [ %i.atb, %bb.fl ] ; 3 uses
  %.val114.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.val112.i.i.i.i.i.i.i.i.i1002.i, %bb.fk ], [ %i.asz, %bb.fl ] ; 3 uses
  %i.atd = phi i32 [ %i.ast, %bb.fk ], [ %i.ata, %bb.fl ] ; 2 uses
  %i.ate = phi ptr [ %i.asu, %bb.fk ], [ %i.atb, %bb.fl ] ; 2 uses
  %i.atf = phi i32 [ %i.asv, %bb.fk ], [ %i.asz, %bb.fl ] ; 2 uses
  %i.atg = phi i32 [ 0, %bb.fk ], [ %i.ata, %bb.fl ]
  %.not.i.i.i.i.i.i.i.i.i.i.i1003.i = icmp eq i32 %i.atf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i1003.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1004.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1004.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ath = getelementptr i8, ptr %i.ate, i64 18
  %.val.i.i.i.i.i.i.i.i.i.i.i1005.i = load i8, ptr %i.ath, align 2, !tbaa !280, !noalias !5251
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i1005.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i, label %.backedge2689, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i"

.backedge2689:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1004.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1012.i"
  %.be2692 = phi ptr [ %i.ate, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1004.i ], [ %i.atc, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1012.i" ]
  %.be2693 = phi i32 [ %i.atf, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1004.i ], [ %.val114.i.i.i.i.i.i.i.i.i.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1012.i" ]
  %.be2694 = phi i32 [ %i.atg, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1004.i ], [ %i.atd, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1012.i" ]
  br label %bb.fk, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1004.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i1006.i = icmp eq i32 %.val114.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1006.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.sink.split.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ati = getelementptr i8, ptr %i.atc, i64 18
  %.val4.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ati, align 2, !tbaa !280, !noalias !5251
  %i.atj = icmp eq i8 %.val4.val.i.i.i.i.i.i.i.i.i.i, 14
  br i1 %i.atj, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1007.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.sink.split.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1007.i:     ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i"
  %i.atk = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i1000.i, align 8, !tbaa !1853, !noalias !5251
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 96
  %i.atm = load i32, ptr %i.atl, align 8, !tbaa !607, !noalias !5251 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i1872 = add i32 %i.asy, 1 ; 2 uses
  %i.atn = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i1872, %i.atm
  br i1 %i.atn, label %.lr.ph1874.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.sink.split.i"

.lr.ph1874.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1007.i
  %i.ato = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i999.i, align 8, !tbaa !662, !noalias !5251
  br label %.lr.ph1874

bb.fm:                                            ; preds = %.lr.ph1874
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i1873, 1 ; 2 uses
  %i.atp = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i, %i.atm
  br i1 %i.atp, label %.lr.ph1874, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.sink.split.i", !llvm.loop !186

.lr.ph1874:                                       ; preds = %.lr.ph1874.preheader, %bb.fm
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i1873 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i, %bb.fm ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i1872, %.lr.ph1874.preheader ] ; 2 uses
  %i.atq = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1009.i1873 to i64
  %i.atr = getelementptr inbounds nuw [20 x i8], ptr %i.ato, i64 %i.atq ; 2 uses
  %i.ats = getelementptr i8, ptr %i.atr, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1010.i = load i8, ptr %i.ats, align 2, !tbaa !280, !noalias !5251
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1011.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1010.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1011.i, label %bb.fm, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1012.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1012.i": ; preds = %.lr.ph1874
  %i.att = getelementptr i8, ptr %i.atr, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1013.i = load i16, ptr %i.att, align 4, !tbaa !280, !noalias !5251
  %i.atu = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1013.i, 31
  %i.atv = zext nneg i16 %i.atu to i32
  %i.atw = shl nuw i32 1, %i.atv
  %i.atx = and i32 %i.atw, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1014.i = icmp eq i32 %i.atx, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1014.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.sink.split.i", label %.backedge2689

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.sink.split.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1012.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1007.i, %bb.fm
  store i32 %i.asy, ptr %i.ask, align 8, !tbaa !1871, !alias.scope !5251
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.i": ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.sink.split.i", %bb.fj
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef nonnull align 8 dereferenceable(73) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #63
  %i.aty = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i1016.i = load i32, ptr %i.aty, align 8, !tbaa !324, !noalias !5254 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aua = load i32, ptr %i.atz, align 8, !tbaa !1868, !noalias !5254
  %.not.i.i.i.i.i.i.i.i.i.i.i.i1017.i = icmp eq i32 %i.aua, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i1017.i, label %bb.fn, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1020.i", !prof !267

bb.fn:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5254
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1020.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1020.i": ; preds = %bb.fn, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit.i"
  %i.aub = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i1022.i = load i32, ptr %i.aub, align 8, !tbaa !324, !noalias !5255
  %i.auc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aud = load i32, ptr %i.auc, align 8, !tbaa !1868, !noalias !5255
  %.not.i.i.i.i.i.i.i.i.i.i.i.i1023.i = icmp eq i32 %i.aud, 0
  %.1.tr194.i = trunc i32 %.1.i to i8
  %i.aue = shl i8 %.1.tr194.i, 4
  %i.auf = or disjoint i8 %i.aue, 5
  %i.aug = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1016.i to i64
  %umax2329.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1016.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1022.i)
  %wide.trip.count2330.i = zext i32 %umax2329.i to i64
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fr, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1020.i"
  %indvars.iv2326.i = phi i64 [ %indvars.iv.next2327.i, %bb.fr ], [ %i.aug, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1020.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i1023.i, label %bb.fp, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1026.i", !prof !267

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5255
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1026.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1026.i": ; preds = %bb.fp, %bb.fo
  %exitcond2331.not.i = icmp eq i64 %indvars.iv2326.i, %wide.trip.count2330.i
  br i1 %exitcond2331.not.i, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1026.i"
  %i.auh = add i32 %.1.i, 1                       ; 2 uses
  %i.aui = icmp eq i32 %i.auh, 16
  %spec.store.select19.i = select i1 %i.aui, i32 1, i32 %i.auh
  br label %bb.gr

bb.fr:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1026.i"
  %i.auj = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.auk = getelementptr inbounds nuw [20 x i8], ptr %i.auj, i64 %indvars.iv2326.i
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 15
  store i8 %i.auf, ptr %i.aul, align 1, !tbaa !280
  %indvars.iv.next2327.i = add nuw nsw i64 %indvars.iv2326.i, 1
  br label %bb.fo, !llvm.loop !5091

bb.fs:                                            ; preds = %bb.i
  switch i32 %.1188.i, label %bb.gr [
    i32 8, label %bb.ft
    i32 9, label %bb.gc
  ]

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5256)
  call void @llvm.experimental.noalias.scope.decl(metadata !5257)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %17, ptr noundef nonnull readonly align 8 dereferenceable(73) %5, i64 72, i1 false)
  %i.aum = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.aun = load i8, ptr %i.cl, align 8, !tbaa !1867, !range !380, !noalias !5258, !noundef !293
  store i8 %i.aun, ptr %i.aum, align 8, !tbaa !1867, !alias.scope !5258
  %i.auo = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !1870, !alias.scope !5256
  %.promoted.i.i.i.i.i.i.i1027.i = load i32, ptr %17, align 8, !tbaa !1871, !alias.scope !5256
  %i.auq = sub i32 %.promoted.i.i.i.i.i.i.i1027.i, %i.aup
  store i32 %i.auq, ptr %17, align 8, !tbaa !1871, !alias.scope !5256
  %i.aur = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %.promoted.i.i2.i.i.i.i.i1028.i = load i32, ptr %i.aus, align 8, !tbaa !1868, !alias.scope !5256 ; 3 uses
  %.not210.i.i.i.i.i.i.i1029.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i1028.i, 0
  br i1 %.not210.i.i.i.i.i.i.i1029.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.i", label %.lr.ph.i.i3.i.i.i.i.i1030.i

.lr.ph.i.i3.i.i.i.i.i1030.i:                      ; preds = %bb.ft
  %i.aut = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !1870, !alias.scope !5256
  %i.auv = getelementptr inbounds nuw i8, ptr %17, i64 28 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %17, i64 56
  %.val2.i.i.i.i.i.i.i.i.i1031.i = load ptr, ptr %i.aux, align 8, !alias.scope !5256
  %i.auy = getelementptr inbounds nuw i8, ptr %17, i64 48
  %.val.i.i.i.i.i.i.i.i.i1032.i = load ptr, ptr %i.auy, align 8, !alias.scope !5256
  %.promoted14.i.i.i.i.i.i.i1033.i = load i32, ptr %i.aur, align 8, !tbaa !1871, !alias.scope !5256
  %.promoted10.i.i.pre.i.i.i.i.i.i.i1034.i = load i32, ptr %i.auv, align 4, !tbaa !1872, !alias.scope !5256 ; 2 uses
  %.promoted15.i.i.pre.i.i.i.i.i.i.i1035.i = load ptr, ptr %i.auw, align 8, !alias.scope !5256 ; 2 uses
  br label %bb.fu

bb.fu:                                            ; preds = %.backedge2701, %.lr.ph.i.i3.i.i.i.i.i1030.i
  %i.auz = phi ptr [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1035.i, %.lr.ph.i.i3.i.i.i.i.i1030.i ], [ %i.avj, %.backedge2701 ]
  %.val112.i.i.i.i.i.i.i.i.i1037.i = phi i32 [ %.promoted.i.i2.i.i.i.i.i1028.i, %.lr.ph.i.i3.i.i.i.i.i1030.i ], [ %.val114.i.i.i.i.i.i.i.i.i1040.i, %.backedge2701 ]
  %i.ava = phi i32 [ %.promoted10.i.i.pre.i.i.i.i.i.i.i1034.i, %.lr.ph.i.i3.i.i.i.i.i1030.i ], [ %i.avk, %.backedge2701 ]
  %i.avb = phi ptr [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1035.i, %.lr.ph.i.i3.i.i.i.i.i1030.i ], [ %.be2704, %.backedge2701 ] ; 2 uses
  %i.avc = phi i32 [ %.promoted.i.i2.i.i.i.i.i1028.i, %.lr.ph.i.i3.i.i.i.i.i1030.i ], [ %.be2705, %.backedge2701 ] ; 2 uses
  %i.avd = phi i32 [ %.promoted10.i.i.pre.i.i.i.i.i.i.i1034.i, %.lr.ph.i.i3.i.i.i.i.i1030.i ], [ %.be2706, %.backedge2701 ] ; 2 uses
  %i.ave = phi i32 [ %.promoted14.i.i.i.i.i.i.i1033.i, %.lr.ph.i.i3.i.i.i.i.i1030.i ], [ %i.avf, %.backedge2701 ]
  %i.avf = sub i32 %i.ave, %i.auu                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i1038.i = icmp eq i32 %i.avd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i1038.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1039.i, label %bb.fv, !prof !267

bb.fv:                                            ; preds = %bb.fu
  %i.avg = add i32 %i.avc, 1                      ; 3 uses
  store i32 %i.avg, ptr %i.aus, align 8, !tbaa !1868, !alias.scope !5256
  %i.avh = add i32 %i.avd, -1                     ; 3 uses
  store i32 %i.avh, ptr %i.auv, align 4, !tbaa !1872, !alias.scope !5256
  %i.avi = getelementptr inbounds i8, ptr %i.avb, i64 -20 ; 3 uses
  store ptr %i.avi, ptr %i.auw, align 8, !tbaa !1869, !alias.scope !5256
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1039.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1039.i: ; preds = %bb.fv, %bb.fu
  %i.avj = phi ptr [ %i.auz, %bb.fu ], [ %i.avi, %bb.fv ] ; 3 uses
  %.val114.i.i.i.i.i.i.i.i.i1040.i = phi i32 [ %.val112.i.i.i.i.i.i.i.i.i1037.i, %bb.fu ], [ %i.avg, %bb.fv ] ; 3 uses
  %i.avk = phi i32 [ %i.ava, %bb.fu ], [ %i.avh, %bb.fv ] ; 2 uses
  %i.avl = phi ptr [ %i.avb, %bb.fu ], [ %i.avi, %bb.fv ] ; 2 uses
  %i.avm = phi i32 [ %i.avc, %bb.fu ], [ %i.avg, %bb.fv ] ; 2 uses
  %i.avn = phi i32 [ 0, %bb.fu ], [ %i.avh, %bb.fv ]
  %.not.i.i.i.i.i.i.i.i.i.i.i1041.i = icmp eq i32 %i.avm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i1041.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1045.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1042.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1042.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1039.i
  %i.avo = getelementptr i8, ptr %i.avl, i64 18
  %.val.i.i.i.i.i.i.i.i.i.i.i1043.i = load i8, ptr %i.avo, align 2, !tbaa !280, !noalias !5256
  %.not4.i.i.i.i.i.i.i.i.i.i.i1044.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i1043.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i1044.i, label %.backedge2701, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1045.i"

.backedge2701:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1042.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1054.i"
  %.be2704 = phi ptr [ %i.avl, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1042.i ], [ %i.avj, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1054.i" ]
  %.be2705 = phi i32 [ %i.avm, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1042.i ], [ %.val114.i.i.i.i.i.i.i.i.i1040.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1054.i" ]
  %.be2706 = phi i32 [ %i.avn, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1042.i ], [ %i.avk, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1054.i" ]
  br label %bb.fu, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1045.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1042.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1039.i
  %.not.i.i.i.i.i.i.i.i.i1046.i = icmp eq i32 %.val114.i.i.i.i.i.i.i.i.i1040.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1046.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.sink.split.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1047.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1047.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1045.i"
  %i.avp = getelementptr i8, ptr %i.avj, i64 18
  %.val4.val.i.i.i.i.i.i.i.i.i1048.i = load i8, ptr %i.avp, align 2, !tbaa !280, !noalias !5256
  %i.avq = icmp eq i8 %.val4.val.i.i.i.i.i.i.i.i.i1048.i, 14
  br i1 %i.avq, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1049.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.sink.split.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1049.i:     ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1047.i"
  %i.avr = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i1032.i, align 8, !tbaa !1853, !noalias !5256
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 96
  %i.avt = load i32, ptr %i.avs, align 8, !tbaa !607, !noalias !5256 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i1867 = add i32 %i.avf, 1 ; 2 uses
  %i.avu = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i1867, %i.avt
  br i1 %i.avu, label %.lr.ph1869.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.sink.split.i"

.lr.ph1869.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1049.i
  %i.avv = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i1031.i, align 8, !tbaa !662, !noalias !5256
  br label %.lr.ph1869

bb.fw:                                            ; preds = %.lr.ph1869
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i1868, 1 ; 2 uses
  %i.avw = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i, %i.avt
  br i1 %i.avw, label %.lr.ph1869, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.sink.split.i", !llvm.loop !186

.lr.ph1869:                                       ; preds = %.lr.ph1869.preheader, %bb.fw
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i1868 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i, %bb.fw ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i1867, %.lr.ph1869.preheader ] ; 2 uses
  %i.avx = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1051.i1868 to i64
  %i.avy = getelementptr inbounds nuw [20 x i8], ptr %i.avv, i64 %i.avx ; 2 uses
  %i.avz = getelementptr i8, ptr %i.avy, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1052.i = load i8, ptr %i.avz, align 2, !tbaa !280, !noalias !5256
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1053.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1052.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1053.i, label %bb.fw, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1054.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1054.i": ; preds = %.lr.ph1869
  %i.awa = getelementptr i8, ptr %i.avy, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1055.i = load i16, ptr %i.awa, align 4, !tbaa !280, !noalias !5256
  %i.awb = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1055.i, 31
  %i.awc = zext nneg i16 %i.awb to i32
  %i.awd = shl nuw i32 1, %i.awc
  %i.awe = and i32 %i.awd, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1056.i = icmp eq i32 %i.awe, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1056.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.sink.split.i", label %.backedge2701

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.sink.split.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1054.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1047.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1045.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1049.i, %bb.fw
  store i32 %i.avf, ptr %i.aur, align 8, !tbaa !1871, !alias.scope !5256
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.i": ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.sink.split.i", %bb.ft
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef nonnull align 8 dereferenceable(73) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #63
  %i.awf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i1059.i = load i32, ptr %i.awf, align 8, !tbaa !324, !noalias !5259 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.awh = load i32, ptr %i.awg, align 8, !tbaa !1868, !noalias !5259
  %.not.i.i.i.i.i.i.i.i.i.i.i.i1060.i = icmp eq i32 %i.awh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i1060.i, label %bb.fx, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1063.i", !prof !267

bb.fx:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5259
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1063.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1063.i": ; preds = %bb.fx, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1057.i"
  %i.awi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i1065.i = load i32, ptr %i.awi, align 8, !tbaa !324, !noalias !5260
  %i.awj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.awk = load i32, ptr %i.awj, align 8, !tbaa !1868, !noalias !5260
  %.not.i.i.i.i.i.i.i.i.i.i.i.i1066.i = icmp eq i32 %i.awk, 0
  %.1.tr193.i = trunc i32 %.1.i to i8
  %i.awl = shl i8 %.1.tr193.i, 4
  %i.awm = or disjoint i8 %i.awl, 8
  %i.awn = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1059.i to i64
  %umax2323.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1059.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1065.i)
  %wide.trip.count2324.i = zext i32 %umax2323.i to i64
  br label %bb.fy

bb.fy:                                            ; preds = %bb.gb, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1063.i"
  %indvars.iv2320.i = phi i64 [ %indvars.iv.next2321.i, %bb.gb ], [ %i.awn, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1063.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i1066.i, label %bb.fz, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1069.i", !prof !267

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5260
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1069.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1069.i": ; preds = %bb.fz, %bb.fy
  %exitcond2325.not.i = icmp eq i64 %indvars.iv2320.i, %wide.trip.count2324.i
  br i1 %exitcond2325.not.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1069.i"
  %i.awo = add i32 %.1.i, 1                       ; 2 uses
  %i.awp = icmp eq i32 %i.awo, 16
  %spec.store.select20.i = select i1 %i.awp, i32 1, i32 %i.awo
  br label %bb.gr

bb.gb:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1069.i"
  %i.awq = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.awr = getelementptr inbounds nuw [20 x i8], ptr %i.awq, i64 %indvars.iv2320.i
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 15
  store i8 %i.awm, ptr %i.aws, align 1, !tbaa !280
  %indvars.iv.next2321.i = add nuw nsw i64 %indvars.iv2320.i, 1
  br label %bb.fy, !llvm.loop !5112

bb.gc:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5261)
  call void @llvm.experimental.noalias.scope.decl(metadata !5262)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %18, ptr noundef nonnull readonly align 8 dereferenceable(73) %5, i64 72, i1 false)
  %i.awt = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.awu = load i8, ptr %i.cl, align 8, !tbaa !1867, !range !380, !noalias !5263, !noundef !293
  store i8 %i.awu, ptr %i.awt, align 8, !tbaa !1867, !alias.scope !5263
  %i.awv = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !1870, !alias.scope !5261
  %.promoted.i.i.i.i.i.i.i1070.i = load i32, ptr %18, align 8, !tbaa !1871, !alias.scope !5261
  %i.awx = sub i32 %.promoted.i.i.i.i.i.i.i1070.i, %i.aww
  store i32 %i.awx, ptr %18, align 8, !tbaa !1871, !alias.scope !5261
  %i.awy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %.promoted.i.i2.i.i.i.i.i1071.i = load i32, ptr %i.awz, align 8, !tbaa !1868, !alias.scope !5261 ; 3 uses
  %.not210.i.i.i.i.i.i.i1072.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i1071.i, 0
  br i1 %.not210.i.i.i.i.i.i.i1072.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.i", label %.lr.ph.i.i3.i.i.i.i.i1073.i

.lr.ph.i.i3.i.i.i.i.i1073.i:                      ; preds = %bb.gc
  %i.axa = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !1870, !alias.scope !5261
  %i.axc = getelementptr inbounds nuw i8, ptr %18, i64 28 ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %18, i64 56
  %.val2.i.i.i.i.i.i.i.i.i1074.i = load ptr, ptr %i.axe, align 8, !alias.scope !5261
  %i.axf = getelementptr inbounds nuw i8, ptr %18, i64 48
  %.val.i.i.i.i.i.i.i.i.i1075.i = load ptr, ptr %i.axf, align 8, !alias.scope !5261
  %.promoted14.i.i.i.i.i.i.i1076.i = load i32, ptr %i.awy, align 8, !tbaa !1871, !alias.scope !5261
  %.promoted10.i.i.pre.i.i.i.i.i.i.i1077.i = load i32, ptr %i.axc, align 4, !tbaa !1872, !alias.scope !5261 ; 2 uses
  %.promoted15.i.i.pre.i.i.i.i.i.i.i1078.i = load ptr, ptr %i.axd, align 8, !alias.scope !5261 ; 2 uses
  br label %bb.gd

bb.gd:                                            ; preds = %.backedge2713, %.lr.ph.i.i3.i.i.i.i.i1073.i
  %i.axg = phi ptr [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1078.i, %.lr.ph.i.i3.i.i.i.i.i1073.i ], [ %i.axq, %.backedge2713 ]
  %.val112.i.i.i.i.i.i.i.i.i1080.i = phi i32 [ %.promoted.i.i2.i.i.i.i.i1071.i, %.lr.ph.i.i3.i.i.i.i.i1073.i ], [ %.val114.i.i.i.i.i.i.i.i.i1083.i, %.backedge2713 ]
  %i.axh = phi i32 [ %.promoted10.i.i.pre.i.i.i.i.i.i.i1077.i, %.lr.ph.i.i3.i.i.i.i.i1073.i ], [ %i.axr, %.backedge2713 ]
  %i.axi = phi ptr [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1078.i, %.lr.ph.i.i3.i.i.i.i.i1073.i ], [ %.be2716, %.backedge2713 ] ; 2 uses
  %i.axj = phi i32 [ %.promoted.i.i2.i.i.i.i.i1071.i, %.lr.ph.i.i3.i.i.i.i.i1073.i ], [ %.be2717, %.backedge2713 ] ; 2 uses
  %i.axk = phi i32 [ %.promoted10.i.i.pre.i.i.i.i.i.i.i1077.i, %.lr.ph.i.i3.i.i.i.i.i1073.i ], [ %.be2718, %.backedge2713 ] ; 2 uses
  %i.axl = phi i32 [ %.promoted14.i.i.i.i.i.i.i1076.i, %.lr.ph.i.i3.i.i.i.i.i1073.i ], [ %i.axm, %.backedge2713 ]
  %i.axm = sub i32 %i.axl, %i.axb                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i1081.i = icmp eq i32 %i.axk, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i1081.i, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1082.i, label %bb.ge, !prof !267

bb.ge:                                            ; preds = %bb.gd
  %i.axn = add i32 %i.axj, 1                      ; 3 uses
  store i32 %i.axn, ptr %i.awz, align 8, !tbaa !1868, !alias.scope !5261
  %i.axo = add i32 %i.axk, -1                     ; 3 uses
  store i32 %i.axo, ptr %i.axc, align 4, !tbaa !1872, !alias.scope !5261
  %i.axp = getelementptr inbounds i8, ptr %i.axi, i64 -20 ; 3 uses
  store ptr %i.axp, ptr %i.axd, align 8, !tbaa !1869, !alias.scope !5261
  br label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1082.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1082.i: ; preds = %bb.ge, %bb.gd
  %i.axq = phi ptr [ %i.axg, %bb.gd ], [ %i.axp, %bb.ge ] ; 3 uses
  %.val114.i.i.i.i.i.i.i.i.i1083.i = phi i32 [ %.val112.i.i.i.i.i.i.i.i.i1080.i, %bb.gd ], [ %i.axn, %bb.ge ] ; 3 uses
  %i.axr = phi i32 [ %i.axh, %bb.gd ], [ %i.axo, %bb.ge ] ; 2 uses
  %i.axs = phi ptr [ %i.axi, %bb.gd ], [ %i.axp, %bb.ge ] ; 2 uses
  %i.axt = phi i32 [ %i.axj, %bb.gd ], [ %i.axn, %bb.ge ] ; 2 uses
  %i.axu = phi i32 [ 0, %bb.gd ], [ %i.axo, %bb.ge ]
  %.not.i.i.i.i.i.i.i.i.i.i.i1084.i = icmp eq i32 %i.axt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i1084.i, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1088.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1085.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1085.i: ; preds = %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1082.i
  %i.axv = getelementptr i8, ptr %i.axs, i64 18
  %.val.i.i.i.i.i.i.i.i.i.i.i1086.i = load i8, ptr %i.axv, align 2, !tbaa !280, !noalias !5261
  %.not4.i.i.i.i.i.i.i.i.i.i.i1087.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i1086.i, 6
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i1087.i, label %.backedge2713, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1088.i"

.backedge2713:                                    ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1085.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1097.i"
  %.be2716 = phi ptr [ %i.axs, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1085.i ], [ %i.axq, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1097.i" ]
  %.be2717 = phi i32 [ %i.axt, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1085.i ], [ %.val114.i.i.i.i.i.i.i.i.i1083.i, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1097.i" ]
  %.be2718 = phi i32 [ %i.axu, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1085.i ], [ %i.axr, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1097.i" ]
  br label %bb.gd, !llvm.loop !189

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1088.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1085.i, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEmmEv.exit.i.i.i.i.i.i.i.i.i.i.i1082.i
  %.not.i.i.i.i.i.i.i.i.i1089.i = icmp eq i32 %.val114.i.i.i.i.i.i.i.i.i1083.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i1089.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.sink.split.i", label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1090.i"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1090.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1088.i"
  %i.axw = getelementptr i8, ptr %i.axq, i64 18
  %.val4.val.i.i.i.i.i.i.i.i.i1091.i = load i8, ptr %i.axw, align 2, !tbaa !280, !noalias !5261
  %i.axx = icmp eq i8 %.val4.val.i.i.i.i.i.i.i.i.i1091.i, 14
  br i1 %i.axx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1092.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.sink.split.i"

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1092.i:     ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1090.i"
  %i.axy = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i1075.i, align 8, !tbaa !1853, !noalias !5261
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 96
  %i.aya = load i32, ptr %i.axz, align 8, !tbaa !607, !noalias !5261 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i1862 = add i32 %i.axm, 1 ; 2 uses
  %i.ayb = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i1862, %i.aya
  br i1 %i.ayb, label %.lr.ph1864.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.sink.split.i"

.lr.ph1864.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1092.i
  %i.ayc = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i1074.i, align 8, !tbaa !662, !noalias !5261
  br label %.lr.ph1864

bb.gf:                                            ; preds = %.lr.ph1864
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i1863, 1 ; 2 uses
  %i.ayd = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i, %i.aya
  br i1 %i.ayd, label %.lr.ph1864, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.sink.split.i", !llvm.loop !186

.lr.ph1864:                                       ; preds = %.lr.ph1864.preheader, %bb.gf
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i1863 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i, %bb.gf ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i1862, %.lr.ph1864.preheader ] ; 2 uses
  %i.aye = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1094.i1863 to i64
  %i.ayf = getelementptr inbounds nuw [20 x i8], ptr %i.ayc, i64 %i.aye ; 2 uses
  %i.ayg = getelementptr i8, ptr %i.ayf, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1095.i = load i8, ptr %i.ayg, align 2, !tbaa !280, !noalias !5261
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1096.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1095.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1096.i, label %bb.gf, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1097.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1097.i": ; preds = %.lr.ph1864
  %i.ayh = getelementptr i8, ptr %i.ayf, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1098.i = load i16, ptr %i.ayh, align 4, !tbaa !280, !noalias !5261
  %i.ayi = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1098.i, 31
  %i.ayj = zext nneg i16 %i.ayi to i32
  %i.ayk = shl nuw i32 1, %i.ayj
  %i.ayl = and i32 %i.ayk, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1099.i = icmp eq i32 %i.ayl, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1099.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.sink.split.i", label %.backedge2713

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.sink.split.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1097.i", %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEdeEv.exit.i.i.i.i.i.i.i.i.i1090.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EE9hb_pair_tIjRS5_EEmmEv.exit.i.i.i.i.i.i.i.i.i1088.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1092.i, %bb.gf
  store i32 %i.axm, ptr %i.awy, align 8, !tbaa !1871, !alias.scope !5261
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.i": ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.sink.split.i", %bb.gc
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %3, ptr noundef nonnull align 8 dereferenceable(73) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #63
  %i.aym = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i1102.i = load i32, ptr %i.aym, align 8, !tbaa !324, !noalias !5264 ; 2 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ayo = load i32, ptr %i.ayn, align 8, !tbaa !1868, !noalias !5264
  %.not.i.i.i.i.i.i.i.i.i.i.i.i1103.i = icmp eq i32 %i.ayo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i1103.i, label %bb.gg, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1106.i", !prof !267

bb.gg:                                            ; preds = %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.i"
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5264
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1106.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1106.i": ; preds = %bb.gg, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEmiEj.exit1100.i"
  %i.ayp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i1108.i = load i32, ptr %i.ayp, align 8, !tbaa !324, !noalias !5265
  %i.ayq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ayr = load i32, ptr %i.ayq, align 8, !tbaa !1868, !noalias !5265
  %.not.i.i.i.i.i.i.i.i.i.i.i.i1109.i = icmp eq i32 %i.ayr, 0
  %.1.tr.i = trunc i32 %.1.i to i8
  %i.ays = shl i8 %.1.tr.i, 4
  %i.ayt = or disjoint i8 %i.ays, 7
  %i.ayu = zext i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1102.i to i64
  %umax.i = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1102.i, i32 %.val.i.i.i.i.i.i.i.i.i.i.i.i1108.i)
  %wide.trip.count.i = zext i32 %umax.i to i64
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gk, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1106.i"
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gk ], [ %i.ayu, %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1106.i" ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i1109.i, label %bb.gi, label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1112.i", !prof !267

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false), !noalias !5265
  br label %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1112.i"

"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1112.i": ; preds = %bb.gi, %bb.gh
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1112.i"
  %i.ayv = add i32 %.1.i, 1                       ; 2 uses
  %i.ayw = icmp eq i32 %i.ayv, 16
  %spec.store.select21.i = select i1 %i.ayw, i32 1, i32 %i.ayv
  %i.ayx = load ptr, ptr %i.b, align 8, !tbaa !1853
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayx, i64 216 ; 2 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !1367
  %i.aza = or i32 %i.ayz, 32
  store i32 %i.aza, ptr %i.ayy, align 4, !tbaa !1367
  br label %bb.gr

bb.gk:                                            ; preds = %"_ZN9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEdeEv.exit1112.i"
  %i.azb = load ptr, ptr %i.c, align 8, !tbaa !662
  %i.azc = getelementptr inbounds nuw [20 x i8], ptr %i.azb, i64 %indvars.iv.i
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 15
  store i8 %i.ayt, ptr %i.azd, align 1, !tbaa !280
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.gh, !llvm.loop !5133

bb.gl:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5266)
  call void @llvm.experimental.noalias.scope.decl(metadata !5267)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %19, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.aze = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.azf = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5268, !noundef !293
  store i8 %i.azf, ptr %i.aze, align 8, !tbaa !1867, !alias.scope !5268
  %i.azg = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !1870, !alias.scope !5266
  %.promoted.i.i.i.i.i.i.i1114.i = load i32, ptr %19, align 8, !tbaa !1871, !alias.scope !5266
  %i.azi = add i32 %.promoted.i.i.i.i.i.i.i1114.i, %i.azh
  store i32 %i.azi, ptr %19, align 8, !tbaa !1871, !alias.scope !5266
  %i.azj = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i1115.i = load i32, ptr %i.azk, align 8, !tbaa !1868, !alias.scope !5266 ; 2 uses
  %.not215.i.i.i.i.i.i.i1116.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i1115.i, 0
  br i1 %.not215.i.i.i.i.i.i.i1116.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.i", label %.lr.ph.i.i3.i.i.i.i.i1117.i

.lr.ph.i.i3.i.i.i.i.i1117.i:                      ; preds = %bb.gl
  %i.azl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.azn = load i32, ptr %i.azm, align 4, !tbaa !1870, !alias.scope !5266 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %19, i64 28 ; 3 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %19, i64 56
  %.val2.i.i.i.i.i.i.i.i.i1118.i = load ptr, ptr %i.azp, align 8, !alias.scope !5266
  %i.azq = getelementptr inbounds nuw i8, ptr %19, i64 48
  %.val.i.i.i.i.i.i.i.i.i1119.i = load ptr, ptr %i.azq, align 8, !alias.scope !5266
  %.promoted19.i.i.i.i.i.i.i1120.i = load i32, ptr %i.azj, align 8, !tbaa !1871, !alias.scope !5266
  %.promoted14.i.i.pre.i.i.i.i.i.i.i1121.i = load ptr, ptr %i.azl, align 8, !alias.scope !5266
  %.promoted15.i.i.pre.i.i.i.i.i.i.i1122.i = load i32, ptr %i.azo, align 4, !alias.scope !5266
  br label %bb.gm

bb.gm:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i", %.lr.ph.i.i3.i.i.i.i.i1117.i
  %i.azr = phi i32 [ %i.bad, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1122.i, %.lr.ph.i.i3.i.i.i.i.i1117.i ] ; 2 uses
  %i.azs = phi ptr [ %i.azy, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i1121.i, %.lr.ph.i.i3.i.i.i.i.i1117.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i1126.i = phi i32 [ %i.azz, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i" ], [ %.promoted.i.i2.i.i.i.i.i1115.i, %.lr.ph.i.i3.i.i.i.i.i1117.i ] ; 3 uses
  %i.azt = phi i32 [ %i.bae, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i" ], [ %.promoted19.i.i.i.i.i.i.i1120.i, %.lr.ph.i.i3.i.i.i.i.i1117.i ] ; 2 uses
  %i.azu = add i32 %.val112.i.i.i.i.i.i.i.i.i1126.i, -1 ; 3 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azs, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i1129.i1848 = icmp eq i32 %i.azu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i1129.i1848, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i

_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i: ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i
  %i.azw = add i32 %i.azz, -1                     ; 3 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azy, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i1129.i = icmp eq i32 %i.azw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i1129.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i", label %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i

_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i: ; preds = %bb.gm, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i
  %i.azy = phi ptr [ %i.azx, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i ], [ %i.azv, %bb.gm ] ; 5 uses
  %i.azz = phi i32 [ %i.azw, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i ], [ %i.azu, %bb.gm ] ; 4 uses
  %i.baa = phi i32 [ %i.bae, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i ], [ %i.azt, %bb.gm ]
  %i.bab = phi ptr [ %i.azy, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i ], [ %i.azs, %bb.gm ]
  %i.bac = phi i32 [ %i.bad, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i ], [ %i.azr, %bb.gm ]
  %i.bad = add i32 %i.bac, 1                      ; 4 uses
  %i.bae = add i32 %i.baa, %i.azn                 ; 5 uses
  %i.baf = getelementptr i8, ptr %i.bab, i64 38
  %.val.i.i.i.i.i.i.i.i.i.i.i1131.i = load i8, ptr %i.baf, align 2, !tbaa !280, !noalias !5266
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i1131.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.sink.split.i" [
    i8 6, label %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i
    i8 14, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1132.i
  ]

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1132.i:     ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i
  store i32 %i.bae, ptr %i.azj, align 8, !tbaa !1871, !alias.scope !5266
  store i32 %i.azz, ptr %i.azk, align 8, !tbaa !1868, !alias.scope !5266
  store i32 %i.bad, ptr %i.azo, align 4, !tbaa !1872, !alias.scope !5266
  store ptr %i.azy, ptr %i.azl, align 8, !tbaa !1869, !alias.scope !5266
  %i.bag = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i1119.i, align 8, !tbaa !1853, !noalias !5266
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 96
  %i.bai = load i32, ptr %i.bah, align 8, !tbaa !607, !noalias !5266 ; 2 uses
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i1859 = add i32 %i.bae, 1 ; 2 uses
  %i.baj = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i1859, %i.bai
  br i1 %i.baj, label %.lr.ph1861.preheader, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.i"

.lr.ph1861.preheader:                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1132.i
  %i.bak = load ptr, ptr %.val2.i.i.i.i.i.i.i.i.i1118.i, align 8, !tbaa !662, !noalias !5266
  br label %.lr.ph1861

bb.gn:                                            ; preds = %.lr.ph1861
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i = add i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i1860, 1 ; 2 uses
  %i.bal = icmp ult i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i, %i.bai
  br i1 %i.bal, label %.lr.ph1861, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.i", !llvm.loop !186

.lr.ph1861:                                       ; preds = %.lr.ph1861.preheader, %bb.gn
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i1860 = phi i32 [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i, %bb.gn ], [ %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i1859, %.lr.ph1861.preheader ] ; 2 uses
  %i.bam = zext i32 %.06.i.i.i.i.i.i.i.i.i.i.i.i.i.i1134.i1860 to i64
  %i.ban = getelementptr inbounds nuw [20 x i8], ptr %i.bak, i64 %i.bam ; 2 uses
  %i.bao = getelementptr i8, ptr %i.ban, i64 18
  %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1137.i = load i8, ptr %i.bao, align 2, !tbaa !280, !noalias !5266
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1138.i = icmp eq i8 %.val8.i.i.i.i.i.i.i.i.i.i.i.i.i.i1137.i, 6
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i1138.i, label %bb.gn, label %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i", !llvm.loop !186

"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i": ; preds = %.lr.ph1861
  %i.bap = getelementptr i8, ptr %i.ban, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1140.i = load i16, ptr %i.bap, align 4, !tbaa !280, !noalias !5266
  %i.baq = and i16 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i1140.i, 31
  %i.bar = zext nneg i16 %i.baq to i32
  %i.bas = shl nuw i32 1, %i.bar
  %i.bat = and i32 %i.bas, 7168
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1141.i = icmp eq i32 %i.bat, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i.i.i1141.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.i", label %bb.gm, !llvm.loop !187

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i": ; preds = %bb.gm, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i
  %.lcssa1729 = phi i32 [ %i.azw, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i ], [ %i.azu, %bb.gm ]
  %.lcssa1726 = phi ptr [ %i.azx, %_ZNR9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEppEv.exit.i.i.i.i.i.i.i.i.i.i.i1127.i ], [ %i.azv, %bb.gm ]
  %i.bau = mul i32 %.val112.i.i.i.i.i.i.i.i.i1126.i, %i.azn
  %i.bav = add i32 %i.azt, %i.bau
  %i.baw = add i32 %.val112.i.i.i.i.i.i.i.i.i1126.i, %i.azr
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.sink.split.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.sink.split.i": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i"
  %i.bax = phi i32 [ %.lcssa1729, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i" ], [ %i.azz, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i ]
  %i.bay = phi ptr [ %.lcssa1726, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i" ], [ %i.azy, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i ]
  %.lcssa2836.sink.i = phi i32 [ %i.bav, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i" ], [ %i.bae, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i ]
  %.lcssa2830.sink.i = phi i32 [ %i.baw, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.loopexit.i" ], [ %i.bad, %_ZN9hb_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE10hb_array_tI15hb_glyph_info_tEE9hb_pair_tIjRS4_EEdeEv.exit.i.i.i.i.i.i.i.i.i.i.i1130.i ]
  store i32 %.lcssa2836.sink.i, ptr %i.azj, align 8, !tbaa !1871, !alias.scope !5266
  store i32 %i.bax, ptr %i.azk, align 8, !tbaa !1868, !alias.scope !5266
  store i32 %.lcssa2830.sink.i, ptr %i.azo, align 4, !tbaa !1872, !alias.scope !5266
  store ptr %i.bay, ptr %i.azl, align 8, !tbaa !1869, !alias.scope !5266
  br label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.i"

"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.i": ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1139.i", %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i1132.i, %bb.gn, %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1142.sink.split.i", %bb.gl
  call fastcc void @"_ZN15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS3_IS0_IS2_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS5_E_RK3$_7LPv0EEZL18find_syllables_useS9_EUl9hb_pair_tIjSB_EE_RK3$_8LSG_0EEEEaSERKSQ_"(ptr noundef nonnull align 8 dereferenceable(73) %5, ptr noundef nonnull align 8 dereferenceable(73) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #63
  br label %bb.gr

bb.go:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #63
  call void @llvm.experimental.noalias.scope.decl(metadata !5269)
  call void @llvm.experimental.noalias.scope.decl(metadata !5270)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %20, ptr noundef nonnull readonly align 8 dereferenceable(73) %3, i64 72, i1 false)
  %i.baz = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.bba = load i8, ptr %i.am, align 8, !tbaa !1867, !range !380, !noalias !5271, !noundef !293
  store i8 %i.bba, ptr %i.baz, align 8, !tbaa !1867, !alias.scope !5271
  %i.bbb = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !1870, !alias.scope !5269
  %.promoted.i.i.i.i.i.i.i1144.i = load i32, ptr %20, align 8, !tbaa !1871, !alias.scope !5269
  %i.bbd = add i32 %.promoted.i.i.i.i.i.i.i1144.i, %i.bbc
  store i32 %i.bbd, ptr %20, align 8, !tbaa !1871, !alias.scope !5269
  %i.bbe = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.bbf = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  %.promoted.i.i2.i.i.i.i.i1145.i = load i32, ptr %i.bbf, align 8, !tbaa !1868, !alias.scope !5269 ; 2 uses
  %.not215.i.i.i.i.i.i.i1146.i = icmp eq i32 %.promoted.i.i2.i.i.i.i.i1145.i, 0
  br i1 %.not215.i.i.i.i.i.i.i1146.i, label %"_ZNK9hb_iter_tI15machine_index_tI13hb_zip_iter_tI14hb_iota_iter_tIjjE16hb_filter_iter_tIS4_IS1_IS3_10hb_array_tI15hb_glyph_info_tEEZL18find_syllables_useP11hb_buffer_tEUlRKS6_E_RK3$_7LPv0EEZL18find_syllables_useSA_EUl9hb_pair_tIjSC_EE_RK3$_8LSH_0EEEESJ_IjSJ_IjRS6_EEEplEj.exit1172.i", label %.lr.ph.i.i3.i.i.i.i.i1147.i

.lr.ph.i.i3.i.i.i.i.i1147.i:                      ; preds = %bb.go
  %i.bbg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.bbh = getelementptr inbounds nuw i8, ptr %20, i64 12
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !1870, !alias.scope !5269 ; 2 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %20, i64 28 ; 3 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %20, i64 56
  %.val2.i.i.i.i.i.i.i.i.i1148.i = load ptr, ptr %i.bbk, align 8, !alias.scope !5269
  %i.bbl = getelementptr inbounds nuw i8, ptr %20, i64 48
  %.val.i.i.i.i.i.i.i.i.i1149.i = load ptr, ptr %i.bbl, align 8, !alias.scope !5269
  %.promoted19.i.i.i.i.i.i.i1150.i = load i32, ptr %i.bbe, align 8, !tbaa !1871, !alias.scope !5269
  %.promoted14.i.i.pre.i.i.i.i.i.i.i1151.i = load ptr, ptr %i.bbg, align 8, !alias.scope !5269
  %.promoted15.i.i.pre.i.i.i.i.i.i.i1152.i = load i32, ptr %i.bbj, align 4, !alias.scope !5269
  br label %bb.gp

bb.gp:                                            ; preds = %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1169.i", %.lr.ph.i.i3.i.i.i.i.i1147.i
  %i.bbm = phi i32 [ %i.bby, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1169.i" ], [ %.promoted15.i.i.pre.i.i.i.i.i.i.i1152.i, %.lr.ph.i.i3.i.i.i.i.i1147.i ] ; 2 uses
  %i.bbn = phi ptr [ %i.bbt, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1169.i" ], [ %.promoted14.i.i.pre.i.i.i.i.i.i.i1151.i, %.lr.ph.i.i3.i.i.i.i.i1147.i ] ; 2 uses
  %.val112.i.i.i.i.i.i.i.i.i1156.i = phi i32 [ %i.bbu, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1169.i" ], [ %.promoted.i.i2.i.i.i.i.i1145.i, %.lr.ph.i.i3.i.i.i.i.i1147.i ] ; 3 uses
  %i.bbo = phi i32 [ %i.bbz, %"_ZNK4$_35clIRZL18find_syllables_useP11hb_buffer_tEUl9hb_pair_tIjRK15hb_glyph_info_tEE_S3_IjRS4_EEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSD_OSE_.exit.i.i.i.i.i.i.i.i.i1169.i" ], [ %.promoted19.i.i.i.i.i.i.i1150.i, %.lr.ph.i.i3.i.i.i.i.i1147.i ] ; 2 uses
end_hunk_0
