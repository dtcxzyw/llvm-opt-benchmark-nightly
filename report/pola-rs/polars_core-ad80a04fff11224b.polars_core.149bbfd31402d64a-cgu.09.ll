Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.09?download=true
inline.NumInlined: 13762
inline.NumDeleted: 6781
loop-unroll.NumCompletelyUnrolled: 155
loop-unroll.NumRuntimeUnrolled: 281
loop-unroll.NumUnrolled: 436
begin_hunk_0_@_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmyENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB61_Es_0EIB33_INtNtNtNtB4B_6bitmap5utils12zip_validity11ZipValidityRyIB3G_yENtNtB7x_8iterator10BitmapIterENCNCB6P_s_00EyEs1_0E0EB1V_:bb.a
bb.bm:                                            ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.an, i64 noundef %i.ao, i64 noundef range(i64 17, 576460752303423488) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !dbg !49136, !noalias !49137, !inline_history !49139
  unreachable, !dbg !49136

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersTmyENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRyIB3H_yENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00EyEs1_0E0EB1W_.exit: ; preds = %._crit_edge
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0523, i64 %i.an, !dbg !49140
  tail call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansTmyENCINvMB6_SB12_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB33_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1R_8downcastINtB1T_12ChunkedArrayNtNtB1V_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1P_16arg_sort_numericB61_Es_0EIB33_INtNtNtNtB4B_6bitmap5utils12zip_validity11ZipValidityRyIB3G_yENtNtB7x_8iterator10BitmapIterENCNCB6P_s_00EyEs1_0E0EB1V_(ptr noalias noundef nonnull align 8 %i.ee, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.al), !dbg !49144, !inline_history !49139
  %i.ef = tail call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionTmyENCINvMB8_SB17_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB38_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1W_8downcastINtB1Y_12ChunkedArrayNtNtB20_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1U_16arg_sort_numericB66_Es_0EIB38_INtNtNtNtB4G_6bitmap5utils12zip_validity11ZipValidityRyIB3L_yENtNtB7C_8iterator10BitmapIterENCNCB6U_s_00EyEs1_0E0EB20_(ptr noalias noundef nonnull align 8 %.sroa.0.0523, i64 noundef range(i64 17, 576460752303423488) %.sroa.21.0522, i64 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !49145, !inline_history !49139 ; 6 uses
  %i.eg = icmp eq i64 %i.ef, %.sroa.035.0521, !dbg !49146
  br i1 %i.eg, label %.loopexit, label %bb.bp, !dbg !49146

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !48893
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit, label %.epil.preheader, !dbg !48893

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa, %bb.e
  %.val2.i.i.i.i.i.i57.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.e ], [ %i.af, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i58.epil.init = phi i64 [ 0, %bb.e ], [ %.sroa.1.0.i.i.i.i61.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i60.epil.init = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i64.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ]
  %lcmp.mod2374 = trunc i64 %i.v to i1, !dbg !48893
  tail call void @llvm.assume(i1 %lcmp.mod2374), !dbg !48893
  %.sroa.1.0.i.i.i.i61.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i58.epil.init, 1, !dbg !48871
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0523, i64 %.sroa.1.0.i.i.in.i.i58.epil.init, !dbg !48872
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48875), !dbg !48876
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48877), !dbg !48876
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48878), !dbg !48879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48880), !dbg !48879
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24, !dbg !48846
  %.val.i.i.i.i.i.i62.epil = load i64, ptr %i.ei, align 8, !dbg !48846, !alias.scope !48881, !noalias !48882, !noundef !13
  %i.ej = icmp ult i64 %.val.i.i.i.i.i.i62.epil, %.val2.i.i.i.i.i.i57.epil.init, !dbg !48883
  %.1.i.i.i.i.i.i64.epil = select i1 %i.ej, i64 %.sroa.1.0.i.i.i.i61.epil, i64 %.sroa.02.0.i.i.i.i60.epil.init, !dbg !48886
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit, !dbg !49148

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i64.lcssa = phi i64 [ %.1.i.i.i.i.i.i64.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i64.epil, %.epil.preheader ], !dbg !48886 ; 3 uses
  %i.ek = icmp ult i64 %.1.i.i.i.i.i.i64.lcssa, %.sroa.21.0522, !dbg !49148
  br i1 %i.ek, label %bb.bo, label %bb.bn, !dbg !49148

bb.bn:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i64.lcssa, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #50, !dbg !49148
  unreachable, !dbg !49148

bb.bo:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0523, i64 %.1.i.i.i.i.i.i64.lcssa, !dbg !49152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !49153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !dbg !49157
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0523, i64 16, i1 false), !dbg !49159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0523, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !dbg !49161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !49163
  br label %.loopexit, !dbg !49164

bb.bp:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersTmyENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRyIB3H_yENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00EyEs1_0E0EB1W_.exit
  %i.em = icmp ugt i64 %i.ef, %.sroa.035.0521, !dbg !49166
  br i1 %i.em, label %bb.bu, label %bb.bq, !dbg !49166

bb.bq:                                            ; preds = %bb.bp
  %i.en = add i64 %i.ef, 1, !dbg !49167           ; 5 uses
  %i.eo = icmp ugt i64 %i.en, %.sroa.21.0522, !dbg !49168
  br i1 %i.eo, label %bb.bs, label %bb.br, !dbg !49168, !prof !4881

bb.br:                                            ; preds = %bb.bq
  %i.ep = sub nuw nsw i64 %.sroa.21.0522, %i.en, !dbg !49174
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0523, i64 %i.en, !dbg !49175
  %i.er = sub i64 %.sroa.035.0521, %i.en, !dbg !49180
  br label %bb.bt, !dbg !49181

bb.bs:                                            ; preds = %bb.bq
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.en, i64 noundef %.sroa.21.0522, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #50, !dbg !49182
  unreachable, !dbg !49182

bb.bt:                                            ; preds = %bb.bu, %bb.br
  %.sroa.035.1 = phi i64 [ %i.er, %bb.br ], [ %.sroa.035.0521, %bb.bu ]
  %.sroa.21.1 = phi i64 [ %i.ep, %bb.br ], [ %i.ef, %bb.bu ], !dbg !49183 ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.eq, %bb.br ], [ %.sroa.0.0523, %bb.bu ], !dbg !49183 ; 2 uses
  %i.es = icmp ult i64 %.sroa.21.1, 17, !dbg !48731
  br i1 %i.es, label %._crit_edge526, label %.lr.ph525, !dbg !48731

bb.bu:                                            ; preds = %bb.bp
  %.not = icmp ugt i64 %i.ef, %.sroa.21.0522, !dbg !49184
  br i1 %.not, label %bb.bv, label %bb.bt, !dbg !49184, !prof !4881

bb.bv:                                            ; preds = %bb.bu
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ef, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !dbg !49191
  unreachable, !dbg !49191

.loopexit:                                        ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersTmyENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRyIB3H_yENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00EyEs1_0E0EB1W_.exit, %bb.by, %._crit_edge526, %bb.bo, %bb.bx
  ret void, !dbg !49192

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod2378.not = icmp eq i64 %xtraiter2377, 0, !dbg !48816
  br i1 %lcmp.mod2378.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit, label %.epil.preheader2376, !dbg !48816

.epil.preheader2376:                              ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa, %bb.c
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.c ], [ %i.u, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ]
  %lcmp.mod2380 = trunc i64 %i.k to i1, !dbg !48816
  tail call void @llvm.assume(i1 %lcmp.mod2380), !dbg !48816
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !48790
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0523, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !48791
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48794), !dbg !48795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48796), !dbg !48795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48797), !dbg !48798
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48799), !dbg !48798
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24, !dbg !48765
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.eu, align 8, !dbg !48765, !alias.scope !48800, !noalias !48801, !noundef !13
  %i.ev = icmp ult i64 %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !48802
  %.1.i.i.i.i.i.i.epil = select i1 %i.ev, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !48809
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit, !dbg !49193

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa, %.epil.preheader2376
  %.1.i.i.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader2376 ], !dbg !48809 ; 3 uses
  %i.ew = icmp ult i64 %.1.i.i.i.i.i.i.lcssa, %.sroa.21.0522, !dbg !49193
  br i1 %i.ew, label %bb.bx, label %bb.bw, !dbg !49193

bb.bw:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i.lcssa, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #50, !dbg !49193
  unreachable, !dbg !49193

bb.bx:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0523, i64 %.1.i.i.i.i.i.i.lcssa, !dbg !49196 ; 2 uses
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0523, i64 %.sroa.035.0521, !dbg !49197 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !49199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.ex, i64 16, i1 false), !dbg !49202
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !dbg !49204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !49206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !49208
  br label %.loopexit, !dbg !49164

bb.by:                                            ; preds = %._crit_edge526
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmyENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3n_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes10UInt64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6l_Es_0EIB3n_INtNtNtNtB4V_6bitmap5utils12zip_validity11ZipValidityRyIB40_yENtNtB7R_8iterator10BitmapIterENCNCB79_s_00EyEs1_0E0EB2f_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef %.sroa.21.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !49209
  br label %.loopexit, !dbg !49210
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !49211 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !49212
  br i1 %i.a, label %._crit_edge526, label %.lr.ph525, !dbg !49212

.lr.ph525:                                        ; preds = %bb.a, %bb.bu
  %.sroa.0.0523 = phi ptr [ %.sroa.0.1, %bb.bu ], [ %0, %bb.a ] ; 33 uses
  %.sroa.21.0522 = phi i64 [ %.sroa.21.1, %bb.bu ], [ %1, %bb.a ] ; 67 uses
  %.sroa.035.0521 = phi i64 [ %.sroa.035.1, %bb.bu ], [ %3, %bb.a ] ; 7 uses
  %i.b = add nsw i64 %.sroa.21.0522, -1, !dbg !49213
  %i.c = icmp eq i64 %.sroa.035.0521, %i.b, !dbg !49214
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !49214

._crit_edge526:                                   ; preds = %bb.bu, %bb.a
  %.sroa.21.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.21.1, %bb.bu ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.1, %bb.bu ]
  %i.d = icmp samesign ugt i64 %.sroa.21.0.lcssa, 1, !dbg !49215
  br i1 %i.d, label %bb.ca, label %.loopexit, !dbg !49215

bb.b:                                             ; preds = %.lr.ph525
  %i.e = icmp eq i64 %.sroa.035.0521, 0, !dbg !49216
  br i1 %i.e, label %bb.e, label %bb.g, !dbg !49216

bb.c:                                             ; preds = %.lr.ph525
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 1, !dbg !49217 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49230), !dbg !49233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49235), !dbg !49238
  %.val.i.i.pre.i.i.i.i = load i8, ptr %.sroa.0.0523, align 1, !dbg !49241, !alias.scope !49251, !noalias !49260 ; 2 uses
  %i.g = add nsw i64 %.sroa.21.0522, -2
  %i.h = add nsw i64 %.sroa.21.0522, -1, !dbg !49268 ; 2 uses
  %xtraiter2433 = and i64 %i.h, 3, !dbg !49268    ; 3 uses
  %i.i = icmp ult i64 %i.g, 3, !dbg !49268
  br i1 %i.i, label %.epil.preheader2404, label %.new2403, !dbg !49268

.new2403:                                         ; preds = %bb.c
  %unroll_iter2438 = and i64 %i.h, -4, !dbg !49268
  br label %bb.d, !dbg !49268

bb.d:                                             ; preds = %bb.d, %.new2403
  %.val.i.i.i.i.i.i = phi i8 [ %.val.i.i.pre.i.i.i.i, %.new2403 ], [ %i.u, %bb.d ], !dbg !49241 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new2403 ], [ %.sroa.1.0.i.i.i.i.3, %bb.d ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new2403 ], [ %.1.i.i.i.i.i.i.3, %bb.d ], !dbg !49270
  %niter2439 = phi i64 [ 0, %.new2403 ], [ %niter2439.next.3, %bb.d ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !49271 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.in.i.i, !dbg !49272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49275), !dbg !49276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49277), !dbg !49276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49278), !dbg !49279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49280), !dbg !49279
  %.val2.i.i.i.i.i.i = load i8, ptr %i.j, align 1, !dbg !49241, !alias.scope !49281, !noalias !49282, !noundef !13 ; 2 uses
  %i.k = icmp slt i8 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !49283
  %.1.i.i.i.i.i.i = select i1 %i.k, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !49290
  %i.l = tail call i8 @llvm.smax.i8(i8 %.val.i.i.i.i.i.i, i8 %.val2.i.i.i.i.i.i), !dbg !49241 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !49271 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.i.i, !dbg !49272
  %.val2.i.i.i.i.i.i.1 = load i8, ptr %i.m, align 1, !dbg !49241, !alias.scope !49291, !noalias !49294, !noundef !13 ; 2 uses
  %i.n = icmp slt i8 %i.l, %.val2.i.i.i.i.i.i.1, !dbg !49283
  %.1.i.i.i.i.i.i.1 = select i1 %i.n, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !49290
  %i.o = tail call i8 @llvm.smax.i8(i8 %i.l, i8 %.val2.i.i.i.i.i.i.1), !dbg !49241 ; 2 uses
  %.sroa.1.0.i.i.i.i.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 3, !dbg !49271 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.i.i.1, !dbg !49272
  %.val2.i.i.i.i.i.i.2 = load i8, ptr %i.p, align 1, !dbg !49241, !alias.scope !49297, !noalias !49300, !noundef !13 ; 2 uses
  %i.q = icmp slt i8 %i.o, %.val2.i.i.i.i.i.i.2, !dbg !49283
  %.1.i.i.i.i.i.i.2 = select i1 %i.q, i64 %.sroa.1.0.i.i.i.i.2, i64 %.1.i.i.i.i.i.i.1, !dbg !49290
  %i.r = tail call i8 @llvm.smax.i8(i8 %i.o, i8 %.val2.i.i.i.i.i.i.2), !dbg !49241 ; 2 uses
  %.sroa.1.0.i.i.i.i.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i, 4, !dbg !49271 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.i.i.2, !dbg !49272
  %.val2.i.i.i.i.i.i.3 = load i8, ptr %i.s, align 1, !dbg !49241, !alias.scope !49303, !noalias !49306, !noundef !13 ; 2 uses
  %i.t = icmp slt i8 %i.r, %.val2.i.i.i.i.i.i.3, !dbg !49283
  %.1.i.i.i.i.i.i.3 = select i1 %i.t, i64 %.sroa.1.0.i.i.i.i.3, i64 %.1.i.i.i.i.i.i.2, !dbg !49290 ; 3 uses
  %i.u = tail call i8 @llvm.smax.i8(i8 %i.r, i8 %.val2.i.i.i.i.i.i.3), !dbg !49241 ; 2 uses
  %niter2439.next.3 = add i64 %niter2439, 4, !dbg !49309 ; 2 uses
  %niter2439.ncmp.3 = icmp eq i64 %niter2439.next.3, %unroll_iter2438, !dbg !49309
  br i1 %niter2439.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.d, !dbg !49309

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 1, !dbg !49310 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49318), !dbg !49321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49323), !dbg !49326
  %.val2.i.i.pre.i.i.i.i = load i8, ptr %.sroa.0.0523, align 1, !dbg !49329, !alias.scope !49339, !noalias !49348 ; 3 uses
  %i.w = add nsw i64 %.sroa.21.0522, -2
  %i.x = add nsw i64 %.sroa.21.0522, -1, !dbg !49356 ; 2 uses
  %xtraiter = and i64 %i.x, 3, !dbg !49356        ; 3 uses
  %i.y = icmp ult i64 %i.w, 3, !dbg !49356
  br i1 %i.y, label %.epil.preheader, label %.new, !dbg !49356

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.x, -4, !dbg !49356
  br label %bb.f, !dbg !49356

bb.f:                                             ; preds = %bb.f, %.new
  %.val2.i.i.i.i.i.i56 = phi i8 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ak, %bb.f ], !dbg !49329 ; 2 uses
  %.sroa.1.0.i.i.in.i.i57 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i60.3, %bb.f ] ; 5 uses
  %.sroa.02.0.i.i.i.i59 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i63.3, %bb.f ], !dbg !49358
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %.sroa.1.0.i.i.i.i60 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 1, !dbg !49359 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.in.i.i57, !dbg !49360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49363), !dbg !49364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49365), !dbg !49364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49366), !dbg !49367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49368), !dbg !49367
  %.val.i.i.i.i.i.i61 = load i8, ptr %i.z, align 1, !dbg !49329, !alias.scope !49369, !noalias !49370, !noundef !13 ; 2 uses
  %i.aa = icmp slt i8 %.val.i.i.i.i.i.i61, %.val2.i.i.i.i.i.i56, !dbg !49371
  %.1.i.i.i.i.i.i63 = select i1 %i.aa, i64 %.sroa.1.0.i.i.i.i60, i64 %.sroa.02.0.i.i.i.i59, !dbg !49374
  %i.ab = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i61, i8 %.val2.i.i.i.i.i.i56), !dbg !49329 ; 2 uses
  %.sroa.1.0.i.i.i.i60.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 2, !dbg !49359 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.i.i60, !dbg !49360
  %.val.i.i.i.i.i.i61.1 = load i8, ptr %i.ac, align 1, !dbg !49329, !alias.scope !49375, !noalias !49378, !noundef !13 ; 2 uses
  %i.ad = icmp slt i8 %.val.i.i.i.i.i.i61.1, %i.ab, !dbg !49371
  %.1.i.i.i.i.i.i63.1 = select i1 %i.ad, i64 %.sroa.1.0.i.i.i.i60.1, i64 %.1.i.i.i.i.i.i63, !dbg !49374
  %i.ae = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i61.1, i8 %i.ab), !dbg !49329 ; 2 uses
  %.sroa.1.0.i.i.i.i60.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 3, !dbg !49359 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.i.i60.1, !dbg !49360
  %.val.i.i.i.i.i.i61.2 = load i8, ptr %i.af, align 1, !dbg !49329, !alias.scope !49381, !noalias !49384, !noundef !13 ; 2 uses
  %i.ag = icmp slt i8 %.val.i.i.i.i.i.i61.2, %i.ae, !dbg !49371
  %.1.i.i.i.i.i.i63.2 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i60.2, i64 %.1.i.i.i.i.i.i63.1, !dbg !49374
  %i.ah = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i61.2, i8 %i.ae), !dbg !49329 ; 2 uses
  %.sroa.1.0.i.i.i.i60.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i57, 4, !dbg !49359 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.i.i60.2, !dbg !49360
  %.val.i.i.i.i.i.i61.3 = load i8, ptr %i.ai, align 1, !dbg !49329, !alias.scope !49387, !noalias !49390, !noundef !13 ; 2 uses
  %i.aj = icmp slt i8 %.val.i.i.i.i.i.i61.3, %i.ah, !dbg !49371
  %.1.i.i.i.i.i.i63.3 = select i1 %i.aj, i64 %.sroa.1.0.i.i.i.i60.3, i64 %.1.i.i.i.i.i.i63.2, !dbg !49374 ; 3 uses
  %i.ak = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i61.3, i8 %i.ah), !dbg !49329 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !49393  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !49393
  br i1 %niter.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.f, !dbg !49393

bb.g:                                             ; preds = %bb.b
  %i.al = icmp samesign ult i64 %.sroa.21.0522, 1025, !dbg !49394
  br i1 %i.al, label %bb.i, label %bb.h, !dbg !49394

bb.h:                                             ; preds = %bb.g
  %i.am = icmp samesign ult i64 %.sroa.21.0522, 131073, !dbg !49397
  br i1 %i.am, label %bb.k, label %bb.j, !dbg !49397

bb.i:                                             ; preds = %bb.g
  %.lhs.trunc = trunc nuw nsw i64 %.sroa.21.0522 to i16, !dbg !49398
  %i.an = udiv i16 %.lhs.trunc, 12, !dbg !49398
  %.zext = zext nneg i16 %i.an to i64, !dbg !49398
  br label %bb.l, !dbg !49399

bb.j:                                             ; preds = %bb.h
  %i.ao = lshr i64 %.sroa.21.0522, 10, !dbg !49400
  br label %bb.l, !dbg !49401

bb.k:                                             ; preds = %bb.h
  %i.ap = lshr i64 %.sroa.21.0522, 6, !dbg !49402
  br label %bb.l, !dbg !49401

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i = phi i64 [ %.zext, %bb.i ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ], !dbg !49403 ; 7 uses
  %i.aq = lshr i64 %.sroa.0.0.i, 1, !dbg !49404   ; 2 uses
  %i.ar = lshr i64 %.sroa.21.0522, 1, !dbg !49406 ; 2 uses
  %i.as = sub nsw i64 %i.ar, %i.aq, !dbg !49406   ; 7 uses
  %i.at = add nsw i64 %i.as, %.sroa.0.0.i, !dbg !49408 ; 6 uses
  %i.au = icmp ult i64 %i.as, %i.at, !dbg !49410
  br i1 %i.au, label %.lr.ph.preheader, label %._crit_edge, !dbg !49423

.lr.ph.preheader:                                 ; preds = %bb.l
  %.neg.i = mul nsw i64 %.sroa.0.0.i, -9, !dbg !49424
  %i.av = add nsw i64 %.neg.i, %.sroa.21.0522, !dbg !49425
  %i.aw = lshr i64 %i.av, 2, !dbg !49425          ; 2 uses
  %i.ax = add i64 %i.at, %i.aw, !dbg !49426
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i, 2, !dbg !49427
  %i.az = add nuw nsw i64 %i.ay, %i.aw, !dbg !49427
  %i.ba = sub nsw i64 %i.as, %i.az, !dbg !49427
  br label %.lr.ph, !dbg !49428

._crit_edge:                                      ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.l
  %i.bb = icmp ult i64 %i.at, %i.as, !dbg !49434
  %.not.i = icmp ugt i64 %i.at, %.sroa.21.0522
  %or.cond.i = or i1 %i.bb, %.not.i, !dbg !49434
  br i1 %or.cond.i, label %bb.bm, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !49434, !prof !12654

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.07.0.i520 = phi i64 [ %i.do, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.ba, %.lr.ph.preheader ] ; 8 uses
  %.sroa.011.0.i519 = phi i64 [ %i.dp, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.ax, %.lr.ph.preheader ] ; 8 uses
  %.sroa.015.0.i518 = phi i64 [ %i.bc, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.as, %.lr.ph.preheader ] ; 6 uses
  %i.bc = add i64 %.sroa.015.0.i518, 1, !dbg !49441 ; 2 uses
  %i.bd = sub i64 %.sroa.015.0.i518, %.sroa.0.0.i, !dbg !49447 ; 4 uses
  %i.be = add i64 %.sroa.07.0.i520, 1, !dbg !49448 ; 5 uses
  %i.bf = add i64 %.sroa.011.0.i519, 1, !dbg !49449 ; 5 uses
  %i.bg = add i64 %.sroa.07.0.i520, 2, !dbg !49450 ; 5 uses
  %i.bh = add i64 %.sroa.015.0.i518, %.sroa.0.0.i, !dbg !49451 ; 4 uses
  %i.bi = add i64 %.sroa.011.0.i519, 2, !dbg !49452 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49453), !dbg !49456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49457), !dbg !49460
  %i.bj = icmp ult i64 %.sroa.011.0.i519, %.sroa.21.0522, !dbg !49428
  br i1 %i.bj, label %bb.m, label %bb.n, !dbg !49428

bb.m:                                             ; preds = %.lr.ph
  %i.bk = icmp ult i64 %.sroa.07.0.i520, %.sroa.21.0522, !dbg !49461
  br i1 %i.bk, label %bb.o, label %bb.p, !dbg !49461

bb.n:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.011.0.i519, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #50, !dbg !49428, !noalias !49462
  unreachable, !dbg !49428

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.011.0.i519, !dbg !49465
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.07.0.i520, !dbg !49466
  %.val18.i67 = load i8, ptr %i.bl, align 1, !dbg !49467, !alias.scope !49468, !noalias !49471, !noundef !13
  %.val19.i68 = load i8, ptr %i.bm, align 1, !dbg !49467, !alias.scope !49473, !noalias !49474, !noundef !13
  %i.bn = icmp slt i8 %.val18.i67, %.val19.i68, !dbg !49475 ; 2 uses
  %spec.select.i69 = select i1 %i.bn, i64 %.sroa.07.0.i520, i64 %.sroa.011.0.i519, !dbg !49467 ; 4 uses
  %spec.select14.i70 = select i1 %i.bn, i64 %.sroa.011.0.i519, i64 %.sroa.07.0.i520, !dbg !49467 ; 4 uses
  %i.bo = icmp samesign ult i64 %spec.select.i69, %.sroa.21.0522, !dbg !49478
  br i1 %i.bo, label %bb.q, label %bb.r, !dbg !49478

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.07.0.i520, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #50, !dbg !49461, !noalias !49462
  unreachable, !dbg !49461

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp ult i64 %i.bd, %.sroa.21.0522, !dbg !49479
  br i1 %i.bp, label %bb.s, label %bb.t, !dbg !49479

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i69, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #50, !dbg !49478, !noalias !49462
  unreachable, !dbg !49478

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i69, !dbg !49480
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bd, !dbg !49481
  %.val16.i71 = load i8, ptr %i.bq, align 1, !dbg !49482, !alias.scope !49468, !noalias !49471, !noundef !13 ; 2 uses
  %.val17.i72 = load i8, ptr %i.br, align 1, !dbg !49482, !alias.scope !49473, !noalias !49474, !noundef !13 ; 3 uses
  %i.bs = icmp slt i8 %.val16.i71, %.val17.i72, !dbg !49483
  br i1 %i.bs, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76, label %bb.u, !dbg !49482

bb.t:                                             ; preds = %bb.q
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #50, !dbg !49479, !noalias !49462
  unreachable, !dbg !49479

