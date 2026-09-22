Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.15?download=true
inline.NumInlined: 14462
inline.NumDeleted: 3805
loop-unroll.NumCompletelyUnrolled: 212
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 291
begin_hunk_0_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB10_13chunked_array12ChunkedArrayNtNtB10_9datatypes10BinaryTypeE11agg_arg_max0INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutB10_:bb.a
  %.pre6.i.i = load i32, ptr %i.h, align 8, !dbg !356063, !noalias !355993
  %i.bc = icmp ne ptr %.pre.i.i, null, !dbg !356071
  %i.bd = zext i1 %i.bc to i32, !dbg !356063
  br label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_max0s_0EB3B_.exit.i, !dbg !356063

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #55, !dbg !356072, !noalias !355993
  unreachable

_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_max0s_0EB3B_.exit.i: ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_max0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_max0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i
  %.not59.i.i = phi i32 [ 0, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_max0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i ], [ %i.bd, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_max0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i ]
  %i.be = phi i32 [ undef, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_max0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i ], [ %.pre6.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_max0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i ], !dbg !356063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !356073, !noalias !355993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !356074, !noalias !355993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !356075, !noalias !355993
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_max0Bc_.exit, !dbg !356076

bb.j:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !356077
  %i.bg = load i32, ptr %i.bf, align 4, !dbg !356077, !range !10472, !alias.scope !355993, !noundef !8787
  %i.bh = icmp eq i32 %i.bg, 1, !dbg !356078
  %i.bi = load ptr, ptr %2, align 8, !dbg !356078, !alias.scope !355993
  %.sroa.01.0.i = select i1 %i.bh, ptr %2, ptr %i.bi, !dbg !356078 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i) ], !dbg !356079
  %.idx.i = shl nuw nsw i64 %i.o, 2, !dbg !356080
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %.idx.i, !dbg !356080
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !356081, !noalias !355993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !356081, !noalias !355993
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !356082
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i6.i, align 8, !dbg !356082, !noalias !355993
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !356082
  store ptr %.val, ptr %i.bk, align 8, !dbg !356082, !noalias !355993
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356008), !dbg !356083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !356084, !noalias !355993
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356009), !dbg !356084
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356010), !dbg !356085
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356011), !dbg !356086
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !356082
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 4, !dbg !356087
  store ptr %i.bl, ptr %i.b, align 8, !dbg !356088, !alias.scope !356012, !noalias !356013
  %.val.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i, align 4, !dbg !356089, !noalias !356014, !noundef !8787
  %i.bm = zext i32 %.val.i.i.i.i.i.i to i64, !dbg !356090 ; 2 uses
  store i64 1, ptr %.sroa.5.0..sroa_idx.i7.i, align 8, !dbg !356091, !alias.scope !356015, !noalias !356013
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 40, !dbg !356092
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !356092, !noalias !356016, !noundef !8787
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !356093
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !356093, !noalias !356016, !noundef !8787
  %i.br = icmp ugt i64 %i.bq, %i.bm, !dbg !356094
  tail call void @llvm.assume(i1 %i.br), !dbg !356095
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bm, !dbg !356096 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 64, !dbg !356097
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !356097, !noalias !356016, !noundef !8787
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !356098
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !356098, !noalias !356016, !noundef !8787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356018), !dbg !356099
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356019), !dbg !356099
  %i.bx = load i32, ptr %i.bs, align 4, !dbg !356100, !alias.scope !356018, !noalias !356020, !noundef !8787 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 13, !dbg !356100
  br i1 %i.by, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i, !dbg !356100

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i: ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 4, !dbg !356101
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i, !dbg !356102

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i: ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !356103
  %i.cb = load i32, ptr %i.ca, align 4, !dbg !356103, !alias.scope !356018, !noalias !356020, !noundef !8787
  %i.cc = zext i32 %i.cb to i64, !dbg !356103     ; 2 uses
  %i.cd = icmp samesign ugt i64 %i.bw, %i.cc, !dbg !356104
  tail call void @llvm.assume(i1 %i.cd), !dbg !356105
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.cc, !dbg !356106
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 12, !dbg !356107
  %i.cg = load i32, ptr %i.cf, align 4, !dbg !356107, !alias.scope !356018, !noalias !356020, !noundef !8787
  %i.ch = zext i32 %i.cg to i64, !dbg !356107
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8, !dbg !356108
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !356108, !alias.scope !356021, !noalias !356022, !noundef !8787 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch, !dbg !356109
  %.not.i.i8.i = icmp eq ptr %i.cj, null, !dbg !356110
  br i1 %.not.i.i8.i, label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_max00EB3J_.exit.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i, !dbg !356102

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i
  %.sroa.0.0.i.i.i18.i.i.i = phi ptr [ %i.bz, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i ], [ %i.ck, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i ]
  %.sroa.3.0.i.i.i19.i.i.i = zext i32 %i.bx to i64, !dbg !356111
  store i32 0, ptr %i.a, align 8, !dbg !356112, !noalias !356023
  %.sroa.68.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !356112
  store ptr %.sroa.0.0.i.i.i18.i.i.i, ptr %.sroa.68.0..sroa_idx.i.i.i, align 8, !dbg !356112, !noalias !356023
  %.sroa.79.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !356112
  store i64 %.sroa.3.0.i.i.i19.i.i.i, ptr %.sroa.79.0..sroa_idx.i.i.i, align 8, !dbg !356112, !noalias !356023
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB21_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1p_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4w_13chunked_array12ChunkedArrayNtNtB4w_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtBa_6traits8iterator8Iterator4foldTmRShEB4h_EB4w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !356113
  %.phi.trans.insert.i9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i10.i = load ptr, ptr %.phi.trans.insert.i9.i, align 8, !dbg !356114, !noalias !355993
  %.pre3.i.i = load i32, ptr %i.c, align 8, !dbg !356115, !noalias !355993
  %i.cl = icmp ne ptr %.pre.i10.i, null, !dbg !356114
  %i.cm = zext i1 %i.cl to i32, !dbg !356115
  br label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_max00EB3J_.exit.i, !dbg !356115

_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_max00EB3J_.exit.i: ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i
  %.not6.i.i = phi i32 [ %i.cm, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i ], [ 0, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i ]
  %i.cn = phi i32 [ %.pre3.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i ], [ undef, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i ], !dbg !356115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !356116, !noalias !355993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !356117, !noalias !355993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !356118, !noalias !355993
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_max0Bc_.exit, !dbg !356076

_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_max0Bc_.exit: ; preds = %bb.a, %bb.f, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_max0s_0EB3B_.exit.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_max00EB3J_.exit.i
  %.sroa.6.0.i = phi i32 [ %i.be, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_max0s_0EB3B_.exit.i ], [ undef, %bb.a ], [ %i.cn, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_max00EB3J_.exit.i ], [ 0, %bb.f ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356119
  %.sroa.0.0.i = phi i32 [ %.not59.i.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_max0s_0EB3B_.exit.i ], [ 0, %bb.a ], [ %.not6.i.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_max00EB3J_.exit.i ], [ 1, %bb.f ], [ %spec.select.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356119
  %i.co = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0, !dbg !356120
  %i.cp = insertvalue { i32, i32 } %i.co, i32 %.sroa.6.0.i, 1, !dbg !356120
  ret { i32, i32 } %i.cp, !dbg !356121
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB10_13chunked_array12ChunkedArrayNtNtB10_9datatypes10BinaryTypeE11agg_arg_maxs_0INtB6_5FnMutTAmj2_EE8call_mutB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !356122 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !356156, !nonnull !8787, !align !8965, !noundef !8787 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8, !dbg !356157
  %.val = load ptr, ptr %i.c, align 8, !dbg !356157 ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16, !dbg !356157
  %.val4 = load ptr, ptr %i.d, align 8, !dbg !356157 ; 4 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32    ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32 ; 2 uses
  switch i32 %.sroa.4.0.extract.trunc.i, label %bb.b [
    i32 0, label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_maxs_0Bc_.exit
    i32 1, label %bb.c
  ], !dbg !356158

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !356159
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.e = load i64, ptr %.val4, align 8, !dbg !356160, !range !8871, !noundef !8787
  %.not.i = icmp eq i64 %i.e, -9223372036854775808, !dbg !356160
  br i1 %.not.i, label %bb.f, label %bb.g, !dbg !356161

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = and i64 %1, 4294967295, !dbg !356162     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !356163
  %i.h = load i64, ptr %i.g, align 8, !dbg !356163, !noundef !8787
  %i.i = icmp ult i64 %i.f, %i.h, !dbg !356164
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !356164, !prof !9001

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #57, !dbg !356165
  unreachable, !dbg !356165

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 80, !dbg !356166
  %i.k = load ptr, ptr %i.j, align 8, !dbg !356166, !noundef !8787 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null, !dbg !356166
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_maxs_0Bc_.exit, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !356167

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !356168
  %i.m = load i64, ptr %i.l, align 8, !dbg !356168, !noundef !8787
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !356169
  %i.o = load ptr, ptr %i.n, align 8, !dbg !356169, !noundef !8787
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 88, !dbg !356170
  %i.q = load i64, ptr %i.p, align 8, !dbg !356170, !noundef !8787
  %i.r = add i64 %i.q, %i.f, !dbg !356170         ; 2 uses
  %i.s = lshr i64 %i.r, 3, !dbg !356171           ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.m, !dbg !356172
  tail call void @llvm.assume(i1 %i.t), !dbg !356173
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s, !dbg !356174
  %i.v = load i8, ptr %i.u, align 1, !dbg !356175, !noundef !8787
  %i.w = trunc i64 %i.r to i8, !dbg !356176
  %i.x = and i8 %i.w, 7, !dbg !356176
  %i.y = xor i8 %i.v, -1, !dbg !356177
  %i.z = lshr i8 %i.y, %i.x, !dbg !356177
  %.fr.i = freeze i8 %i.z, !dbg !356178
  %i.aa = and i8 %.fr.i, 1, !dbg !356179
  %i.ab = xor i8 %i.aa, 1, !dbg !356179
  %spec.select.i = zext nneg i8 %i.ab to i32, !dbg !356179
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_maxs_0Bc_.exit, !dbg !356179

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !356180
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !356180, !nonnull !8787, !align !8965, !noundef !8787
  br label %bb.g, !dbg !356181

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i = phi ptr [ %i.ad, %bb.f ], [ %.val4, %bb.b ], !dbg !356182
  %i.ae = and i64 %1, 4294967295, !dbg !356183
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10BinaryTypeE5sliceB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %.sroa.06.0.i, i64 noundef %i.ae, i64 noundef %.sroa.4.0.extract.shift.i), !dbg !356184
  %i.af = invoke { i64, i64 } @_RNvMse_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB9_12ChunkedArrayNtNtBb_9datatypes10BinaryTypeE14arg_max_binary(ptr noundef nonnull align 8 %i.a)
          to label %bb.i unwind label %bb.h, !dbg !356185 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a) #52
          to label %bb.k unwind label %bb.j, !dbg !356186

