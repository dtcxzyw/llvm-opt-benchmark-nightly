Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBW_E6extendINtNtNtB1D_8adapters3map3MapINtNtB2F_7flatten7FlatMapIB2B_INtNtNtB1F_5slice4iter4IterINtNtB11_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB5f_12ChunkedArrayNtNtB5h_9datatypes10BinaryTypeE13downcast_iter0EINtNtB4j_8iterator17NonNullValuesIterINtNtB4j_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB8J_29BinaryUnorderedImplodeReducerNtB8L_7Reducer9reduce_ca0ENCB8D_s_0EEB8N_:_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6U_.exit
  %i.em = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.0.0.i.i, i1 false), !dbg !66913 ; 3 uses
  %i.en = zext nneg i32 %i.em to i64, !dbg !66914
  %i.eo = add i64 %i.bt, %i.en, !dbg !66915       ; 5 uses
  %i.ep = icmp samesign ult i32 %i.em, 32, !dbg !66916
  br i1 %i.ep, label %bb.s, label %bb.i, !dbg !66916

bb.s:                                             ; preds = %_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask7get_u32.exit.i
  %i.eq = lshr exact i32 %.sroa.0.0.i.i, %i.em, !dbg !66917
  %i.er = xor i32 %i.eq, -1, !dbg !66918
  %i.es = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.er, i1 false), !dbg !66919
  %i.et = zext nneg i32 %i.es to i64, !dbg !66917
  %i.eu = add i64 %i.eo, %i.et, !dbg !66920
  store i64 %i.eu, ptr %i.m, align 8, !dbg !66920, !alias.scope !66747, !noalias !66719
  br label %bb.t, !dbg !66921

bb.t:                                             ; preds = %.peel.next.i.i, %bb.s
  %.lcssa.sink.i = phi i64 [ %i.eo, %bb.s ], [ %i.bj, %.peel.next.i.i ] ; 3 uses
  %i.ev = add nuw i64 %.lcssa.sink.i, 1, !dbg !66922
  store i64 %i.ev, ptr %i.l, align 16, !dbg !66922, !alias.scope !66747, !noalias !66719
  %i.ew = load i64, ptr %.sroa.524.0..sroa_idx, align 16, !dbg !66922, !alias.scope !66747, !noalias !66719, !noundef !3509
  %i.ex = add i64 %i.ew, -1, !dbg !66922
  store i64 %i.ex, ptr %.sroa.524.0..sroa_idx, align 16, !dbg !66922, !alias.scope !66747, !noalias !66719
  %i.ey = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 40, !dbg !66799
  %i.ez = load ptr, ptr %i.ey, align 8, !dbg !66799, !noalias !66751, !noundef !3509
  %i.fa = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 48, !dbg !66800
  %i.fb = load i64, ptr %i.fa, align 8, !dbg !66800, !noalias !66751, !noundef !3509
  %i.fc = icmp ult i64 %.lcssa.sink.i, %i.fb, !dbg !66801
  call void @llvm.assume(i1 %i.fc), !dbg !66802
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %.lcssa.sink.i, !dbg !66803 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 64, !dbg !66804
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !66804, !noalias !66751, !noundef !3509
  %i.fg = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 72, !dbg !66805
  %i.fh = load i64, ptr %i.fg, align 8, !dbg !66805, !noalias !66751, !noundef !3509
  call void @llvm.experimental.noalias.scope.decl(metadata !66752), !dbg !66806
  call void @llvm.experimental.noalias.scope.decl(metadata !66753), !dbg !66806
  %i.fi = load i32, ptr %i.fd, align 4, !dbg !66807, !alias.scope !66752, !noalias !66754, !noundef !3509 ; 3 uses
  %i.fj = icmp ult i32 %i.fi, 13, !dbg !66807
  br i1 %i.fj, label %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i.loopexit, label %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !66807