bb.u:                                             ; preds = %bb.s
  %i.bt = icmp samesign ult i64 %spec.select14.i70, %.sroa.21.0522, !dbg !49486
  br i1 %i.bt, label %bb.v, label %bb.w, !dbg !49486

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select14.i70, !dbg !49487
  %.val15.i73 = load i8, ptr %i.bu, align 1, !dbg !49488, !alias.scope !49473, !noalias !49474, !noundef !13 ; 2 uses
  %i.bv = icmp slt i8 %.val17.i72, %.val15.i73, !dbg !49489
  %spec.select14..i74 = select i1 %i.bv, i64 %spec.select14.i70, i64 %i.bd, !dbg !49492
  %i.bw = tail call i8 @llvm.smax.i8(i8 %.val17.i72, i8 %.val15.i73), !dbg !49493
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76, !dbg !49492

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select14.i70, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #50, !dbg !49486, !noalias !49462
  unreachable, !dbg !49486

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76: ; preds = %bb.s, %bb.v
  %.val51.i = phi i8 [ %i.bw, %bb.v ], [ %.val16.i71, %bb.s ]
  %.sroa.08.0.i75 = phi i64 [ %spec.select14..i74, %bb.v ], [ %spec.select.i69, %bb.s ], !dbg !49494 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49495), !dbg !49498
  %i.bx = icmp ult i64 %i.bi, %.sroa.21.0522, !dbg !49499
  br i1 %i.bx, label %bb.x, label %bb.y, !dbg !49499

bb.x:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76
  %i.by = icmp ult i64 %i.bg, %.sroa.21.0522, !dbg !49501
  br i1 %i.by, label %bb.z, label %bb.aa, !dbg !49501

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #50, !dbg !49499, !noalias !49502
  unreachable, !dbg !49499

bb.z:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bi, !dbg !49503
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bg, !dbg !49504
  %.val18.i = load i8, ptr %i.bz, align 1, !dbg !49505, !alias.scope !49506, !noalias !49509, !noundef !13
  %.val19.i = load i8, ptr %i.ca, align 1, !dbg !49505, !alias.scope !49511, !noalias !49512, !noundef !13
  %i.cb = icmp slt i8 %.val18.i, %.val19.i, !dbg !49513 ; 2 uses
  %spec.select.i66 = select i1 %i.cb, i64 %i.bg, i64 %i.bi, !dbg !49505 ; 4 uses
  %spec.select14.i = select i1 %i.cb, i64 %i.bi, i64 %i.bg, !dbg !49505 ; 4 uses
  %i.cc = icmp samesign ult i64 %spec.select.i66, %.sroa.21.0522, !dbg !49516
  br i1 %i.cc, label %bb.ab, label %bb.ac, !dbg !49516

bb.aa:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #50, !dbg !49501, !noalias !49502
  unreachable, !dbg !49501

bb.ab:                                            ; preds = %bb.z
  %i.cd = icmp ult i64 %i.bh, %.sroa.21.0522, !dbg !49517
  br i1 %i.cd, label %bb.ad, label %bb.ae, !dbg !49517

bb.ac:                                            ; preds = %bb.z
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i66, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #50, !dbg !49516, !noalias !49502
  unreachable, !dbg !49516

bb.ad:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i66, !dbg !49518
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bh, !dbg !49519
  %.val16.i = load i8, ptr %i.ce, align 1, !dbg !49520, !alias.scope !49506, !noalias !49509, !noundef !13 ; 2 uses
  %.val17.i = load i8, ptr %i.cf, align 1, !dbg !49520, !alias.scope !49511, !noalias !49512, !noundef !13 ; 3 uses
  %i.cg = icmp slt i8 %.val16.i, %.val17.i, !dbg !49521
  br i1 %i.cg, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.af, !dbg !49520

bb.ae:                                            ; preds = %bb.ab
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #50, !dbg !49517, !noalias !49502
  unreachable, !dbg !49517

bb.af:                                            ; preds = %bb.ad
  %i.ch = icmp samesign ult i64 %spec.select14.i, %.sroa.21.0522, !dbg !49524
  br i1 %i.ch, label %bb.ag, label %bb.ah, !dbg !49524

bb.ag:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select14.i, !dbg !49525
  %.val15.i = load i8, ptr %i.ci, align 1, !dbg !49526, !alias.scope !49511, !noalias !49512, !noundef !13 ; 2 uses
  %i.cj = icmp slt i8 %.val17.i, %.val15.i, !dbg !49527
  %spec.select14..i = select i1 %i.cj, i64 %spec.select14.i, i64 %i.bh, !dbg !49530
  %i.ck = tail call i8 @llvm.smax.i8(i8 %.val17.i, i8 %.val15.i), !dbg !49493
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !49530

bb.ah:                                            ; preds = %bb.af
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select14.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #50, !dbg !49524, !noalias !49502
  unreachable, !dbg !49524

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %bb.ag
  %.val50.i = phi i8 [ %i.ck, %bb.ag ], [ %.val16.i, %bb.ad ]
  %.sroa.08.0.i = phi i64 [ %spec.select14..i, %bb.ag ], [ %spec.select.i66, %bb.ad ], !dbg !49531 ; 4 uses
  %i.cl = icmp samesign ult i64 %.sroa.08.0.i, %.sroa.21.0522, !dbg !49532
  br i1 %i.cl, label %bb.ai, label %bb.aj, !dbg !49532

bb.ai:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.cm = icmp samesign ult i64 %.sroa.08.0.i75, %.sroa.21.0522, !dbg !49533
  br i1 %i.cm, label %bb.ak, label %bb.al, !dbg !49533

bb.aj:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.0.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #50, !dbg !49532, !noalias !49534
  unreachable, !dbg !49532

bb.ak:                                            ; preds = %bb.ai
  %i.cn = icmp slt i8 %.val50.i, %.val51.i, !dbg !49535 ; 2 uses
  %spec.select.i = select i1 %i.cn, i64 %.sroa.08.0.i75, i64 %.sroa.08.0.i, !dbg !49493 ; 7 uses
  %spec.select33.i = select i1 %i.cn, i64 %.sroa.08.0.i, i64 %.sroa.08.0.i75, !dbg !49493 ; 7 uses
  %i.co = icmp ult i64 %i.bf, %.sroa.21.0522, !dbg !49538
  br i1 %i.co, label %bb.am, label %bb.an, !dbg !49538

bb.al:                                            ; preds = %bb.ai
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.0.i75, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #50, !dbg !49533, !noalias !49534
  unreachable, !dbg !49533

bb.am:                                            ; preds = %bb.ak
  %i.cp = icmp ult i64 %i.be, %.sroa.21.0522, !dbg !49539
  br i1 %i.cp, label %bb.ao, label %bb.ap, !dbg !49539

bb.an:                                            ; preds = %bb.ak
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #50, !dbg !49538, !noalias !49534
  unreachable, !dbg !49538

bb.ao:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bf, !dbg !49540
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.be, !dbg !49541
  %.val48.i = load i8, ptr %i.cq, align 1, !dbg !49542, !alias.scope !49543, !noalias !49546, !noundef !13
  %.val49.i = load i8, ptr %i.cr, align 1, !dbg !49542, !alias.scope !49548, !noalias !49549, !noundef !13
  %i.cs = icmp slt i8 %.val48.i, %.val49.i, !dbg !49550 ; 2 uses
  %spec.select34.i = select i1 %i.cs, i64 %i.be, i64 %i.bf, !dbg !49542 ; 4 uses
  %spec.select35.i = select i1 %i.cs, i64 %i.bf, i64 %i.be, !dbg !49542 ; 4 uses
  %i.ct = icmp ult i64 %.sroa.015.0.i518, %.sroa.21.0522, !dbg !49553
  br i1 %i.ct, label %bb.aq, label %bb.ar, !dbg !49553

bb.ap:                                            ; preds = %bb.am
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #50, !dbg !49539, !noalias !49534
  unreachable, !dbg !49539

bb.aq:                                            ; preds = %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.015.0.i518, !dbg !49554 ; 4 uses
  %i.cv = icmp samesign ult i64 %spec.select35.i, %.sroa.21.0522, !dbg !49555
  br i1 %i.cv, label %bb.as, label %bb.at, !dbg !49555

bb.ar:                                            ; preds = %bb.ao
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0.i518, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #50, !dbg !49553, !noalias !49534
  unreachable, !dbg !49553

bb.as:                                            ; preds = %bb.aq
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select35.i, !dbg !49556
  %.val46.i = load i8, ptr %i.cu, align 1, !dbg !49557, !alias.scope !49543, !noalias !49546, !noundef !13 ; 7 uses
  %.val47.i = load i8, ptr %i.cw, align 1, !dbg !49557, !alias.scope !49548, !noalias !49549, !noundef !13 ; 2 uses
  %i.cx = icmp slt i8 %.val46.i, %.val47.i, !dbg !49558
  br i1 %i.cx, label %bb.bf, label %bb.au, !dbg !49557

bb.at:                                            ; preds = %bb.aq
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select35.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #50, !dbg !49555, !noalias !49534
  unreachable, !dbg !49555

bb.au:                                            ; preds = %bb.as
  %i.cy = icmp samesign ult i64 %spec.select34.i, %.sroa.21.0522, !dbg !49561
  br i1 %i.cy, label %bb.av, label %bb.aw, !dbg !49561

bb.av:                                            ; preds = %bb.au
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select34.i, !dbg !49562
  %.val44.i = load i8, ptr %i.cz, align 1, !dbg !49563, !alias.scope !49543, !noalias !49546, !noundef !13 ; 2 uses
  %i.da = icmp slt i8 %.val44.i, %.val46.i, !dbg !49564
  br i1 %i.da, label %bb.bf, label %bb.ax, !dbg !49563

bb.aw:                                            ; preds = %bb.au
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select34.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #50, !dbg !49561, !noalias !49534
  unreachable, !dbg !49561

bb.ax:                                            ; preds = %bb.av
  %i.db = icmp samesign ult i64 %spec.select33.i, %.sroa.21.0522, !dbg !49567
  br i1 %i.db, label %bb.ay, label %bb.az, !dbg !49567

bb.ay:                                            ; preds = %bb.ax
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select33.i, !dbg !49568 ; 2 uses
  %.val43.i = load i8, ptr %i.dc, align 1, !dbg !49569, !alias.scope !49548, !noalias !49549, !noundef !13 ; 2 uses
  %i.dd = icmp slt i8 %.val46.i, %.val43.i, !dbg !49570
  br i1 %i.dd, label %bb.be, label %bb.ba, !dbg !49569

bb.az:                                            ; preds = %bb.ax
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select33.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #50, !dbg !49567, !noalias !49534
  unreachable, !dbg !49567

bb.ba:                                            ; preds = %bb.ay
  %i.de = icmp samesign ult i64 %spec.select.i, %.sroa.21.0522, !dbg !49573
  br i1 %i.de, label %bb.bb, label %bb.bc, !dbg !49573

bb.bb:                                            ; preds = %bb.ba
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i, !dbg !49574 ; 2 uses
  %.val40.i = load i8, ptr %i.df, align 1, !dbg !49575, !alias.scope !49543, !noalias !49546, !noundef !13 ; 2 uses
  %i.dg = icmp slt i8 %.val40.i, %.val46.i, !dbg !49576
  br i1 %i.dg, label %bb.bd, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !49575

bb.bc:                                            ; preds = %bb.ba
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #50, !dbg !49573, !noalias !49534
  unreachable, !dbg !49573

bb.bd:                                            ; preds = %bb.bb
  store i8 %.val40.i, ptr %i.cu, align 1, !dbg !49579, !alias.scope !49453, !noalias !49589
  store i8 %.val46.i, ptr %i.df, align 1, !dbg !49590, !alias.scope !49453, !noalias !49589
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !49593

bb.be:                                            ; preds = %bb.ay
  store i8 %.val43.i, ptr %i.cu, align 1, !dbg !49594, !alias.scope !49453, !noalias !49589
  store i8 %.val46.i, ptr %i.dc, align 1, !dbg !49600, !alias.scope !49453, !noalias !49589
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !49602

bb.bf:                                            ; preds = %bb.av, %bb.as
  %.val38.i = phi i8 [ %.val47.i, %bb.as ], [ %.val44.i, %bb.av ] ; 2 uses
  %.sroa.07.1.i = phi i64 [ %spec.select35.i, %bb.as ], [ %spec.select34.i, %bb.av ], !dbg !49603
  %i.dh = icmp samesign ult i64 %spec.select33.i, %.sroa.21.0522, !dbg !49604
  br i1 %i.dh, label %bb.bg, label %bb.bh, !dbg !49604

bb.bg:                                            ; preds = %bb.bf
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select33.i, !dbg !49605
  %.val39.i = load i8, ptr %i.di, align 1, !dbg !49606, !alias.scope !49548, !noalias !49549, !noundef !13 ; 2 uses
  %i.dj = icmp slt i8 %.val38.i, %.val39.i, !dbg !49607
  br i1 %i.dj, label %bb.bl, label %bb.bi, !dbg !49606

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select33.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #50, !dbg !49604, !noalias !49534
  unreachable, !dbg !49604

bb.bi:                                            ; preds = %bb.bg
  %i.dk = icmp samesign ult i64 %spec.select.i, %.sroa.21.0522, !dbg !49610
  br i1 %i.dk, label %bb.bk, label %bb.bj, !dbg !49610

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #50, !dbg !49610, !noalias !49534
  unreachable, !dbg !49610

bb.bk:                                            ; preds = %bb.bi
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i, !dbg !49611
  %.val.i = load i8, ptr %i.dl, align 1, !dbg !49612, !alias.scope !49543, !noalias !49546, !noundef !13
  %i.dm = icmp slt i8 %.val.i, %.val38.i, !dbg !49613
  %spec.select36.i = select i1 %i.dm, i64 %spec.select.i, i64 %.sroa.07.1.i, !dbg !49612 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select36.i
  %.sroa.0.0.copyload.i53.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !dbg !49616, !alias.scope !49453, !noalias !49589
  br label %bb.bl, !dbg !49612

bb.bl:                                            ; preds = %bb.bk, %bb.bg
  %.sroa.0.0.copyload.i53.i = phi i8 [ %.sroa.0.0.copyload.i53.pre.i, %bb.bk ], [ %.val39.i, %bb.bg ], !dbg !49616
  %.sroa.07.2.i = phi i64 [ %spec.select36.i, %bb.bk ], [ %spec.select33.i, %bb.bg ], !dbg !49603
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.07.2.i, !dbg !49622
  store i8 %.val46.i, ptr %i.dn, align 1, !dbg !49623, !alias.scope !49453, !noalias !49589
  store i8 %.sroa.0.0.copyload.i53.i, ptr %i.cu, align 1, !dbg !49625, !alias.scope !49453, !noalias !49589
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !49627

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintheraNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.bb, %bb.bd, %bb.be, %bb.bl
  %i.do = add nuw i64 %.sroa.07.0.i520, 3, !dbg !49628
  %i.dp = add nuw i64 %.sroa.011.0.i519, 3, !dbg !49629
  %exitcond.not = icmp eq i64 %i.bc, %i.at, !dbg !49410
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !49423

bb.bm:                                            ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.as, i64 noundef %i.at, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !dbg !49630, !noalias !49631, !inline_history !49633
  unreachable, !dbg !49630

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.as, !dbg !49634
  tail call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.dq, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.aq), !dbg !49638, !inline_history !49633
  %i.dr = tail call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0523, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, i64 noundef %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !49639, !inline_history !49633 ; 6 uses
  %i.ds = icmp eq i64 %i.dr, %.sroa.035.0521, !dbg !49640
  br i1 %i.ds, label %.loopexit, label %bb.bq, !dbg !49640

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !49393
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.epil.preheader, !dbg !49393

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %bb.e
  %.val2.i.i.i.i.i.i56.epil.init = phi i8 [ %.val2.i.i.pre.i.i.i.i, %bb.e ], [ %i.ak, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i57.epil.init = phi i64 [ 0, %bb.e ], [ %.sroa.1.0.i.i.i.i60.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i59.epil.init = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i63.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %lcmp.mod2402 = icmp ne i64 %xtraiter, 0, !dbg !49393
  tail call void @llvm.assume(i1 %lcmp.mod2402), !dbg !49393
  br label %bb.bn, !dbg !49393

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader
  %.val2.i.i.i.i.i.i56.epil = phi i8 [ %.val2.i.i.i.i.i.i56.epil.init, %.epil.preheader ], [ %i.dv, %bb.bn ], !dbg !49329 ; 2 uses
  %.sroa.1.0.i.i.in.i.i57.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i57.epil.init, %.epil.preheader ], [ %.sroa.1.0.i.i.i.i60.epil, %bb.bn ] ; 2 uses
  %.sroa.02.0.i.i.i.i59.epil = phi i64 [ %.sroa.02.0.i.i.i.i59.epil.init, %.epil.preheader ], [ %.1.i.i.i.i.i.i63.epil, %bb.bn ], !dbg !49358
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bn ]
  %.sroa.1.0.i.i.i.i60.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i57.epil, 1, !dbg !49359 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.in.i.i57.epil, !dbg !49360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49363), !dbg !49364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49365), !dbg !49364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49366), !dbg !49367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49368), !dbg !49367
  %.val.i.i.i.i.i.i61.epil = load i8, ptr %i.dt, align 1, !dbg !49329, !alias.scope !49369, !noalias !49370, !noundef !13 ; 2 uses
  %i.du = icmp slt i8 %.val.i.i.i.i.i.i61.epil, %.val2.i.i.i.i.i.i56.epil, !dbg !49371
  %.1.i.i.i.i.i.i63.epil = select i1 %i.du, i64 %.sroa.1.0.i.i.i.i60.epil, i64 %.sroa.02.0.i.i.i.i59.epil, !dbg !49374 ; 2 uses
  %i.dv = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i61.epil, i8 %.val2.i.i.i.i.i.i56.epil), !dbg !49329
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !49393 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !49393
  br i1 %epil.iter.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.bn, !dbg !49393, !llvm.loop !49642

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.bn, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa
  %.1.i.i.i.i.i.i63.lcssa = phi i64 [ %.1.i.i.i.i.i.i63.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i63.epil, %bb.bn ], !dbg !49374 ; 3 uses
  %i.dw = icmp ult i64 %.1.i.i.i.i.i.i63.lcssa, %.sroa.21.0522, !dbg !49643
  br i1 %i.dw, label %bb.bp, label %bb.bo, !dbg !49643

bb.bo:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i63.lcssa, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #50, !dbg !49643
  unreachable, !dbg !49643

bb.bp:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.1.i.i.i.i.i.i63.lcssa, !dbg !49647 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.dx, align 1, !dbg !49648
  store i8 %.val2.i.i.pre.i.i.i.i, ptr %i.dx, align 1, !dbg !49653
  store i8 %.sroa.0.0.copyload.i, ptr %.sroa.0.0523, align 1, !dbg !49655
  br label %.loopexit, !dbg !49657

bb.bq:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.dy = icmp ugt i64 %i.dr, %.sroa.035.0521, !dbg !49659
  br i1 %i.dy, label %bb.bv, label %bb.br, !dbg !49659

bb.br:                                            ; preds = %bb.bq
  %i.dz = add i64 %i.dr, 1, !dbg !49660           ; 5 uses
  %i.ea = icmp ugt i64 %i.dz, %.sroa.21.0522, !dbg !49661
  br i1 %i.ea, label %bb.bt, label %bb.bs, !dbg !49661, !prof !4881

bb.bs:                                            ; preds = %bb.br
  %i.eb = sub nuw nsw i64 %.sroa.21.0522, %i.dz, !dbg !49667
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.dz, !dbg !49668
  %i.ed = sub i64 %.sroa.035.0521, %i.dz, !dbg !49673
  br label %bb.bu, !dbg !49674

bb.bt:                                            ; preds = %bb.br
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dz, i64 noundef %.sroa.21.0522, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #50, !dbg !49675
  unreachable, !dbg !49675

bb.bu:                                            ; preds = %bb.bv, %bb.bs
  %.sroa.035.1 = phi i64 [ %i.ed, %bb.bs ], [ %.sroa.035.0521, %bb.bv ]
  %.sroa.21.1 = phi i64 [ %i.eb, %bb.bs ], [ %i.dr, %bb.bv ], !dbg !49676 ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.ec, %bb.bs ], [ %.sroa.0.0523, %bb.bv ], !dbg !49676 ; 2 uses
  %i.ee = icmp ult i64 %.sroa.21.1, 17, !dbg !49212
  br i1 %i.ee, label %._crit_edge526, label %.lr.ph525, !dbg !49212

bb.bv:                                            ; preds = %bb.bq
  %.not = icmp ugt i64 %i.dr, %.sroa.21.0522, !dbg !49677
  br i1 %.not, label %bb.bw, label %bb.bu, !dbg !49677, !prof !4881

bb.bw:                                            ; preds = %bb.bv
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !dbg !49684
  unreachable, !dbg !49684

.loopexit:                                        ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.ca, %._crit_edge526, %bb.bp, %bb.bz
  ret void, !dbg !49685

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod2435.not = icmp eq i64 %xtraiter2433, 0, !dbg !49309
  br i1 %lcmp.mod2435.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.epil.preheader2404, !dbg !49309

.epil.preheader2404:                              ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %bb.c
  %.val.i.i.i.i.i.i.epil.init = phi i8 [ %.val.i.i.pre.i.i.i.i, %bb.c ], [ %i.u, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.sroa.1.0.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %lcmp.mod2437 = icmp ne i64 %xtraiter2433, 0, !dbg !49309
  tail call void @llvm.assume(i1 %lcmp.mod2437), !dbg !49309
  br label %bb.bx, !dbg !49309

bb.bx:                                            ; preds = %bb.bx, %.epil.preheader2404
  %.val.i.i.i.i.i.i.epil = phi i8 [ %.val.i.i.i.i.i.i.epil.init, %.epil.preheader2404 ], [ %i.eh, %bb.bx ], !dbg !49241 ; 2 uses
  %.sroa.1.0.i.i.in.i.i.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i.epil.init, %.epil.preheader2404 ], [ %.sroa.1.0.i.i.i.i.epil, %bb.bx ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi i64 [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader2404 ], [ %.1.i.i.i.i.i.i.epil, %bb.bx ], !dbg !49270
  %epil.iter2434 = phi i64 [ 0, %.epil.preheader2404 ], [ %epil.iter2434.next, %bb.bx ]
  %.sroa.1.0.i.i.i.i.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i.epil, 1, !dbg !49271 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.in.i.i.epil, !dbg !49272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49275), !dbg !49276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49277), !dbg !49276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49278), !dbg !49279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49280), !dbg !49279
  %.val2.i.i.i.i.i.i.epil = load i8, ptr %i.ef, align 1, !dbg !49241, !alias.scope !49281, !noalias !49282, !noundef !13 ; 2 uses
  %i.eg = icmp slt i8 %.val.i.i.i.i.i.i.epil, %.val2.i.i.i.i.i.i.epil, !dbg !49283
  %.1.i.i.i.i.i.i.epil = select i1 %i.eg, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil, !dbg !49290 ; 2 uses
  %i.eh = tail call i8 @llvm.smax.i8(i8 %.val.i.i.i.i.i.i.epil, i8 %.val2.i.i.i.i.i.i.epil), !dbg !49241
  %epil.iter2434.next = add i64 %epil.iter2434, 1, !dbg !49309 ; 2 uses
  %epil.iter2434.cmp.not = icmp eq i64 %epil.iter2434.next, %xtraiter2433, !dbg !49309
  br i1 %epil.iter2434.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.bx, !dbg !49309, !llvm.loop !49686

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.bx, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa
  %.1.i.i.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %bb.bx ], !dbg !49290 ; 3 uses
  %i.ei = icmp ult i64 %.1.i.i.i.i.i.i.lcssa, %.sroa.21.0522, !dbg !49687
  br i1 %i.ei, label %bb.bz, label %bb.by, !dbg !49687

bb.by:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i.lcssa, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #50, !dbg !49687
  unreachable, !dbg !49687

bb.bz:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.1.i.i.i.i.i.i.lcssa, !dbg !49690 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.035.0521, !dbg !49691 ; 2 uses
  %.sroa.0.0.copyload.i65 = load i8, ptr %i.ej, align 1, !dbg !49693
  %i.el = load i8, ptr %i.ek, align 1, !dbg !49697
  store i8 %i.el, ptr %i.ej, align 1, !dbg !49697
  store i8 %.sroa.0.0.copyload.i65, ptr %i.ek, align 1, !dbg !49699
  br label %.loopexit, !dbg !49657

bb.ca:                                            ; preds = %._crit_edge526
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0.lcssa, i64 noundef %.sroa.21.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !49701
  br label %.loopexit, !dbg !49702
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 1, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !49703 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !49704
  br i1 %i.a, label %._crit_edge531, label %.lr.ph530, !dbg !49704

.lr.ph530:                                        ; preds = %bb.a, %bb.bt
  %.sroa.0.0528 = phi ptr [ %.sroa.0.1, %bb.bt ], [ %0, %bb.a ] ; 33 uses
  %.sroa.21.0527 = phi i64 [ %.sroa.21.1, %bb.bt ], [ %1, %bb.a ] ; 65 uses
  %.sroa.035.0526 = phi i64 [ %.sroa.035.1, %bb.bt ], [ %3, %bb.a ] ; 7 uses
  %i.b = add nsw i64 %.sroa.21.0527, -1, !dbg !49705
  %i.c = icmp eq i64 %.sroa.035.0526, %i.b, !dbg !49706
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !49706

._crit_edge531:                                   ; preds = %bb.bt, %bb.a
  %.sroa.21.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.21.1, %bb.bt ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.1, %bb.bt ]
  %i.d = icmp samesign ugt i64 %.sroa.21.0.lcssa, 1, !dbg !49707
  br i1 %i.d, label %bb.by, label %.loopexit, !dbg !49707