bb.i:                                             ; preds = %bb.g
  %i.ah = extractvalue { i64, i64 } %i.af, 0, !dbg !356187 ; 2 uses
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !356188
  %i.aj = extractvalue { i64, i64 } %i.af, 1, !dbg !356188
  %i.ak = trunc i64 %i.aj to i32, !dbg !356188
  %.sroa.6.1.i = select i1 %i.ai, i32 %i.ak, i32 undef, !dbg !356188
  %i.al = trunc i64 %i.ah to i32, !dbg !356188
  %.sroa.02.1.i = and i32 %i.al, 1, !dbg !356188
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a), !dbg !356186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !356186
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_maxs_0Bc_.exit, !dbg !356186

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !356189
  unreachable, !dbg !356189

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ag, !dbg !356189

_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_maxs_0Bc_.exit: ; preds = %bb.a, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.i
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %bb.i ], [ undef, %bb.a ], [ 0, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356190
  %.sroa.02.0.i = phi i32 [ %.sroa.02.1.i, %bb.i ], [ %.sroa.4.0.extract.trunc.i, %bb.a ], [ 1, %bb.e ], [ %spec.select.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356190
  %i.an = insertvalue { i32, i32 } poison, i32 %.sroa.02.0.i, 0, !dbg !356191
  %i.ao = insertvalue { i32, i32 } %i.an, i32 %.sroa.6.0.i, 1, !dbg !356191
  ret { i32, i32 } %i.ao, !dbg !356192
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB10_13chunked_array12ChunkedArrayNtNtB10_9datatypes10BinaryTypeE11agg_arg_min0INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !356193 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = load ptr, ptr %0, align 8, !dbg !356416, !nonnull !8787, !align !8965, !noundef !8787 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8, !dbg !356417
  %.val = load ptr, ptr %i.j, align 8, !dbg !356417 ; 12 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16, !dbg !356417
  %.val1 = load ptr, ptr %i.k, align 8, !dbg !356417 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356385), !dbg !356417
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !356418
  %i.m = load i32, ptr %i.l, align 8, !dbg !356418, !alias.scope !356385, !noundef !8787 ; 3 uses
  %i.n = icmp eq i32 %i.m, 0, !dbg !356419
  br i1 %i.n, label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_min0Bc_.exit, label %bb.b, !dbg !356419

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %i.m to i64, !dbg !356420       ; 2 uses
  %i.p = icmp eq i32 %i.m, 1, !dbg !356421
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !356421

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.q = zext i32 %1 to i64, !dbg !356422         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !356423
  %i.s = load i64, ptr %i.r, align 8, !dbg !356423, !noalias !356385, !noundef !8787
  %i.t = icmp ugt i64 %i.s, %i.q, !dbg !356424
  br i1 %i.t, label %bb.f, label %bb.e, !dbg !356424, !prof !9001

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.u = load i8, ptr %.val1, align 1, !dbg !356425, !range !9324, !noalias !356385, !noundef !8787
  %i.v = trunc nuw i8 %i.u to i1, !dbg !356425
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %i.v, label %bb.j, label %bb.g, !dbg !356425

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #57, !dbg !356426, !noalias !356385
  unreachable, !dbg !356426

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 80, !dbg !356427
  %i.x = load ptr, ptr %i.w, align 8, !dbg !356427, !noalias !356385, !noundef !8787 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null, !dbg !356427
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_min0Bc_.exit, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !356428

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40, !dbg !356429
  %i.z = load i64, ptr %i.y, align 8, !dbg !356429, !noalias !356385, !noundef !8787
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !356430
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !356430, !noalias !356385, !noundef !8787
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 88, !dbg !356431
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !356431, !noalias !356385, !noundef !8787
  %i.ae = add i64 %i.ad, %i.q, !dbg !356431       ; 2 uses
  %i.af = lshr i64 %i.ae, 3, !dbg !356432         ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.z, !dbg !356433
  tail call void @llvm.assume(i1 %i.ag), !dbg !356434
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af, !dbg !356435
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !356436, !noalias !356385, !noundef !8787
  %i.aj = trunc i64 %i.ae to i8, !dbg !356437
  %i.ak = and i8 %i.aj, 7, !dbg !356437
  %i.al = xor i8 %i.ai, -1, !dbg !356438
  %i.am = lshr i8 %i.al, %i.ak, !dbg !356438
  %.fr.i = freeze i8 %i.am, !dbg !356439
  %i.an = and i8 %.fr.i, 1, !dbg !356440
  %i.ao = xor i8 %i.an, 1, !dbg !356440
  %spec.select.i = zext nneg i8 %i.ao to i32, !dbg !356440
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_min0Bc_.exit, !dbg !356440

bb.g:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 80, !dbg !356441 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !356441, !noalias !356385, !noundef !8787
  %.not.i.i = icmp eq ptr %i.aq, null, !dbg !356441
  br i1 %.not.i.i, label %bb.i, label %bb.h, !dbg !356442, !prof !8988

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !356443
  %i.as = load i32, ptr %i.ar, align 4, !dbg !356443, !range !10472, !alias.scope !356385, !noundef !8787
  %i.at = icmp eq i32 %i.as, 1, !dbg !356444
  %i.au = load ptr, ptr %2, align 8, !dbg !356444, !alias.scope !356385
  %.sroa.02.0.i = select i1 %i.at, ptr %2, ptr %i.au, !dbg !356444 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.02.0.i, i64 %i.o, !dbg !356445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !356446, !noalias !356385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !356446, !noalias !356385
  store ptr %.sroa.02.0.i, ptr %i.g, align 8, !dbg !356447, !noalias !356385
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !356447 ; 2 uses
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !356447, !noalias !356385
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !356447 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !356447, !noalias !356385
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !356447 ; 3 uses
  store ptr %i.ap, ptr %i.aw, align 8, !dbg !356447, !noalias !356385
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !356447
  store ptr %.val, ptr %i.ax, align 8, !dbg !356447, !noalias !356385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356393), !dbg !356448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !356449, !noalias !356385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !356450, !noalias !356394
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_9enumerateINtB3p_9EnumeratepEB2x_8try_fold9enumeratejuINtNtNtBc_3ops12control_flow11ControlFlowTmRShEENCINvNvB2x_8find_map5checkTjjEB51_QNCINvNtNtB1v_7kernels8take_agg31take_agg_bin_iter_unchecked_argBN_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB70_13chunked_array12ChunkedArrayNtNtB70_9datatypes10BinaryTypeE11agg_arg_min0s_0E0E0E0B4m_EB70_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i), !dbg !356451, !noalias !356395
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !356452
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !356452, !noalias !356394, !noundef !8787 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null, !dbg !356452
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i, !dbg !356453

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !356454, !noalias !356394
  br label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_min0s_0EB3B_.exit.i, !dbg !356455

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i: ; preds = %bb.h
  %.sroa.0.0.copyload3.i.i.i = load i64, ptr %i.e, align 8, !dbg !356456, !noalias !356396
  %.sroa.7.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !356456
  %.sroa.7.0.copyload7.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx6.i.i.i, align 8, !dbg !356456, !noalias !356396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !356454, !noalias !356394
  store i64 %.sroa.0.0.copyload3.i.i.i, ptr %i.f, align 8, !dbg !356457, !noalias !356397
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !356457
  store ptr %i.az, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !dbg !356457, !noalias !356397
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !356457
  store i64 %.sroa.7.0.copyload7.i.i.i, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !dbg !356457, !noalias !356397
  %.sroa.08.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !dbg !356458, !alias.scope !356393, !noalias !356398, !nonnull !8787, !noundef !8787
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !356458, !alias.scope !356393, !noalias !356398
  %.sroa.59.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !356458, !alias.scope !356393, !noalias !356398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !356459, !noalias !356399
  %i.ba = load <2 x ptr>, ptr %i.aw, align 8, !dbg !356458, !alias.scope !356393, !noalias !356398
  store <2 x ptr> %i.ba, ptr %i.d, align 16, !dbg !356460, !noalias !356399
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !356460
  store i64 %.sroa.59.0.copyload.i.i.i, ptr %i.bb, align 16, !dbg !356460, !noalias !356399
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0ENtNtNtBa_6traits8iterator8Iterator4foldTmRShENCINvNvXs_NtB8_9enumerateINtB3q_9EnumeratepEB2x_4fold9enumeratejB3a_NCINvNtB8_10filter_map15filter_map_foldTjjEB3a_B3a_NCINvNtNtB1v_7kernels8take_agg31take_agg_bin_iter_unchecked_argBN_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB6u_13chunked_array12ChunkedArrayNtNtB6u_9datatypes10BinaryTypeE11agg_arg_min0s_0E0B6f_E0E0EB6u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull %.sroa.08.0.copyload.i.i.i, ptr noundef %.sroa.4.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !dbg !356461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !356462, !noalias !356399
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !dbg !356463, !noalias !356385
  %.pre6.i.i = load i32, ptr %i.h, align 8, !dbg !356455, !noalias !356385
  %i.bc = icmp ne ptr %.pre.i.i, null, !dbg !356463
  %i.bd = zext i1 %i.bc to i32, !dbg !356455
  br label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_min0s_0EB3B_.exit.i, !dbg !356455

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #55, !dbg !356464, !noalias !356385
  unreachable

_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_min0s_0EB3B_.exit.i: ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i
  %.not59.i.i = phi i32 [ 0, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i ], [ %i.bd, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i ]
  %i.be = phi i32 [ undef, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.thread.i.i ], [ %.pre6.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtB8_3map3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB2l_7kernels8take_agg31take_agg_bin_iter_unchecked_argB1x_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4I_13chunked_array12ChunkedArrayNtNtB4I_9datatypes10BinaryTypeE11agg_arg_min0s_0E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4t_EB4I_.exit.i.i ], !dbg !356455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !356465, !noalias !356385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !356466, !noalias !356385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !356467, !noalias !356385
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_min0Bc_.exit, !dbg !356468