_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i.loopexit: ; preds = %bb.t
  store ptr %storemerge.i.i, ptr %.sroa.3.0..sroa_idx, align 16, !dbg !66923, !alias.scope !66755, !noalias !66719
  store ptr %i.bi, ptr %i.d, align 16, !dbg !66924
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i, !dbg !66925

_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i.loopexit, %bb.c
  %.lcssa6.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.fd, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i.loopexit ], !dbg !66803
  %.lcssa.i.i = phi i32 [ %i.al, %bb.c ], [ %i.fi, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i.loopexit ], !dbg !66807
  %i.fk = getelementptr inbounds nuw i8, ptr %.lcssa6.i.i, i64 4, !dbg !66925
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.thread.i, !dbg !66926

_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.t
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 8, !dbg !66808
  %i.fm = load i32, ptr %i.fl, align 4, !dbg !66808, !alias.scope !66752, !noalias !66754, !noundef !3509
  %i.fn = zext i32 %i.fm to i64, !dbg !66808      ; 2 uses
  %i.fo = icmp samesign ugt i64 %i.fh, %i.fn, !dbg !66809
  call void @llvm.assume(i1 %i.fo), !dbg !66810
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.fn, !dbg !66811
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8, !dbg !66812
  %i.fr = load ptr, ptr %i.fq, align 8, !dbg !66812, !alias.scope !66756, !noalias !66757, !noundef !3509 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fr, null, !dbg !66813
  br i1 %.not4.i.i.i.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i, label %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i.loopexit, !dbg !66814

_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i.loopexit: ; preds = %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  store ptr %storemerge.i.i, ptr %.sroa.3.0..sroa_idx, align 16, !dbg !66923, !alias.scope !66755, !noalias !66719
  store ptr %i.bi, ptr %i.d, align 16, !dbg !66924
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !66927

_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i.loopexit, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.peel.i.i
  %.lcssa8.i.i = phi ptr [ %i.at, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.peel.i.i ], [ %i.fr, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i.loopexit ], !dbg !66812
  %.lcssa7.i.i = phi ptr [ %i.ag, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.peel.i.i ], [ %i.fd, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i.loopexit ], !dbg !66803
  %.lcssa5.i.i = phi i32 [ %i.al, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.peel.i.i ], [ %i.fi, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i.loopexit ], !dbg !66807
  %i.fs = getelementptr inbounds nuw i8, ptr %.lcssa7.i.i, i64 12, !dbg !66927
  %i.ft = load i32, ptr %i.fs, align 4, !dbg !66927, !alias.scope !66752, !noalias !66754, !noundef !3509
  %i.fu = zext i32 %i.ft to i64, !dbg !66927
  %i.fv = getelementptr inbounds nuw i8, ptr %.lcssa8.i.i, i64 %i.fu, !dbg !66928
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.thread.i, !dbg !66926

_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.loopexit: ; preds = %bb.i, %.preheader.i
  %.lcssa49 = phi i64 [ %i.bj, %.preheader.i ], [ %i.eo, %bb.i ]
  store i64 %.lcssa49, ptr %i.l, align 16, !dbg !66915
  br label %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i, !dbg !66815

_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i: ; preds = %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !66821, !noalias !66758
  %i.fw = icmp eq ptr %i.bi, %i.av, !dbg !66823
  br i1 %i.fw, label %_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread28.i.i.i.loopexit, label %bb.u, !dbg !66824

_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread28.i.i.i.loopexit: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 16, !dbg !66923, !alias.scope !66755, !noalias !66719
  store ptr %i.bi, ptr %i.d, align 16, !dbg !66924
  br label %_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread28.i.i.i, !dbg !66844

_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread28.i.i.i: ; preds = %_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread28.i.i.i.loopexit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !66844, !noalias !66758
  br label %_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread.i.i.i, !dbg !66929