bb.b:                                             ; preds = %.lr.ph530
  %i.e = icmp eq i64 %.sroa.035.0526, 0, !dbg !49708
  br i1 %i.e, label %bb.e, label %bb.g, !dbg !49708

bb.c:                                             ; preds = %.lr.ph530
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0528, i64 8, !dbg !49709 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49717), !dbg !49720
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49722), !dbg !49725
  %i.g = add nuw nsw i64 %.sroa.21.0527, 2305843009213693951, !dbg !49728 ; 4 uses
  %i.h = and i64 %i.g, 2305843009213693951, !dbg !49728
  %.val.i.i.pre.i.i.i.i = load double, ptr %.sroa.0.0528, align 8, !dbg !49742, !alias.scope !49748, !noalias !49757 ; 2 uses
  %xtraiter2382 = and i64 %i.g, 1, !dbg !49765
  %i.i = icmp eq i64 %i.h, 1, !dbg !49765
  br i1 %i.i, label %.epil.preheader2381, label %.new2380, !dbg !49765

.new2380:                                         ; preds = %bb.c
  %unroll_iter2386 = and i64 %i.g, 2305843009213693950, !dbg !49765
  br label %bb.d, !dbg !49765

bb.d:                                             ; preds = %bb.d, %.new2380
  %.val.i.i.i.i.i.i = phi double [ %.val.i.i.pre.i.i.i.i, %.new2380 ], [ %i.q, %bb.d ], !dbg !49742 ; 3 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new2380 ], [ %.sroa.1.0.i.i.i.i.1, %bb.d ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new2380 ], [ %.1.i.i.i.i.i.i.1, %bb.d ], !dbg !49766
  %niter2387 = phi i64 [ 0, %.new2380 ], [ %niter2387.next.1, %bb.d ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !49767 ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.1.0.i.i.in.i.i, !dbg !49768
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49771), !dbg !49772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49773), !dbg !49772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49774), !dbg !49775
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49776), !dbg !49775
  %.val2.i.i.i.i.i.i = load double, ptr %i.j, align 8, !dbg !49742, !alias.scope !49777, !noalias !49778, !noundef !13 ; 2 uses
  %i.k = fcmp ord double %.val.i.i.i.i.i.i, 0.000000e+00, !dbg !49779
  %i.l = fcmp ult double %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !49788
  %.not2.i.i.i.i.i.i.i.i.i = and i1 %i.k, %i.l, !dbg !49791 ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %.not2.i.i.i.i.i.i.i.i.i, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !49792
  %i.m = select i1 %.not2.i.i.i.i.i.i.i.i.i, double %.val2.i.i.i.i.i.i, double %.val.i.i.i.i.i.i, !dbg !49742 ; 3 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !49767 ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.1.0.i.i.i.i, !dbg !49768
  %.val2.i.i.i.i.i.i.1 = load double, ptr %i.n, align 8, !dbg !49742, !alias.scope !49793, !noalias !49796, !noundef !13 ; 2 uses
  %i.o = fcmp ord double %i.m, 0.000000e+00, !dbg !49779
  %i.p = fcmp ult double %i.m, %.val2.i.i.i.i.i.i.1, !dbg !49788
  %.not2.i.i.i.i.i.i.i.i.i.1 = and i1 %i.o, %i.p, !dbg !49791 ; 2 uses
  %.1.i.i.i.i.i.i.1 = select i1 %.not2.i.i.i.i.i.i.i.i.i.1, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !49792 ; 3 uses
  %i.q = select i1 %.not2.i.i.i.i.i.i.i.i.i.1, double %.val2.i.i.i.i.i.i.1, double %i.m, !dbg !49742 ; 2 uses
  %niter2387.next.1 = add i64 %niter2387, 2, !dbg !49799 ; 2 uses
  %niter2387.ncmp.1 = icmp eq i64 %niter2387.next.1, %unroll_iter2386, !dbg !49799
  br i1 %niter2387.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.d, !dbg !49799

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0528, i64 8, !dbg !49800 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49808), !dbg !49811
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49813), !dbg !49816
  %i.s = add nuw nsw i64 %.sroa.21.0527, 2305843009213693951, !dbg !49819 ; 4 uses
  %i.t = and i64 %i.s, 2305843009213693951, !dbg !49819
  %.val2.i.i.pre.i.i.i.i = load double, ptr %.sroa.0.0528, align 8, !dbg !49833, !alias.scope !49839, !noalias !49848 ; 3 uses
  %xtraiter = and i64 %i.s, 1, !dbg !49856
  %i.u = icmp eq i64 %i.t, 1, !dbg !49856
  br i1 %i.u, label %.epil.preheader, label %.new, !dbg !49856

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.s, 2305843009213693950, !dbg !49856
  br label %bb.f, !dbg !49856

bb.f:                                             ; preds = %bb.f, %.new
  %.val2.i.i.i.i.i.i56 = phi double [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ac, %bb.f ], !dbg !49833 ; 2 uses
  %.sroa.1.0.i.i.in.i.i57 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i60.1, %bb.f ] ; 3 uses
  %.sroa.02.0.i.i.i.i59 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i64.1, %bb.f ], !dbg !49857
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %.sroa.1.0.i.i.i.i60 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 1, !dbg !49858 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.1.0.i.i.in.i.i57, !dbg !49859
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49862), !dbg !49863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49864), !dbg !49863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49865), !dbg !49866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49867), !dbg !49866
  %.val.i.i.i.i.i.i61 = load double, ptr %i.v, align 8, !dbg !49833, !alias.scope !49868, !noalias !49869, !noundef !13 ; 3 uses
  %i.w = fcmp ord double %.val.i.i.i.i.i.i61, 0.000000e+00, !dbg !49870
  %i.x = fcmp ult double %.val.i.i.i.i.i.i61, %.val2.i.i.i.i.i.i56, !dbg !49877
  %.not2.i.i.i.i.i.i.i.i.i62 = and i1 %i.w, %i.x, !dbg !49880 ; 2 uses
  %.1.i.i.i.i.i.i64 = select i1 %.not2.i.i.i.i.i.i.i.i.i62, i64 %.sroa.1.0.i.i.i.i60, i64 %.sroa.02.0.i.i.i.i59, !dbg !49881
  %i.y = select i1 %.not2.i.i.i.i.i.i.i.i.i62, double %.val.i.i.i.i.i.i61, double %.val2.i.i.i.i.i.i56, !dbg !49833 ; 2 uses
  %.sroa.1.0.i.i.i.i60.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i57, 2, !dbg !49858 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.sroa.1.0.i.i.i.i60, !dbg !49859
  %.val.i.i.i.i.i.i61.1 = load double, ptr %i.z, align 8, !dbg !49833, !alias.scope !49882, !noalias !49885, !noundef !13 ; 3 uses
  %i.aa = fcmp ord double %.val.i.i.i.i.i.i61.1, 0.000000e+00, !dbg !49870
  %i.ab = fcmp ult double %.val.i.i.i.i.i.i61.1, %i.y, !dbg !49877
  %.not2.i.i.i.i.i.i.i.i.i62.1 = and i1 %i.aa, %i.ab, !dbg !49880 ; 2 uses
  %.1.i.i.i.i.i.i64.1 = select i1 %.not2.i.i.i.i.i.i.i.i.i62.1, i64 %.sroa.1.0.i.i.i.i60.1, i64 %.1.i.i.i.i.i.i64, !dbg !49881 ; 3 uses
  %i.ac = select i1 %.not2.i.i.i.i.i.i.i.i.i62.1, double %.val.i.i.i.i.i.i61.1, double %i.y, !dbg !49833 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !49888  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !49888
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.f, !dbg !49888

bb.g:                                             ; preds = %bb.b
  %i.ad = icmp samesign ult i64 %.sroa.21.0527, 1025, !dbg !49889
  br i1 %i.ad, label %bb.i, label %bb.h, !dbg !49889

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp samesign ult i64 %.sroa.21.0527, 131073, !dbg !49892
  br i1 %i.ae, label %bb.k, label %bb.j, !dbg !49892

bb.i:                                             ; preds = %bb.g
  %.lhs.trunc = trunc nuw nsw i64 %.sroa.21.0527 to i16, !dbg !49893
  %i.af = udiv i16 %.lhs.trunc, 12, !dbg !49893
  %.zext = zext nneg i16 %i.af to i64, !dbg !49893
  br label %bb.l, !dbg !49894

bb.j:                                             ; preds = %bb.h
  %i.ag = lshr i64 %.sroa.21.0527, 10, !dbg !49895
  br label %bb.l, !dbg !49896

bb.k:                                             ; preds = %bb.h
  %i.ah = lshr i64 %.sroa.21.0527, 6, !dbg !49897
  br label %bb.l, !dbg !49896

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i = phi i64 [ %.zext, %bb.i ], [ %i.ah, %bb.k ], [ %i.ag, %bb.j ], !dbg !49898 ; 7 uses
  %i.ai = lshr i64 %.sroa.0.0.i, 1, !dbg !49899   ; 2 uses
  %i.aj = lshr i64 %.sroa.21.0527, 1, !dbg !49901 ; 2 uses
  %i.ak = sub nsw i64 %i.aj, %i.ai, !dbg !49901   ; 7 uses
  %i.al = add nsw i64 %i.ak, %.sroa.0.0.i, !dbg !49903 ; 6 uses
  %i.am = icmp ult i64 %i.ak, %i.al, !dbg !49905
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge, !dbg !49918

.lr.ph.preheader:                                 ; preds = %bb.l
  %.neg.i = mul nsw i64 %.sroa.0.0.i, -9, !dbg !49919
  %i.an = add nsw i64 %.neg.i, %.sroa.21.0527, !dbg !49920
  %i.ao = lshr i64 %i.an, 2, !dbg !49920          ; 2 uses
  %i.ap = add nsw i64 %i.al, %i.ao, !dbg !49921
  %i.aq = shl nuw nsw i64 %.sroa.0.0.i, 2, !dbg !49922
  %i.ar = add nuw nsw i64 %i.aq, %i.ao, !dbg !49922
  %i.as = sub nsw i64 %i.ak, %i.ar, !dbg !49922
  br label %.lr.ph, !dbg !49923

._crit_edge:                                      ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.l
  %i.at = icmp ult i64 %i.al, %i.ak, !dbg !49929
  %.not.i = icmp ugt i64 %i.al, %.sroa.21.0527
  %or.cond.i = or i1 %i.at, %.not.i, !dbg !49929
  br i1 %or.cond.i, label %bb.bm, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !49929, !prof !12654

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.07.0.i525 = phi i64 [ %i.du, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.as, %.lr.ph.preheader ] ; 8 uses
  %.sroa.011.0.i524 = phi i64 [ %i.dv, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.ap, %.lr.ph.preheader ] ; 8 uses
  %.sroa.015.0.i523 = phi i64 [ %i.au, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.ak, %.lr.ph.preheader ] ; 6 uses
  %i.au = add i64 %.sroa.015.0.i523, 1, !dbg !49936 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a

bb.bm:                                            ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ak, i64 noundef %i.al, i64 noundef range(i64 17, 2305843009213693952) %.sroa.21.0527, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !dbg !50838, !noalias !50839, !inline_history !50841
  unreachable, !dbg !50838

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0528, i64 %i.ak, !dbg !50842
  tail call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %i.dw, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ai), !dbg !50846, !inline_history !50841
  %i.dx = tail call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionfNCINvMB8_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %.sroa.0.0528, i64 noundef range(i64 17, 2305843009213693952) %.sroa.21.0527, i64 noundef %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !50847, !inline_history !50841 ; 6 uses
  %i.dy = icmp eq i64 %i.dx, %.sroa.035.0526, !dbg !50848
  br i1 %i.dy, label %.loopexit, label %bb.bp, !dbg !50848

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50491
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.epil.preheader, !dbg !50491

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %bb.e
  %.val2.i.i.i.i.i.i56.epil.init = phi float [ %.val2.i.i.pre.i.i.i.i, %bb.e ], [ %i.ac, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i57.epil.init = phi i64 [ 0, %bb.e ], [ %.sroa.1.0.i.i.i.i60.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i59.epil.init = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i64.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %lcmp.mod2379 = trunc i64 %i.s to i1, !dbg !50491
  tail call void @llvm.assume(i1 %lcmp.mod2379), !dbg !50491
  %.sroa.1.0.i.i.i.i60.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i57.epil.init, 1, !dbg !50461
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.sroa.1.0.i.i.in.i.i57.epil.init, !dbg !50462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50465), !dbg !50466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50467), !dbg !50466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50468), !dbg !50469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50470), !dbg !50469
  %.val.i.i.i.i.i.i61.epil = load float, ptr %i.dz, align 4, !dbg !50436, !alias.scope !50471, !noalias !50472, !noundef !13 ; 2 uses
  %i.ea = fcmp ord float %.val.i.i.i.i.i.i61.epil, 0.000000e+00, !dbg !50473
  %i.eb = fcmp ult float %.val.i.i.i.i.i.i61.epil, %.val2.i.i.i.i.i.i56.epil.init, !dbg !50480
  %.not2.i.i.i.i.i.i.i.i.i62.epil = and i1 %i.ea, %i.eb, !dbg !50483
  %.1.i.i.i.i.i.i64.epil = select i1 %.not2.i.i.i.i.i.i.i.i.i62.epil, i64 %.sroa.1.0.i.i.i.i60.epil, i64 %.sroa.02.0.i.i.i.i59.epil.init, !dbg !50484
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !50850

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i64.lcssa = phi i64 [ %.1.i.i.i.i.i.i64.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i64.epil, %.epil.preheader ], !dbg !50484 ; 3 uses
  %i.ec = icmp ult i64 %.1.i.i.i.i.i.i64.lcssa, %.sroa.21.0527, !dbg !50850
  br i1 %i.ec, label %bb.bo, label %bb.bn, !dbg !50850

bb.bn:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i64.lcssa, i64 noundef %.sroa.21.0527, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #50, !dbg !50850
  unreachable, !dbg !50850

bb.bo:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0528, i64 %.1.i.i.i.i.i.i64.lcssa, !dbg !50854 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ed, align 4, !dbg !50855
  store float %.val2.i.i.pre.i.i.i.i, ptr %i.ed, align 4, !dbg !50860
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.0.0528, align 4, !dbg !50862
  br label %.loopexit, !dbg !50864

bb.bp:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.ee = icmp ugt i64 %i.dx, %.sroa.035.0526, !dbg !50866
  br i1 %i.ee, label %bb.bu, label %bb.bq, !dbg !50866

bb.bq:                                            ; preds = %bb.bp
  %i.ef = add i64 %i.dx, 1, !dbg !50867           ; 5 uses
  %i.eg = icmp ugt i64 %i.ef, %.sroa.21.0527, !dbg !50868
  br i1 %i.eg, label %bb.bs, label %bb.br, !dbg !50868, !prof !4881

bb.br:                                            ; preds = %bb.bq
  %i.eh = sub nuw nsw i64 %.sroa.21.0527, %i.ef, !dbg !50874
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0528, i64 %i.ef, !dbg !50875
  %i.ej = sub i64 %.sroa.035.0526, %i.ef, !dbg !50880
  br label %bb.bt, !dbg !50881

bb.bs:                                            ; preds = %bb.bq
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ef, i64 noundef %.sroa.21.0527, i64 noundef %.sroa.21.0527, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #50, !dbg !50882
  unreachable, !dbg !50882

bb.bt:                                            ; preds = %bb.bu, %bb.br
  %.sroa.035.1 = phi i64 [ %i.ej, %bb.br ], [ %.sroa.035.0526, %bb.bu ]
  %.sroa.21.1 = phi i64 [ %i.eh, %bb.br ], [ %i.dx, %bb.bu ], !dbg !50883 ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.ei, %bb.br ], [ %.sroa.0.0528, %bb.bu ], !dbg !50883 ; 2 uses
  %i.ek = icmp ult i64 %.sroa.21.1, 17, !dbg !50307
  br i1 %i.ek, label %._crit_edge531, label %.lr.ph530, !dbg !50307

bb.bu:                                            ; preds = %bb.bp
  %.not = icmp ugt i64 %i.dx, %.sroa.21.0527, !dbg !50884
  br i1 %.not, label %bb.bv, label %bb.bt, !dbg !50884, !prof !4881

bb.bv:                                            ; preds = %bb.bu
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dx, i64 noundef %.sroa.21.0527, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !dbg !50891
  unreachable, !dbg !50891

.loopexit:                                        ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthersfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.by, %._crit_edge531, %bb.bo, %bb.bx
  ret void, !dbg !50892

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod2383.not = icmp eq i64 %xtraiter2382, 0, !dbg !50402
  br i1 %lcmp.mod2383.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.epil.preheader2381, !dbg !50402

.epil.preheader2381:                              ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %bb.c
  %.val.i.i.i.i.i.i.epil.init = phi float [ %.val.i.i.pre.i.i.i.i, %bb.c ], [ %i.q, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ] ; 2 uses
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %lcmp.mod2385 = trunc i64 %i.g to i1, !dbg !50402
  tail call void @llvm.assume(i1 %lcmp.mod2385), !dbg !50402
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !50370
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !50371
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50374), !dbg !50375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50376), !dbg !50375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50377), !dbg !50378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50379), !dbg !50378
  %.val2.i.i.i.i.i.i.epil = load float, ptr %i.el, align 4, !dbg !50345, !alias.scope !50380, !noalias !50381, !noundef !13
  %i.em = fcmp ord float %.val.i.i.i.i.i.i.epil.init, 0.000000e+00, !dbg !50382
  %i.en = fcmp ult float %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !50391
  %.not2.i.i.i.i.i.i.i.i.i.epil = and i1 %i.em, %i.en, !dbg !50394
  %.1.i.i.i.i.i.i.epil = select i1 %.not2.i.i.i.i.i.i.i.i.i.epil, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !50395
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !50893

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %.epil.preheader2381
  %.1.i.i.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader2381 ], !dbg !50395 ; 3 uses
  %i.eo = icmp ult i64 %.1.i.i.i.i.i.i.lcssa, %.sroa.21.0527, !dbg !50893
  br i1 %i.eo, label %bb.bx, label %bb.bw, !dbg !50893

bb.bw:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i.lcssa, i64 noundef %.sroa.21.0527, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #50, !dbg !50893
  unreachable, !dbg !50893

bb.bx:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0528, i64 %.1.i.i.i.i.i.i.lcssa, !dbg !50896 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0528, i64 %.sroa.035.0526, !dbg !50897 ; 2 uses
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.ep, align 4, !dbg !50899
  %i.er = load i32, ptr %i.eq, align 4, !dbg !50903
  store i32 %i.er, ptr %i.ep, align 4, !dbg !50903
  store i32 %.sroa.0.0.copyload.i66, ptr %i.eq, align 4, !dbg !50905
  br label %.loopexit, !dbg !50864

bb.by:                                            ; preds = %._crit_edge531
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftfNCINvMB8_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef %.sroa.21.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !50907
  br label %.loopexit, !dbg !50908
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_medianshNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %0, i64 noundef range(i64 1, -9223372036854775808) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !50909 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !50910
  br i1 %i.a, label %._crit_edge526, label %.lr.ph525, !dbg !50910

.lr.ph525:                                        ; preds = %bb.a, %bb.bu
  %.sroa.0.0523 = phi ptr [ %.sroa.0.1, %bb.bu ], [ %0, %bb.a ] ; 33 uses
  %.sroa.21.0522 = phi i64 [ %.sroa.21.1, %bb.bu ], [ %1, %bb.a ] ; 67 uses
  %.sroa.035.0521 = phi i64 [ %.sroa.035.1, %bb.bu ], [ %3, %bb.a ] ; 7 uses
  %i.b = add nsw i64 %.sroa.21.0522, -1, !dbg !50911
  %i.c = icmp eq i64 %.sroa.035.0521, %i.b, !dbg !50912
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !50912

._crit_edge526:                                   ; preds = %bb.bu, %bb.a
  %.sroa.21.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.21.1, %bb.bu ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.1, %bb.bu ]
  %i.d = icmp samesign ugt i64 %.sroa.21.0.lcssa, 1, !dbg !50913
  br i1 %i.d, label %bb.ca, label %.loopexit, !dbg !50913

bb.b:                                             ; preds = %.lr.ph525
  %i.e = icmp eq i64 %.sroa.035.0521, 0, !dbg !50914
  br i1 %i.e, label %bb.e, label %bb.g, !dbg !50914

bb.c:                                             ; preds = %.lr.ph525
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 1, !dbg !50915 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50928), !dbg !50931
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50933), !dbg !50936
  %.val.i.i.pre.i.i.i.i = load i8, ptr %.sroa.0.0523, align 1, !dbg !50939, !alias.scope !50949, !noalias !50958 ; 2 uses
  %i.g = add nsw i64 %.sroa.21.0522, -2
  %i.h = add nsw i64 %.sroa.21.0522, -1, !dbg !50966 ; 2 uses
  %xtraiter2433 = and i64 %i.h, 3, !dbg !50966    ; 3 uses
  %i.i = icmp ult i64 %i.g, 3, !dbg !50966
  br i1 %i.i, label %.epil.preheader2404, label %.new2403, !dbg !50966

.new2403:                                         ; preds = %bb.c
  %unroll_iter2438 = and i64 %i.h, -4, !dbg !50966
  br label %bb.d, !dbg !50966

bb.d:                                             ; preds = %bb.d, %.new2403
  %.val.i.i.i.i.i.i = phi i8 [ %.val.i.i.pre.i.i.i.i, %.new2403 ], [ %i.u, %bb.d ], !dbg !50939 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new2403 ], [ %.sroa.1.0.i.i.i.i.3, %bb.d ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new2403 ], [ %.1.i.i.i.i.i.i.3, %bb.d ], !dbg !50968
  %niter2439 = phi i64 [ 0, %.new2403 ], [ %niter2439.next.3, %bb.d ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !50969 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.in.i.i, !dbg !50970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50973), !dbg !50974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50975), !dbg !50974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50976), !dbg !50977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50978), !dbg !50977
  %.val2.i.i.i.i.i.i = load i8, ptr %i.j, align 1, !dbg !50939, !alias.scope !50979, !noalias !50980, !noundef !13 ; 2 uses
  %i.k = icmp ult i8 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !50981
  %.1.i.i.i.i.i.i = select i1 %i.k, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !50988
  %i.l = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i, i8 %.val2.i.i.i.i.i.i), !dbg !50939 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !50969 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.i.i, !dbg !50970
  %.val2.i.i.i.i.i.i.1 = load i8, ptr %i.m, align 1, !dbg !50939, !alias.scope !50989, !noalias !50992, !noundef !13 ; 2 uses
  %i.n = icmp ult i8 %i.l, %.val2.i.i.i.i.i.i.1, !dbg !50981
  %.1.i.i.i.i.i.i.1 = select i1 %i.n, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !50988
  %i.o = tail call i8 @llvm.umax.i8(i8 %i.l, i8 %.val2.i.i.i.i.i.i.1), !dbg !50939 ; 2 uses
  %.sroa.1.0.i.i.i.i.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 3, !dbg !50969 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.i.i.1, !dbg !50970
  %.val2.i.i.i.i.i.i.2 = load i8, ptr %i.p, align 1, !dbg !50939, !alias.scope !50995, !noalias !50998, !noundef !13 ; 2 uses
  %i.q = icmp ult i8 %i.o, %.val2.i.i.i.i.i.i.2, !dbg !50981
  %.1.i.i.i.i.i.i.2 = select i1 %i.q, i64 %.sroa.1.0.i.i.i.i.2, i64 %.1.i.i.i.i.i.i.1, !dbg !50988
  %i.r = tail call i8 @llvm.umax.i8(i8 %i.o, i8 %.val2.i.i.i.i.i.i.2), !dbg !50939 ; 2 uses
  %.sroa.1.0.i.i.i.i.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i, 4, !dbg !50969 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.i.i.2, !dbg !50970
  %.val2.i.i.i.i.i.i.3 = load i8, ptr %i.s, align 1, !dbg !50939, !alias.scope !51001, !noalias !51004, !noundef !13 ; 2 uses
  %i.t = icmp ult i8 %i.r, %.val2.i.i.i.i.i.i.3, !dbg !50981
  %.1.i.i.i.i.i.i.3 = select i1 %i.t, i64 %.sroa.1.0.i.i.i.i.3, i64 %.1.i.i.i.i.i.i.2, !dbg !50988 ; 3 uses
  %i.u = tail call i8 @llvm.umax.i8(i8 %i.r, i8 %.val2.i.i.i.i.i.i.3), !dbg !50939 ; 2 uses
  %niter2439.next.3 = add i64 %niter2439, 4, !dbg !51007 ; 2 uses
  %niter2439.ncmp.3 = icmp eq i64 %niter2439.next.3, %unroll_iter2438, !dbg !51007
  br i1 %niter2439.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.d, !dbg !51007

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 1, !dbg !51008 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51016), !dbg !51019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51021), !dbg !51024
  %.val2.i.i.pre.i.i.i.i = load i8, ptr %.sroa.0.0523, align 1, !dbg !51027, !alias.scope !51037, !noalias !51046 ; 3 uses
  %i.w = add nsw i64 %.sroa.21.0522, -2
  %i.x = add nsw i64 %.sroa.21.0522, -1, !dbg !51054 ; 2 uses
  %xtraiter = and i64 %i.x, 3, !dbg !51054        ; 3 uses
  %i.y = icmp ult i64 %i.w, 3, !dbg !51054
  br i1 %i.y, label %.epil.preheader, label %.new, !dbg !51054

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.x, -4, !dbg !51054
  br label %bb.f, !dbg !51054