bb.j:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !356469
  %i.bg = load i32, ptr %i.bf, align 4, !dbg !356469, !range !10472, !alias.scope !356385, !noundef !8787
  %i.bh = icmp eq i32 %i.bg, 1, !dbg !356470
  %i.bi = load ptr, ptr %2, align 8, !dbg !356470, !alias.scope !356385
  %.sroa.01.0.i = select i1 %i.bh, ptr %2, ptr %i.bi, !dbg !356470 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i) ], !dbg !356471
  %.idx.i = shl nuw nsw i64 %i.o, 2, !dbg !356472
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 %.idx.i, !dbg !356472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !356473, !noalias !356385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !356473, !noalias !356385
  %.sroa.4.0..sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !356474
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i6.i, align 8, !dbg !356474, !noalias !356385
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !356474
  store ptr %.val, ptr %i.bk, align 8, !dbg !356474, !noalias !356385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356400), !dbg !356475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !356476, !noalias !356385
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356401), !dbg !356476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356402), !dbg !356477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356403), !dbg !356478
  %.sroa.5.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !356474
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 4, !dbg !356479
  store ptr %i.bl, ptr %i.b, align 8, !dbg !356480, !alias.scope !356404, !noalias !356405
  %.val.i.i.i.i.i.i = load i32, ptr %.sroa.01.0.i, align 4, !dbg !356481, !noalias !356406, !noundef !8787
  %i.bm = zext i32 %.val.i.i.i.i.i.i to i64, !dbg !356482 ; 2 uses
  store i64 1, ptr %.sroa.5.0..sroa_idx.i7.i, align 8, !dbg !356483, !alias.scope !356407, !noalias !356405
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 40, !dbg !356484
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !356484, !noalias !356408, !noundef !8787
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !356485
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !356485, !noalias !356408, !noundef !8787
  %i.br = icmp ugt i64 %i.bq, %i.bm, !dbg !356486
  tail call void @llvm.assume(i1 %i.br), !dbg !356487
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bm, !dbg !356488 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 64, !dbg !356489
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !356489, !noalias !356408, !noundef !8787
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !356490
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !356490, !noalias !356408, !noundef !8787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356410), !dbg !356491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356411), !dbg !356491
  %i.bx = load i32, ptr %i.bs, align 4, !dbg !356492, !alias.scope !356410, !noalias !356412, !noundef !8787 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 13, !dbg !356492
  br i1 %i.by, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i, !dbg !356492

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i: ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 4, !dbg !356493
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i, !dbg !356494

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i: ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !356495
  %i.cb = load i32, ptr %i.ca, align 4, !dbg !356495, !alias.scope !356410, !noalias !356412, !noundef !8787
  %i.cc = zext i32 %i.cb to i64, !dbg !356495     ; 2 uses
  %i.cd = icmp samesign ugt i64 %i.bw, %i.cc, !dbg !356496
  tail call void @llvm.assume(i1 %i.cd), !dbg !356497
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.cc, !dbg !356498
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 12, !dbg !356499
  %i.cg = load i32, ptr %i.cf, align 4, !dbg !356499, !alias.scope !356410, !noalias !356412, !noundef !8787
  %i.ch = zext i32 %i.cg to i64, !dbg !356499
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8, !dbg !356500
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !356500, !alias.scope !356413, !noalias !356414, !noundef !8787 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch, !dbg !356501
  %.not.i.i8.i = icmp eq ptr %i.cj, null, !dbg !356502
  br i1 %.not.i.i8.i, label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_min00EB3J_.exit.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i, !dbg !356494

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i
  %.sroa.0.0.i.i.i18.i.i.i = phi ptr [ %i.bz, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.thread14.i.i.i ], [ %i.ck, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i ]
  %.sroa.3.0.i.i.i19.i.i.i = zext i32 %i.bx to i64, !dbg !356503
  store i32 0, ptr %i.a, align 8, !dbg !356504, !noalias !356415
  %.sroa.68.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !356504
  store ptr %.sroa.0.0.i.i.i18.i.i.i, ptr %.sroa.68.0..sroa_idx.i.i.i, align 8, !dbg !356504, !noalias !356415
  %.sroa.79.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !356504
  store i64 %.sroa.3.0.i.i.i19.i.i.i, ptr %.sroa.79.0..sroa_idx.i.i.i, align 8, !dbg !356504, !noalias !356415
  call void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB21_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1p_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4w_13chunked_array12ChunkedArrayNtNtB4w_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtBa_6traits8iterator8Iterator4foldTmRShEB4h_EB4w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !356505
  %.phi.trans.insert.i9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre.i10.i = load ptr, ptr %.phi.trans.insert.i9.i, align 8, !dbg !356506, !noalias !356385
  %.pre3.i.i = load i32, ptr %i.c, align 8, !dbg !356507, !noalias !356385
  %i.cl = icmp ne ptr %.pre.i10.i, null, !dbg !356506
  %i.cm = zext i1 %i.cl to i32, !dbg !356507
  br label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_min00EB3J_.exit.i, !dbg !356507

_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_min00EB3J_.exit.i: ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i
  %.not6.i.i = phi i32 [ %i.cm, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i ], [ 0, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i ]
  %i.cn = phi i32 [ %.pre3.i.i, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB8_9enumerate9EnumerateIB4_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB1V_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1j_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4q_13chunked_array12ChunkedArrayNtNtB4q_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtBa_6traits8iterator8Iterator6reduceB4b_EB4q_.exit.i.i ], [ undef, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0EENCINvNtNtB20_7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argB1o_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB4v_13chunked_array12ChunkedArrayNtNtB4v_9datatypes10BinaryTypeE11agg_arg_min00E0ENtNtNtB9_6traits8iterator8Iterator4nextB4v_.exit.i.i.i ], !dbg !356507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !356508, !noalias !356385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !356509, !noalias !356385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !356510, !noalias !356385
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_min0Bc_.exit, !dbg !356468

_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_min0Bc_.exit: ; preds = %bb.a, %bb.f, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_min0s_0EB3B_.exit.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_min00EB3J_.exit.i
  %.sroa.6.0.i = phi i32 [ %i.be, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_min0s_0EB3B_.exit.i ], [ undef, %bb.a ], [ %i.cn, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_min00EB3J_.exit.i ], [ 0, %bb.f ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356511
  %.sroa.0.0.i = phi i32 [ %.not59.i.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg31take_agg_bin_iter_unchecked_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3B_13chunked_array12ChunkedArrayNtNtB3B_9datatypes10BinaryTypeE11agg_arg_min0s_0EB3B_.exit.i ], [ 0, %bb.a ], [ %.not6.i.i, %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg39take_agg_bin_iter_unchecked_no_null_argINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3J_13chunked_array12ChunkedArrayNtNtB3J_9datatypes10BinaryTypeE11agg_arg_min00EB3J_.exit.i ], [ 1, %bb.f ], [ %spec.select.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356511
  %i.co = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0, !dbg !356512
  %i.cp = insertvalue { i32, i32 } %i.co, i32 %.sroa.6.0.i, 1, !dbg !356512
  ret { i32, i32 } %i.cp, !dbg !356513
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB10_13chunked_array12ChunkedArrayNtNtB10_9datatypes10BinaryTypeE11agg_arg_mins_0INtB6_5FnMutTAmj2_EE8call_mutB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !356514 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !356548, !nonnull !8787, !align !8965, !noundef !8787 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8, !dbg !356549
  %.val = load ptr, ptr %i.c, align 8, !dbg !356549 ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16, !dbg !356549
  %.val4 = load ptr, ptr %i.d, align 8, !dbg !356549 ; 4 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32    ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32 ; 2 uses
  switch i32 %.sroa.4.0.extract.trunc.i, label %bb.b [
    i32 0, label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_mins_0Bc_.exit
    i32 1, label %bb.c
  ], !dbg !356550

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !356551
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.e = load i64, ptr %.val4, align 8, !dbg !356552, !range !8871, !noundef !8787
  %.not.i = icmp eq i64 %i.e, -9223372036854775808, !dbg !356552
  br i1 %.not.i, label %bb.f, label %bb.g, !dbg !356553

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = and i64 %1, 4294967295, !dbg !356554     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !356555
  %i.h = load i64, ptr %i.g, align 8, !dbg !356555, !noundef !8787
  %i.i = icmp ult i64 %i.f, %i.h, !dbg !356556
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !356556, !prof !9001

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #57, !dbg !356557
  unreachable, !dbg !356557

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 80, !dbg !356558
  %i.k = load ptr, ptr %i.j, align 8, !dbg !356558, !noundef !8787 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null, !dbg !356558
  br i1 %.not.i.i.i, label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_mins_0Bc_.exit, label %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i, !dbg !356559

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !356560
  %i.m = load i64, ptr %i.l, align 8, !dbg !356560, !noundef !8787
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !356561
  %i.o = load ptr, ptr %i.n, align 8, !dbg !356561, !noundef !8787
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 88, !dbg !356562
  %i.q = load i64, ptr %i.p, align 8, !dbg !356562, !noundef !8787
  %i.r = add i64 %i.q, %i.f, !dbg !356562         ; 2 uses
  %i.s = lshr i64 %i.r, 3, !dbg !356563           ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.m, !dbg !356564
  tail call void @llvm.assume(i1 %i.t), !dbg !356565
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s, !dbg !356566
  %i.v = load i8, ptr %i.u, align 1, !dbg !356567, !noundef !8787
  %i.w = trunc i64 %i.r to i8, !dbg !356568
  %i.x = and i8 %i.w, 7, !dbg !356568
  %i.y = xor i8 %i.v, -1, !dbg !356569
  %i.z = lshr i8 %i.y, %i.x, !dbg !356569
  %.fr.i = freeze i8 %i.z, !dbg !356570
  %i.aa = and i8 %.fr.i, 1, !dbg !356571
  %i.ab = xor i8 %i.aa, 1, !dbg !356571
  %spec.select.i = zext nneg i8 %i.ab to i32, !dbg !356571
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_mins_0Bc_.exit, !dbg !356571

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.val4, i64 8, !dbg !356572
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !356572, !nonnull !8787, !align !8965, !noundef !8787
  br label %bb.g, !dbg !356573

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.06.0.i = phi ptr [ %i.ad, %bb.f ], [ %.val4, %bb.b ], !dbg !356574
  %i.ae = and i64 %1, 4294967295, !dbg !356575
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes10BinaryTypeE5sliceB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %.sroa.06.0.i, i64 noundef %i.ae, i64 noundef %.sroa.4.0.extract.shift.i), !dbg !356576
  %i.af = invoke { i64, i64 } @_RNvMse_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregateINtB9_12ChunkedArrayNtNtBb_9datatypes10BinaryTypeE14arg_min_binary(ptr noundef nonnull align 8 %i.a)
          to label %bb.i unwind label %bb.h, !dbg !356577 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a) #52
          to label %bb.k unwind label %bb.j, !dbg !356578

bb.i:                                             ; preds = %bb.g
  %i.ah = extractvalue { i64, i64 } %i.af, 0, !dbg !356579 ; 2 uses
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !356580
  %i.aj = extractvalue { i64, i64 } %i.af, 1, !dbg !356580
  %i.ak = trunc i64 %i.aj to i32, !dbg !356580
  %.sroa.6.1.i = select i1 %i.ai, i32 %i.ak, i32 undef, !dbg !356580
  %i.al = trunc i64 %i.ah to i32, !dbg !356580
  %.sroa.02.1.i = and i32 %i.al, 1, !dbg !356580
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10BinaryTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a), !dbg !356578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !356578
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_mins_0Bc_.exit, !dbg !356578

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !356581
  unreachable, !dbg !356581

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ag, !dbg !356581