bb.u:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !66825
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !dbg !66827, !noalias !66759, !nonnull !3509, !noundef !3509 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 80, !dbg !66828 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !66828, !noalias !66760, !noundef !3509
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fz, null, !dbg !66828
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 48, !dbg !66829
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !66829, !noalias !66760, !noundef !3509 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v, !dbg !66830

bb.v:                                             ; preds = %bb.u
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 96, !dbg !66831 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !dbg !66831, !noalias !66761, !noundef !3509
  %i.ge = icmp eq i64 %i.gb, %i.gd, !dbg !66832
  br i1 %i.ge, label %bb.x, label %.loopexit.i.i, !dbg !66832, !prof !3850

bb.w:                                             ; preds = %bb.u
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !66839, !noalias !66762
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !dbg !66839, !noalias !66762
  store i64 %i.gb, ptr %i.h, align 8, !dbg !66839, !noalias !66762
  store i64 0, ptr %i.j, align 8, !dbg !66839, !noalias !66762
  br label %.peel.next.i.i.backedge, !dbg !66838

.loopexit.i.i:                                    ; preds = %bb.f, %bb.v
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #52, !dbg !66930, !noalias !66761
  unreachable, !dbg !66930

bb.x:                                             ; preds = %bb.v
  call void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7bitmaskNtB4_7BitMask11from_bitmap(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %i.fy), !dbg !66833, !noalias !66762
  %i.gf = load i64, ptr %i.gc, align 8, !dbg !66834, !noalias !66761, !noundef !3509
  %i.gg = call noundef i64 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap10unset_bits(ptr noundef nonnull align 8 %i.fy), !dbg !66835, !noalias !66761
  %i.gh = sub i64 %i.gf, %i.gg, !dbg !66836
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !dbg !66837, !noalias !66762
  br label %.peel.next.i.i.backedge, !dbg !66838

.peel.next.i.i.backedge:                          ; preds = %bb.x, %bb.w
  %.sink.i.i.i.i.peel.sink.i.i.be = phi i64 [ %i.gh, %bb.x ], [ %i.gb, %bb.w ]
  br label %.peel.next.i.i, !dbg !66842, !llvm.loop !66624

_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread.i.i.i: ; preds = %_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread28.i.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread.i.peel.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !66763), !dbg !66931
  %i.gi = load ptr, ptr %.sroa.625.0..sroa_idx, align 8, !dbg !66932, !alias.scope !66764, !noalias !66719, !noundef !3509
  %.not.i3.i.i.i = icmp eq ptr %i.gi, null, !dbg !66932
  br i1 %.not.i3.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit.thread, label %bb.y, !dbg !66933

bb.y:                                             ; preds = %_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !66765), !dbg !66934
  call void @llvm.experimental.noalias.scope.decl(metadata !66766), !dbg !66935
  %i.gj = call fastcc { i64, i64 } @_RNvXs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB4_11TrueIdxIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(64) %.sroa.726.0..sroa_idx) #58, !dbg !66936, !noalias !66719 ; 2 uses
  %i.gk = extractvalue { i64, i64 } %i.gj, 0, !dbg !66936
  %i.gl = trunc nuw i64 %i.gk to i1, !dbg !66937
  br i1 %i.gl, label %bb.z, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit.thread, !dbg !66937