bb.f:                                             ; preds = %bb.f, %.new
  %.val2.i.i.i.i.i.i56 = phi i8 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ak, %bb.f ], !dbg !51027 ; 2 uses
  %.sroa.1.0.i.i.in.i.i57 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i60.3, %bb.f ] ; 5 uses
  %.sroa.02.0.i.i.i.i59 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i63.3, %bb.f ], !dbg !51056
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %.sroa.1.0.i.i.i.i60 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 1, !dbg !51057 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.in.i.i57, !dbg !51058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51061), !dbg !51062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51063), !dbg !51062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51064), !dbg !51065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51066), !dbg !51065
  %.val.i.i.i.i.i.i61 = load i8, ptr %i.z, align 1, !dbg !51027, !alias.scope !51067, !noalias !51068, !noundef !13 ; 2 uses
  %i.aa = icmp ult i8 %.val.i.i.i.i.i.i61, %.val2.i.i.i.i.i.i56, !dbg !51069
  %.1.i.i.i.i.i.i63 = select i1 %i.aa, i64 %.sroa.1.0.i.i.i.i60, i64 %.sroa.02.0.i.i.i.i59, !dbg !51072
  %i.ab = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i61, i8 %.val2.i.i.i.i.i.i56), !dbg !51027 ; 2 uses
  %.sroa.1.0.i.i.i.i60.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 2, !dbg !51057 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.i.i60, !dbg !51058
  %.val.i.i.i.i.i.i61.1 = load i8, ptr %i.ac, align 1, !dbg !51027, !alias.scope !51073, !noalias !51076, !noundef !13 ; 2 uses
  %i.ad = icmp ult i8 %.val.i.i.i.i.i.i61.1, %i.ab, !dbg !51069
  %.1.i.i.i.i.i.i63.1 = select i1 %i.ad, i64 %.sroa.1.0.i.i.i.i60.1, i64 %.1.i.i.i.i.i.i63, !dbg !51072
  %i.ae = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i61.1, i8 %i.ab), !dbg !51027 ; 2 uses
  %.sroa.1.0.i.i.i.i60.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 3, !dbg !51057 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.i.i60.1, !dbg !51058
  %.val.i.i.i.i.i.i61.2 = load i8, ptr %i.af, align 1, !dbg !51027, !alias.scope !51079, !noalias !51082, !noundef !13 ; 2 uses
  %i.ag = icmp ult i8 %.val.i.i.i.i.i.i61.2, %i.ae, !dbg !51069
  %.1.i.i.i.i.i.i63.2 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i60.2, i64 %.1.i.i.i.i.i.i63.1, !dbg !51072
  %i.ah = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i61.2, i8 %i.ae), !dbg !51027 ; 2 uses
  %.sroa.1.0.i.i.i.i60.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i57, 4, !dbg !51057 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.i.i60.2, !dbg !51058
  %.val.i.i.i.i.i.i61.3 = load i8, ptr %i.ai, align 1, !dbg !51027, !alias.scope !51085, !noalias !51088, !noundef !13 ; 2 uses
  %i.aj = icmp ult i8 %.val.i.i.i.i.i.i61.3, %i.ah, !dbg !51069
  %.1.i.i.i.i.i.i63.3 = select i1 %i.aj, i64 %.sroa.1.0.i.i.i.i60.3, i64 %.1.i.i.i.i.i.i63.2, !dbg !51072 ; 3 uses
  %i.ak = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i61.3, i8 %i.ah), !dbg !51027 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !51091  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !51091
  br i1 %niter.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.f, !dbg !51091

bb.g:                                             ; preds = %bb.b
  %i.al = icmp samesign ult i64 %.sroa.21.0522, 1025, !dbg !51092
  br i1 %i.al, label %bb.i, label %bb.h, !dbg !51092

bb.h:                                             ; preds = %bb.g
  %i.am = icmp samesign ult i64 %.sroa.21.0522, 131073, !dbg !51095
  br i1 %i.am, label %bb.k, label %bb.j, !dbg !51095

bb.i:                                             ; preds = %bb.g
  %.lhs.trunc = trunc nuw nsw i64 %.sroa.21.0522 to i16, !dbg !51096
  %i.an = udiv i16 %.lhs.trunc, 12, !dbg !51096
  %.zext = zext nneg i16 %i.an to i64, !dbg !51096
  br label %bb.l, !dbg !51097

bb.j:                                             ; preds = %bb.h
  %i.ao = lshr i64 %.sroa.21.0522, 10, !dbg !51098
  br label %bb.l, !dbg !51099

bb.k:                                             ; preds = %bb.h
  %i.ap = lshr i64 %.sroa.21.0522, 6, !dbg !51100
  br label %bb.l, !dbg !51099

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i = phi i64 [ %.zext, %bb.i ], [ %i.ap, %bb.k ], [ %i.ao, %bb.j ], !dbg !51101 ; 7 uses
  %i.aq = lshr i64 %.sroa.0.0.i, 1, !dbg !51102   ; 2 uses
  %i.ar = lshr i64 %.sroa.21.0522, 1, !dbg !51104 ; 2 uses
  %i.as = sub nsw i64 %i.ar, %i.aq, !dbg !51104   ; 7 uses
  %i.at = add nsw i64 %i.as, %.sroa.0.0.i, !dbg !51106 ; 6 uses
  %i.au = icmp ult i64 %i.as, %i.at, !dbg !51108
  br i1 %i.au, label %.lr.ph.preheader, label %._crit_edge, !dbg !51121

.lr.ph.preheader:                                 ; preds = %bb.l
  %.neg.i = mul nsw i64 %.sroa.0.0.i, -9, !dbg !51122
  %i.av = add nsw i64 %.neg.i, %.sroa.21.0522, !dbg !51123
  %i.aw = lshr i64 %i.av, 2, !dbg !51123          ; 2 uses
  %i.ax = add i64 %i.at, %i.aw, !dbg !51124
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i, 2, !dbg !51125
  %i.az = add nuw nsw i64 %i.ay, %i.aw, !dbg !51125
  %i.ba = sub nsw i64 %i.as, %i.az, !dbg !51125
  br label %.lr.ph, !dbg !51126

._crit_edge:                                      ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.l
  %i.bb = icmp ult i64 %i.at, %i.as, !dbg !51132
  %.not.i = icmp ugt i64 %i.at, %.sroa.21.0522
  %or.cond.i = or i1 %i.bb, %.not.i, !dbg !51132
  br i1 %or.cond.i, label %bb.bm, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthershNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !51132, !prof !12654

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.sroa.07.0.i520 = phi i64 [ %i.do, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.ba, %.lr.ph.preheader ] ; 8 uses
  %.sroa.011.0.i519 = phi i64 [ %i.dp, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.ax, %.lr.ph.preheader ] ; 8 uses
  %.sroa.015.0.i518 = phi i64 [ %i.bc, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit ], [ %i.as, %.lr.ph.preheader ] ; 6 uses
  %i.bc = add i64 %.sroa.015.0.i518, 1, !dbg !51139 ; 2 uses
  %i.bd = sub i64 %.sroa.015.0.i518, %.sroa.0.0.i, !dbg !51145 ; 4 uses
  %i.be = add i64 %.sroa.07.0.i520, 1, !dbg !51146 ; 5 uses
  %i.bf = add i64 %.sroa.011.0.i519, 1, !dbg !51147 ; 5 uses
  %i.bg = add i64 %.sroa.07.0.i520, 2, !dbg !51148 ; 5 uses
  %i.bh = add i64 %.sroa.015.0.i518, %.sroa.0.0.i, !dbg !51149 ; 4 uses
  %i.bi = add i64 %.sroa.011.0.i519, 2, !dbg !51150 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51151), !dbg !51154
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51155), !dbg !51158
  %i.bj = icmp ult i64 %.sroa.011.0.i519, %.sroa.21.0522, !dbg !51126
  br i1 %i.bj, label %bb.m, label %bb.n, !dbg !51126

bb.m:                                             ; preds = %.lr.ph
  %i.bk = icmp ult i64 %.sroa.07.0.i520, %.sroa.21.0522, !dbg !51159
  br i1 %i.bk, label %bb.o, label %bb.p, !dbg !51159

bb.n:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.011.0.i519, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #50, !dbg !51126, !noalias !51160
  unreachable, !dbg !51126

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.011.0.i519, !dbg !51163
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.07.0.i520, !dbg !51164
  %.val18.i67 = load i8, ptr %i.bl, align 1, !dbg !51165, !alias.scope !51166, !noalias !51169, !noundef !13
  %.val19.i68 = load i8, ptr %i.bm, align 1, !dbg !51165, !alias.scope !51171, !noalias !51172, !noundef !13
  %i.bn = icmp ult i8 %.val18.i67, %.val19.i68, !dbg !51173 ; 2 uses
  %spec.select.i69 = select i1 %i.bn, i64 %.sroa.07.0.i520, i64 %.sroa.011.0.i519, !dbg !51165 ; 4 uses
  %spec.select14.i70 = select i1 %i.bn, i64 %.sroa.011.0.i519, i64 %.sroa.07.0.i520, !dbg !51165 ; 4 uses
  %i.bo = icmp samesign ult i64 %spec.select.i69, %.sroa.21.0522, !dbg !51176
  br i1 %i.bo, label %bb.q, label %bb.r, !dbg !51176

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.07.0.i520, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #50, !dbg !51159, !noalias !51160
  unreachable, !dbg !51159

bb.q:                                             ; preds = %bb.o
  %i.bp = icmp ult i64 %i.bd, %.sroa.21.0522, !dbg !51177
  br i1 %i.bp, label %bb.s, label %bb.t, !dbg !51177

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i69, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #50, !dbg !51176, !noalias !51160
  unreachable, !dbg !51176

bb.s:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i69, !dbg !51178
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bd, !dbg !51179
  %.val16.i71 = load i8, ptr %i.bq, align 1, !dbg !51180, !alias.scope !51166, !noalias !51169, !noundef !13 ; 2 uses
  %.val17.i72 = load i8, ptr %i.br, align 1, !dbg !51180, !alias.scope !51171, !noalias !51172, !noundef !13 ; 3 uses
  %i.bs = icmp ult i8 %.val16.i71, %.val17.i72, !dbg !51181
  br i1 %i.bs, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76, label %bb.u, !dbg !51180

bb.t:                                             ; preds = %bb.q
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #50, !dbg !51177, !noalias !51160
  unreachable, !dbg !51177

bb.u:                                             ; preds = %bb.s
  %i.bt = icmp samesign ult i64 %spec.select14.i70, %.sroa.21.0522, !dbg !51184
  br i1 %i.bt, label %bb.v, label %bb.w, !dbg !51184

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select14.i70, !dbg !51185
  %.val15.i73 = load i8, ptr %i.bu, align 1, !dbg !51186, !alias.scope !51171, !noalias !51172, !noundef !13 ; 2 uses
  %i.bv = icmp ult i8 %.val17.i72, %.val15.i73, !dbg !51187
  %spec.select14..i74 = select i1 %i.bv, i64 %spec.select14.i70, i64 %i.bd, !dbg !51190
  %i.bw = tail call i8 @llvm.umax.i8(i8 %.val17.i72, i8 %.val15.i73), !dbg !51191
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76, !dbg !51190

bb.w:                                             ; preds = %bb.u
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select14.i70, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #50, !dbg !51184, !noalias !51160
  unreachable, !dbg !51184

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76: ; preds = %bb.s, %bb.v
  %.val51.i = phi i8 [ %i.bw, %bb.v ], [ %.val16.i71, %bb.s ]
  %.sroa.08.0.i75 = phi i64 [ %spec.select14..i74, %bb.v ], [ %spec.select.i69, %bb.s ], !dbg !51192 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51193), !dbg !51196
  %i.bx = icmp ult i64 %i.bi, %.sroa.21.0522, !dbg !51197
  br i1 %i.bx, label %bb.x, label %bb.y, !dbg !51197

bb.x:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76
  %i.by = icmp ult i64 %i.bg, %.sroa.21.0522, !dbg !51199
  br i1 %i.by, label %bb.z, label %bb.aa, !dbg !51199

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit76
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #50, !dbg !51197, !noalias !51200
  unreachable, !dbg !51197

bb.z:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bi, !dbg !51201
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bg, !dbg !51202
  %.val18.i = load i8, ptr %i.bz, align 1, !dbg !51203, !alias.scope !51204, !noalias !51207, !noundef !13
  %.val19.i = load i8, ptr %i.ca, align 1, !dbg !51203, !alias.scope !51209, !noalias !51210, !noundef !13
  %i.cb = icmp ult i8 %.val18.i, %.val19.i, !dbg !51211 ; 2 uses
  %spec.select.i66 = select i1 %i.cb, i64 %i.bg, i64 %i.bi, !dbg !51203 ; 4 uses
  %spec.select14.i = select i1 %i.cb, i64 %i.bi, i64 %i.bg, !dbg !51203 ; 4 uses
  %i.cc = icmp samesign ult i64 %spec.select.i66, %.sroa.21.0522, !dbg !51214
  br i1 %i.cc, label %bb.ab, label %bb.ac, !dbg !51214

bb.aa:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #50, !dbg !51199, !noalias !51200
  unreachable, !dbg !51199

bb.ab:                                            ; preds = %bb.z
  %i.cd = icmp ult i64 %i.bh, %.sroa.21.0522, !dbg !51215
  br i1 %i.cd, label %bb.ad, label %bb.ae, !dbg !51215

bb.ac:                                            ; preds = %bb.z
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i66, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #50, !dbg !51214, !noalias !51200
  unreachable, !dbg !51214

bb.ad:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i66, !dbg !51216
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bh, !dbg !51217
  %.val16.i = load i8, ptr %i.ce, align 1, !dbg !51218, !alias.scope !51204, !noalias !51207, !noundef !13 ; 2 uses
  %.val17.i = load i8, ptr %i.cf, align 1, !dbg !51218, !alias.scope !51209, !noalias !51210, !noundef !13 ; 3 uses
  %i.cg = icmp ult i8 %.val16.i, %.val17.i, !dbg !51219
  br i1 %i.cg, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.af, !dbg !51218

bb.ae:                                            ; preds = %bb.ab
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #50, !dbg !51215, !noalias !51200
  unreachable, !dbg !51215

bb.af:                                            ; preds = %bb.ad
  %i.ch = icmp samesign ult i64 %spec.select14.i, %.sroa.21.0522, !dbg !51222
  br i1 %i.ch, label %bb.ag, label %bb.ah, !dbg !51222

bb.ag:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select14.i, !dbg !51223
  %.val15.i = load i8, ptr %i.ci, align 1, !dbg !51224, !alias.scope !51209, !noalias !51210, !noundef !13 ; 2 uses
  %i.cj = icmp ult i8 %.val17.i, %.val15.i, !dbg !51225
  %spec.select14..i = select i1 %i.cj, i64 %spec.select14.i, i64 %i.bh, !dbg !51228
  %i.ck = tail call i8 @llvm.umax.i8(i8 %.val17.i, i8 %.val15.i), !dbg !51191
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !51228

bb.ah:                                            ; preds = %bb.af
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select14.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #50, !dbg !51222, !noalias !51200
  unreachable, !dbg !51222

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.ad, %bb.ag
  %.val50.i = phi i8 [ %i.ck, %bb.ag ], [ %.val16.i, %bb.ad ]
  %.sroa.08.0.i = phi i64 [ %spec.select14..i, %bb.ag ], [ %spec.select.i66, %bb.ad ], !dbg !51229 ; 4 uses
  %i.cl = icmp samesign ult i64 %.sroa.08.0.i, %.sroa.21.0522, !dbg !51230
  br i1 %i.cl, label %bb.ai, label %bb.aj, !dbg !51230

bb.ai:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.cm = icmp samesign ult i64 %.sroa.08.0.i75, %.sroa.21.0522, !dbg !51231
  br i1 %i.cm, label %bb.ak, label %bb.al, !dbg !51231

bb.aj:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select10median_idxhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.0.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #50, !dbg !51230, !noalias !51232
  unreachable, !dbg !51230

bb.ak:                                            ; preds = %bb.ai
  %i.cn = icmp ult i8 %.val50.i, %.val51.i, !dbg !51233 ; 2 uses
  %spec.select.i = select i1 %i.cn, i64 %.sroa.08.0.i75, i64 %.sroa.08.0.i, !dbg !51191 ; 7 uses
  %spec.select33.i = select i1 %i.cn, i64 %.sroa.08.0.i, i64 %.sroa.08.0.i75, !dbg !51191 ; 7 uses
  %i.co = icmp ult i64 %i.bf, %.sroa.21.0522, !dbg !51236
  br i1 %i.co, label %bb.am, label %bb.an, !dbg !51236

bb.al:                                            ; preds = %bb.ai
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.0.i75, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #50, !dbg !51231, !noalias !51232
  unreachable, !dbg !51231

bb.am:                                            ; preds = %bb.ak
  %i.cp = icmp ult i64 %i.be, %.sroa.21.0522, !dbg !51237
  br i1 %i.cp, label %bb.ao, label %bb.ap, !dbg !51237

bb.an:                                            ; preds = %bb.ak
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bf, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #50, !dbg !51236, !noalias !51232
  unreachable, !dbg !51236

bb.ao:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.bf, !dbg !51238
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.be, !dbg !51239
  %.val48.i = load i8, ptr %i.cq, align 1, !dbg !51240, !alias.scope !51241, !noalias !51244, !noundef !13
  %.val49.i = load i8, ptr %i.cr, align 1, !dbg !51240, !alias.scope !51246, !noalias !51247, !noundef !13
  %i.cs = icmp ult i8 %.val48.i, %.val49.i, !dbg !51248 ; 2 uses
  %spec.select34.i = select i1 %i.cs, i64 %i.be, i64 %i.bf, !dbg !51240 ; 4 uses
  %spec.select35.i = select i1 %i.cs, i64 %i.bf, i64 %i.be, !dbg !51240 ; 4 uses
  %i.ct = icmp ult i64 %.sroa.015.0.i518, %.sroa.21.0522, !dbg !51251
  br i1 %i.ct, label %bb.aq, label %bb.ar, !dbg !51251

bb.ap:                                            ; preds = %bb.am
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #50, !dbg !51237, !noalias !51232
  unreachable, !dbg !51237

bb.aq:                                            ; preds = %bb.ao
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.015.0.i518, !dbg !51252 ; 4 uses
  %i.cv = icmp samesign ult i64 %spec.select35.i, %.sroa.21.0522, !dbg !51253
  br i1 %i.cv, label %bb.as, label %bb.at, !dbg !51253

bb.ar:                                            ; preds = %bb.ao
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0.i518, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #50, !dbg !51251, !noalias !51232
  unreachable, !dbg !51251

bb.as:                                            ; preds = %bb.aq
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select35.i, !dbg !51254
  %.val46.i = load i8, ptr %i.cu, align 1, !dbg !51255, !alias.scope !51241, !noalias !51244, !noundef !13 ; 7 uses
  %.val47.i = load i8, ptr %i.cw, align 1, !dbg !51255, !alias.scope !51246, !noalias !51247, !noundef !13 ; 2 uses
  %i.cx = icmp ult i8 %.val46.i, %.val47.i, !dbg !51256
  br i1 %i.cx, label %bb.bf, label %bb.au, !dbg !51255

bb.at:                                            ; preds = %bb.aq
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select35.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #50, !dbg !51253, !noalias !51232
  unreachable, !dbg !51253

bb.au:                                            ; preds = %bb.as
  %i.cy = icmp samesign ult i64 %spec.select34.i, %.sroa.21.0522, !dbg !51259
  br i1 %i.cy, label %bb.av, label %bb.aw, !dbg !51259

bb.av:                                            ; preds = %bb.au
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select34.i, !dbg !51260
  %.val44.i = load i8, ptr %i.cz, align 1, !dbg !51261, !alias.scope !51241, !noalias !51244, !noundef !13 ; 2 uses
  %i.da = icmp ult i8 %.val44.i, %.val46.i, !dbg !51262
  br i1 %i.da, label %bb.bf, label %bb.ax, !dbg !51261

bb.aw:                                            ; preds = %bb.au
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select34.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #50, !dbg !51259, !noalias !51232
  unreachable, !dbg !51259

bb.ax:                                            ; preds = %bb.av
  %i.db = icmp samesign ult i64 %spec.select33.i, %.sroa.21.0522, !dbg !51265
  br i1 %i.db, label %bb.ay, label %bb.az, !dbg !51265

bb.ay:                                            ; preds = %bb.ax
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select33.i, !dbg !51266 ; 2 uses
  %.val43.i = load i8, ptr %i.dc, align 1, !dbg !51267, !alias.scope !51246, !noalias !51247, !noundef !13 ; 2 uses
  %i.dd = icmp ult i8 %.val46.i, %.val43.i, !dbg !51268
  br i1 %i.dd, label %bb.be, label %bb.ba, !dbg !51267

bb.az:                                            ; preds = %bb.ax
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select33.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #50, !dbg !51265, !noalias !51232
  unreachable, !dbg !51265

bb.ba:                                            ; preds = %bb.ay
  %i.de = icmp samesign ult i64 %spec.select.i, %.sroa.21.0522, !dbg !51271
  br i1 %i.de, label %bb.bb, label %bb.bc, !dbg !51271

bb.bb:                                            ; preds = %bb.ba
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i, !dbg !51272 ; 2 uses
  %.val40.i = load i8, ptr %i.df, align 1, !dbg !51273, !alias.scope !51241, !noalias !51244, !noundef !13 ; 2 uses
  %i.dg = icmp ult i8 %.val40.i, %.val46.i, !dbg !51274
  br i1 %i.dg, label %bb.bd, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !51273

bb.bc:                                            ; preds = %bb.ba
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #50, !dbg !51271, !noalias !51232
  unreachable, !dbg !51271

bb.bd:                                            ; preds = %bb.bb
  store i8 %.val40.i, ptr %i.cu, align 1, !dbg !51277, !alias.scope !51151, !noalias !51287
  store i8 %.val46.i, ptr %i.df, align 1, !dbg !51288, !alias.scope !51151, !noalias !51287
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !51291

bb.be:                                            ; preds = %bb.ay
  store i8 %.val43.i, ptr %i.cu, align 1, !dbg !51292, !alias.scope !51151, !noalias !51287
  store i8 %.val46.i, ptr %i.dc, align 1, !dbg !51298, !alias.scope !51151, !noalias !51287
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !51300

bb.bf:                                            ; preds = %bb.av, %bb.as
  %.val38.i = phi i8 [ %.val47.i, %bb.as ], [ %.val44.i, %bb.av ] ; 2 uses
  %.sroa.07.1.i = phi i64 [ %spec.select35.i, %bb.as ], [ %spec.select34.i, %bb.av ], !dbg !51301
  %i.dh = icmp samesign ult i64 %spec.select33.i, %.sroa.21.0522, !dbg !51302
  br i1 %i.dh, label %bb.bg, label %bb.bh, !dbg !51302

bb.bg:                                            ; preds = %bb.bf
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select33.i, !dbg !51303
  %.val39.i = load i8, ptr %i.di, align 1, !dbg !51304, !alias.scope !51246, !noalias !51247, !noundef !13 ; 2 uses
  %i.dj = icmp ult i8 %.val38.i, %.val39.i, !dbg !51305
  br i1 %i.dj, label %bb.bl, label %bb.bi, !dbg !51304

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select33.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #50, !dbg !51302, !noalias !51232
  unreachable, !dbg !51302

bb.bi:                                            ; preds = %bb.bg
  %i.dk = icmp samesign ult i64 %spec.select.i, %.sroa.21.0522, !dbg !51308
  br i1 %i.dk, label %bb.bk, label %bb.bj, !dbg !51308

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %spec.select.i, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #50, !dbg !51308, !noalias !51232
  unreachable, !dbg !51308

bb.bk:                                            ; preds = %bb.bi
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select.i, !dbg !51309
  %.val.i = load i8, ptr %i.dl, align 1, !dbg !51310, !alias.scope !51241, !noalias !51244, !noundef !13
  %i.dm = icmp ult i8 %.val.i, %.val38.i, !dbg !51311
  %spec.select36.i = select i1 %i.dm, i64 %spec.select.i, i64 %.sroa.07.1.i, !dbg !51310 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %spec.select36.i
  %.sroa.0.0.copyload.i53.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !dbg !51314, !alias.scope !51151, !noalias !51287
  br label %bb.bl, !dbg !51310

bb.bl:                                            ; preds = %bb.bk, %bb.bg
  %.sroa.0.0.copyload.i53.i = phi i8 [ %.sroa.0.0.copyload.i53.pre.i, %bb.bk ], [ %.val39.i, %bb.bg ], !dbg !51314
  %.sroa.07.2.i = phi i64 [ %spec.select36.i, %bb.bk ], [ %spec.select33.i, %bb.bg ], !dbg !51301
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.07.2.i, !dbg !51320
  store i8 %.val46.i, ptr %i.dn, align 1, !dbg !51321, !alias.scope !51151, !noalias !51287
  store i8 %.sroa.0.0.copyload.i53.i, ptr %i.cu, align 1, !dbg !51323, !alias.scope !51151, !noalias !51287
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !51325

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select7nintherhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.bb, %bb.bd, %bb.be, %bb.bl
  %i.do = add nuw i64 %.sroa.07.0.i520, 3, !dbg !51326
  %i.dp = add nuw i64 %.sroa.011.0.i519, 3, !dbg !51327
  %exitcond.not = icmp eq i64 %i.bc, %i.at, !dbg !51108
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !51121