_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE11agg_arg_mins_0Bc_.exit: ; preds = %bb.a, %bb.e, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i, %bb.i
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %bb.i ], [ undef, %bb.a ], [ 0, %bb.e ], [ 0, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356582
  %.sroa.02.0.i = phi i32 [ %.sroa.02.1.i, %bb.i ], [ %.sroa.4.0.extract.trunc.i, %bb.a ], [ 1, %bb.e ], [ %spec.select.i, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShENtB7_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i ], !dbg !356582
  %i.an = insertvalue { i32, i32 } poison, i32 %.sroa.02.0.i, 0, !dbg !356583
  %i.ao = insertvalue { i32, i32 } %i.an, i32 %.sroa.6.0.i, 1, !dbg !356583
  ret { i32, i32 } %i.ao, !dbg !356584
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB10_13chunked_array12ChunkedArrayNtNtB10_9datatypes10BinaryTypeE7agg_max0INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !356585 {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !356832, !nonnull !8787, !align !8965, !noundef !8787 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356793), !dbg !356833
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356794), !dbg !356833
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !356834
  %i.g = load i32, ptr %i.f, align 8, !dbg !356834, !alias.scope !356794, !noalias !356793, !noundef !8787 ; 4 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !356835
  br i1 %i.h, label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE7agg_max0Bc_.exit, label %bb.b, !dbg !356835

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %i.g to i64, !dbg !356836       ; 2 uses
  %i.j = icmp eq i32 %i.g, 1, !dbg !356837
  br i1 %i.j, label %bb.c, label %bb.d, !dbg !356837

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !356838
  %i.l = load ptr, ptr %i.k, align 8, !dbg !356838, !alias.scope !356793, !noalias !356794, !nonnull !8787, !align !8965, !noundef !8787 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !356839, !range !8871, !noalias !356795, !noundef !8787
  %.not.i = icmp eq i64 %i.m, -9223372036854775808, !dbg !356839
  br i1 %.not.i, label %bb.e, label %bb.f, !dbg !356840

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !356841
  %i.o = load ptr, ptr %i.n, align 8, !dbg !356841, !alias.scope !356793, !noalias !356794, !nonnull !8787, !noundef !8787
  %i.p = load i8, ptr %i.o, align 1, !dbg !356841, !range !9324, !noalias !356795, !noundef !8787
  %i.q = trunc nuw i8 %i.p to i1, !dbg !356841
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !356842
  %i.s = load ptr, ptr %i.r, align 8, !dbg !356842, !alias.scope !356793, !noalias !356794, !nonnull !8787, !align !8965, !noundef !8787 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !356843
  %i.u = load i32, ptr %i.t, align 4, !dbg !356843, !range !10472, !alias.scope !356794, !noalias !356793, !noundef !8787 ; 2 uses
  br i1 %i.q, label %bb.m, label %bb.g, !dbg !356841

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !356844
  %i.w = load ptr, ptr %i.v, align 8, !dbg !356844, !noalias !356795, !nonnull !8787, !align !8965, !noundef !8787
  br label %bb.f, !dbg !356845

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0.i = phi ptr [ %i.w, %bb.e ], [ %i.l, %bb.c ], !dbg !356846
  %i.x = zext i32 %1 to i64, !dbg !356847
  %i.y = tail call fastcc { ptr, i64 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10BinaryTypeE3getB6_(ptr noundef nonnull align 8 %.sroa.01.0.i, i64 noundef %i.x) #58, !dbg !356848, !noalias !356795 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0, !dbg !356848
  %i.aa = extractvalue { ptr, i64 } %i.y, 1, !dbg !356848
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE7agg_max0Bc_.exit, !dbg !356849

bb.g:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %2, align 8, !dbg !356850, !alias.scope !356794, !noalias !356793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !356851, !noalias !356795
  store i32 0, ptr %i.d, align 4, !dbg !356852, !noalias !356795
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 80, !dbg !356853 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !356853, !noalias !356795, !noundef !8787 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null, !dbg !356853
  br i1 %.not.i.i, label %bb.l, label %bb.h, !dbg !356854, !prof !8988

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq i32 %i.u, 1, !dbg !356850
  %.sroa.03.0.i = select i1 %i.ae, ptr %2, ptr %i.ab, !dbg !356850 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !356855
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 %.idx.i, !dbg !356855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !356856, !noalias !356795
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !356857
  store ptr %i.af, ptr %i.ag, align 8, !dbg !356857, !alias.scope !356802, !noalias !356795
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !356857
  store ptr %i.ac, ptr %i.ah, align 8, !dbg !356857, !alias.scope !356802, !noalias !356795
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !356857
  store ptr %i.s, ptr %i.ai, align 8, !dbg !356857, !alias.scope !356802, !noalias !356795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356803), !dbg !356858
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356804), !dbg !356859
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356805), !dbg !356860
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 4, !dbg !356861
  store ptr %i.aj, ptr %i.c, align 8, !dbg !356862, !alias.scope !356806, !noalias !356807
  %.val.i.i.i.i.i = load i32, ptr %.sroa.03.0.i, align 4, !dbg !356863, !noalias !356808, !noundef !8787
  %i.ak = zext i32 %.val.i.i.i.i.i to i64, !dbg !356864 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !356865
  %i.am = load i64, ptr %i.al, align 8, !dbg !356865, !noalias !356809, !noundef !8787
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 32, !dbg !356866
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !356866, !noalias !356809, !noundef !8787
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 88, !dbg !356867
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !356867, !noalias !356809, !noundef !8787
  %i.ar = add i64 %i.aq, %i.ak, !dbg !356867      ; 2 uses
  %i.as = lshr i64 %i.ar, 3, !dbg !356868         ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.am, !dbg !356869
  tail call void @llvm.assume(i1 %i.at), !dbg !356870
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as, !dbg !356871
  %i.av = load i8, ptr %i.au, align 1, !dbg !356872, !noalias !356809, !noundef !8787
  %i.aw = trunc i64 %i.ar to i8, !dbg !356873
  %i.ax = and i8 %i.aw, 7, !dbg !356873
  %i.ay = shl nuw i8 1, %i.ax, !dbg !356874
  %i.az = and i8 %i.ay, %i.av, !dbg !356874
  %i.ba = icmp eq i8 %i.az, 0, !dbg !356874
  br i1 %i.ba, label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg27take_agg_bin_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3x_13chunked_array12ChunkedArrayNtNtB3x_9datatypes10BinaryTypeE7agg_max0s_0EB3x_.exit.i, label %bb.i, !dbg !356874

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !356875
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !356875, !noalias !356809, !noundef !8787
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !356876
  %i.be = load i64, ptr %i.bd, align 8, !dbg !356876, !noalias !356809, !noundef !8787
  %i.bf = icmp ugt i64 %i.be, %i.ak, !dbg !356877
  tail call void @llvm.assume(i1 %i.bf), !dbg !356878
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ak, !dbg !356879 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 64, !dbg !356880
  %i.bi = load ptr, ptr %i.bh, align 8, !dbg !356880, !noalias !356809, !noundef !8787
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !356881
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !356881, !noalias !356809, !noundef !8787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356812), !dbg !356882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356813), !dbg !356882
  %i.bl = load i32, ptr %i.bg, align 4, !dbg !356883, !alias.scope !356812, !noalias !356814, !noundef !8787 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 13, !dbg !356883
  br i1 %i.bm, label %bb.k, label %bb.j, !dbg !356883

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !356884
  %i.bo = load i32, ptr %i.bn, align 4, !dbg !356884, !alias.scope !356812, !noalias !356814, !noundef !8787
  %i.bp = zext i32 %i.bo to i64, !dbg !356884     ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.bk, %i.bp, !dbg !356885
  tail call void @llvm.assume(i1 %i.bq), !dbg !356886
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bp, !dbg !356887
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 12, !dbg !356888
  %i.bt = load i32, ptr %i.bs, align 4, !dbg !356888, !alias.scope !356812, !noalias !356814, !noundef !8787
  %i.bu = zext i32 %i.bt to i64, !dbg !356888
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !356889
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !356889, !alias.scope !356815, !noalias !356816, !noundef !8787
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu, !dbg !356890
  br label %_RINvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4viewNtB5_4View19get_slice_uncheckedINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i, !dbg !356891

bb.k:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 4, !dbg !356892
  br label %_RINvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4viewNtB5_4View19get_slice_uncheckedINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i, !dbg !356891

_RINvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4viewNtB5_4View19get_slice_uncheckedINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.by, %bb.k ], [ %i.bx, %bb.j ], !dbg !356893
  %.sroa.3.0.i.i.i.i.i.i = zext i32 %i.bl to i64, !dbg !356893
  br label %_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg27take_agg_bin_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3x_13chunked_array12ChunkedArrayNtNtB3x_9datatypes10BinaryTypeE7agg_max0s_0EB3x_.exit.i, !dbg !356894

bb.l:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #55, !dbg !356895, !noalias !356795
  unreachable

_RINvNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg27take_agg_bin_iter_uncheckedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4ItermENCNvNtB6_5index17indexes_to_usizes0ENCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3x_13chunked_array12ChunkedArrayNtNtB3x_9datatypes10BinaryTypeE7agg_max0s_0EB3x_.exit.i: ; preds = %_RINvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4viewNtB5_4View19get_slice_uncheckedINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i, %bb.h
  %.sroa.7.0.ph.i.i.i = phi i64 [ undef, %bb.h ], [ %.sroa.3.0.i.i.i.i.i.i, %_RINvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4viewNtB5_4View19get_slice_uncheckedINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i ]
  %.sroa.5.0.ph.i.i.i = phi ptr [ null, %bb.h ], [ %.sroa.0.0.i.i.i.i.i.i, %_RINvMs_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4viewNtB5_4View19get_slice_uncheckedINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECs1LHh8CLbVkQ_11polars_core.exit.i.i.i.i.i ]
  %i.bz = call { ptr, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0ENCINvNtNtB1z_7kernels8take_agg27take_agg_bin_iter_uncheckedBX_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3Q_13chunked_array12ChunkedArrayNtNtB3Q_9datatypes10BinaryTypeE7agg_max0s_0E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtBc_6option6OptionRShENCB2D_s_0EB3Q_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.5.0.ph.i.i.i, i64 %.sroa.7.0.ph.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d), !dbg !356896, !noalias !356817 ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0, !dbg !356897
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1, !dbg !356897
  %.pre.i.i = load i32, ptr %i.d, align 4, !dbg !356898, !noalias !356795
  %.pre.i.fr.i = freeze i32 %.pre.i.i, !dbg !356898
  %.not16.i = icmp eq i32 %.pre.i.fr.i, %i.g, !dbg !356898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !356899, !noalias !356795
  %spec.select.i = select i1 %.not16.i, ptr null, ptr %i.ca, !dbg !356898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !356900, !noalias !356795
  br label %_RNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtBc_13chunked_array12ChunkedArrayNtNtBc_9datatypes10BinaryTypeE7agg_max0Bc_.exit, !dbg !356901