bb.z:                                             ; preds = %bb.y
  %i.gm = extractvalue { i64, i64 } %i.gj, 1, !dbg !66936 ; 2 uses
  %i.gn = load ptr, ptr %.sroa.625.0..sroa_idx, align 8, !dbg !66938, !alias.scope !66767, !noalias !66719, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40, !dbg !66939
  %i.gp = load ptr, ptr %i.go, align 8, !dbg !66939, !noalias !66768, !noundef !3509
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 48, !dbg !66940
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !66940, !noalias !66768, !noundef !3509
  %i.gs = icmp ult i64 %i.gm, %i.gr, !dbg !66941
  call void @llvm.assume(i1 %i.gs), !dbg !66942
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.gm, !dbg !66943 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 64, !dbg !66944
  %i.gv = load ptr, ptr %i.gu, align 8, !dbg !66944, !noalias !66768, !noundef !3509
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 72, !dbg !66945
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !66945, !noalias !66768, !noundef !3509
  call void @llvm.experimental.noalias.scope.decl(metadata !66769), !dbg !66946
  call void @llvm.experimental.noalias.scope.decl(metadata !66770), !dbg !66946
  %i.gy = load i32, ptr %i.gt, align 4, !dbg !66947, !alias.scope !66769, !noalias !66771, !noundef !3509 ; 3 uses
  %i.gz = icmp ult i32 %i.gy, 13, !dbg !66947
  br i1 %i.gz, label %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.thread10.i11.i.i.i, label %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i8.i.i.i, !dbg !66947

_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.thread10.i11.i.i.i: ; preds = %bb.z
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 4, !dbg !66948
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.thread.i, !dbg !66949

_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i8.i.i.i: ; preds = %bb.z
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 8, !dbg !66950
  %i.hc = load i32, ptr %i.hb, align 4, !dbg !66950, !alias.scope !66769, !noalias !66771, !noundef !3509
  %i.hd = zext i32 %i.hc to i64, !dbg !66950      ; 2 uses
  %i.he = icmp samesign ugt i64 %i.gx, %i.hd, !dbg !66951
  call void @llvm.assume(i1 %i.he), !dbg !66952
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %i.hd, !dbg !66953
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8, !dbg !66954
  %i.hh = load ptr, ptr %i.hg, align 8, !dbg !66954, !alias.scope !66772, !noalias !66773, !noundef !3509 ; 2 uses
  %.not4.i10.i.i.i = icmp eq ptr %i.hh, null, !dbg !66955
  br i1 %.not4.i10.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit.thread, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.i, !dbg !66949

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.i: ; preds = %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i8.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 12, !dbg !66956
  %i.hj = load i32, ptr %i.hi, align 4, !dbg !66956, !alias.scope !66769, !noalias !66771, !noundef !3509
  %i.hk = zext i32 %i.hj to i64, !dbg !66956
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hk, !dbg !66957
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.thread.i, !dbg !66958

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.i, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.thread10.i11.i.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i
  %.sroa.0.0.i.i7.i = phi ptr [ %i.hl, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.i ], [ %i.ha, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.thread10.i11.i.i.i ], [ %i.fv, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i ], [ %i.fk, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i ]
  %.sroa.3.0.i6.pn.i.i6.in.i = phi i32 [ %i.gy, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.i ], [ %i.gy, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.thread10.i11.i.i.i ], [ %.lcssa5.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.i.i.i ], [ %.lcssa.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtB1b_7binview22BinaryViewArrayGenericShEERB2S_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskY9G75ZWc4U_11polars_expr.exit.thread22.i.i.i ] ; 2 uses
  %.sroa.3.0.i6.pn.i.i6.i = zext i32 %.sroa.3.0.i6.pn.i.i6.in.i to i64, !dbg !66959 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !66960, !noalias !66774
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i6.pn.i.i6.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !66960, !noalias !66774
  %i.hm = load i64, ptr %i.a, align 8, !dbg !66960, !range !3569, !noalias !66774, !noundef !3509
  %i.hn = trunc nuw i64 %i.hm to i1, !dbg !66961
  %i.ho = load i64, ptr %i.r, align 8, !dbg !66962, !range !3572, !noalias !66774, !noundef !3509 ; 4 uses
  br i1 %i.hn, label %bb.aa, label %bb.ab, !dbg !66961, !prof !3571

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.thread.i
  %i.hp = load i64, ptr %i.s, align 8, !dbg !66963, !noalias !66774
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ho, i64 %i.hp) #57, !dbg !66964, !noalias !66774
  unreachable, !dbg !66964