bb.bm:                                            ; preds = %._crit_edge
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.as, i64 noundef %i.at, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #50, !dbg !51328, !noalias !51329, !inline_history !51331
  unreachable, !dbg !51328

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthershNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.as, !dbg !51332
  tail call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_medianshNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %i.dq, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.aq), !dbg !51336, !inline_history !51331
  %i.dr = tail call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionhNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0523, i64 noundef range(i64 17, -9223372036854775808) %.sroa.21.0522, i64 noundef %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !51337, !inline_history !51331 ; 6 uses
  %i.ds = icmp eq i64 %i.dr, %.sroa.035.0521, !dbg !51338
  br i1 %i.ds, label %.loopexit, label %bb.bq, !dbg !51338

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51091
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.epil.preheader, !dbg !51091

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %bb.e
  %.val2.i.i.i.i.i.i56.epil.init = phi i8 [ %.val2.i.i.pre.i.i.i.i, %bb.e ], [ %i.ak, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i57.epil.init = phi i64 [ 0, %bb.e ], [ %.sroa.1.0.i.i.i.i60.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i59.epil.init = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i63.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %lcmp.mod2402 = icmp ne i64 %xtraiter, 0, !dbg !51091
  tail call void @llvm.assume(i1 %lcmp.mod2402), !dbg !51091
  br label %bb.bn, !dbg !51091

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader
  %.val2.i.i.i.i.i.i56.epil = phi i8 [ %.val2.i.i.i.i.i.i56.epil.init, %.epil.preheader ], [ %i.dv, %bb.bn ], !dbg !51027 ; 2 uses
  %.sroa.1.0.i.i.in.i.i57.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i57.epil.init, %.epil.preheader ], [ %.sroa.1.0.i.i.i.i60.epil, %bb.bn ] ; 2 uses
  %.sroa.02.0.i.i.i.i59.epil = phi i64 [ %.sroa.02.0.i.i.i.i59.epil.init, %.epil.preheader ], [ %.1.i.i.i.i.i.i63.epil, %bb.bn ], !dbg !51056
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bn ]
  %.sroa.1.0.i.i.i.i60.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i57.epil, 1, !dbg !51057 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.1.0.i.i.in.i.i57.epil, !dbg !51058
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51061), !dbg !51062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51063), !dbg !51062
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51064), !dbg !51065
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51066), !dbg !51065
  %.val.i.i.i.i.i.i61.epil = load i8, ptr %i.dt, align 1, !dbg !51027, !alias.scope !51067, !noalias !51068, !noundef !13 ; 2 uses
  %i.du = icmp ult i8 %.val.i.i.i.i.i.i61.epil, %.val2.i.i.i.i.i.i56.epil, !dbg !51069
  %.1.i.i.i.i.i.i63.epil = select i1 %i.du, i64 %.sroa.1.0.i.i.i.i60.epil, i64 %.sroa.02.0.i.i.i.i59.epil, !dbg !51072 ; 2 uses
  %i.dv = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i61.epil, i8 %.val2.i.i.i.i.i.i56.epil), !dbg !51027
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !51091 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !51091
  br i1 %epil.iter.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.bn, !dbg !51091, !llvm.loop !51340

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.bn, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa
  %.1.i.i.i.i.i.i63.lcssa = phi i64 [ %.1.i.i.i.i.i.i63.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i63.epil, %bb.bn ], !dbg !51072 ; 3 uses
  %i.dw = icmp ult i64 %.1.i.i.i.i.i.i63.lcssa, %.sroa.21.0522, !dbg !51341
  br i1 %i.dw, label %bb.bp, label %bb.bo, !dbg !51341

bb.bo:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i63.lcssa, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #50, !dbg !51341
  unreachable, !dbg !51341

bb.bp:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.1.i.i.i.i.i.i63.lcssa, !dbg !51345 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.dx, align 1, !dbg !51346
  store i8 %.val2.i.i.pre.i.i.i.i, ptr %i.dx, align 1, !dbg !51351
  store i8 %.sroa.0.0.copyload.i, ptr %.sroa.0.0523, align 1, !dbg !51353
  br label %.loopexit, !dbg !51355

bb.bq:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthershNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.dy = icmp ugt i64 %i.dr, %.sroa.035.0521, !dbg !51357
  br i1 %i.dy, label %bb.bv, label %bb.br, !dbg !51357

bb.br:                                            ; preds = %bb.bq
  %i.dz = add i64 %i.dr, 1, !dbg !51358           ; 5 uses
  %i.ea = icmp ugt i64 %i.dz, %.sroa.21.0522, !dbg !51359
  br i1 %i.ea, label %bb.bt, label %bb.bs, !dbg !51359, !prof !4881

bb.bs:                                            ; preds = %bb.br
  %i.eb = sub nuw nsw i64 %.sroa.21.0522, %i.dz, !dbg !51365
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %i.dz, !dbg !51366
  %i.ed = sub i64 %.sroa.035.0521, %i.dz, !dbg !51371
  br label %bb.bu, !dbg !51372

bb.bt:                                            ; preds = %bb.br
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.dz, i64 noundef %.sroa.21.0522, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #50, !dbg !51373
  unreachable, !dbg !51373

bb.bu:                                            ; preds = %bb.bv, %bb.bs
  %.sroa.035.1 = phi i64 [ %i.ed, %bb.bs ], [ %.sroa.035.0521, %bb.bv ]
  %.sroa.21.1 = phi i64 [ %i.eb, %bb.bs ], [ %i.dr, %bb.bv ], !dbg !51374 ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.ec, %bb.bs ], [ %.sroa.0.0523, %bb.bv ], !dbg !51374 ; 2 uses
  %i.ee = icmp ult i64 %.sroa.21.1, 17, !dbg !50910
  br i1 %i.ee, label %._crit_edge526, label %.lr.ph525, !dbg !50910

bb.bv:                                            ; preds = %bb.bq
  %.not = icmp ugt i64 %i.dr, %.sroa.21.0522, !dbg !51375
  br i1 %.not, label %bb.bw, label %bb.bu, !dbg !51375, !prof !4881

bb.bw:                                            ; preds = %bb.bv
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dr, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #50, !dbg !51382
  unreachable, !dbg !51382

.loopexit:                                        ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18median_of_ninthershNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, %bb.ca, %._crit_edge526, %bb.bp, %bb.bz
  ret void, !dbg !51383

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod2435.not = icmp eq i64 %xtraiter2433, 0, !dbg !51007
  br i1 %lcmp.mod2435.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %.epil.preheader2404, !dbg !51007

.epil.preheader2404:                              ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, %bb.c
  %.val.i.i.i.i.i.i.epil.init = phi i8 [ %.val.i.i.pre.i.i.i.i, %bb.c ], [ %i.u, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.sroa.1.0.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ]
  %lcmp.mod2437 = icmp ne i64 %xtraiter2433, 0, !dbg !51007
  tail call void @llvm.assume(i1 %lcmp.mod2437), !dbg !51007
  br label %bb.bx, !dbg !51007

bb.bx:                                            ; preds = %bb.bx, %.epil.preheader2404
  %.val.i.i.i.i.i.i.epil = phi i8 [ %.val.i.i.i.i.i.i.epil.init, %.epil.preheader2404 ], [ %i.eh, %bb.bx ], !dbg !50939 ; 2 uses
  %.sroa.1.0.i.i.in.i.i.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i.epil.init, %.epil.preheader2404 ], [ %.sroa.1.0.i.i.i.i.epil, %bb.bx ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi i64 [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader2404 ], [ %.1.i.i.i.i.i.i.epil, %bb.bx ], !dbg !50968
  %epil.iter2434 = phi i64 [ 0, %.epil.preheader2404 ], [ %epil.iter2434.next, %bb.bx ]
  %.sroa.1.0.i.i.i.i.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i.epil, 1, !dbg !50969 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.1.0.i.i.in.i.i.epil, !dbg !50970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50973), !dbg !50974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50975), !dbg !50974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50976), !dbg !50977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50978), !dbg !50977
  %.val2.i.i.i.i.i.i.epil = load i8, ptr %i.ef, align 1, !dbg !50939, !alias.scope !50979, !noalias !50980, !noundef !13 ; 2 uses
  %i.eg = icmp ult i8 %.val.i.i.i.i.i.i.epil, %.val2.i.i.i.i.i.i.epil, !dbg !50981
  %.1.i.i.i.i.i.i.epil = select i1 %i.eg, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil, !dbg !50988 ; 2 uses
  %i.eh = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.epil, i8 %.val2.i.i.i.i.i.i.epil), !dbg !50939
  %epil.iter2434.next = add i64 %epil.iter2434, 1, !dbg !51007 ; 2 uses
  %epil.iter2434.cmp.not = icmp eq i64 %epil.iter2434.next, %xtraiter2433, !dbg !51007
  br i1 %epil.iter2434.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.bx, !dbg !51007, !llvm.loop !51384

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.bx, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa
  %.1.i.i.i.i.i.i.lcssa = phi i64 [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %bb.bx ], !dbg !50988 ; 3 uses
  %i.ei = icmp ult i64 %.1.i.i.i.i.i.i.lcssa, %.sroa.21.0522, !dbg !51385
  br i1 %i.ei, label %bb.bz, label %bb.by, !dbg !51385

bb.by:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i.lcssa, i64 noundef %.sroa.21.0522, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #50, !dbg !51385
  unreachable, !dbg !51385

bb.bz:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.1.i.i.i.i.i.i.lcssa, !dbg !51388 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 %.sroa.035.0521, !dbg !51389 ; 2 uses
  %.sroa.0.0.copyload.i65 = load i8, ptr %i.ej, align 1, !dbg !51391
  %i.el = load i8, ptr %i.ek, align 1, !dbg !51395
  store i8 %i.el, ptr %i.ej, align 1, !dbg !51395
  store i8 %.sroa.0.0.copyload.i65, ptr %i.ek, align 1, !dbg !51397
  br label %.loopexit, !dbg !51355

bb.ca:                                            ; preds = %._crit_edge526
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_lefthNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0.lcssa, i64 noundef %.sroa.21.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2), !dbg !51399
  br label %.loopexit, !dbg !51400
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_medianslNCINvMB6_Sl22select_nth_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 1, 2305843009213693952) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !51401 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 17, !dbg !51402
  br i1 %i.a, label %._crit_edge526, label %.lr.ph525, !dbg !51402

.lr.ph525:                                        ; preds = %bb.a, %bb.bu
  %.sroa.0.0523 = phi ptr [ %.sroa.0.1, %bb.bu ], [ %0, %bb.a ] ; 33 uses
  %.sroa.21.0522 = phi i64 [ %.sroa.21.1, %bb.bu ], [ %1, %bb.a ] ; 65 uses
  %.sroa.035.0521 = phi i64 [ %.sroa.035.1, %bb.bu ], [ %3, %bb.a ] ; 7 uses
  %i.b = add nsw i64 %.sroa.21.0522, -1, !dbg !51403
  %i.c = icmp eq i64 %.sroa.035.0521, %i.b, !dbg !51404
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !51404

._crit_edge526:                                   ; preds = %bb.bu, %bb.a
  %.sroa.21.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.21.1, %bb.bu ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.1, %bb.bu ]
  %i.d = icmp samesign ugt i64 %.sroa.21.0.lcssa, 1, !dbg !51405
  br i1 %i.d, label %bb.ca, label %.loopexit, !dbg !51405

bb.b:                                             ; preds = %.lr.ph525
  %i.e = icmp eq i64 %.sroa.035.0521, 0, !dbg !51406
  br i1 %i.e, label %bb.e, label %bb.g, !dbg !51406

bb.c:                                             ; preds = %.lr.ph525
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 4, !dbg !51407 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51420), !dbg !51423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51425), !dbg !51428
  %i.g = add nuw nsw i64 %.sroa.21.0522, 4611686018427387903, !dbg !51431 ; 3 uses
  %i.h = and i64 %i.g, 4611686018427387903, !dbg !51431
  %.val.i.i.pre.i.i.i.i = load i32, ptr %.sroa.0.0523, align 4, !dbg !51445, !alias.scope !51451, !noalias !51460 ; 2 uses
  %i.i = add nsw i64 %i.h, -1, !dbg !51468
  %xtraiter2377 = and i64 %i.g, 3, !dbg !51468    ; 3 uses
  %i.j = icmp ult i64 %i.i, 3, !dbg !51468
  br i1 %i.j, label %.epil.preheader2376, label %.new2375, !dbg !51468

.new2375:                                         ; preds = %bb.c
  %unroll_iter2382 = and i64 %i.g, 4611686018427387900, !dbg !51468
  br label %bb.d, !dbg !51468

bb.d:                                             ; preds = %bb.d, %.new2375
  %.val.i.i.i.i.i.i = phi i32 [ %.val.i.i.pre.i.i.i.i, %.new2375 ], [ %i.v, %bb.d ], !dbg !51445 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new2375 ], [ %.sroa.1.0.i.i.i.i.3, %bb.d ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new2375 ], [ %.1.i.i.i.i.i.i.3, %bb.d ], !dbg !51469
  %niter2383 = phi i64 [ 0, %.new2375 ], [ %niter2383.next.3, %bb.d ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !51470 ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.1.0.i.i.in.i.i, !dbg !51471
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51474), !dbg !51475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51476), !dbg !51475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51477), !dbg !51478
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51479), !dbg !51478
  %.val2.i.i.i.i.i.i = load i32, ptr %i.k, align 4, !dbg !51445, !alias.scope !51480, !noalias !51481, !noundef !13 ; 2 uses
  %i.l = icmp slt i32 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !51482
  %.1.i.i.i.i.i.i = select i1 %i.l, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !51489
  %i.m = tail call i32 @llvm.smax.i32(i32 %.val.i.i.i.i.i.i, i32 %.val2.i.i.i.i.i.i), !dbg !51445 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !51470 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.1.0.i.i.i.i, !dbg !51471
  %.val2.i.i.i.i.i.i.1 = load i32, ptr %i.n, align 4, !dbg !51445, !alias.scope !51490, !noalias !51493, !noundef !13 ; 2 uses
  %i.o = icmp slt i32 %i.m, %.val2.i.i.i.i.i.i.1, !dbg !51482
  %.1.i.i.i.i.i.i.1 = select i1 %i.o, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !51489
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %.val2.i.i.i.i.i.i.1), !dbg !51445 ; 2 uses
  %.sroa.1.0.i.i.i.i.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 3, !dbg !51470 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.1.0.i.i.i.i.1, !dbg !51471
  %.val2.i.i.i.i.i.i.2 = load i32, ptr %i.q, align 4, !dbg !51445, !alias.scope !51496, !noalias !51499, !noundef !13 ; 2 uses
  %i.r = icmp slt i32 %i.p, %.val2.i.i.i.i.i.i.2, !dbg !51482
  %.1.i.i.i.i.i.i.2 = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i.2, i64 %.1.i.i.i.i.i.i.1, !dbg !51489
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.p, i32 %.val2.i.i.i.i.i.i.2), !dbg !51445 ; 2 uses
  %.sroa.1.0.i.i.i.i.3 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 4, !dbg !51470 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.1.0.i.i.i.i.2, !dbg !51471
  %.val2.i.i.i.i.i.i.3 = load i32, ptr %i.t, align 4, !dbg !51445, !alias.scope !51502, !noalias !51505, !noundef !13 ; 2 uses
  %i.u = icmp slt i32 %i.s, %.val2.i.i.i.i.i.i.3, !dbg !51482
  %.1.i.i.i.i.i.i.3 = select i1 %i.u, i64 %.sroa.1.0.i.i.i.i.3, i64 %.1.i.i.i.i.i.i.2, !dbg !51489 ; 3 uses
  %i.v = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %.val2.i.i.i.i.i.i.3), !dbg !51445 ; 2 uses
  %niter2383.next.3 = add i64 %niter2383, 4, !dbg !51508 ; 2 uses
  %niter2383.ncmp.3 = icmp eq i64 %niter2383.next.3, %unroll_iter2382, !dbg !51508
  br i1 %niter2383.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexlNCINvMB6_Sl22select_nth_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.d, !dbg !51508

bb.e:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0523, i64 4, !dbg !51509 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51517), !dbg !51520
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51522), !dbg !51525
  %i.x = add nuw nsw i64 %.sroa.21.0522, 4611686018427387903, !dbg !51528 ; 3 uses
  %i.y = and i64 %i.x, 4611686018427387903, !dbg !51528
  %.val2.i.i.pre.i.i.i.i = load i32, ptr %.sroa.0.0523, align 4, !dbg !51542, !alias.scope !51548, !noalias !51557 ; 3 uses
  %i.z = add nsw i64 %i.y, -1, !dbg !51565
  %xtraiter = and i64 %i.x, 3, !dbg !51565        ; 3 uses
  %i.aa = icmp ult i64 %i.z, 3, !dbg !51565
  br i1 %i.aa, label %.epil.preheader, label %.new, !dbg !51565

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.x, 4611686018427387900, !dbg !51565
  br label %bb.f, !dbg !51565

bb.f:                                             ; preds = %bb.f, %.new
  %.val2.i.i.i.i.i.i56 = phi i32 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.am, %bb.f ], !dbg !51542 ; 2 uses
  %.sroa.1.0.i.i.in.i.i57 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i60.3, %bb.f ] ; 5 uses
  %.sroa.02.0.i.i.i.i59 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i63.3, %bb.f ], !dbg !51566
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %.sroa.1.0.i.i.i.i60 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 1, !dbg !51567 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.1.0.i.i.in.i.i57, !dbg !51568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51571), !dbg !51572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51573), !dbg !51572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51574), !dbg !51575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51576), !dbg !51575
  %.val.i.i.i.i.i.i61 = load i32, ptr %i.ab, align 4, !dbg !51542, !alias.scope !51577, !noalias !51578, !noundef !13 ; 2 uses
  %i.ac = icmp slt i32 %.val.i.i.i.i.i.i61, %.val2.i.i.i.i.i.i56, !dbg !51579
  %.1.i.i.i.i.i.i63 = select i1 %i.ac, i64 %.sroa.1.0.i.i.i.i60, i64 %.sroa.02.0.i.i.i.i59, !dbg !51582
  %i.ad = tail call i32 @llvm.smin.i32(i32 %.val.i.i.i.i.i.i61, i32 %.val2.i.i.i.i.i.i56), !dbg !51542 ; 2 uses
  %.sroa.1.0.i.i.i.i60.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 2, !dbg !51567 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.1.0.i.i.i.i60, !dbg !51568
  %.val.i.i.i.i.i.i61.1 = load i32, ptr %i.ae, align 4, !dbg !51542, !alias.scope !51583, !noalias !51586, !noundef !13 ; 2 uses
  %i.af = icmp slt i32 %.val.i.i.i.i.i.i61.1, %i.ad, !dbg !51579
  %.1.i.i.i.i.i.i63.1 = select i1 %i.af, i64 %.sroa.1.0.i.i.i.i60.1, i64 %.1.i.i.i.i.i.i63, !dbg !51582
  %i.ag = tail call i32 @llvm.smin.i32(i32 %.val.i.i.i.i.i.i61.1, i32 %i.ad), !dbg !51542 ; 2 uses
  %.sroa.1.0.i.i.i.i60.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i57, 3, !dbg !51567 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.1.0.i.i.i.i60.1, !dbg !51568
  %.val.i.i.i.i.i.i61.2 = load i32, ptr %i.ah, align 4, !dbg !51542, !alias.scope !51589, !noalias !51592, !noundef !13 ; 2 uses
  %i.ai = icmp slt i32 %.val.i.i.i.i.i.i61.2, %i.ag, !dbg !51579
  %.1.i.i.i.i.i.i63.2 = select i1 %i.ai, i64 %.sroa.1.0.i.i.i.i60.2, i64 %.1.i.i.i.i.i.i63.1, !dbg !51582
  %i.aj = tail call i32 @llvm.smin.i32(i32 %.val.i.i.i.i.i.i61.2, i32 %i.ag), !dbg !51542 ; 2 uses
  %.sroa.1.0.i.i.i.i60.3 = add nuw i64 %.sroa.1.0.i.i.in.i.i57, 4, !dbg !51567 ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.1.0.i.i.i.i60.2, !dbg !51568
  %.val.i.i.i.i.i.i61.3 = load i32, ptr %i.ak, align 4, !dbg !51542, !alias.scope !51595, !noalias !51598, !noundef !13 ; 2 uses
  %i.al = icmp slt i32 %.val.i.i.i.i.i.i61.3, %i.aj, !dbg !51579
  %.1.i.i.i.i.i.i63.3 = select i1 %i.al, i64 %.sroa.1.0.i.i.i.i60.3, i64 %.1.i.i.i.i.i.i63.2, !dbg !51582 ; 3 uses
  %i.am = tail call i32 @llvm.smin.i32(i32 %.val.i.i.i.i.i.i61.3, i32 %i.aj), !dbg !51542 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !51601  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !51601
  br i1 %niter.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexlNCINvMB6_Sl22select_nth_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.unr-lcssa, label %bb.f, !dbg !51601

bb.g:                                             ; preds = %bb.b
  %i.an = icmp samesign ult i64 %.sroa.21.0522, 1025, !dbg !51602
  br i1 %i.an, label %bb.i, label %bb.h, !dbg !51602

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp samesign ult i64 %.sroa.21.0522, 131073, !dbg !51605
  br i1 %i.ao, label %bb.k, label %bb.j, !dbg !51605

bb.i:                                             ; preds = %bb.g
  %.lhs.trunc = trunc nuw nsw i64 %.sroa.21.0522 to i16, !dbg !51606
  %i.ap = udiv i16 %.lhs.trunc, 12, !dbg !51606
  %.zext = zext nneg i16 %i.ap to i64, !dbg !51606
  br label %bb.l, !dbg !51607

bb.j:                                             ; preds = %bb.h
  %i.aq = lshr i64 %.sroa.21.0522, 10, !dbg !51608
  br label %bb.l, !dbg !51609

bb.k:                                             ; preds = %bb.h
  %i.ar = lshr i64 %.sroa.21.0522, 6, !dbg !51610
  br label %bb.l, !dbg !51609

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i = phi i64 [ %.zext, %bb.i ], [ %i.ar, %bb.k ], [ %i.aq, %bb.j ], !dbg !51611 ; 7 uses
  %i.as = lshr i64 %.sroa.0.0.i, 1, !dbg !51612   ; 2 uses
  %i.at = lshr i64 %.sroa.21.0522, 1, !dbg !51614 ; 2 uses
  %i.au = sub nsw i64 %i.at, %i.as, !dbg !51614   ; 7 uses
  %i.av = add nsw i64 %i.au, %.sroa.0.0.i, !dbg !51616 ; 6 uses
  %i.aw = icmp ult i64 %i.au, %i.av, !dbg !51618
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge, !dbg !51631

.lr.ph.preheader:                                 ; preds = %bb.l
  %.neg.i = mul nsw i64 %.sroa.0.0.i, -9, !dbg !51632
  %i.ax = add nsw i64 %.neg.i, %.sroa.21.0522, !dbg !51633
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexTmyENCINvMB6_SB13_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB34_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1S_8downcastINtB1U_12ChunkedArrayNtNtB1W_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1Q_16arg_sort_numericB62_Es_0EIB34_INtNtNtNtB4C_6bitmap5utils12zip_validity11ZipValidityRyIB3H_yENtNtB7y_8iterator10BitmapIterENCNCB6Q_s_00EyEs1_0E0EB1W_:bb.a

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmyENCINvMB8_SB1m_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtBa_4iter8adapters3map3MapIB3n_INtNtB8_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB2b_8downcastINtB2d_12ChunkedArrayNtNtB2f_9datatypes10UInt64TypeE13downcast_iter0ENCINvB29_16arg_sort_numericB6l_Es_0EIB3n_INtNtNtNtB4V_6bitmap5utils12zip_validity11ZipValidityRyIB40_yENtNtB7R_8iterator10BitmapIterENCNCB79_s_00EyEs1_0E0EB2f_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f), !dbg !80827
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmyENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRyIB3M_yENtNtB7D_8iterator10BitmapIterENCNCB6V_s_00EyEs1_0E0EB21_.exit, !dbg !80828

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !80694
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread, label %.epil.preheader, !dbg !80694

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i29.epil.init = phi i64 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i30.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i33.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i32.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.x to i1, !dbg !80694
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !80694
  %.sroa.1.0.i.i.i.i33.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i30.epil.init, 1, !dbg !80673
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i30.epil.init, !dbg !80674
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80676), !dbg !80677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80678), !dbg !80677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80679), !dbg !80680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80681), !dbg !80680
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !80651
  %.val.i.i.i.i.i.i34.epil = load i64, ptr %i.by, align 8, !dbg !80651, !alias.scope !80682, !noalias !80683, !noundef !13
  %i.bz = icmp ult i64 %.val.i.i.i.i.i.i34.epil, %.val2.i.i.i.i.i.i29.epil.init, !dbg !80684
  %.1.i.i.i.i.i.i36.epil = select i1 %i.bz, i64 %.sroa.1.0.i.i.i.i33.epil, i64 %.sroa.02.0.i.i.i.i32.epil.init, !dbg !80687
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread, !dbg !80829

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !80687 ; 3 uses
  %i.ca = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !80829
  br i1 %i.ca, label %bb.z, label %bb.y, !dbg !80829