bb.m:                                             ; preds = %bb.d
  %i.cc = icmp eq i32 %i.u, 1, !dbg !356902
  %i.cd = load ptr, ptr %2, align 8, !dbg !356902, !alias.scope !356794, !noalias !356793
  %.sroa.02.0.i = select i1 %i.cc, ptr %2, ptr %i.cd, !dbg !356902 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i) ], !dbg !356903
  %.idx17.i = shl nuw nsw i64 %i.i, 2, !dbg !356904
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 %.idx17.i, !dbg !356904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !356905, !noalias !356795
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !356906
  store ptr %i.ce, ptr %i.cf, align 8, !dbg !356906, !alias.scope !356818, !noalias !356795
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !356906
  store ptr %i.s, ptr %i.cg, align 8, !dbg !356906, !alias.scope !356818, !noalias !356795
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356819), !dbg !356907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356820), !dbg !356908
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356821), !dbg !356909
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4, !dbg !356910
  store ptr %i.ch, ptr %i.b, align 8, !dbg !356911, !alias.scope !356822, !noalias !356823
  %.val.i.i.i.i5.i = load i32, ptr %.sroa.02.0.i, align 4, !dbg !356912, !noalias !356824, !noundef !8787
  %i.ci = zext i32 %.val.i.i.i.i5.i to i64, !dbg !356913 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !356914
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !356914, !noalias !356825, !noundef !8787
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 48, !dbg !356915
  %i.cm = load i64, ptr %i.cl, align 8, !dbg !356915, !noalias !356825, !noundef !8787
  %i.cn = icmp ugt i64 %i.cm, %i.ci, !dbg !356916
  tail call void @llvm.assume(i1 %i.cn), !dbg !356917
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.ci, !dbg !356918 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 64, !dbg !356919
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !356919, !noalias !356825, !noundef !8787
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 72, !dbg !356920
  %i.cs = load i64, ptr %i.cr, align 8, !dbg !356920, !noalias !356825, !noundef !8787
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356827), !dbg !356921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356828), !dbg !356921
  %i.ct = load i32, ptr %i.co, align 4, !dbg !356922, !alias.scope !356827, !noalias !356829, !noundef !8787 ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 13, !dbg !356922
  br i1 %i.cu, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0ENCINvNtNtB1y_7kernels8take_agg35take_agg_bin_iter_unchecked_no_nullBW_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3X_13chunked_array12ChunkedArrayNtNtB3X_9datatypes10BinaryTypeE7agg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB3X_.exit.thread12.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0ENCINvNtNtB1y_7kernels8take_agg35take_agg_bin_iter_unchecked_no_nullBW_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3X_13chunked_array12ChunkedArrayNtNtB3X_9datatypes10BinaryTypeE7agg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB3X_.exit.i.i.i, !dbg !356922

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtBb_5slice4iter4ItermENCNvNtNtCs8774dFTUdNv_12polars_arrow6legacy5index17indexes_to_usizes0ENCINvNtNtB1y_7kernels8take_agg35take_agg_bin_iter_unchecked_no_nullBW_NCNCNvMNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations6stringINtNtB3X_13chunked_array12ChunkedArrayNtNtB3X_9datatypes10BinaryTypeE7agg_max00E0ENtNtNtB9_6traits8iterator8Iterator4nextB3X_.exit.thread12.i.i.i: ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtB12_13chunked_array12ChunkedArrayNtNtB12_9datatypes11BooleanTypeE11agg_arg_max0INtB6_5FnMutTRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE8call_mutB12_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !357562
  %i.y = load ptr, ptr %i.x, align 8, !dbg !357562, !noalias !357533, !noundef !8787
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !357563
  %i.aa = load i64, ptr %i.z, align 8, !dbg !357563, !noalias !357533, !noundef !8787
  %i.ab = add i64 %i.aa, %i.p, !dbg !357563       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3, !dbg !357564         ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.w, !dbg !357565
  tail call void @llvm.assume(i1 %i.ad), !dbg !357566
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac, !dbg !357567
  %i.af = load i8, ptr %i.ae, align 1, !dbg !357568, !noalias !357533, !noundef !8787
  %i.ag = trunc i64 %i.ab to i8, !dbg !357569
  %i.ah = and i8 %i.ag, 7, !dbg !357569
  %i.ai = xor i8 %i.af, -1, !dbg !357570
  %i.aj = lshr i8 %i.ai, %i.ah, !dbg !357570
  %i.ak = trunc i8 %i.aj to i1, !dbg !357571
  br i1 %i.ak, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_max0Be_.exit, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i, !dbg !357572

_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i: ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.e
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_max0Be_.exit, !dbg !357573

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.al = load i8, ptr %.val1, align 1, !dbg !357574, !range !9324, !noalias !357533, !noundef !8787
  %i.am = trunc nuw i8 %i.al to i1, !dbg !357574
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %i.am, label %bb.l, label %bb.g, !dbg !357574

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !357575
  %i.ao = load i32, ptr %i.an, align 4, !dbg !357575, !range !10472, !alias.scope !357533, !noundef !8787
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !357576
  %i.aq = load ptr, ptr %1, align 8, !dbg !357576, !alias.scope !357533
  %.sroa.08.0.i = select i1 %i.ap, ptr %1, ptr %i.aq, !dbg !357576 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.i) ], !dbg !357577
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !357578
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 %.idx.i, !dbg !357578
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64, !dbg !357579
  %i.at = load ptr, ptr %i.as, align 8, !dbg !357579, !noalias !357533, !noundef !8787 ; 3 uses
  %.not.i.i = icmp eq ptr %i.at, null, !dbg !357579
  br i1 %.not.i.i, label %bb.h, label %.preheader.i.i, !dbg !357580, !prof !8988

.preheader.i.i:                                   ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 32, !dbg !357581
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noalias !357533, !noundef !8787
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !357533, !noundef !8787
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !noalias !357533, !noundef !8787
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 40
  br label %bb.i, !dbg !357582

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #55, !dbg !357583, !noalias !357533
  unreachable