bb.ab:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterINtNtB2m_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6M_29BinaryUnorderedImplodeReducerNtB6O_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator4nextB6Q_.exit.thread.i
  %i.hq = load ptr, ptr %i.s, align 8, !dbg !66965, !noalias !66774, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.hr = icmp samesign uge i64 %i.ho, %.sroa.3.0.i6.pn.i.i6.i, !dbg !66966
  call void @llvm.assume(i1 %i.hr), !dbg !66967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !66968, !noalias !66774
  %.not.i.i = icmp eq i32 %.sroa.3.0.i6.pn.i.i6.in.i, 0, !dbg !66969
  br i1 %.not.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit, label %bb.ac, !dbg !66969

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hq, ptr nonnull readonly align 1 %.sroa.0.0.i.i7.i, i64 range(i64 0, -9223372036854775808) %.sroa.3.0.i6.pn.i.i6.i, i1 false), !dbg !66970, !noalias !66775
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit, !dbg !66971

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit: ; preds = %bb.ab, %bb.ac
  %.not = icmp eq i64 %i.ho, -9223372036854775808, !dbg !66789
  br i1 %.not, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit.thread, label %bb.ad, !dbg !66789

bb.ad:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit
  store i64 %i.ho, ptr %i.c, align 8, !dbg !66972
  store ptr %i.hq, ptr %.sroa.729.0..sroa_idx, align 8, !dbg !66972
  store i64 %.sroa.3.0.i6.pn.i.i6.i, ptr %.sroa.830.0..sroa_idx, align 8, !dbg !66972
  %i.hs = load i32, ptr %i.t, align 8, !dbg !66973, !alias.scope !66776, !noalias !66777, !noundef !3509 ; 2 uses
  %i.ht = load i32, ptr %i.u, align 4, !dbg !66974, !range !3606, !alias.scope !66776, !noalias !66777, !noundef !3509 ; 2 uses
  %i.hu = icmp eq i32 %i.hs, %i.ht, !dbg !66973
  br i1 %i.hu, label %bb.ae, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !66973, !prof !3571

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1)
          to label %thread-pre-split unwind label %bb.af, !dbg !66975, !noalias !66777

thread-pre-split:                                 ; preds = %bb.ae
  %.pr = load i32, ptr %i.u, align 4, !dbg !66976, !alias.scope !66776, !noalias !66777
  %.pre = load i32, ptr %i.t, align 8, !dbg !66977, !alias.scope !66776, !noalias !66777
  br label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !66978

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit: ; preds = %thread-pre-split, %bb.ad
  %i.hv = phi i32 [ %.pre, %thread-pre-split ], [ %i.hs, %bb.ad ], !dbg !66977
  %i.hw = phi i32 [ %.pr, %thread-pre-split ], [ %i.ht, %bb.ad ], !dbg !66976
  %i.hx = icmp eq i32 %i.hw, 1, !dbg !66979
  %i.hy = load ptr, ptr %0, align 8
  %spec.select = select i1 %i.hx, ptr %0, ptr %i.hy, !dbg !66979
  %i.hz = zext i32 %i.hv to i64, !dbg !66977
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %spec.select, i64 %i.hz, !dbg !66980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !66981
  %i.ib = load i32, ptr %i.t, align 8, !dbg !66982, !alias.scope !66776, !noalias !66777, !noundef !3509
  %i.ic = add i32 %i.ib, 1, !dbg !66982
  store i32 %i.ic, ptr %i.t, align 8, !dbg !66982, !alias.scope !66776, !noalias !66777
  %.pre.i.i.i.pre = load ptr, ptr %.sroa.3.0..sroa_idx, align 16, !dbg !66788, !alias.scope !66778, !noalias !66719
  br label %bb.a, !dbg !66787

bb.af:                                            ; preds = %bb.ae
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #54
          to label %bb.ah unwind label %bb.ag, !dbg !66983