bb.y:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #47, !dbg !80829
  unreachable

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !80833 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !80834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false), !dbg !80838
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !dbg !80840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !dbg !80842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !80844
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmyENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRyIB3M_yENtNtB7D_8iterator10BitmapIterENCNCB6V_s_00EyEs1_0E0EB21_.exit, !dbg !80845

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0, !dbg !80634
  br i1 %lcmp.mod136.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread, label %.epil.preheader134, !dbg !80634

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i64 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.w, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod138 = trunc i64 %i.m to i1, !dbg !80634
  tail call void @llvm.assume(i1 %lcmp.mod138), !dbg !80634
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !80613
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !80614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80616), !dbg !80617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80618), !dbg !80617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80619), !dbg !80620
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80621), !dbg !80620
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24, !dbg !80591
  %.val2.i.i.i.i.i.i.epil = load i64, ptr %i.cd, align 8, !dbg !80591, !alias.scope !80622, !noalias !80623, !noundef !13
  %i.ce = icmp ult i64 %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !80624
  %.1.i.i.i.i.i.i.epil = select i1 %i.ce, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !80627
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread, !dbg !80846

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread: ; preds = %.epil.preheader134, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cf = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader134 ] ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %2, !dbg !80846
  br i1 %i.cg, label %bb.ab, label %bb.aa, !dbg !80846

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #47, !dbg !80846
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexTmyENCINvMB6_SBT_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB2T_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1H_8downcastINtB1J_12ChunkedArrayNtNtB1L_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1F_16arg_sort_numericB5R_Es_0EIB2T_INtNtNtNtB4r_6bitmap5utils12zip_validity11ZipValidityRyIB3w_yENtNtB7n_8iterator10BitmapIterENCNCB6F_s_00EyEs1_0E0EB1L_.exit.thread
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cf, !dbg !80849 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %3, !dbg !80850 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !80852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !dbg !80855
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !dbg !80857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !80859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !80861
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmyENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRyIB3M_yENtNtB7D_8iterator10BitmapIterENCNCB6V_s_00EyEs1_0E0EB21_.exit, !dbg !80862

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmyENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRyIB3M_yENtNtB7D_8iterator10BitmapIterENCNCB6V_s_00EyEs1_0E0EB21_.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.z, %bb.ab
  %i.cj = load i64, ptr %i.g, align 8, !dbg !80863, !noundef !13 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cj, %2, !dbg !80864
  br i1 %.not.i38, label %bb.ac, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmyE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !80864, !prof !4881

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmyENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRyIB3M_yENtNtB7D_8iterator10BitmapIterENCNCB6V_s_00EyEs1_0E0EB21_.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #50, !dbg !80867, !noalias !80868
  unreachable, !dbg !80867

_RNvMNtCscgRAwXFJnXP_4core5sliceSTmyE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopTmyENCINvMB6_SB18_22select_nth_unstable_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtB8_4iter8adapters3map3MapIB39_INtNtB6_4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB1X_8downcastINtB1Z_12ChunkedArrayNtNtB21_9datatypes10UInt64TypeE13downcast_iter0ENCINvB1V_16arg_sort_numericB67_Es_0EIB39_INtNtNtNtB4H_6bitmap5utils12zip_validity11ZipValidityRyIB3M_yENtNtB7D_8iterator10BitmapIterENCNCB6V_s_00EyEs1_0E0EB21_.exit
  %.not.i39 = icmp eq i64 %2, %i.cj, !dbg !80872
  br i1 %.not.i39, label %bb.ad, label %bb.ae, !dbg !80872, !prof !4881

bb.ad:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmyE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #50, !dbg !80876, !noalias !80877
  unreachable, !dbg !80876

bb.ae:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTmyE12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cj, !dbg !80881 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !80884
  %i.cm = xor i64 %i.cj, -1, !dbg !80887
  %i.cn = add nsw i64 %2, %i.cm, !dbg !80887
  store ptr %1, ptr %0, align 8, !dbg !80888
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !80888
  store i64 %i.cj, ptr %i.co, align 8, !dbg !80888
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !80888
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !80888
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !80888
  store ptr %i.cl, ptr %i.cq, align 8, !dbg !80888
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !80888
  store i64 %i.cn, ptr %i.cr, align 8, !dbg !80888
  ret void, !dbg !80891
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !80892 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.e, align 8
  store ptr %4, ptr %i.d, align 8
  store i64 %2, ptr %i.c, align 8, !dbg !80893
  %.not = icmp ult i64 %3, %2, !dbg !80894
  br i1 %.not, label %bb.c, label %bb.b, !dbg !80894, !prof !4995

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !80896
  store ptr %i.e, ptr %i.b, align 8, !dbg !80896
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !80896
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !80896
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !80896
  store ptr %i.c, ptr %i.f, align 8, !dbg !80896
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !80896
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !80896
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47, !dbg !80899
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %2, -1, !dbg !80900          ; 5 uses
  %i.h = icmp eq i64 %3, %i.g, !dbg !80901
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !80901

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %3, 0, !dbg !80902
  br i1 %i.i, label %bb.h, label %bb.j, !dbg !80902

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !80903 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80909), !dbg !80912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80913), !dbg !80916
  %i.k = icmp samesign eq i64 %2, 1, !dbg !80918
  br i1 %i.k, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.f, !dbg !80924

bb.f:                                             ; preds = %bb.e
  %.val.i.i.pre.i.i.i.i = load i8, ptr %1, align 1, !dbg !80925, !alias.scope !80928, !noalias !80937 ; 2 uses
  %i.l = add nsw i64 %2, -2
  %xtraiter135 = and i64 %i.g, 3, !dbg !80945     ; 3 uses
  %i.m = icmp ult i64 %i.l, 3, !dbg !80945
  br i1 %i.m, label %.epil.preheader134, label %.new133, !dbg !80945

.new133:                                          ; preds = %bb.f
  %unroll_iter140 = and i64 %i.g, -4, !dbg !80945
  br label %bb.g, !dbg !80945

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i8 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.y, %bb.g ], !dbg !80925 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.3, %bb.g ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.3, %bb.g ], !dbg !80946
  %niter141 = phi i64 [ 0, %.new133 ], [ %niter141.next.3, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !80947 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.in.i.i, !dbg !80948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80950), !dbg !80951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80952), !dbg !80951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80953), !dbg !80954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80955), !dbg !80954
  %.val2.i.i.i.i.i.i = load i8, ptr %i.n, align 1, !dbg !80925, !alias.scope !80956, !noalias !80957, !noundef !13 ; 2 uses
  %i.o = icmp slt i8 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !80958
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !80961
  %i.p = tail call i8 @llvm.smax.i8(i8 %.val.i.i.i.i.i.i, i8 %.val2.i.i.i.i.i.i), !dbg !80925 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !80947 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.i.i, !dbg !80948
  %.val2.i.i.i.i.i.i.1 = load i8, ptr %i.q, align 1, !dbg !80925, !alias.scope !80962, !noalias !80965, !noundef !13 ; 2 uses
  %i.r = icmp slt i8 %i.p, %.val2.i.i.i.i.i.i.1, !dbg !80958
  %.1.i.i.i.i.i.i.1 = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !80961
  %i.s = tail call i8 @llvm.smax.i8(i8 %i.p, i8 %.val2.i.i.i.i.i.i.1), !dbg !80925 ; 2 uses
  %.sroa.1.0.i.i.i.i.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 3, !dbg !80947 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.i.i.1, !dbg !80948
  %.val2.i.i.i.i.i.i.2 = load i8, ptr %i.t, align 1, !dbg !80925, !alias.scope !80968, !noalias !80971, !noundef !13 ; 2 uses
  %i.u = icmp slt i8 %i.s, %.val2.i.i.i.i.i.i.2, !dbg !80958
  %.1.i.i.i.i.i.i.2 = select i1 %i.u, i64 %.sroa.1.0.i.i.i.i.2, i64 %.1.i.i.i.i.i.i.1, !dbg !80961
  %i.v = tail call i8 @llvm.smax.i8(i8 %i.s, i8 %.val2.i.i.i.i.i.i.2), !dbg !80925 ; 2 uses
  %.sroa.1.0.i.i.i.i.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i, 4, !dbg !80947 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.i.i.2, !dbg !80948
  %.val2.i.i.i.i.i.i.3 = load i8, ptr %i.w, align 1, !dbg !80925, !alias.scope !80974, !noalias !80977, !noundef !13 ; 2 uses
  %i.x = icmp slt i8 %i.v, %.val2.i.i.i.i.i.i.3, !dbg !80958
  %.1.i.i.i.i.i.i.3 = select i1 %i.x, i64 %.sroa.1.0.i.i.i.i.3, i64 %.1.i.i.i.i.i.i.2, !dbg !80961 ; 3 uses
  %i.y = tail call i8 @llvm.smax.i8(i8 %i.v, i8 %.val2.i.i.i.i.i.i.3), !dbg !80925 ; 2 uses
  %niter141.next.3 = add i64 %niter141, 4, !dbg !80980 ; 2 uses
  %niter141.ncmp.3 = icmp eq i64 %niter141.next.3, %unroll_iter140, !dbg !80980
  br i1 %niter141.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !80980

bb.h:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !80981 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80987), !dbg !80990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80991), !dbg !80994
  %.val2.i.i.pre.i.i.i.i = load i8, ptr %1, align 1, !dbg !80996, !alias.scope !81000, !noalias !81009 ; 3 uses
  %i.aa = add nsw i64 %2, -2
  %xtraiter = and i64 %i.g, 3, !dbg !81017        ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 3, !dbg !81017
  br i1 %i.ab, label %.epil.preheader, label %.new, !dbg !81017

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.g, -4, !dbg !81017
  br label %bb.i, !dbg !81017

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i28 = phi i8 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.an, %bb.i ], !dbg !80996 ; 2 uses
  %.sroa.1.0.i.i.in.i.i29 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i32.3, %bb.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i31 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i35.3, %bb.i ], !dbg !81018
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.i ]
  %.sroa.1.0.i.i.i.i32 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 1, !dbg !81019 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.in.i.i29, !dbg !81020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81022), !dbg !81023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81024), !dbg !81023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81025), !dbg !81026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81027), !dbg !81026
  %.val.i.i.i.i.i.i33 = load i8, ptr %i.ac, align 1, !dbg !80996, !alias.scope !81028, !noalias !81029, !noundef !13 ; 2 uses
  %i.ad = icmp slt i8 %.val.i.i.i.i.i.i33, %.val2.i.i.i.i.i.i28, !dbg !81030
  %.1.i.i.i.i.i.i35 = select i1 %i.ad, i64 %.sroa.1.0.i.i.i.i32, i64 %.sroa.02.0.i.i.i.i31, !dbg !81033
  %i.ae = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i33, i8 %.val2.i.i.i.i.i.i28), !dbg !80996 ; 2 uses
  %.sroa.1.0.i.i.i.i32.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 2, !dbg !81019 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.i.i32, !dbg !81020
  %.val.i.i.i.i.i.i33.1 = load i8, ptr %i.af, align 1, !dbg !80996, !alias.scope !81034, !noalias !81037, !noundef !13 ; 2 uses
  %i.ag = icmp slt i8 %.val.i.i.i.i.i.i33.1, %i.ae, !dbg !81030
  %.1.i.i.i.i.i.i35.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i32.1, i64 %.1.i.i.i.i.i.i35, !dbg !81033
  %i.ah = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i33.1, i8 %i.ae), !dbg !80996 ; 2 uses
  %.sroa.1.0.i.i.i.i32.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 3, !dbg !81019 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.i.i32.1, !dbg !81020
  %.val.i.i.i.i.i.i33.2 = load i8, ptr %i.ai, align 1, !dbg !80996, !alias.scope !81040, !noalias !81043, !noundef !13 ; 2 uses
  %i.aj = icmp slt i8 %.val.i.i.i.i.i.i33.2, %i.ah, !dbg !81030
  %.1.i.i.i.i.i.i35.2 = select i1 %i.aj, i64 %.sroa.1.0.i.i.i.i32.2, i64 %.1.i.i.i.i.i.i35.1, !dbg !81033
  %i.ak = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i33.2, i8 %i.ah), !dbg !80996 ; 2 uses
  %.sroa.1.0.i.i.i.i32.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i29, 4, !dbg !81019 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.i.i32.2, !dbg !81020
  %.val.i.i.i.i.i.i33.3 = load i8, ptr %i.al, align 1, !dbg !80996, !alias.scope !81046, !noalias !81049, !noundef !13 ; 2 uses
  %i.am = icmp slt i8 %.val.i.i.i.i.i.i33.3, %i.ak, !dbg !81030
  %.1.i.i.i.i.i.i35.3 = select i1 %i.am, i64 %.sroa.1.0.i.i.i.i32.3, i64 %.1.i.i.i.i.i.i35.2, !dbg !81033 ; 3 uses
  %i.an = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i33.3, i8 %i.ak), !dbg !80996 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !81052  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !81052
  br i1 %niter.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa, label %bb.i, !dbg !81052

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81053), !dbg !81056
  %i.ao = icmp samesign ult i64 %2, 17, !dbg !81057
  br i1 %i.ao, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !81057

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.ap = icmp eq i32 %i.ar, 0, !dbg !81061
  br i1 %i.ap, label %bb.k, label %.lr.ph.i.preheader, !dbg !81061

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.aq = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !81062
  br i1 %i.aq, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !81062

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_mediansaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %.sroa.023.0.be.i), !dbg !81063
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !81064

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.ar, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.ar = add nsw i32 %.sroa.031.020.i122, -1, !dbg !81066 ; 2 uses
  %i.as = lshr i64 %.sroa.16.023.i119, 3, !dbg !81067 ; 3 uses
  %i.at = shl nuw nsw i64 %i.as, 2, !dbg !81072
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.at, !dbg !81075 ; 3 uses
  %i.av = mul nuw nsw i64 %i.as, 7, !dbg !81078
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.av, !dbg !81080 ; 3 uses
  %i.ax = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !81082
  br i1 %i.ax, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3aNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, label %bb.l, !dbg !81082

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.ay = call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull readonly %.sroa.0.024.i118, ptr noundef readonly %i.au, ptr noundef readonly %i.aw, i64 noundef %i.as), !dbg !81084
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !81085

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3aNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %.lr.ph.i.preheader
  %.val5.i.i = load i8, ptr %.sroa.0.024.i118, align 1, !dbg !81086, !alias.scope !81089, !noalias !81094, !noundef !13 ; 2 uses
  %.val6.i.i = load i8, ptr %i.au, align 1, !dbg !81086, !alias.scope !81097, !noalias !81098, !noundef !13 ; 2 uses
  %i.az = icmp slt i8 %.val5.i.i, %.val6.i.i, !dbg !81099 ; 2 uses
  %.val4.i.i = load i8, ptr %i.aw, align 1, !dbg !81102, !alias.scope !81097, !noalias !81098, !noundef !13 ; 2 uses
  %i.ba = icmp slt i8 %.val5.i.i, %.val4.i.i, !dbg !81104
  %i.bb = xor i1 %i.az, %i.ba, !dbg !81107
  %i.bc = icmp slt i8 %.val6.i.i, %.val4.i.i, !dbg !81107
  %i.bd = xor i1 %i.az, %i.bc, !dbg !81107
  %..i.i.i = select i1 %i.bd, ptr %i.aw, ptr %i.au, !dbg !81107
  %.sroa.0.0.i.i.i = select i1 %i.bb, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !81107
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !81085

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3aNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3aNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %i.ay, %bb.l ]
  %i.be = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !81109
  %i.bf = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !81109
  %i.bg = sub nuw i64 %i.be, %i.bf, !dbg !81109   ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.16.023.i119, !dbg !81112
  call void @llvm.assume(i1 %i.bh), !dbg !81114
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !81117
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !81120

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bi = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !dbg !81121 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bi, %.sroa.16.023.i119, !dbg !81122
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !81122, !prof !4881

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #50, !dbg !81128, !noalias !81129
  unreachable, !dbg !81128

_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bi, !dbg !81133 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bi, !dbg !81140
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !81140, !prof !4881

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #50, !dbg !81144, !noalias !81145
  unreachable, !dbg !81144

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bg, !dbg !81149
  %.sroa.029.0.val.i = load i8, ptr %.sroa.029.021.i121, align 1, !dbg !81150, !alias.scope !81152, !noalias !81155, !noundef !13
  %.val.i = load i8, ptr %i.bk, align 1, !dbg !81150, !alias.scope !81157, !noalias !81158, !noundef !13
  %i.bl = icmp slt i8 %.sroa.029.0.val.i, %.val.i, !dbg !81159
  br i1 %i.bl, label %bb.m, label %bb.q, !dbg !81150

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !81162, !noalias !81163
  store ptr %i.d, ptr %i.a, align 8, !dbg !81162, !noalias !81163
  %i.bm = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionaNCINvNtB6_6select23partition_at_index_loopaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !81164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !81165, !noalias !81163
  %i.bn = add i64 %i.bm, 1, !dbg !81166           ; 6 uses
  %i.bo = icmp ugt i64 %i.bn, %.sroa.023.022.i120, !dbg !81168
  br i1 %i.bo, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.r, !dbg !81168

bb.r:                                             ; preds = %bb.q
  %i.bp = icmp ugt i64 %i.bn, %.sroa.16.023.i119, !dbg !81170
  br i1 %i.bp, label %bb.t, label %bb.s, !dbg !81170, !prof !4881

bb.s:                                             ; preds = %bb.r
  %i.bq = sub nuw i64 %.sroa.16.023.i119, %i.bn, !dbg !81175
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bn, !dbg !81176
  %i.bs = sub nuw i64 %.sroa.023.022.i120, %i.bn, !dbg !81181
  br label %.backedge.i, !dbg !81064

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.bj, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bs, %bb.s ], [ %i.bz, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bq, %bb.s ], [ %i.bx, %bb.w ], [ %i.bi, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.br, %bb.s ], [ %i.by, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bt = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !81057
  br i1 %i.bt, label %._crit_edge.i, label %.lr.ph.i, !dbg !81057

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bn, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #50, !dbg !81182
  unreachable, !dbg !81182

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bu = icmp ult i64 %i.bi, %.sroa.023.022.i120, !dbg !81183
  br i1 %i.bu, label %bb.w, label %bb.v, !dbg !81183

bb.v:                                             ; preds = %bb.u
  %i.bv = icmp ugt i64 %i.bi, %.sroa.023.022.i120, !dbg !81186
  br i1 %i.bv, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !81186

bb.w:                                             ; preds = %bb.u
  %i.bw = xor i64 %i.bi, -1, !dbg !81187          ; 2 uses
  %i.bx = add i64 %.sroa.16.023.i119, %i.bw, !dbg !81187
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 1, !dbg !81189
  %i.bz = add i64 %.sroa.023.022.i120, %i.bw, !dbg !81191
  br label %.backedge.i, !dbg !81192

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftaNCINvMB8_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !dbg !81193
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !81194

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !81052
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.epil.preheader, !dbg !81052

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i28.epil.init = phi i8 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.an, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i29.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i32.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %.sroa.02.0.i.i.i.i31.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i35.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter, 0, !dbg !81052
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !81052
  br label %bb.y, !dbg !81052

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.val2.i.i.i.i.i.i28.epil = phi i8 [ %.val2.i.i.i.i.i.i28.epil.init, %.epil.preheader ], [ %i.cc, %bb.y ], !dbg !80996 ; 2 uses
  %.sroa.1.0.i.i.in.i.i29.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i29.epil.init, %.epil.preheader ], [ %.sroa.1.0.i.i.i.i32.epil, %bb.y ] ; 2 uses
  %.sroa.02.0.i.i.i.i31.epil = phi i64 [ %.sroa.02.0.i.i.i.i31.epil.init, %.epil.preheader ], [ %.1.i.i.i.i.i.i35.epil, %bb.y ], !dbg !81018
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %.sroa.1.0.i.i.i.i32.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i29.epil, 1, !dbg !81019 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.in.i.i29.epil, !dbg !81020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81022), !dbg !81023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81024), !dbg !81023
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81025), !dbg !81026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81027), !dbg !81026
  %.val.i.i.i.i.i.i33.epil = load i8, ptr %i.ca, align 1, !dbg !80996, !alias.scope !81028, !noalias !81029, !noundef !13 ; 2 uses
  %i.cb = icmp slt i8 %.val.i.i.i.i.i.i33.epil, %.val2.i.i.i.i.i.i28.epil, !dbg !81030
  %.1.i.i.i.i.i.i35.epil = select i1 %i.cb, i64 %.sroa.1.0.i.i.i.i32.epil, i64 %.sroa.02.0.i.i.i.i31.epil, !dbg !81033 ; 2 uses
  %i.cc = tail call i8 @llvm.smin.i8(i8 %.val.i.i.i.i.i.i33.epil, i8 %.val2.i.i.i.i.i.i28.epil), !dbg !80996
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !81052 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !81052
  br i1 %epil.iter.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.y, !dbg !81052, !llvm.loop !81195

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %bb.y, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa
  %.1.i.i.i.i.i.i35.lcssa = phi i64 [ %.1.i.i.i.i.i.i35.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i35.epil, %bb.y ], !dbg !81033 ; 3 uses
  %i.cd = icmp ult i64 %.1.i.i.i.i.i.i35.lcssa, %2, !dbg !81196
  br i1 %i.cd, label %bb.aa, label %bb.z, !dbg !81196

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i35.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #47, !dbg !81196
  unreachable

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.i.i.i.i35.lcssa, !dbg !81200 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.ce, align 1, !dbg !81201
  store i8 %.val2.i.i.pre.i.i.i.i, ptr %i.ce, align 1, !dbg !81206
  store i8 %.sroa.0.0.copyload.i, ptr %1, align 1, !dbg !81208
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !81210

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod137.not = icmp eq i64 %xtraiter135, 0, !dbg !80980
  br i1 %lcmp.mod137.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.epil.preheader134, !dbg !80980

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i8 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.y, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter135, 0, !dbg !80980
  tail call void @llvm.assume(i1 %lcmp.mod139), !dbg !80980
  br label %bb.ab, !dbg !80980

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader134
  %.val.i.i.i.i.i.i.epil = phi i8 [ %.val.i.i.i.i.i.i.epil.init, %.epil.preheader134 ], [ %i.ch, %bb.ab ], !dbg !80925 ; 2 uses
  %.sroa.1.0.i.i.in.i.i.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i.epil.init, %.epil.preheader134 ], [ %.sroa.1.0.i.i.i.i.epil, %bb.ab ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi i64 [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader134 ], [ %.1.i.i.i.i.i.i.epil, %bb.ab ], !dbg !80946
  %epil.iter136 = phi i64 [ 0, %.epil.preheader134 ], [ %epil.iter136.next, %bb.ab ]
  %.sroa.1.0.i.i.i.i.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i.epil, 1, !dbg !80947 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.in.i.i.epil, !dbg !80948
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80950), !dbg !80951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80952), !dbg !80951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80953), !dbg !80954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80955), !dbg !80954
  %.val2.i.i.i.i.i.i.epil = load i8, ptr %i.cf, align 1, !dbg !80925, !alias.scope !80956, !noalias !80957, !noundef !13 ; 2 uses
  %i.cg = icmp slt i8 %.val.i.i.i.i.i.i.epil, %.val2.i.i.i.i.i.i.epil, !dbg !80958
  %.1.i.i.i.i.i.i.epil = select i1 %i.cg, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil, !dbg !80961 ; 2 uses
  %i.ch = tail call i8 @llvm.smax.i8(i8 %.val.i.i.i.i.i.i.epil, i8 %.val2.i.i.i.i.i.i.epil), !dbg !80925
  %epil.iter136.next = add i64 %epil.iter136, 1, !dbg !80980 ; 2 uses
  %epil.iter136.cmp.not = icmp eq i64 %epil.iter136.next, %xtraiter135, !dbg !80980
  br i1 %epil.iter136.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.ab, !dbg !80980, !llvm.loop !81211

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, %bb.ab, %bb.e
  %i.ci = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %bb.ab ] ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %2, !dbg !81212
  br i1 %i.cj, label %bb.ad, label %bb.ac, !dbg !81212

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #47, !dbg !81212
  unreachable

bb.ad:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci, !dbg !81215 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %3, !dbg !81216 ; 2 uses
  %.sroa.0.0.copyload.i37 = load i8, ptr %i.ck, align 1, !dbg !81218
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !81222
  store i8 %i.cm, ptr %i.ck, align 1, !dbg !81222
  store i8 %.sroa.0.0.copyload.i37, ptr %i.cl, align 1, !dbg !81224
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !81226

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.aa, %bb.ad
  %i.cn = load i64, ptr %i.e, align 8, !dbg !81227, !noundef !13 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cn, %2, !dbg !81228
  br i1 %.not.i38, label %bb.ae, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !81228, !prof !4881

bb.ae:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #50, !dbg !81231, !noalias !81232
  unreachable, !dbg !81231

_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopaNCINvMB6_Sa22select_nth_unstable_byNvYaNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.not.i39 = icmp eq i64 %2, %i.cn, !dbg !81236
  br i1 %.not.i39, label %bb.af, label %bb.ag, !dbg !81236, !prof !4881

bb.af:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #50, !dbg !81240, !noalias !81241
  unreachable, !dbg !81240

bb.ag:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSa12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn, !dbg !81245 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1, !dbg !81248
  %i.cq = xor i64 %i.cn, -1, !dbg !81251
  %i.cr = add nsw i64 %2, %i.cq, !dbg !81251
  store ptr %1, ptr %0, align 8, !dbg !81252
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !81252
  store i64 %i.cn, ptr %i.cs, align 8, !dbg !81252
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !81252
  store ptr %i.co, ptr %i.ct, align 8, !dbg !81252
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !81252
  store ptr %i.cp, ptr %i.cu, align 8, !dbg !81252
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !81252
  store i64 %i.cr, ptr %i.cv, align 8, !dbg !81252
  ret void, !dbg !81255
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !81256 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.e, align 8
  store ptr %4, ptr %i.d, align 8
  store i64 %2, ptr %i.c, align 8, !dbg !81257
  %.not = icmp ult i64 %3, %2, !dbg !81258
  br i1 %.not, label %bb.c, label %bb.b, !dbg !81258, !prof !4995

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !81260
  store ptr %i.e, ptr %i.b, align 8, !dbg !81260
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !81260
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !81260
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !81260
  store ptr %i.c, ptr %i.f, align 8, !dbg !81260
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !81260
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !81260
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47, !dbg !81263
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %2, -1, !dbg !81264
  %i.h = icmp eq i64 %3, %i.g, !dbg !81265
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !81265

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %3, 0, !dbg !81266
  br i1 %i.i, label %bb.h, label %bb.j, !dbg !81266

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !81267 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81273), !dbg !81276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81277), !dbg !81280
  %i.k = icmp eq i64 %2, 1, !dbg !81282
  br i1 %i.k, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.f, !dbg !81288

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw nsw i64 %2, 2305843009213693951, !dbg !81289 ; 4 uses
  %i.m = and i64 %i.l, 2305843009213693951, !dbg !81289
  %.val.i.i.pre.i.i.i.i = load double, ptr %1, align 8, !dbg !81293, !alias.scope !81296, !noalias !81305 ; 2 uses
  %xtraiter136 = and i64 %i.l, 1, !dbg !81313
  %i.n = icmp eq i64 %i.m, 1, !dbg !81313
  br i1 %i.n, label %.epil.preheader135, label %.new134, !dbg !81313