bb.i:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.preheader.i.i
  %.sroa.0.01124.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.0.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.7.023.i.i = phi i32 [ undef, %.preheader.i.i ], [ %.sroa.7.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.07.022.i.i = phi ptr [ %.sroa.08.0.i, %.preheader.i.i ], [ %i.bc, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.8.021.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.be, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i.i, i64 4, !dbg !357584 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %.sroa.07.022.i.i, align 4, !dbg !357585, !noalias !357541, !noundef !8787
  %i.bd = zext i32 %.val.i.i.i.i to i64, !dbg !357586 ; 2 uses
  %i.be = add nuw i32 %.sroa.8.021.i.i, 1, !dbg !357587
  %i.bf = add i64 %i.ba, %i.bd, !dbg !357588      ; 2 uses
  %i.bg = lshr i64 %i.bf, 3, !dbg !357589         ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.aw, !dbg !357590
  tail call void @llvm.assume(i1 %i.bh), !dbg !357591
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bg, !dbg !357592
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !357593, !noalias !357533, !noundef !8787
  %i.bk = trunc i64 %i.bf to i8, !dbg !357594
  %i.bl = and i8 %i.bk, 7, !dbg !357594
  %i.bm = shl nuw i8 1, %i.bl, !dbg !357595
  %i.bn = and i8 %i.bm, %i.bj, !dbg !357595
  %i.bo = icmp eq i8 %i.bn, 0, !dbg !357595
  br i1 %i.bo, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, label %bb.j, !dbg !357595

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.au, align 8, !dbg !357581, !noalias !357533, !nonnull !8787, !noundef !8787 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40, !dbg !357596
  %i.br = load i64, ptr %i.bq, align 8, !dbg !357596, !noalias !357533, !noundef !8787
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32, !dbg !357597
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !357597, !noalias !357533, !noundef !8787
  %i.bu = load i64, ptr %i.bb, align 8, !dbg !357598, !noalias !357533, !noundef !8787
  %i.bv = add i64 %i.bu, %i.bd, !dbg !357598      ; 2 uses
  %i.bw = lshr i64 %i.bv, 3, !dbg !357599         ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.br, !dbg !357600
  tail call void @llvm.assume(i1 %i.bx), !dbg !357601
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw, !dbg !357602
  %i.bz = load i8, ptr %i.by, align 1, !dbg !357603, !noalias !357533, !noundef !8787
  %i.ca = trunc i64 %i.bv to i8, !dbg !357604
  %i.cb = and i8 %i.ca, 7, !dbg !357604
  %i.cc = shl nuw i8 1, %i.cb, !dbg !357605
  %i.cd = and i8 %i.cc, %i.bz, !dbg !357605
  %i.ce = icmp eq i8 %i.cd, 0, !dbg !357605
  br i1 %i.ce, label %bb.k, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i, !dbg !357605

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.k, %bb.i
  %.sroa.7.1.i.i = phi i32 [ %.sroa.7.023.i.i, %bb.i ], [ %spec.select.i.i, %bb.k ], !dbg !357606 ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.01124.i.i, %bb.i ], [ 1, %bb.k ], !dbg !357607 ; 2 uses
  %i.cf = icmp eq ptr %i.bc, %i.ar, !dbg !357608
  br i1 %i.cf, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i, label %bb.i, !dbg !357582

bb.k:                                             ; preds = %bb.j
  %i.cg = trunc nuw i64 %.sroa.0.01124.i.i to i1, !dbg !357609
  %spec.select.i.i = select i1 %i.cg, i32 %.sroa.7.023.i.i, i32 %.sroa.8.021.i.i, !dbg !357609
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !357609

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.j
  %.sroa.3.0.i.i = phi i32 [ %.sroa.7.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.sroa.8.021.i.i, %bb.j ], !dbg !357610
  %.sroa.0.0.i11.i = phi i64 [ %.sroa.0.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ 1, %bb.j ], !dbg !357610 ; 2 uses
  %i.ch = trunc nuw i64 %.sroa.0.0.i11.i to i1, !dbg !357611
  %.sroa.8.1.i = select i1 %i.ch, i32 %.sroa.3.0.i.i, i32 undef, !dbg !357611
  %i.ci = trunc nuw nsw i64 %.sroa.0.0.i11.i to i32, !dbg !357611
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_max0Be_.exit, !dbg !357612

bb.l:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !357613
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !357613, !noalias !357533, !noundef !8787
  %.not.i = icmp ne i64 %i.ck, 0, !dbg !357614    ; 2 uses
  br i1 %.not.i, label %bb.m, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i, !dbg !357614

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !357615
  %i.cm = load i32, ptr %i.cl, align 4, !dbg !357615, !range !10472, !alias.scope !357533, !noundef !8787
  %i.cn = icmp eq i32 %i.cm, 1, !dbg !357616
  %i.co = load ptr, ptr %1, align 8, !dbg !357616, !alias.scope !357533
  %.sroa.07.0.i = select i1 %i.cn, ptr %1, ptr %i.co, !dbg !357616 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.07.0.i, i64 %i.i, !dbg !357617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !357618, !noalias !357533
  store ptr %.sroa.07.0.i, ptr %i.b, align 8, !dbg !357619, !noalias !357533
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !357619
  store ptr %i.cp, ptr %i.cq, align 8, !dbg !357619, !noalias !357533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !357620, !noalias !357546
  store i64 0, ptr %i.a, align 8, !dbg !357621, !noalias !357546
  %i.cr = call { i64, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2F_8position5checkjNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsBN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !357622 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0, !dbg !357622
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !357623
  %i.cu = extractvalue { i64, i64 } %i.cr, 1, !dbg !357623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !357624, !noalias !357546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !357625, !noalias !357533
  %i.cv = trunc i64 %i.cu to i32, !dbg !357626
  %i.cw = select i1 %i.ct, i32 %i.cv, i32 0, !dbg !357627
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i, !dbg !357628

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.8.2.i = phi i32 [ %i.cw, %bb.m ], [ undef, %bb.l ], !dbg !357629
  %.sroa.0.2.i = zext i1 %.not.i to i32, !dbg !357626
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_max0Be_.exit, !dbg !357612

_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_max0Be_.exit: ; preds = %bb.a, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i
  %.sroa.8.0.i = phi i32 [ %.sroa.8.1.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i ], [ undef, %bb.a ], [ %.sroa.8.2.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i ], [ 0, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !357630
  %.sroa.0.0.i = phi i32 [ %i.ci, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i ], [ 0, %bb.a ], [ %.sroa.0.2.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i ], [ 1, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i ], [ 0, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !357630
  %i.cx = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0, !dbg !357631
  %i.cy = insertvalue { i32, i32 } %i.cx, i32 %.sroa.8.0.i, 1, !dbg !357631
  ret { i32, i32 } %i.cy, !dbg !357632
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtB12_13chunked_array12ChunkedArrayNtNtB12_9datatypes11BooleanTypeE11agg_arg_maxs_0INtB6_5FnMutTAmj2_EE8call_mutB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !357633 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !357644, !nonnull !8787, !align !8965, !noundef !8787
  %.val = load ptr, ptr %i.b, align 8, !dbg !357645 ; 4 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32    ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32 ; 2 uses
  switch i32 %.sroa.4.0.extract.trunc.i, label %bb.b [
    i32 0, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_maxs_0Be_.exit
    i32 1, label %bb.c
  ], !dbg !357646

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !357647
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = and i64 %1, 4294967295, !dbg !357648
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11BooleanTypeE5sliceB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %.val, i64 noundef %i.c, i64 noundef %.sroa.4.0.extract.shift.i), !dbg !357649
  %i.d = invoke { i64, i64 } @_RNvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max12arg_max_bool(ptr noundef nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.d, !dbg !357650 ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = and i64 %1, 4294967295, !dbg !357651
  %i.f = tail call fastcc noundef i8 @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11BooleanTypeE3getB6_(ptr noundef nonnull align 8 %.val, i64 noundef %i.e) #58, !dbg !357652
  %.not.i = icmp ne i8 %i.f, 2, !dbg !357653
  %.9.i = zext i1 %.not.i to i32, !dbg !357654
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_maxs_0Be_.exit, !dbg !357654

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a) #52
          to label %bb.g unwind label %bb.f, !dbg !357655

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.d, 0, !dbg !357650 ; 2 uses
  %i.i = trunc nuw i64 %i.h to i1, !dbg !357656
  %i.j = extractvalue { i64, i64 } %i.d, 1, !dbg !357656
  %i.k = trunc i64 %i.j to i32, !dbg !357656
  %.sroa.6.1.i = select i1 %i.i, i32 %i.k, i32 undef, !dbg !357656
  %i.l = trunc i64 %i.h to i32, !dbg !357656
  %.sroa.02.1.i = and i32 %i.l, 1, !dbg !357656
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a), !dbg !357655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !357655
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_maxs_0Be_.exit, !dbg !357655

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !357657
  unreachable, !dbg !357657

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g, !dbg !357657

_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_maxs_0Be_.exit: ; preds = %bb.a, %bb.c, %bb.e
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %bb.e ], [ undef, %bb.a ], [ 0, %bb.c ], !dbg !357658
  %.sroa.02.0.i = phi i32 [ %.sroa.02.1.i, %bb.e ], [ %.sroa.4.0.extract.trunc.i, %bb.a ], [ %.9.i, %bb.c ], !dbg !357658
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.02.0.i, 0, !dbg !357659
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.6.0.i, 1, !dbg !357659
  ret { i32, i32 } %i.o, !dbg !357660
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtB12_13chunked_array12ChunkedArrayNtNtB12_9datatypes11BooleanTypeE11agg_arg_min0INtB6_5FnMutTRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEE8call_mutB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !357661 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !357784, !nonnull !8787, !align !8965, !noundef !8787 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !357785
  %.val = load ptr, ptr %i.d, align 8, !dbg !357785 ; 11 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16, !dbg !357785
  %.val1 = load ptr, ptr %i.e, align 8, !dbg !357785 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357770), !dbg !357785
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !357786
  %i.g = load i32, ptr %i.f, align 8, !dbg !357786, !alias.scope !357770, !noundef !8787 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0, !dbg !357787
  br i1 %i.h, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_min0Be_.exit, label %bb.b, !dbg !357787

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %i.g to i64, !dbg !357788       ; 2 uses
  %i.j = icmp eq i32 %i.g, 1, !dbg !357789
  br i1 %i.j, label %bb.c, label %bb.f, !dbg !357789

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !357790
  %i.l = load i32, ptr %i.k, align 4, !dbg !357790, !range !10472, !alias.scope !357770, !noundef !8787
  %i.m = icmp eq i32 %i.l, 1, !dbg !357791
  %i.n = load ptr, ptr %1, align 8, !dbg !357791, !alias.scope !357770
  %.sroa.06.0.i = select i1 %i.m, ptr %1, ptr %i.n, !dbg !357791
  %i.o = load i32, ptr %.sroa.06.0.i, align 4, !dbg !357792, !noundef !8787
  %i.p = zext i32 %i.o to i64, !dbg !357792       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !357793
  %i.r = load i64, ptr %i.q, align 8, !dbg !357793, !noalias !357770, !noundef !8787
  %i.s = icmp ugt i64 %i.r, %i.p, !dbg !357794
  br i1 %i.s, label %bb.e, label %bb.d, !dbg !357794, !prof !9001

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #57, !dbg !357795, !noalias !357770
  unreachable, !dbg !357795

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 64, !dbg !357796
  %i.u = load ptr, ptr %i.t, align 8, !dbg !357796, !noalias !357770, !noundef !8787 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null, !dbg !357796
  br i1 %.not.i.i.i.i, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i, label %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !357797

_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !357798
  %i.w = load i64, ptr %i.v, align 8, !dbg !357798, !noalias !357770, !noundef !8787
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32, !dbg !357799
  %i.y = load ptr, ptr %i.x, align 8, !dbg !357799, !noalias !357770, !noundef !8787
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !357800
  %i.aa = load i64, ptr %i.z, align 8, !dbg !357800, !noalias !357770, !noundef !8787
  %i.ab = add i64 %i.aa, %i.p, !dbg !357800       ; 2 uses
  %i.ac = lshr i64 %i.ab, 3, !dbg !357801         ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.w, !dbg !357802
  tail call void @llvm.assume(i1 %i.ad), !dbg !357803
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac, !dbg !357804
  %i.af = load i8, ptr %i.ae, align 1, !dbg !357805, !noalias !357770, !noundef !8787
  %i.ag = trunc i64 %i.ab to i8, !dbg !357806
  %i.ah = and i8 %i.ag, 7, !dbg !357806
  %i.ai = xor i8 %i.af, -1, !dbg !357807
  %i.aj = lshr i8 %i.ai, %i.ah, !dbg !357807
  %i.ak = trunc i8 %i.aj to i1, !dbg !357808
  br i1 %i.ak, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_min0Be_.exit, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i, !dbg !357809

_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i: ; preds = %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.e
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_min0Be_.exit, !dbg !357810

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.al = load i8, ptr %.val1, align 1, !dbg !357811, !range !9324, !noalias !357770, !noundef !8787
  %i.am = trunc nuw i8 %i.al to i1, !dbg !357811
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %i.am, label %bb.l, label %bb.g, !dbg !357811

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !357812
  %i.ao = load i32, ptr %i.an, align 4, !dbg !357812, !range !10472, !alias.scope !357770, !noundef !8787
  %i.ap = icmp eq i32 %i.ao, 1, !dbg !357813
  %i.aq = load ptr, ptr %1, align 8, !dbg !357813, !alias.scope !357770
  %.sroa.08.0.i = select i1 %i.ap, ptr %1, ptr %i.aq, !dbg !357813 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.0.i) ], !dbg !357814
  %.idx.i = shl nuw nsw i64 %i.i, 2, !dbg !357815
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 %.idx.i, !dbg !357815
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64, !dbg !357816
  %i.at = load ptr, ptr %i.as, align 8, !dbg !357816, !noalias !357770, !noundef !8787 ; 3 uses
  %.not.i.i = icmp eq ptr %i.at, null, !dbg !357816
  br i1 %.not.i.i, label %bb.h, label %.preheader.i.i, !dbg !357817, !prof !8988

.preheader.i.i:                                   ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 32, !dbg !357818
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noalias !357770, !noundef !8787
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !357770, !noundef !8787
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !noalias !357770, !noundef !8787
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 40
  br label %bb.i, !dbg !357819

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #55, !dbg !357820, !noalias !357770
  unreachable