bb.ag:                                            ; preds = %bb.af
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !66984
  unreachable, !dbg !66984

bb.ah:                                            ; preds = %bb.af
  resume { ptr, i32 } %i.id, !dbg !66984

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit.thread: ; preds = %_RNvXs9_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapIBZ_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3g_12ChunkedArrayNtNtB3i_9datatypes10BinaryTypeE13downcast_iter0ENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB5q_29BinaryUnorderedImplodeReducerNtB5s_7Reducer9reduce_ca0EEINtB5_8FuseImplBY_E4nextB5u_.exit.thread.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapIBN_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3m_12ChunkedArrayNtNtB3o_9datatypes10BinaryTypeE13downcast_iter0EINtNtB2q_8iterator17NonNullValuesIterINtNtB2q_7binview22BinaryViewArrayGenericShEENCNvXs0_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeNtB6Q_29BinaryUnorderedImplodeReducerNtB6S_7Reducer9reduce_ca0ENCB6K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB6U_.exit, %bb.y, %_RNvYNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array8iterator17NonNullValuesIterINtNtBa_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextINtNtNtB22_3ops8function6FnOnceTQB5_EE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !66985
  ret void, !dbg !66986
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBW_E6extendINtNtNtB1D_8adapters6cloned6ClonedINtNtNtB1F_5slice4iter4IterBW_EEECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !66987 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = ptrtoint ptr %2 to i64, !dbg !67015
  %i.d = ptrtoint ptr %1 to i64, !dbg !67015
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !67015
  %i.f = udiv exact i64 %i.e, 24, !dbg !67015
  tail call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f), !dbg !67016
  %i.g = icmp eq ptr %1, %2, !dbg !67017
  br i1 %i.g, label %.loopexit, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.lr.ph, !dbg !67018

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.lr.ph: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit, !dbg !67018

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.lr.ph, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.05.010 = phi ptr [ %1, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.lr.ph ], [ %i.j, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 24, !dbg !67019 ; 2 uses
  call void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.05.010), !dbg !67020
  %.pr = load i64, ptr %i.a, align 8, !dbg !67021
  %.not = icmp eq i64 %.pr, -9223372036854775808, !dbg !67021
  br i1 %.not, label %.loopexit, label %bb.b, !dbg !67021

bb.b:                                             ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !67022
  %i.k = load i32, ptr %i.h, align 8, !dbg !67023, !alias.scope !67013, !noalias !67014, !noundef !3509 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !dbg !67024, !range !3606, !alias.scope !67013, !noalias !67014, !noundef !3509 ; 2 uses
  %i.m = icmp eq i32 %i.k, %i.l, !dbg !67023
  br i1 %i.m, label %bb.c, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !67023, !prof !3571

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1)
          to label %thread-pre-split unwind label %bb.d, !dbg !67025, !noalias !67014