.new134:                                          ; preds = %bb.f
  %unroll_iter140 = and i64 %i.l, 2305843009213693950, !dbg !81313
  br label %bb.g, !dbg !81313

bb.g:                                             ; preds = %bb.g, %.new134
  %.val.i.i.i.i.i.i = phi double [ %.val.i.i.pre.i.i.i.i, %.new134 ], [ %i.v, %bb.g ], !dbg !81293 ; 3 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new134 ], [ %.sroa.1.0.i.i.i.i.1, %bb.g ] ; 3 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new134 ], [ %.1.i.i.i.i.i.i.1, %bb.g ], !dbg !81314
  %niter141 = phi i64 [ 0, %.new134 ], [ %niter141.next.1, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !81315 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.1.0.i.i.in.i.i, !dbg !81316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81318), !dbg !81319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81320), !dbg !81319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81321), !dbg !81322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81323), !dbg !81322
  %.val2.i.i.i.i.i.i = load double, ptr %i.o, align 8, !dbg !81293, !alias.scope !81324, !noalias !81325, !noundef !13 ; 2 uses
  %i.p = fcmp ord double %.val.i.i.i.i.i.i, 0.000000e+00, !dbg !81326
  %i.q = fcmp ult double %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !81333
  %.not2.i.i.i.i.i.i.i.i.i = and i1 %i.p, %i.q, !dbg !81336 ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %.not2.i.i.i.i.i.i.i.i.i, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !81337
  %i.r = select i1 %.not2.i.i.i.i.i.i.i.i.i, double %.val2.i.i.i.i.i.i, double %.val.i.i.i.i.i.i, !dbg !81293 ; 3 uses
  %.sroa.1.0.i.i.i.i.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !81315 ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.1.0.i.i.i.i, !dbg !81316
  %.val2.i.i.i.i.i.i.1 = load double, ptr %i.s, align 8, !dbg !81293, !alias.scope !81338, !noalias !81341, !noundef !13 ; 2 uses
  %i.t = fcmp ord double %i.r, 0.000000e+00, !dbg !81326
  %i.u = fcmp ult double %i.r, %.val2.i.i.i.i.i.i.1, !dbg !81333
  %.not2.i.i.i.i.i.i.i.i.i.1 = and i1 %i.t, %i.u, !dbg !81336 ; 2 uses
  %.1.i.i.i.i.i.i.1 = select i1 %.not2.i.i.i.i.i.i.i.i.i.1, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !81337 ; 3 uses
  %i.v = select i1 %.not2.i.i.i.i.i.i.i.i.i.1, double %.val2.i.i.i.i.i.i.1, double %i.r, !dbg !81293 ; 2 uses
  %niter141.next.1 = add i64 %niter141, 2, !dbg !81344 ; 2 uses
  %niter141.ncmp.1 = icmp eq i64 %niter141.next.1, %unroll_iter140, !dbg !81344
  br i1 %niter141.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !81344

bb.h:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !81345 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81351), !dbg !81354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81355), !dbg !81358
  %i.x = add nuw nsw i64 %2, 2305843009213693951, !dbg !81360 ; 4 uses
  %i.y = and i64 %i.x, 2305843009213693951, !dbg !81360
  %.val2.i.i.pre.i.i.i.i = load double, ptr %1, align 8, !dbg !81365, !alias.scope !81368, !noalias !81377 ; 3 uses
  %xtraiter = and i64 %i.x, 1, !dbg !81385
  %i.z = icmp eq i64 %i.y, 1, !dbg !81385
  br i1 %i.z, label %.epil.preheader, label %.new, !dbg !81385

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.x, 2305843009213693950, !dbg !81385
  br label %bb.i, !dbg !81385

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i28 = phi double [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ah, %bb.i ], !dbg !81365 ; 2 uses
  %.sroa.1.0.i.i.in.i.i29 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i32.1, %bb.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i31 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i36.1, %bb.i ], !dbg !81386
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %.sroa.1.0.i.i.i.i32 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 1, !dbg !81387 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.1.0.i.i.in.i.i29, !dbg !81388
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81390), !dbg !81391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81392), !dbg !81391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81393), !dbg !81394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81395), !dbg !81394
  %.val.i.i.i.i.i.i33 = load double, ptr %i.aa, align 8, !dbg !81365, !alias.scope !81396, !noalias !81397, !noundef !13 ; 3 uses
  %i.ab = fcmp ord double %.val.i.i.i.i.i.i33, 0.000000e+00, !dbg !81398
  %i.ac = fcmp ult double %.val.i.i.i.i.i.i33, %.val2.i.i.i.i.i.i28, !dbg !81405
  %.not2.i.i.i.i.i.i.i.i.i34 = and i1 %i.ab, %i.ac, !dbg !81408 ; 2 uses
  %.1.i.i.i.i.i.i36 = select i1 %.not2.i.i.i.i.i.i.i.i.i34, i64 %.sroa.1.0.i.i.i.i32, i64 %.sroa.02.0.i.i.i.i31, !dbg !81409
  %i.ad = select i1 %.not2.i.i.i.i.i.i.i.i.i34, double %.val.i.i.i.i.i.i33, double %.val2.i.i.i.i.i.i28, !dbg !81365 ; 2 uses
  %.sroa.1.0.i.i.i.i32.1 = add nuw i64 %.sroa.1.0.i.i.in.i.i29, 2, !dbg !81387 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.1.0.i.i.i.i32, !dbg !81388
  %.val.i.i.i.i.i.i33.1 = load double, ptr %i.ae, align 8, !dbg !81365, !alias.scope !81410, !noalias !81413, !noundef !13 ; 3 uses
  %i.af = fcmp ord double %.val.i.i.i.i.i.i33.1, 0.000000e+00, !dbg !81398
  %i.ag = fcmp ult double %.val.i.i.i.i.i.i33.1, %i.ad, !dbg !81405
  %.not2.i.i.i.i.i.i.i.i.i34.1 = and i1 %i.af, %i.ag, !dbg !81408 ; 2 uses
  %.1.i.i.i.i.i.i36.1 = select i1 %.not2.i.i.i.i.i.i.i.i.i34.1, i64 %.sroa.1.0.i.i.i.i32.1, i64 %.1.i.i.i.i.i.i36, !dbg !81409 ; 3 uses
  %i.ah = select i1 %.not2.i.i.i.i.i.i.i.i.i34.1, double %.val.i.i.i.i.i.i33.1, double %i.ad, !dbg !81365 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !81416  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !81416
  br i1 %niter.ncmp.1, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexdNCINvMB6_Sd22select_nth_unstable_byNvYdNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa, label %bb.i, !dbg !81416

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81417), !dbg !81420
  %i.ai = icmp samesign ult i64 %2, 17, !dbg !81421
  br i1 %i.ai, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !81421

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.aj = icmp eq i32 %i.al, 0, !dbg !81425
  br i1 %i.aj, label %bb.k, label %.lr.ph.i.preheader, !dbg !81425
end_hunk_2
begin_hunk_3_@_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core:bb.a
  br label %.backedge.i, !dbg !81984

bb.z:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftfNCINvMB8_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 4 %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !dbg !81985
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !81986

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !81811
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.epil.preheader, !dbg !81811

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i28.epil.init = phi float [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.ah, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i29.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i32.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i31.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %lcmp.mod133 = trunc i64 %i.x to i1, !dbg !81811
  tail call void @llvm.assume(i1 %lcmp.mod133), !dbg !81811
  %.sroa.1.0.i.i.i.i32.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i29.epil.init, 1, !dbg !81782
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.sroa.1.0.i.i.in.i.i29.epil.init, !dbg !81783
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81785), !dbg !81786
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81787), !dbg !81786
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81788), !dbg !81789
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81790), !dbg !81789
  %.val.i.i.i.i.i.i33.epil = load float, ptr %i.bv, align 4, !dbg !81760, !alias.scope !81791, !noalias !81792, !noundef !13 ; 2 uses
  %i.bw = fcmp ord float %.val.i.i.i.i.i.i33.epil, 0.000000e+00, !dbg !81793
  %i.bx = fcmp ult float %.val.i.i.i.i.i.i33.epil, %.val2.i.i.i.i.i.i28.epil.init, !dbg !81800
  %.not2.i.i.i.i.i.i.i.i.i34.epil = and i1 %i.bw, %i.bx, !dbg !81803
  %.1.i.i.i.i.i.i36.epil = select i1 %.not2.i.i.i.i.i.i.i.i.i34.epil, i64 %.sroa.1.0.i.i.i.i32.epil, i64 %.sroa.02.0.i.i.i.i31.epil.init, !dbg !81804
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !81987

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa, %.epil.preheader
  %.1.i.i.i.i.i.i36.lcssa = phi i64 [ %.1.i.i.i.i.i.i36.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i36.epil, %.epil.preheader ], !dbg !81804 ; 3 uses
  %i.by = icmp ult i64 %.1.i.i.i.i.i.i36.lcssa, %2, !dbg !81987
  br i1 %i.by, label %bb.ab, label %bb.aa, !dbg !81987

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i36.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #47, !dbg !81987
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.1.i.i.i.i.i.i36.lcssa, !dbg !81991 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.bz, align 4, !dbg !81992
  store float %.val2.i.i.pre.i.i.i.i, ptr %i.bz, align 4, !dbg !81997
  store i32 %.sroa.0.0.copyload.i, ptr %1, align 4, !dbg !81999
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82001

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0, !dbg !81739
  br i1 %lcmp.mod137.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.epil.preheader135, !dbg !81739

.epil.preheader135:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi float [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.v, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %i.l to i1, !dbg !81739
  tail call void @llvm.assume(i1 %lcmp.mod139), !dbg !81739
  %.sroa.1.0.i.i.i.i.epil = add nuw i64 %.sroa.1.0.i.i.in.i.i.epil.init, 1, !dbg !81710
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.1.0.i.i.in.i.i.epil.init, !dbg !81711
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81713), !dbg !81714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81715), !dbg !81714
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81716), !dbg !81717
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81718), !dbg !81717
  %.val2.i.i.i.i.i.i.epil = load float, ptr %i.ca, align 4, !dbg !81688, !alias.scope !81719, !noalias !81720, !noundef !13
  %i.cb = fcmp ord float %.val.i.i.i.i.i.i.epil.init, 0.000000e+00, !dbg !81721
  %i.cc = fcmp ult float %.val.i.i.i.i.i.i.epil.init, %.val2.i.i.i.i.i.i.epil, !dbg !81728
  %.not2.i.i.i.i.i.i.i.i.i.epil = and i1 %i.cb, %i.cc, !dbg !81731
  %.1.i.i.i.i.i.i.epil = select i1 %.not2.i.i.i.i.i.i.i.i.i.epil, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil.init, !dbg !81732
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, !dbg !82002

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %.epil.preheader135, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, %bb.e
  %i.cd = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.epil.preheader135 ] ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %2, !dbg !82002
  br i1 %i.ce, label %bb.ad, label %bb.ac, !dbg !82002

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #47, !dbg !82002
  unreachable

bb.ad:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd, !dbg !82005 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3, !dbg !82006 ; 2 uses
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.cf, align 4, !dbg !82008
  %i.ch = load i32, ptr %i.cg, align 4, !dbg !82012
  store i32 %i.ch, ptr %i.cf, align 4, !dbg !82012
  store i32 %.sroa.0.0.copyload.i38, ptr %i.cg, align 4, !dbg !82014
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82016

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.x, %bb.s, %bb.z, %bb.k, %._crit_edge.i, %bb.ab, %bb.ad
  %i.ci = load i64, ptr %i.e, align 8, !dbg !82017, !noundef !13 ; 5 uses
  %.not.i39 = icmp ugt i64 %i.ci, %2, !dbg !82018
  br i1 %.not.i39, label %bb.ae, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !82018, !prof !4881

bb.ae:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #50, !dbg !82021, !noalias !82022
  unreachable, !dbg !82021

_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loopfNCINvMB6_Sf22select_nth_unstable_byNvYfNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.not.i40 = icmp eq i64 %2, %i.ci, !dbg !82026
  br i1 %.not.i40, label %bb.af, label %bb.ag, !dbg !82026, !prof !4881

bb.af:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #50, !dbg !82030, !noalias !82031
  unreachable, !dbg !82030

bb.ag:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ci, !dbg !82035 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4, !dbg !82038
  %i.cl = xor i64 %i.ci, -1, !dbg !82041
  %i.cm = add nsw i64 %2, %i.cl, !dbg !82041
  store ptr %1, ptr %0, align 8, !dbg !82042
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !82042
  store i64 %i.ci, ptr %i.cn, align 8, !dbg !82042
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !82042
  store ptr %i.cj, ptr %i.co, align 8, !dbg !82042
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !82042
  store ptr %i.ck, ptr %i.cp, align 8, !dbg !82042
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !82042
  store i64 %i.cm, ptr %i.cq, align 8, !dbg !82042
  ret void, !dbg !82045
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !82046 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.e, align 8
  store ptr %4, ptr %i.d, align 8
  store i64 %2, ptr %i.c, align 8, !dbg !82047
  %.not = icmp ult i64 %3, %2, !dbg !82048
  br i1 %.not, label %bb.c, label %bb.b, !dbg !82048, !prof !4995

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !82050
  store ptr %i.e, ptr %i.b, align 8, !dbg !82050
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !82050
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !82050
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !82050
  store ptr %i.c, ptr %i.f, align 8, !dbg !82050
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !82050
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !82050
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47, !dbg !82053
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %2, -1, !dbg !82054          ; 5 uses
  %i.h = icmp eq i64 %3, %i.g, !dbg !82055
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !82055

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %3, 0, !dbg !82056
  br i1 %i.i, label %bb.h, label %bb.j, !dbg !82056

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !82057 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82063), !dbg !82066
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82067), !dbg !82070
  %i.k = icmp samesign eq i64 %2, 1, !dbg !82072
  br i1 %i.k, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.f, !dbg !82078

bb.f:                                             ; preds = %bb.e
  %.val.i.i.pre.i.i.i.i = load i8, ptr %1, align 1, !dbg !82079, !alias.scope !82082, !noalias !82091 ; 2 uses
  %i.l = add nsw i64 %2, -2
  %xtraiter135 = and i64 %i.g, 3, !dbg !82099     ; 3 uses
  %i.m = icmp ult i64 %i.l, 3, !dbg !82099
  br i1 %i.m, label %.epil.preheader134, label %.new133, !dbg !82099

.new133:                                          ; preds = %bb.f
  %unroll_iter140 = and i64 %i.g, -4, !dbg !82099
  br label %bb.g, !dbg !82099

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i8 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.y, %bb.g ], !dbg !82079 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.3, %bb.g ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.3, %bb.g ], !dbg !82100
  %niter141 = phi i64 [ 0, %.new133 ], [ %niter141.next.3, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !82101 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.in.i.i, !dbg !82102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82104), !dbg !82105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82106), !dbg !82105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82107), !dbg !82108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82109), !dbg !82108
  %.val2.i.i.i.i.i.i = load i8, ptr %i.n, align 1, !dbg !82079, !alias.scope !82110, !noalias !82111, !noundef !13 ; 2 uses
  %i.o = icmp ult i8 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !82112
  %.1.i.i.i.i.i.i = select i1 %i.o, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !82115
  %i.p = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i, i8 %.val2.i.i.i.i.i.i), !dbg !82079 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !82101 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.i.i, !dbg !82102
  %.val2.i.i.i.i.i.i.1 = load i8, ptr %i.q, align 1, !dbg !82079, !alias.scope !82116, !noalias !82119, !noundef !13 ; 2 uses
  %i.r = icmp ult i8 %i.p, %.val2.i.i.i.i.i.i.1, !dbg !82112
  %.1.i.i.i.i.i.i.1 = select i1 %i.r, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !82115
  %i.s = tail call i8 @llvm.umax.i8(i8 %i.p, i8 %.val2.i.i.i.i.i.i.1), !dbg !82079 ; 2 uses
  %.sroa.1.0.i.i.i.i.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 3, !dbg !82101 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.i.i.1, !dbg !82102
  %.val2.i.i.i.i.i.i.2 = load i8, ptr %i.t, align 1, !dbg !82079, !alias.scope !82122, !noalias !82125, !noundef !13 ; 2 uses
  %i.u = icmp ult i8 %i.s, %.val2.i.i.i.i.i.i.2, !dbg !82112
  %.1.i.i.i.i.i.i.2 = select i1 %i.u, i64 %.sroa.1.0.i.i.i.i.2, i64 %.1.i.i.i.i.i.i.1, !dbg !82115
  %i.v = tail call i8 @llvm.umax.i8(i8 %i.s, i8 %.val2.i.i.i.i.i.i.2), !dbg !82079 ; 2 uses
  %.sroa.1.0.i.i.i.i.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i, 4, !dbg !82101 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.i.i.2, !dbg !82102
  %.val2.i.i.i.i.i.i.3 = load i8, ptr %i.w, align 1, !dbg !82079, !alias.scope !82128, !noalias !82131, !noundef !13 ; 2 uses
  %i.x = icmp ult i8 %i.v, %.val2.i.i.i.i.i.i.3, !dbg !82112
  %.1.i.i.i.i.i.i.3 = select i1 %i.x, i64 %.sroa.1.0.i.i.i.i.3, i64 %.1.i.i.i.i.i.i.2, !dbg !82115 ; 3 uses
  %i.y = tail call i8 @llvm.umax.i8(i8 %i.v, i8 %.val2.i.i.i.i.i.i.3), !dbg !82079 ; 2 uses
  %niter141.next.3 = add i64 %niter141, 4, !dbg !82134 ; 2 uses
  %niter141.ncmp.3 = icmp eq i64 %niter141.next.3, %unroll_iter140, !dbg !82134
  br i1 %niter141.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !82134

bb.h:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !82135 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82141), !dbg !82144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82145), !dbg !82148
  %.val2.i.i.pre.i.i.i.i = load i8, ptr %1, align 1, !dbg !82150, !alias.scope !82154, !noalias !82163 ; 3 uses
  %i.aa = add nsw i64 %2, -2
  %xtraiter = and i64 %i.g, 3, !dbg !82171        ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 3, !dbg !82171
  br i1 %i.ab, label %.epil.preheader, label %.new, !dbg !82171

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.g, -4, !dbg !82171
  br label %bb.i, !dbg !82171

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i28 = phi i8 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.an, %bb.i ], !dbg !82150 ; 2 uses
  %.sroa.1.0.i.i.in.i.i29 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i32.3, %bb.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i31 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i35.3, %bb.i ], !dbg !82172
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.i ]
  %.sroa.1.0.i.i.i.i32 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 1, !dbg !82173 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.in.i.i29, !dbg !82174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82176), !dbg !82177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82178), !dbg !82177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82179), !dbg !82180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82181), !dbg !82180
  %.val.i.i.i.i.i.i33 = load i8, ptr %i.ac, align 1, !dbg !82150, !alias.scope !82182, !noalias !82183, !noundef !13 ; 2 uses
  %i.ad = icmp ult i8 %.val.i.i.i.i.i.i33, %.val2.i.i.i.i.i.i28, !dbg !82184
  %.1.i.i.i.i.i.i35 = select i1 %i.ad, i64 %.sroa.1.0.i.i.i.i32, i64 %.sroa.02.0.i.i.i.i31, !dbg !82187
  %i.ae = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i33, i8 %.val2.i.i.i.i.i.i28), !dbg !82150 ; 2 uses
  %.sroa.1.0.i.i.i.i32.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 2, !dbg !82173 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.i.i32, !dbg !82174
  %.val.i.i.i.i.i.i33.1 = load i8, ptr %i.af, align 1, !dbg !82150, !alias.scope !82188, !noalias !82191, !noundef !13 ; 2 uses
  %i.ag = icmp ult i8 %.val.i.i.i.i.i.i33.1, %i.ae, !dbg !82184
  %.1.i.i.i.i.i.i35.1 = select i1 %i.ag, i64 %.sroa.1.0.i.i.i.i32.1, i64 %.1.i.i.i.i.i.i35, !dbg !82187
  %i.ah = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i33.1, i8 %i.ae), !dbg !82150 ; 2 uses
  %.sroa.1.0.i.i.i.i32.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 3, !dbg !82173 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.i.i32.1, !dbg !82174
  %.val.i.i.i.i.i.i33.2 = load i8, ptr %i.ai, align 1, !dbg !82150, !alias.scope !82194, !noalias !82197, !noundef !13 ; 2 uses
  %i.aj = icmp ult i8 %.val.i.i.i.i.i.i33.2, %i.ah, !dbg !82184
  %.1.i.i.i.i.i.i35.2 = select i1 %i.aj, i64 %.sroa.1.0.i.i.i.i32.2, i64 %.1.i.i.i.i.i.i35.1, !dbg !82187
  %i.ak = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i33.2, i8 %i.ah), !dbg !82150 ; 2 uses
  %.sroa.1.0.i.i.i.i32.3 = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i29, 4, !dbg !82173 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.i.i32.2, !dbg !82174
  %.val.i.i.i.i.i.i33.3 = load i8, ptr %i.al, align 1, !dbg !82150, !alias.scope !82200, !noalias !82203, !noundef !13 ; 2 uses
  %i.am = icmp ult i8 %.val.i.i.i.i.i.i33.3, %i.ak, !dbg !82184
  %.1.i.i.i.i.i.i35.3 = select i1 %i.am, i64 %.sroa.1.0.i.i.i.i32.3, i64 %.1.i.i.i.i.i.i35.2, !dbg !82187 ; 3 uses
  %i.an = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i33.3, i8 %i.ak), !dbg !82150 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !82206  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !82206
  br i1 %niter.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa, label %bb.i, !dbg !82206

bb.j:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82207), !dbg !82210
  %i.ao = icmp samesign ult i64 %2, 17, !dbg !82211
  br i1 %i.ao, label %._crit_edge.i, label %.lr.ph.i.preheader, !dbg !82211

.lr.ph.i:                                         ; preds = %.backedge.i
  %i.ap = icmp eq i32 %i.ar, 0, !dbg !82215
  br i1 %i.ap, label %bb.k, label %.lr.ph.i.preheader, !dbg !82215

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.j
  %.sroa.16.0.lcssa.i = phi i64 [ %2, %bb.j ], [ %.sroa.16.0.be.i, %.backedge.i ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi ptr [ %1, %bb.j ], [ %.sroa.0.0.be.i, %.backedge.i ]
  %i.aq = icmp samesign ugt i64 %.sroa.16.0.lcssa.i, 1, !dbg !82216
  br i1 %i.aq, label %bb.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82216

bb.k:                                             ; preds = %.lr.ph.i
  call fastcc void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select17median_of_medianshNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0.be.i, i64 noundef %.sroa.16.0.be.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %.sroa.023.0.be.i), !dbg !82217
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82218

.lr.ph.i.preheader:                               ; preds = %bb.j, %.lr.ph.i
  %.sroa.031.020.i122 = phi i32 [ %i.ar, %.lr.ph.i ], [ 16, %bb.j ]
  %.sroa.029.021.i121 = phi ptr [ %.sroa.029.0.be.i, %.lr.ph.i ], [ null, %bb.j ] ; 3 uses
  %.sroa.023.022.i120 = phi i64 [ %.sroa.023.0.be.i, %.lr.ph.i ], [ %3, %bb.j ] ; 6 uses
  %.sroa.16.023.i119 = phi i64 [ %.sroa.16.0.be.i, %.lr.ph.i ], [ %2, %bb.j ] ; 12 uses
  %.sroa.0.024.i118 = phi ptr [ %.sroa.0.0.be.i, %.lr.ph.i ], [ %1, %bb.j ] ; 12 uses
  %i.ar = add nsw i32 %.sroa.031.020.i122, -1, !dbg !82220 ; 2 uses
  %i.as = lshr i64 %.sroa.16.023.i119, 3, !dbg !82221 ; 3 uses
  %i.at = shl nuw nsw i64 %i.as, 2, !dbg !82226
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.at, !dbg !82229 ; 3 uses
  %i.av = mul nuw nsw i64 %i.as, 7, !dbg !82232
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.av, !dbg !82234 ; 3 uses
  %i.ax = icmp samesign ult i64 %.sroa.16.023.i119, 64, !dbg !82236
  br i1 %i.ax, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3hNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, label %bb.l, !dbg !82236

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.ay = call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_rechNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noundef nonnull readonly %.sroa.0.024.i118, ptr noundef readonly %i.au, ptr noundef readonly %i.aw, i64 noundef %i.as), !dbg !82238
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivothNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !82239

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3hNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %.lr.ph.i.preheader
  %.val5.i.i = load i8, ptr %.sroa.0.024.i118, align 1, !dbg !82240, !alias.scope !82243, !noalias !82248, !noundef !13 ; 2 uses
  %.val6.i.i = load i8, ptr %i.au, align 1, !dbg !82240, !alias.scope !82251, !noalias !82252, !noundef !13 ; 2 uses
  %i.az = icmp ult i8 %.val5.i.i, %.val6.i.i, !dbg !82253 ; 2 uses
  %.val4.i.i = load i8, ptr %i.aw, align 1, !dbg !82256, !alias.scope !82251, !noalias !82252, !noundef !13 ; 2 uses
  %i.ba = icmp ult i8 %.val5.i.i, %.val4.i.i, !dbg !82258
  %i.bb = xor i1 %i.az, %i.ba, !dbg !82261
  %i.bc = icmp ult i8 %.val6.i.i, %.val4.i.i, !dbg !82261
  %i.bd = xor i1 %i.az, %i.bc, !dbg !82261
  %..i.i.i = select i1 %i.bd, ptr %i.aw, ptr %i.au, !dbg !82261
  %.sroa.0.0.i.i.i = select i1 %i.bb, ptr %.sroa.0.024.i118, ptr %..i.i.i, !dbg !82261
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivothNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !82239

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivothNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3hNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.l
  %.sroa.0.0.i.sink.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot7median3hNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %i.ay, %bb.l ]
  %i.be = ptrtoint ptr %.sroa.0.0.i.sink.i.i to i64, !dbg !82263
  %i.bf = ptrtoint ptr %.sroa.0.024.i118 to i64, !dbg !82263
  %i.bg = sub nuw i64 %i.be, %i.bf, !dbg !82263   ; 4 uses
  %i.bh = icmp ult i64 %i.bg, %.sroa.16.023.i119, !dbg !82266
  call void @llvm.assume(i1 %i.bh), !dbg !82268
  %.not.i = icmp eq ptr %.sroa.029.021.i121, null, !dbg !82271
  br i1 %.not.i, label %bb.m, label %bb.p, !dbg !82274