bb.i:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.preheader.i.i
  %.sroa.0.01124.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.0.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.7.023.i.i = phi i32 [ undef, %.preheader.i.i ], [ %.sroa.7.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.07.022.i.i = phi ptr [ %.sroa.08.0.i, %.preheader.i.i ], [ %i.bc, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.8.021.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.be, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i.i, i64 4, !dbg !357821 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %.sroa.07.022.i.i, align 4, !dbg !357822, !noalias !357778, !noundef !8787
  %i.bd = zext i32 %.val.i.i.i.i to i64, !dbg !357823 ; 2 uses
  %i.be = add nuw i32 %.sroa.8.021.i.i, 1, !dbg !357824
  %i.bf = add i64 %i.ba, %i.bd, !dbg !357825      ; 2 uses
  %i.bg = lshr i64 %i.bf, 3, !dbg !357826         ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.aw, !dbg !357827
  tail call void @llvm.assume(i1 %i.bh), !dbg !357828
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bg, !dbg !357829
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !357830, !noalias !357770, !noundef !8787
  %i.bk = trunc i64 %i.bf to i8, !dbg !357831
  %i.bl = and i8 %i.bk, 7, !dbg !357831
  %i.bm = shl nuw i8 1, %i.bl, !dbg !357832
  %i.bn = and i8 %i.bm, %i.bj, !dbg !357832
  %i.bo = icmp eq i8 %i.bn, 0, !dbg !357832
  br i1 %i.bo, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, label %bb.j, !dbg !357832

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.au, align 8, !dbg !357818, !noalias !357770, !nonnull !8787, !noundef !8787 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40, !dbg !357833
  %i.br = load i64, ptr %i.bq, align 8, !dbg !357833, !noalias !357770, !noundef !8787
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32, !dbg !357834
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !357834, !noalias !357770, !noundef !8787
  %i.bu = load i64, ptr %i.bb, align 8, !dbg !357835, !noalias !357770, !noundef !8787
  %i.bv = add i64 %i.bu, %i.bd, !dbg !357835      ; 2 uses
  %i.bw = lshr i64 %i.bv, 3, !dbg !357836         ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.br, !dbg !357837
  tail call void @llvm.assume(i1 %i.bx), !dbg !357838
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw, !dbg !357839
  %i.bz = load i8, ptr %i.by, align 1, !dbg !357840, !noalias !357770, !noundef !8787
  %i.ca = trunc i64 %i.bv to i8, !dbg !357841
  %i.cb = and i8 %i.ca, 7, !dbg !357841
  %i.cc = shl nuw i8 1, %i.cb, !dbg !357842
  %i.cd = and i8 %i.cc, %i.bz, !dbg !357842
  %i.ce = icmp eq i8 %i.cd, 0, !dbg !357842
  br i1 %i.ce, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_min_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i, label %bb.k, !dbg !357842

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.k, %bb.i
  %.sroa.7.1.i.i = phi i32 [ %.sroa.7.023.i.i, %bb.i ], [ %spec.select.i.i, %bb.k ], !dbg !357843 ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.01124.i.i, %bb.i ], [ 1, %bb.k ], !dbg !357844 ; 2 uses
  %i.cf = icmp eq ptr %i.bc, %i.ar, !dbg !357845
  br i1 %i.cf, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_min_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i, label %bb.i, !dbg !357819

bb.k:                                             ; preds = %bb.j
  %i.cg = trunc nuw i64 %.sroa.0.01124.i.i to i1, !dbg !357846
  %spec.select.i.i = select i1 %i.cg, i32 %.sroa.7.023.i.i, i32 %.sroa.8.021.i.i, !dbg !357846
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !357846

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_min_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, %bb.j
  %.sroa.3.0.i.i = phi i32 [ %.sroa.7.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ %.sroa.8.021.i.i, %bb.j ], !dbg !357847
  %.sroa.0.0.i11.i = phi i64 [ %.sroa.0.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ], [ 1, %bb.j ], !dbg !357847 ; 2 uses
  %i.ch = trunc nuw i64 %.sroa.0.0.i11.i to i1, !dbg !357848
  %.sroa.8.1.i = select i1 %i.ch, i32 %.sroa.3.0.i.i, i32 undef, !dbg !357848
  %i.ci = trunc nuw nsw i64 %.sroa.0.0.i11.i to i32, !dbg !357848
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_min0Be_.exit, !dbg !357849

bb.l:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 48, !dbg !357850
  %i.ck = load i64, ptr %i.cj, align 8, !dbg !357850, !noalias !357770, !noundef !8787
  %.not.i = icmp ne i64 %i.ck, 0, !dbg !357851    ; 2 uses
  br i1 %.not.i, label %bb.m, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_min_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i, !dbg !357851

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !357852
  %i.cm = load i32, ptr %i.cl, align 4, !dbg !357852, !range !10472, !alias.scope !357770, !noundef !8787
  %i.cn = icmp eq i32 %i.cm, 1, !dbg !357853
  %i.co = load ptr, ptr %1, align 8, !dbg !357853, !alias.scope !357770
  %.sroa.07.0.i = select i1 %i.cn, ptr %1, ptr %i.co, !dbg !357853 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.07.0.i, i64 %i.i, !dbg !357854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !357855, !noalias !357770
  store ptr %.sroa.07.0.i, ptr %i.b, align 8, !dbg !357856, !noalias !357770
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !357856
  store ptr %i.cp, ptr %i.cq, align 8, !dbg !357856, !noalias !357770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !357857, !noalias !357783
  store i64 0, ptr %i.a, align 8, !dbg !357858, !noalias !357783
  %i.cr = call { i64, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2F_8position5checkjNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_min_bool_iter_unchecked_no_nullsBN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !357859 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0, !dbg !357859
  %i.ct = trunc nuw i64 %i.cs to i1, !dbg !357860
  %i.cu = extractvalue { i64, i64 } %i.cr, 1, !dbg !357860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !357861, !noalias !357783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !357862, !noalias !357770
  %i.cv = trunc i64 %i.cu to i32, !dbg !357863
  %i.cw = select i1 %i.ct, i32 %i.cv, i32 0, !dbg !357864
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_min_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i, !dbg !357865

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_min_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.8.2.i = phi i32 [ %i.cw, %bb.m ], [ undef, %bb.l ], !dbg !357866
  %.sroa.0.2.i = zext i1 %.not.i to i32, !dbg !357863
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_min0Be_.exit, !dbg !357849

_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_min0Be_.exit: ; preds = %bb.a, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_min_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_min_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i
  %.sroa.8.0.i = phi i32 [ %.sroa.8.1.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_min_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i ], [ undef, %bb.a ], [ %.sroa.8.2.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_min_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i ], [ 0, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i ], [ 0, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !357867
  %.sroa.0.0.i = phi i32 [ %i.ci, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_min_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i ], [ 0, %bb.a ], [ %.sroa.0.2.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_min_bool_iter_unchecked_no_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1Y_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3g_.exit.i ], [ 1, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array7booleanNtB2_12BooleanArray3get.exit.i ], [ 0, %_RNvYNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayNtB6_5Array17is_null_uncheckedCs1LHh8CLbVkQ_11polars_core.exit.i.i ], !dbg !357867
  %i.cx = insertvalue { i32, i32 } poison, i32 %.sroa.0.0.i, 0, !dbg !357868
  %i.cy = insertvalue { i32, i32 } %i.cx, i32 %.sroa.8.0.i, 1, !dbg !357868
  ret { i32, i32 } %i.cy, !dbg !357869
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtB12_13chunked_array12ChunkedArrayNtNtB12_9datatypes11BooleanTypeE11agg_arg_mins_0INtB6_5FnMutTAmj2_EE8call_mutB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !357870 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !357881, !nonnull !8787, !align !8965, !noundef !8787
  %.val = load ptr, ptr %i.b, align 8, !dbg !357882 ; 4 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %1, 32    ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32 ; 2 uses
  switch i32 %.sroa.4.0.extract.trunc.i, label %bb.b [
    i32 0, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_mins_0Be_.exit
    i32 1, label %bb.c
  ], !dbg !357883

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !357884
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.c = and i64 %1, 4294967295, !dbg !357885
  call void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8chunkopsINtB6_12ChunkedArrayNtNtB8_9datatypes11BooleanTypeE5sliceB8_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %.val, i64 noundef %i.c, i64 noundef %.sroa.4.0.extract.shift.i), !dbg !357886
  %i.d = invoke { i64, i64 } @_RNvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array11arg_min_max12arg_min_bool(ptr noundef nonnull align 8 %i.a)
          to label %bb.e unwind label %bb.d, !dbg !357887 ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = and i64 %1, 4294967295, !dbg !357888
  %i.f = tail call fastcc noundef i8 @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11BooleanTypeE3getB6_(ptr noundef nonnull align 8 %.val, i64 noundef %i.e) #58, !dbg !357889
  %.not.i = icmp ne i8 %i.f, 2, !dbg !357890
  %.9.i = zext i1 %.not.i to i32, !dbg !357891
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_mins_0Be_.exit, !dbg !357891

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a) #52
          to label %bb.g unwind label %bb.f, !dbg !357892

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { i64, i64 } %i.d, 0, !dbg !357887 ; 2 uses
  %i.i = trunc nuw i64 %i.h to i1, !dbg !357893
  %i.j = extractvalue { i64, i64 } %i.d, 1, !dbg !357893
  %i.k = trunc i64 %i.j to i32, !dbg !357893
  %.sroa.6.1.i = select i1 %i.i, i32 %i.k, i32 undef, !dbg !357893
  %i.l = trunc i64 %i.h to i32, !dbg !357893
  %.sroa.02.1.i = and i32 %i.l, 1, !dbg !357893
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes11BooleanTypeEEBL_(ptr noalias noundef align 8 dereferenceable(56) %i.a), !dbg !357892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !357892
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_mins_0Be_.exit, !dbg !357892

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !357894
  unreachable, !dbg !357894

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g, !dbg !357894

_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE11agg_arg_mins_0Be_.exit: ; preds = %bb.a, %bb.c, %bb.e
  %.sroa.6.0.i = phi i32 [ %.sroa.6.1.i, %bb.e ], [ undef, %bb.a ], [ 0, %bb.c ], !dbg !357895
  %.sroa.02.0.i = phi i32 [ %.sroa.02.1.i, %bb.e ], [ %.sroa.4.0.extract.trunc.i, %bb.a ], [ %.9.i, %bb.c ], !dbg !357895
  %i.n = insertvalue { i32, i32 } poison, i32 %.sroa.02.0.i, 0, !dbg !357896
  %i.o = insertvalue { i32, i32 } %i.n, i32 %.sroa.6.0.i, 1, !dbg !357896
  ret { i32, i32 } %i.o, !dbg !357897
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsRNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtB12_13chunked_array12ChunkedArrayNtNtB12_9datatypes11BooleanTypeE7agg_max0INtB6_5FnMutTTmRINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEE8call_mutB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !357898 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !358038, !nonnull !8787, !align !8965, !noundef !8787 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358027), !dbg !358039
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358028), !dbg !358039
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !358040
  %i.e = load i32, ptr %i.d, align 8, !dbg !358040, !alias.scope !358028, !noalias !358027, !noundef !8787 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0, !dbg !358041
  br i1 %i.f, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE7agg_max0Be_.exit, label %bb.b, !dbg !358041

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64, !dbg !358042       ; 6 uses
  %i.h = icmp eq i32 %i.e, 1, !dbg !358043
  br i1 %i.h, label %bb.c, label %bb.d, !dbg !358043

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !dbg !358044, !alias.scope !358027, !noalias !358028, !nonnull !8787, !align !8965, !noundef !8787
  %i.j = zext i32 %1 to i64, !dbg !358045
  %i.k = tail call fastcc noundef i8 @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes11BooleanTypeE3getB6_(ptr noundef nonnull align 8 %i.i, i64 noundef %i.j) #58, !dbg !358046, !noalias !358029
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE7agg_max0Be_.exit, !dbg !358047

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !358048
  %i.m = load ptr, ptr %i.l, align 8, !dbg !358048, !alias.scope !358027, !noalias !358028, !nonnull !8787, !noundef !8787
  %i.n = load i8, ptr %i.m, align 1, !dbg !358048, !range !9324, !noalias !358029, !noundef !8787
  %i.o = trunc nuw i8 %i.n to i1, !dbg !358048
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !358049
  %i.q = load ptr, ptr %i.p, align 8, !dbg !358049, !alias.scope !358027, !noalias !358028, !nonnull !8787, !align !8965, !noundef !8787 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12, !dbg !358050
  %i.s = load i32, ptr %i.r, align 4, !dbg !358050, !range !10472, !alias.scope !358028, !noalias !358027, !noundef !8787
  %i.t = icmp eq i32 %i.s, 1, !dbg !358051
  %i.u = load ptr, ptr %2, align 8, !dbg !358051, !alias.scope !358028, !noalias !358027
  %.sroa.06.0.i = select i1 %i.t, ptr %2, ptr %i.u, !dbg !358051 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.i) ], !dbg !358052
  br i1 %i.o, label %bb.j, label %bb.e, !dbg !358048