thread-pre-split:                                 ; preds = %bb.c
  %.pr9 = load i32, ptr %i.i, align 4, !dbg !67026, !alias.scope !67013, !noalias !67014
  %.pre = load i32, ptr %i.h, align 8, !dbg !67027, !alias.scope !67013, !noalias !67014
  br label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !67028

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit: ; preds = %thread-pre-split, %bb.b
  %i.n = phi i32 [ %.pre, %thread-pre-split ], [ %i.k, %bb.b ], !dbg !67027
  %i.o = phi i32 [ %.pr9, %thread-pre-split ], [ %i.l, %bb.b ], !dbg !67026
  %i.p = icmp eq i32 %i.o, 1, !dbg !67029
  %i.q = load ptr, ptr %0, align 8
  %spec.select = select i1 %i.p, ptr %0, ptr %i.q, !dbg !67029
  %i.r = zext i32 %i.n to i64, !dbg !67027
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %spec.select, i64 %i.r, !dbg !67030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !67031
  %i.t = load i32, ptr %i.h, align 8, !dbg !67032, !alias.scope !67013, !noalias !67014, !noundef !3509
  %i.u = add i32 %i.t, 1, !dbg !67032
  store i32 %i.u, ptr %i.h, align 8, !dbg !67032, !alias.scope !67013, !noalias !67014
  %i.v = icmp eq ptr %i.j, %2, !dbg !67017
  br i1 %i.v, label %.loopexit, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit, !dbg !67018

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #54
          to label %bb.f unwind label %bb.e, !dbg !67033

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !67034
  unreachable, !dbg !67034

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w, !dbg !67034

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc3vec3VechEE4pushCskY9G75ZWc4U_11polars_expr.exit, %bb.a
  ret void, !dbg !67035
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecNtNtB8_7float164pf16EINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBW_E6extendINtNtNtB1o_8adapters6copied6CopiedINtNtNtB1q_5slice4iter4IterBW_EEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !67036 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !67050
  store ptr %1, ptr %i.c, align 8, !dbg !67051
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !67051
  store ptr %2, ptr %i.d, align 8, !dbg !67051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !67052
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !67053
  %i.e = load i64, ptr %i.b, align 8, !dbg !67052, !noundef !3509
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e), !dbg !67054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !67055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !67056
  store ptr %1, ptr %i.a, align 8, !dbg !67056
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !67056
  store ptr %2, ptr %i.f, align 8, !dbg !67056
  %i.g = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !67057 ; 2 uses
  %i.h = extractvalue { i16, i16 } %i.g, 0, !dbg !67057
  %i.i = trunc i16 %i.h to i1, !dbg !67057
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !dbg !67057

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.b, !dbg !67057

bb.b:                                             ; preds = %.lr.ph, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCskY9G75ZWc4U_11polars_expr.exit
  %i.l = phi { i16, i16 } [ %i.g, %.lr.ph ], [ %i.y, %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCskY9G75ZWc4U_11polars_expr.exit ]
  %i.m = extractvalue { i16, i16 } %i.l, 1, !dbg !67057
  %i.n = load i32, ptr %i.j, align 8, !dbg !67058, !alias.scope !67049, !noundef !3509
  %i.o = load i32, ptr %i.k, align 4, !dbg !67059, !range !3606, !alias.scope !67049, !noundef !3509 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o, !dbg !67058
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !67058, !prof !3571

bb.c:                                             ; preds = %bb.b
  call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef 1), !dbg !67060
  %.pr = load i32, ptr %i.k, align 4, !dbg !67061, !alias.scope !67049
  br label %bb.d, !dbg !67060

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %.pr, %bb.c ], [ %i.o, %bb.b ], !dbg !67061
  %i.r = icmp eq i32 %i.q, 1, !dbg !67062
  br i1 %i.r, label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCskY9G75ZWc4U_11polars_expr.exit, label %bb.e, !dbg !67062

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %0, align 8, !dbg !67063, !alias.scope !67049, !noundef !3509
  br label %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !67064

_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.e ], [ %0, %bb.d ], !dbg !67065
  %i.t = load i32, ptr %i.j, align 8, !dbg !67066, !alias.scope !67049, !noundef !3509
  %i.u = zext i32 %i.t to i64, !dbg !67066
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.i, i64 %i.u, !dbg !67067
  store i16 %i.m, ptr %i.v, align 2, !dbg !67068
  %i.w = load i32, ptr %i.j, align 8, !dbg !67069, !alias.scope !67049, !noundef !3509
  %i.x = add i32 %i.w, 1, !dbg !67069
  store i32 %i.x, ptr %i.j, align 8, !dbg !67069, !alias.scope !67049
  %i.y = call { i16, i16 } @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !67057 ; 2 uses
  %i.z = extractvalue { i16, i16 } %i.y, 0, !dbg !67057
  %i.aa = trunc i16 %i.z to i1, !dbg !67057
  br i1 %i.aa, label %bb.b, label %._crit_edge, !dbg !67057