bb.m:                                             ; preds = %bb.p, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivothNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bi = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionhNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !dbg !82275 ; 7 uses
  %.not.i.i = icmp ugt i64 %i.bi, %.sroa.16.023.i119, !dbg !82276
  br i1 %.not.i.i, label %bb.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !82276, !prof !4881

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #50, !dbg !82282, !noalias !82283
  unreachable, !dbg !82282

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bi, !dbg !82287 ; 2 uses
  %.not.i38.i = icmp eq i64 %.sroa.16.023.i119, %i.bi, !dbg !82294
  br i1 %.not.i38.i, label %bb.o, label %bb.u, !dbg !82294, !prof !4881

bb.o:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #50, !dbg !82298, !noalias !82299
  unreachable, !dbg !82298

bb.p:                                             ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivothNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bg, !dbg !82303
  %.sroa.029.0.val.i = load i8, ptr %.sroa.029.021.i121, align 1, !dbg !82304, !alias.scope !82306, !noalias !82309, !noundef !13
  %.val.i = load i8, ptr %i.bk, align 1, !dbg !82304, !alias.scope !82311, !noalias !82312, !noundef !13
  %i.bl = icmp ult i8 %.sroa.029.0.val.i, %.val.i, !dbg !82313
  br i1 %i.bl, label %bb.m, label %bb.q, !dbg !82304

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !82316, !noalias !82317
  store ptr %i.d, ptr %i.a, align 8, !dbg !82316, !noalias !82317
  %i.bm = call noundef i64 @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9partitionhNCINvNtB6_6select23partition_at_index_loophNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0E0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.024.i118, i64 noundef %.sroa.16.023.i119, i64 noundef %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !82318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !82319, !noalias !82317
  %i.bn = add i64 %i.bm, 1, !dbg !82320           ; 6 uses
  %i.bo = icmp ugt i64 %i.bn, %.sroa.023.022.i120, !dbg !82322
  br i1 %i.bo, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, label %bb.r, !dbg !82322

bb.r:                                             ; preds = %bb.q
  %i.bp = icmp ugt i64 %i.bn, %.sroa.16.023.i119, !dbg !82324
  br i1 %i.bp, label %bb.t, label %bb.s, !dbg !82324, !prof !4881

bb.s:                                             ; preds = %bb.r
  %i.bq = sub nuw i64 %.sroa.16.023.i119, %i.bn, !dbg !82329
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i118, i64 %i.bn, !dbg !82330
  %i.bs = sub nuw i64 %.sroa.023.022.i120, %i.bn, !dbg !82335
  br label %.backedge.i, !dbg !82218

.backedge.i:                                      ; preds = %bb.w, %bb.v, %bb.s
  %.sroa.029.0.be.i = phi ptr [ null, %bb.s ], [ %i.bj, %bb.w ], [ %.sroa.029.021.i121, %bb.v ]
  %.sroa.023.0.be.i = phi i64 [ %i.bs, %bb.s ], [ %i.bz, %bb.w ], [ %.sroa.023.022.i120, %bb.v ] ; 2 uses
  %.sroa.16.0.be.i = phi i64 [ %i.bq, %bb.s ], [ %i.bx, %bb.w ], [ %i.bi, %bb.v ] ; 4 uses
  %.sroa.0.0.be.i = phi ptr [ %i.br, %bb.s ], [ %i.by, %bb.w ], [ %.sroa.0.024.i118, %bb.v ] ; 3 uses
  %i.bt = icmp ult i64 %.sroa.16.0.be.i, 17, !dbg !82211
  br i1 %i.bt, label %._crit_edge.i, label %.lr.ph.i, !dbg !82211

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.bn, i64 noundef %.sroa.16.023.i119, i64 noundef %.sroa.16.023.i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #50, !dbg !82336
  unreachable, !dbg !82336

bb.u:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit.i
  %i.bu = icmp ult i64 %i.bi, %.sroa.023.022.i120, !dbg !82337
  br i1 %i.bu, label %bb.w, label %bb.v, !dbg !82337

bb.v:                                             ; preds = %bb.u
  %i.bv = icmp ugt i64 %i.bi, %.sroa.023.022.i120, !dbg !82340
  br i1 %i.bv, label %.backedge.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82340

bb.w:                                             ; preds = %bb.u
  %i.bw = xor i64 %i.bi, -1, !dbg !82341          ; 2 uses
  %i.bx = add i64 %.sroa.16.023.i119, %i.bw, !dbg !82341
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 1, !dbg !82343
  %i.bz = add i64 %.sroa.023.022.i120, %i.bw, !dbg !82345
  br label %.backedge.i, !dbg !82346

bb.x:                                             ; preds = %._crit_edge.i
  call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_lefthNCINvMB8_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull %.sroa.0.0.lcssa.i, i64 noundef %.sroa.16.0.lcssa.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d), !dbg !82347
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82348

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa: ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !82206
  br i1 %lcmp.mod.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.epil.preheader, !dbg !82206

.epil.preheader:                                  ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa, %bb.h
  %.val2.i.i.i.i.i.i28.epil.init = phi i8 [ %.val2.i.i.pre.i.i.i.i, %bb.h ], [ %i.an, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i29.epil.init = phi i64 [ 0, %bb.h ], [ %.sroa.1.0.i.i.i.i32.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %.sroa.02.0.i.i.i.i31.epil.init = phi i64 [ 0, %bb.h ], [ %.1.i.i.i.i.i.i35.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter, 0, !dbg !82206
  tail call void @llvm.assume(i1 %lcmp.mod132), !dbg !82206
  br label %bb.y, !dbg !82206

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.val2.i.i.i.i.i.i28.epil = phi i8 [ %.val2.i.i.i.i.i.i28.epil.init, %.epil.preheader ], [ %i.cc, %bb.y ], !dbg !82150 ; 2 uses
  %.sroa.1.0.i.i.in.i.i29.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i29.epil.init, %.epil.preheader ], [ %.sroa.1.0.i.i.i.i32.epil, %bb.y ] ; 2 uses
  %.sroa.02.0.i.i.i.i31.epil = phi i64 [ %.sroa.02.0.i.i.i.i31.epil.init, %.epil.preheader ], [ %.1.i.i.i.i.i.i35.epil, %bb.y ], !dbg !82172
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %.sroa.1.0.i.i.i.i32.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i29.epil, 1, !dbg !82173 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.1.0.i.i.in.i.i29.epil, !dbg !82174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82176), !dbg !82177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82178), !dbg !82177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82179), !dbg !82180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82181), !dbg !82180
  %.val.i.i.i.i.i.i33.epil = load i8, ptr %i.ca, align 1, !dbg !82150, !alias.scope !82182, !noalias !82183, !noundef !13 ; 2 uses
  %i.cb = icmp ult i8 %.val.i.i.i.i.i.i33.epil, %.val2.i.i.i.i.i.i28.epil, !dbg !82184
  %.1.i.i.i.i.i.i35.epil = select i1 %i.cb, i64 %.sroa.1.0.i.i.i.i32.epil, i64 %.sroa.02.0.i.i.i.i31.epil, !dbg !82187 ; 2 uses
  %i.cc = tail call i8 @llvm.umin.i8(i8 %.val.i.i.i.i.i.i33.epil, i8 %.val2.i.i.i.i.i.i28.epil), !dbg !82150
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !82206 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !82206
  br i1 %epil.iter.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.y, !dbg !82206, !llvm.loop !82349

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %bb.y, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa
  %.1.i.i.i.i.i.i35.lcssa = phi i64 [ %.1.i.i.i.i.i.i35.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.unr-lcssa ], [ %.1.i.i.i.i.i.i35.epil, %bb.y ], !dbg !82187 ; 3 uses
  %i.cd = icmp ult i64 %.1.i.i.i.i.i.i35.lcssa, %2, !dbg !82350
  br i1 %i.cd, label %bb.aa, label %bb.z, !dbg !82350

bb.z:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.1.i.i.i.i.i.i35.lcssa, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #47, !dbg !82350
  unreachable

bb.aa:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9min_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i.i.i.i.i35.lcssa, !dbg !82354 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.ce, align 1, !dbg !82355
  store i8 %.val2.i.i.pre.i.i.i.i, ptr %i.ce, align 1, !dbg !82360
  store i8 %.sroa.0.0.copyload.i, ptr %1, align 1, !dbg !82362
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82364

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod137.not = icmp eq i64 %xtraiter135, 0, !dbg !82134
  br i1 %lcmp.mod137.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %.epil.preheader134, !dbg !82134

.epil.preheader134:                               ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, %bb.f
  %.val.i.i.i.i.i.i.epil.init = phi i8 [ %.val.i.i.pre.i.i.i.i, %bb.f ], [ %i.y, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ]
  %.sroa.1.0.i.i.in.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.sroa.1.0.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %bb.f ], [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter135, 0, !dbg !82134
  tail call void @llvm.assume(i1 %lcmp.mod139), !dbg !82134
  br label %bb.ab, !dbg !82134

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader134
  %.val.i.i.i.i.i.i.epil = phi i8 [ %.val.i.i.i.i.i.i.epil.init, %.epil.preheader134 ], [ %i.ch, %bb.ab ], !dbg !82079 ; 2 uses
  %.sroa.1.0.i.i.in.i.i.epil = phi i64 [ %.sroa.1.0.i.i.in.i.i.epil.init, %.epil.preheader134 ], [ %.sroa.1.0.i.i.i.i.epil, %bb.ab ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi i64 [ %.sroa.02.0.i.i.i.i.epil.init, %.epil.preheader134 ], [ %.1.i.i.i.i.i.i.epil, %bb.ab ], !dbg !82100
  %epil.iter136 = phi i64 [ 0, %.epil.preheader134 ], [ %epil.iter136.next, %bb.ab ]
  %.sroa.1.0.i.i.i.i.epil = add nuw nsw i64 %.sroa.1.0.i.i.in.i.i.epil, 1, !dbg !82101 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.1.0.i.i.in.i.i.epil, !dbg !82102
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82104), !dbg !82105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82106), !dbg !82105
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82107), !dbg !82108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82109), !dbg !82108
  %.val2.i.i.i.i.i.i.epil = load i8, ptr %i.cf, align 1, !dbg !82079, !alias.scope !82110, !noalias !82111, !noundef !13 ; 2 uses
  %i.cg = icmp ult i8 %.val.i.i.i.i.i.i.epil, %.val2.i.i.i.i.i.i.epil, !dbg !82112
  %.1.i.i.i.i.i.i.epil = select i1 %i.cg, i64 %.sroa.1.0.i.i.i.i.epil, i64 %.sroa.02.0.i.i.i.i.epil, !dbg !82115 ; 2 uses
  %i.ch = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.epil, i8 %.val2.i.i.i.i.i.i.epil), !dbg !82079
  %epil.iter136.next = add i64 %epil.iter136, 1, !dbg !82134 ; 2 uses
  %epil.iter136.cmp.not = icmp eq i64 %epil.iter136.next, %xtraiter135, !dbg !82134
  br i1 %epil.iter136.cmp.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.ab, !dbg !82134, !llvm.loop !82365

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, %bb.ab, %bb.e
  %i.ci = phi i64 [ 0, %bb.e ], [ %.1.i.i.i.i.i.i.3, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %bb.ab ] ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %2, !dbg !82366
  br i1 %i.cj, label %bb.ad, label %bb.ac, !dbg !82366

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #47, !dbg !82366
  unreachable

bb.ad:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexhNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci, !dbg !82369 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %3, !dbg !82370 ; 2 uses
  %.sroa.0.0.copyload.i37 = load i8, ptr %i.ck, align 1, !dbg !82372
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !82376
  store i8 %i.cm, ptr %i.ck, align 1, !dbg !82376
  store i8 %.sroa.0.0.copyload.i37, ptr %i.cl, align 1, !dbg !82378
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit, !dbg !82380

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.v, %bb.q, %bb.x, %bb.k, %._crit_edge.i, %bb.aa, %bb.ad
  %i.cn = load i64, ptr %i.e, align 8, !dbg !82381, !noundef !13 ; 5 uses
  %.not.i38 = icmp ugt i64 %i.cn, %2, !dbg !82382
  br i1 %.not.i38, label %bb.ae, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit, !dbg !82382, !prof !4881

bb.ae:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #50, !dbg !82385, !noalias !82386
  unreachable, !dbg !82385

_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select23partition_at_index_loophNCINvMB6_Sh22select_nth_unstable_byNvYhNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit
  %.not.i39 = icmp eq i64 %2, %i.cn, !dbg !82390
  br i1 %.not.i39, label %bb.af, label %bb.ag, !dbg !82390, !prof !4881

bb.af:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @60, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #50, !dbg !82394, !noalias !82395
  unreachable, !dbg !82394

bb.ag:                                            ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSh12split_at_mutCs1LHh8CLbVkQ_11polars_core.exit
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn, !dbg !82399 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1, !dbg !82402
  %i.cq = xor i64 %i.cn, -1, !dbg !82405
  %i.cr = add nsw i64 %2, %i.cq, !dbg !82405
  store ptr %1, ptr %0, align 8, !dbg !82406
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !82406
  store i64 %i.cn, ptr %i.cs, align 8, !dbg !82406
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !82406
  store ptr %i.co, ptr %i.ct, align 8, !dbg !82406
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !82406
  store ptr %i.cp, ptr %i.cu, align 8, !dbg !82406
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !82406
  store i64 %i.cr, ptr %i.cv, align 8, !dbg !82406
  ret void, !dbg !82409
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select18partition_at_indexlNCINvMB6_Sl22select_nth_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 4 %1, i64 noundef range(i64 0, 2305843009213693952) %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !82410 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %3, ptr %i.e, align 8
  store ptr %4, ptr %i.d, align 8
  store i64 %2, ptr %i.c, align 8, !dbg !82411
  %.not = icmp ult i64 %3, %2, !dbg !82412
  br i1 %.not, label %bb.c, label %bb.b, !dbg !82412, !prof !4995

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !82414
  store ptr %i.e, ptr %i.b, align 8, !dbg !82414
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !82414
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx, align 8, !dbg !82414
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !82414
  store ptr %i.c, ptr %i.f, align 8, !dbg !82414
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !82414
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !82414
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #47, !dbg !82417
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %2, -1, !dbg !82418
  %i.h = icmp eq i64 %3, %i.g, !dbg !82419
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !82419

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %3, 0, !dbg !82420
  br i1 %i.i, label %bb.h, label %bb.j, !dbg !82420

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !82421 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82427), !dbg !82430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82431), !dbg !82434
  %i.k = icmp eq i64 %2, 1, !dbg !82436
  br i1 %i.k, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexlNCINvMB6_Sl22select_nth_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread, label %bb.f, !dbg !82442

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw nsw i64 %2, 4611686018427387903, !dbg !82443 ; 3 uses
  %i.m = and i64 %i.l, 4611686018427387903, !dbg !82443
  %.val.i.i.pre.i.i.i.i = load i32, ptr %1, align 4, !dbg !82447, !alias.scope !82450, !noalias !82459 ; 2 uses
  %i.n = add nsw i64 %i.m, -1, !dbg !82467
  %xtraiter135 = and i64 %i.l, 3, !dbg !82467     ; 3 uses
  %i.o = icmp ult i64 %i.n, 3, !dbg !82467
  br i1 %i.o, label %.epil.preheader134, label %.new133, !dbg !82467

.new133:                                          ; preds = %bb.f
  %unroll_iter140 = and i64 %i.l, 4611686018427387900, !dbg !82467
  br label %bb.g, !dbg !82467

bb.g:                                             ; preds = %bb.g, %.new133
  %.val.i.i.i.i.i.i = phi i32 [ %.val.i.i.pre.i.i.i.i, %.new133 ], [ %i.aa, %bb.g ], !dbg !82447 ; 2 uses
  %.sroa.1.0.i.i.in.i.i = phi i64 [ 0, %.new133 ], [ %.sroa.1.0.i.i.i.i.3, %bb.g ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ 0, %.new133 ], [ %.1.i.i.i.i.i.i.3, %bb.g ], !dbg !82468
  %niter141 = phi i64 [ 0, %.new133 ], [ %niter141.next.3, %bb.g ]
  %.sroa.1.0.i.i.i.i = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 1, !dbg !82469 ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.1.0.i.i.in.i.i, !dbg !82470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82472), !dbg !82473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82474), !dbg !82473
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82475), !dbg !82476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82477), !dbg !82476
  %.val2.i.i.i.i.i.i = load i32, ptr %i.p, align 4, !dbg !82447, !alias.scope !82478, !noalias !82479, !noundef !13 ; 2 uses
  %i.q = icmp slt i32 %.val.i.i.i.i.i.i, %.val2.i.i.i.i.i.i, !dbg !82480
  %.1.i.i.i.i.i.i = select i1 %i.q, i64 %.sroa.1.0.i.i.i.i, i64 %.sroa.02.0.i.i.i.i, !dbg !82483
  %i.r = tail call i32 @llvm.smax.i32(i32 %.val.i.i.i.i.i.i, i32 %.val2.i.i.i.i.i.i), !dbg !82447 ; 2 uses
  %.sroa.1.0.i.i.i.i.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 2, !dbg !82469 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.1.0.i.i.i.i, !dbg !82470
  %.val2.i.i.i.i.i.i.1 = load i32, ptr %i.s, align 4, !dbg !82447, !alias.scope !82484, !noalias !82487, !noundef !13 ; 2 uses
  %i.t = icmp slt i32 %i.r, %.val2.i.i.i.i.i.i.1, !dbg !82480
  %.1.i.i.i.i.i.i.1 = select i1 %i.t, i64 %.sroa.1.0.i.i.i.i.1, i64 %.1.i.i.i.i.i.i, !dbg !82483
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %.val2.i.i.i.i.i.i.1), !dbg !82447 ; 2 uses
  %.sroa.1.0.i.i.i.i.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i, 3, !dbg !82469 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.1.0.i.i.i.i.1, !dbg !82470
  %.val2.i.i.i.i.i.i.2 = load i32, ptr %i.v, align 4, !dbg !82447, !alias.scope !82490, !noalias !82493, !noundef !13 ; 2 uses
  %i.w = icmp slt i32 %i.u, %.val2.i.i.i.i.i.i.2, !dbg !82480
  %.1.i.i.i.i.i.i.2 = select i1 %i.w, i64 %.sroa.1.0.i.i.i.i.2, i64 %.1.i.i.i.i.i.i.1, !dbg !82483
  %i.x = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %.val2.i.i.i.i.i.i.2), !dbg !82447 ; 2 uses
  %.sroa.1.0.i.i.i.i.3 = add nuw i64 %.sroa.1.0.i.i.in.i.i, 4, !dbg !82469 ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.1.0.i.i.i.i.2, !dbg !82470
  %.val2.i.i.i.i.i.i.3 = load i32, ptr %i.y, align 4, !dbg !82447, !alias.scope !82496, !noalias !82499, !noundef !13 ; 2 uses
  %i.z = icmp slt i32 %i.x, %.val2.i.i.i.i.i.i.3, !dbg !82480
  %.1.i.i.i.i.i.i.3 = select i1 %i.z, i64 %.sroa.1.0.i.i.i.i.3, i64 %.1.i.i.i.i.i.i.2, !dbg !82483 ; 3 uses
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.x, i32 %.val2.i.i.i.i.i.i.3), !dbg !82447 ; 2 uses
  %niter141.next.3 = add i64 %niter141, 4, !dbg !82502 ; 2 uses
  %niter141.ncmp.3 = icmp eq i64 %niter141.next.3, %unroll_iter140, !dbg !82502
  br i1 %niter141.ncmp.3, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6select9max_indexlNCINvMB6_Sl22select_nth_unstable_byNvYlNtNtCs2mZqlW55729_12polars_utils9total_ord8TotalOrd7tot_cmpE0ECs1LHh8CLbVkQ_11polars_core.exit.thread.loopexit.unr-lcssa, label %bb.g, !dbg !82502

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !82503 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82509), !dbg !82512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82513), !dbg !82516
  %i.ac = add nuw nsw i64 %2, 4611686018427387903, !dbg !82518 ; 3 uses
  %i.ad = and i64 %i.ac, 4611686018427387903, !dbg !82518
  %.val2.i.i.pre.i.i.i.i = load i32, ptr %1, align 4, !dbg !82523, !alias.scope !82526, !noalias !82535 ; 3 uses
  %i.ae = add nsw i64 %i.ad, -1, !dbg !82543
  %xtraiter = and i64 %i.ac, 3, !dbg !82543       ; 3 uses
  %i.af = icmp ult i64 %i.ae, 3, !dbg !82543
  br i1 %i.af, label %.epil.preheader, label %.new, !dbg !82543

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.ac, 4611686018427387900, !dbg !82543
  br label %bb.i, !dbg !82543

bb.i:                                             ; preds = %bb.i, %.new
  %.val2.i.i.i.i.i.i28 = phi i32 [ %.val2.i.i.pre.i.i.i.i, %.new ], [ %i.ar, %bb.i ], !dbg !82523 ; 2 uses
  %.sroa.1.0.i.i.in.i.i29 = phi i64 [ 0, %.new ], [ %.sroa.1.0.i.i.i.i32.3, %bb.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i31 = phi i64 [ 0, %.new ], [ %.1.i.i.i.i.i.i35.3, %bb.i ], !dbg !82544
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.i ]
  %.sroa.1.0.i.i.i.i32 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 1, !dbg !82545 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.1.0.i.i.in.i.i29, !dbg !82546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82548), !dbg !82549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82550), !dbg !82549
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82551), !dbg !82552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82553), !dbg !82552
  %.val.i.i.i.i.i.i33 = load i32, ptr %i.ag, align 4, !dbg !82523, !alias.scope !82554, !noalias !82555, !noundef !13 ; 2 uses
  %i.ah = icmp slt i32 %.val.i.i.i.i.i.i33, %.val2.i.i.i.i.i.i28, !dbg !82556
  %.1.i.i.i.i.i.i35 = select i1 %i.ah, i64 %.sroa.1.0.i.i.i.i32, i64 %.sroa.02.0.i.i.i.i31, !dbg !82559
  %i.ai = tail call i32 @llvm.smin.i32(i32 %.val.i.i.i.i.i.i33, i32 %.val2.i.i.i.i.i.i28), !dbg !82523 ; 2 uses
  %.sroa.1.0.i.i.i.i32.1 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 2, !dbg !82545 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.1.0.i.i.i.i32, !dbg !82546
  %.val.i.i.i.i.i.i33.1 = load i32, ptr %i.aj, align 4, !dbg !82523, !alias.scope !82560, !noalias !82563, !noundef !13 ; 2 uses
  %i.ak = icmp slt i32 %.val.i.i.i.i.i.i33.1, %i.ai, !dbg !82556
  %.1.i.i.i.i.i.i35.1 = select i1 %i.ak, i64 %.sroa.1.0.i.i.i.i32.1, i64 %.1.i.i.i.i.i.i35, !dbg !82559
  %i.al = tail call i32 @llvm.smin.i32(i32 %.val.i.i.i.i.i.i33.1, i32 %i.ai), !dbg !82523 ; 2 uses
  %.sroa.1.0.i.i.i.i32.2 = or disjoint i64 %.sroa.1.0.i.i.in.i.i29, 3, !dbg !82545 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.sroa.1.0.i.i.i.i32.1, !dbg !82546
  %.val.i.i.i.i.i.i33.2 = load i32, ptr %i.am, align 4, !dbg !82523, !alias.scope !82566, !noalias !82569, !noundef !13 ; 2 uses
  %i.an = icmp slt i32 %.val.i.i.i.i.i.i33.2, %i.al, !dbg !82556
  %.1.i.i.i.i.i.i35.2 = select i1 %i.an, i64 %.sroa.1.0.i.i.i.i32.2, i64 %.1.i.i.i.i.i.i35.1, !dbg !82559
  %i.ao = tail call i32 @llvm.smin.i32(i32 %.val.i.i.i.i.i.i33.2, i32 %i.al), !dbg !82523 ; 2 uses
end_hunk_3