bb.e:                                             ; preds = %bb.d
  %.idx.i = shl nuw nsw i64 %i.g, 2, !dbg !358053
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 %.idx.i, !dbg !358053
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 64, !dbg !358054
  %i.x = load ptr, ptr %i.w, align 8, !dbg !358054, !noalias !358029, !noundef !8787 ; 3 uses
  %.not.i.i = icmp eq ptr %i.x, null, !dbg !358054
  br i1 %.not.i.i, label %bb.f, label %.preheader.i.i, !dbg !358055, !prof !8988

.preheader.i.i:                                   ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !358056 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !noalias !358029, !noundef !8787
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !358029, !noundef !8787
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !358029, !noundef !8787
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  br label %bb.g, !dbg !358057

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #55, !dbg !358058, !noalias !358029
  unreachable

bb.g:                                             ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, %.preheader.i.i
  %.sroa.0.01124.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.0.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.7.023.i.i = phi i64 [ undef, %.preheader.i.i ], [ %.sroa.7.1.i.i, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.07.022.i.i = phi ptr [ %.sroa.06.0.i, %.preheader.i.i ], [ %i.ag, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 2 uses
  %.sroa.8.021.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.ai, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.07.022.i.i, i64 4, !dbg !358059 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %.sroa.07.022.i.i, align 4, !dbg !358060, !noalias !358033, !noundef !8787
  %i.ah = zext i32 %.val.i.i.i.i to i64, !dbg !358061 ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.8.021.i.i, 1, !dbg !358062
  %i.aj = add i64 %i.ae, %i.ah, !dbg !358063      ; 2 uses
  %i.ak = lshr i64 %i.aj, 3, !dbg !358064         ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aa, !dbg !358065
  tail call void @llvm.assume(i1 %i.al), !dbg !358066
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak, !dbg !358067
  %i.an = load i8, ptr %i.am, align 1, !dbg !358068, !noalias !358029, !noundef !8787
  %i.ao = trunc i64 %i.aj to i8, !dbg !358069
  %i.ap = and i8 %i.ao, 7, !dbg !358069
  %i.aq = shl nuw i8 1, %i.ap, !dbg !358070
  %i.ar = and i8 %i.aq, %i.an, !dbg !358070
  %i.as = icmp eq i8 %i.ar, 0, !dbg !358070
  br i1 %i.as, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, label %bb.h, !dbg !358070

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.y, align 8, !dbg !358056, !noalias !358029, !nonnull !8787, !noundef !8787 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40, !dbg !358071
  %i.av = load i64, ptr %i.au, align 8, !dbg !358071, !noalias !358029, !noundef !8787
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32, !dbg !358072
  %i.ax = load ptr, ptr %i.aw, align 8, !dbg !358072, !noalias !358029, !noundef !8787
  %i.ay = load i64, ptr %i.af, align 8, !dbg !358073, !noalias !358029, !noundef !8787
  %i.az = add i64 %i.ay, %i.ah, !dbg !358073      ; 2 uses
  %i.ba = lshr i64 %i.az, 3, !dbg !358074         ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.av, !dbg !358075
  tail call void @llvm.assume(i1 %i.bb), !dbg !358076
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba, !dbg !358077
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !358078, !noalias !358029, !noundef !8787
  %i.be = trunc i64 %i.az to i8, !dbg !358079
  %i.bf = and i8 %i.be, 7, !dbg !358079
  %i.bg = shl nuw i8 1, %i.bf, !dbg !358080
  %i.bh = and i8 %i.bg, %i.bd, !dbg !358080
  %i.bi = icmp eq i8 %i.bh, 0, !dbg !358080
  br i1 %i.bi, label %bb.i, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.thread.i, !dbg !358080

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i: ; preds = %bb.i, %bb.g
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.023.i.i, %bb.g ], [ %spec.select.i.i, %bb.i ], !dbg !358081 ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.01124.i.i, %bb.g ], [ 1, %bb.i ], !dbg !358082 ; 2 uses
  %i.bj = icmp eq ptr %i.ag, %i.v, !dbg !358083
  br i1 %i.bj, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i, label %bb.g, !dbg !358057

bb.i:                                             ; preds = %bb.h
  %i.bk = trunc nuw i64 %.sroa.0.01124.i.i to i1, !dbg !358084
  %spec.select.i.i = select i1 %i.bk, i64 %.sroa.7.023.i.i, i64 %.sroa.8.021.i.i, !dbg !358084
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i, !dbg !358084

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i: ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs1LHh8CLbVkQ_11polars_core.exit.i.i
  %i.bl = trunc nuw i64 %.sroa.0.1.i.i to i1, !dbg !358085
  br i1 %i.bl, label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.thread.i, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE7agg_max0Be_.exit, !dbg !358085

bb.j:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 48, !dbg !358086
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !358086, !noalias !358029, !noundef !8787
  %i.bo = icmp eq i64 %i.bn, 0, !dbg !358087
  br i1 %i.bo, label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE7agg_max0Be_.exit, label %bb.l, !dbg !358087

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.thread.i: ; preds = %bb.h, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i
  %.sroa.3.0.i14.i = phi i64 [ %.sroa.7.1.i.i, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.i ], [ %.sroa.8.021.i.i, %bb.h ] ; 3 uses
  %i.bp = icmp ult i64 %.sroa.3.0.i14.i, %i.g, !dbg !358088
  br i1 %i.bp, label %_RNCNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBg_13chunked_array12ChunkedArrayNtNtBg_9datatypes11BooleanTypeE7agg_max0s_0Bg_.exit.i, label %bb.k, !dbg !358088

bb.k:                                             ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.thread.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.3.0.i14.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #57, !dbg !358088, !noalias !358035
  unreachable, !dbg !358088

_RNCNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBg_13chunked_array12ChunkedArrayNtNtBg_9datatypes11BooleanTypeE7agg_max0s_0Bg_.exit.i: ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean38take_arg_max_bool_iter_unchecked_nullsINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0EEB3d_.exit.thread.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.i, i64 %.sroa.3.0.i14.i, !dbg !358088
  %i.br = load i32, ptr %i.bq, align 4, !dbg !358088, !noalias !358027, !noundef !8787
  %i.bs = zext i32 %i.br to i64, !dbg !358088
  %i.bt = load ptr, ptr %i.y, align 8, !dbg !358089, !noalias !358035, !nonnull !8787, !noundef !8787 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40, !dbg !358090
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !358090, !noalias !358035, !noundef !8787
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32, !dbg !358091
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !358091, !noalias !358035, !noundef !8787
  %i.by = load i64, ptr %i.af, align 8, !dbg !358092, !noalias !358035, !noundef !8787
  %i.bz = add i64 %i.by, %i.bs, !dbg !358092      ; 2 uses
  %i.ca = lshr i64 %i.bz, 3, !dbg !358093         ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv, !dbg !358094
  tail call void @llvm.assume(i1 %i.cb), !dbg !358095
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca, !dbg !358096
  %i.cd = load i8, ptr %i.cc, align 1, !dbg !358097, !noalias !358035, !noundef !8787
  %i.ce = trunc i64 %i.bz to i8, !dbg !358098
  %i.cf = and i8 %i.ce, 7, !dbg !358098
  %i.cg = lshr i8 %i.cd, %i.cf, !dbg !358098
  %i.ch = and i8 %i.cg, 1, !dbg !358099
  br label %_RNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBe_13chunked_array12ChunkedArrayNtNtBe_9datatypes11BooleanTypeE7agg_max0Be_.exit, !dbg !358100

bb.l:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.i, i64 %i.g, !dbg !358101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !358102, !noalias !358029
  store ptr %.sroa.06.0.i, ptr %i.b, align 8, !dbg !358103, !noalias !358029
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !358103
  store ptr %i.ci, ptr %i.cj, align 8, !dbg !358103, !noalias !358029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !358104, !noalias !358036
  store i64 0, ptr %i.a, align 8, !dbg !358105, !noalias !358036
  %i.ck = call { i64, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCNvNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations9idx2usize0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2F_8position5checkjNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy7kernels8take_agg7boolean41take_arg_max_bool_iter_unchecked_no_nullsBN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowjEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.q, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !dbg !358106, !noalias !358027 ; 2 uses
  %i.cl = extractvalue { i64, i64 } %i.ck, 0, !dbg !358106
  %i.cm = trunc nuw i64 %i.cl to i1, !dbg !358107
  %i.cn = extractvalue { i64, i64 } %i.ck, 1, !dbg !358107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !358108, !noalias !358036
  %.sroa.5.1.i.i = select i1 %i.cm, i64 %i.cn, i64 0, !dbg !358109 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !358110, !noalias !358029
  %i.co = icmp ult i64 %.sroa.5.1.i.i, %i.g, !dbg !358111
  br i1 %i.co, label %_RNCNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBg_13chunked_array12ChunkedArrayNtNtBg_9datatypes11BooleanTypeE7agg_max00Bg_.exit.i, label %bb.m, !dbg !358111

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.5.1.i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #57, !dbg !358111, !noalias !358037
  unreachable, !dbg !358111

_RNCNCNvMs_NtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by12aggregations7booleanINtNtBg_13chunked_array12ChunkedArrayNtNtBg_9datatypes11BooleanTypeE7agg_max00Bg_.exit.i: ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.0.i, i64 %.sroa.5.1.i.i, !dbg !358111
  %i.cq = load i32, ptr %i.cp, align 4, !dbg !358111, !noalias !358027, !noundef !8787
  %i.cr = zext i32 %i.cq to i64, !dbg !358111
  %i.cs = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !358112
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !358112, !noalias !358037, !nonnull !8787, !noundef !8787 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40, !dbg !358113
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !358113, !noalias !358037, !noundef !8787
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 32, !dbg !358114
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !358114, !noalias !358037, !noundef !8787
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 40, !dbg !358115
  %i.cz = load i64, ptr %i.cy, align 8, !dbg !358115, !noalias !358037, !noundef !8787
  %i.da = add i64 %i.cz, %i.cr, !dbg !358115      ; 2 uses
  %i.db = lshr i64 %i.da, 3, !dbg !358116         ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.cv, !dbg !358117
  call void @llvm.assume(i1 %i.dc), !dbg !358118
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.db, !dbg !358119
end_hunk_1