._crit_edge:                                      ; preds = %_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E4pushCskY9G75ZWc4U_11polars_expr.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !67070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !67071
  ret void, !dbg !67072
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXs3_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecNtNtB8_7float164pf16EINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect6ExtendBW_E6extendINtNtNtB1o_8adapters7flatten7FlatMapINtNtB2q_3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB5b_12ChunkedArrayNtNtB5d_9datatypes11Float16TypeE13downcast_iter0EINtNtB4f_8iterator17NonNullValuesIterSBW_ENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeINtB81_26NumUnorderedImplodeReducerB6r_ENtB83_7Reducer9reduce_ca0EEB85_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %1) unnamed_addr #11 personality ptr @rust_eh_personality !dbg !67073 {
_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3i_12ChunkedArrayNtNtB3k_9datatypes11Float16TypeE13downcast_iter0EINtNtB2m_8iterator17NonNullValuesIterSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXs_NtNtCskY9G75ZWc4U_11polars_expr6reduce7implodeINtB6O_26NumUnorderedImplodeReducerB4y_ENtB6Q_7Reducer9reduce_ca0ENtNtNtB9_6traits8iterator8Iterator9size_hintB6S_.exit:
  %i.a = alloca [64 x i8], align 8                ; 16 uses
  %.sroa.9.i.i = alloca [64 x i8], align 8        ; 8 uses
  %i.b = alloca [176 x i8], align 16              ; 16 uses
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !67251
  %.sroa.6.0.copyload10 = load ptr, ptr %.sroa.6.0..sroa_idx9, align 8, !dbg !67251, !alias.scope !67209 ; 3 uses
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !67251
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !67252 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !67252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx11, i64 64, i1 false), !dbg !67251
  %.sroa.712.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !67251
  %.sroa.712.0.copyload14 = load i64, ptr %.sroa.712.0..sroa_idx13, align 8, !dbg !67251, !alias.scope !67209 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !67251
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8, !dbg !67251, !alias.scope !67209 ; 2 uses
  %.sroa.9.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !67251
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !67252 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.727.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx17, i64 64, i1 false), !dbg !67251
  %.sroa.918.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 168, !dbg !67251
  %.sroa.918.0.copyload20 = load i64, ptr %.sroa.918.0..sroa_idx19, align 8, !dbg !67251, !alias.scope !67209 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.6.0.copyload10, null, !dbg !67253
  %.not54.i.i = icmp eq ptr %.sroa.8.0.copyload16, null, !dbg !67254
  %.sroa.8.0.i.i = select i1 %.not54.i.i, i64 0, i64 %.sroa.918.0.copyload20, !dbg !67255 ; 2 uses
  %i.c = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.712.0.copyload14, i64 %.sroa.8.0.i.i), !dbg !67256
  %i.d = select i1 %.not.i.i, i64 %.sroa.8.0.i.i, i64 %i.c, !dbg !67257
  tail call void @_RNvMs0_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_7float164pf16E7reserveCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d), !dbg !67258
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !67252 ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !dbg !67251, !alias.scope !67209
  store <2 x ptr> %i.e, ptr %i.b, align 16, !dbg !67252
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !67252 ; 6 uses
  store ptr %.sroa.6.0.copyload10, ptr %.sroa.3.0..sroa_idx, align 16, !dbg !67252
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !67252
  store i64 %.sroa.712.0.copyload14, ptr %.sroa.525.0..sroa_idx, align 8, !dbg !67252
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !67252 ; 3 uses
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.626.0..sroa_idx, align 16, !dbg !67252
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !67252
  store i64 %.sroa.918.0.copyload20, ptr %.sroa.828.0..sroa_idx, align 8, !dbg !67252
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.a, !dbg !67259
end_hunk_0
