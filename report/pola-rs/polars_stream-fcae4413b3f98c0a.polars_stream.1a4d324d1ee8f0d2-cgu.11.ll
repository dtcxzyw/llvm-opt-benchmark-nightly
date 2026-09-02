Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.11?download=true
inline.NumInlined: 6898
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNCINvMNtNtB1q_5aexpr8traverseNtB4c_5AExpr10inputs_revINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3m_EE0NCINvNvB2g_8for_each4callB3m_NCINvMsj_B4Y_B4V_14extend_trustedINtB2Z_3MapBM_B44_EE0E0E0ECs2g09Ig8GZd6_13polars_stream:bb.a

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !53872, !noundef !3924
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !53872
  br label %bb.b, !dbg !53878

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.e = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.b ], !dbg !53880 ; 2 uses
  %.sroa.2.012.i = phi ptr [ %1, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -112, !dbg !53880 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.2.012.i, i64 -16, !dbg !53881
  %.val8.i = load i64, ptr %i.g, align 16, !dbg !53881, !noalias !53871, !noundef !3924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53873), !dbg !53881
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53874), !dbg !53882
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53875), !dbg !53883
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e, !dbg !53884
  store i64 %.val8.i, ptr %i.h, align 8, !dbg !53885, !noalias !53872
  %i.i = add i64 %i.e, 1, !dbg !53886             ; 2 uses
  %i.j = icmp eq ptr %0, %i.f, !dbg !53877
  br i1 %i.j, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1I_8adapters3map8map_foldRBJ_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNCINvMNtNtBN_5aexpr8traverseNtB48_5AExpr10inputs_revINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3i_EE0NCINvNvNtNtB1G_8iterator8Iterator8for_each4callB3i_NCINvMsj_B4T_B4Q_14extend_trustedINtB2K_3MapINtNtB2M_3rev3RevB3_EB40_EE0E0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !53878

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1I_8adapters3map8map_foldRBJ_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNCINvMNtNtBN_5aexpr8traverseNtB48_5AExpr10inputs_revINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3i_EE0NCINvNvNtNtB1G_8iterator8Iterator8for_each4callB3i_NCINvMsj_B4T_B4Q_14extend_trustedINtB2K_3MapINtNtB2M_3rev3RevB3_EB40_EE0E0E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b, %._crit_edge13.i
  %.val5.i = phi i64 [ %.val5.pre.i, %._crit_edge13.i ], [ %i.i, %bb.b ], !dbg !53879
  %.val.i = load ptr, ptr %2, align 8, !dbg !53879, !alias.scope !53871, !nonnull !3924, !align !4191, !noundef !3924
  store i64 %.val5.i, ptr %.val.i, align 8, !dbg !53887, !noalias !53871
  ret void, !dbg !53888
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNvMs4_B1o_B1m_4nodeNCINvNvB2g_8for_each4callB3m_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4Z_3VecB3m_E14extend_trustedINtB2Z_3MapBM_B44_EE0E0E0ECs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #20 personality ptr @rust_eh_personality !dbg !53889 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53928), !dbg !53933
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1, !dbg !53934
  br i1 %i.a, label %._crit_edge13.i, label %.lr.ph.i, !dbg !53935

._crit_edge13.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !53936, !alias.scope !53928
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1I_8adapters3map8map_foldRBJ_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNvMs4_BL_BJ_4nodeNCINvNvNtNtB1G_8iterator8Iterator8for_each4callB3i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecB3i_E14extend_trustedINtB2K_3MapINtNtB2M_3rev3RevB3_EB40_EE0E0E0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !53935

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !53929, !noundef !3924
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.promoted.i = load i64, ptr %i.d, align 8, !alias.scope !53929
  br label %bb.b, !dbg !53935

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.e = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.b ], !dbg !53937 ; 2 uses
  %.sroa.2.012.i = phi ptr [ %1, %.lr.ph.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.2.012.i, i64 -112, !dbg !53937 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.2.012.i, i64 -16, !dbg !53938
  %.val8.i = load i64, ptr %i.g, align 16, !dbg !53938, !noalias !53928, !noundef !3924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53930), !dbg !53938
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53931), !dbg !53939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53932), !dbg !53940
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e, !dbg !53941
  store i64 %.val8.i, ptr %i.h, align 8, !dbg !53942, !noalias !53929
  %i.i = add i64 %i.e, 1, !dbg !53943             ; 2 uses
  %i.j = icmp eq ptr %0, %i.f, !dbg !53934
  br i1 %i.j, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1I_8adapters3map8map_foldRBJ_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNvMs4_BL_BJ_4nodeNCINvNvNtNtB1G_8iterator8Iterator8for_each4callB3i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecB3i_E14extend_trustedINtB2K_3MapINtNtB2M_3rev3RevB3_EB40_EE0E0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !53935

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNtNtB1I_8adapters3map8map_foldRBJ_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNvMs4_BL_BJ_4nodeNCINvNvNtNtB1G_8iterator8Iterator8for_each4callB3i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5f_3VecB3i_E14extend_trustedINtB2K_3MapINtNtB2M_3rev3RevB3_EB40_EE0E0E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b, %._crit_edge13.i
  %.val5.i = phi i64 [ %.val5.pre.i, %._crit_edge13.i ], [ %i.i, %bb.b ], !dbg !53936
  %.val.i = load ptr, ptr %2, align 8, !dbg !53936, !alias.scope !53928, !nonnull !3924, !align !4191, !noundef !3924
  store i64 %.val5.i, ptr %.val.i, align 8, !dbg !53944, !noalias !53928
  ret void, !dbg !53945
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2t_8for_each4callB1K_NCINvMsj_B11_INtB11_3VecB1K_E14extend_trustedBM_E0E0ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !53946 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !54002 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !54002
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !54002, !nonnull !3924, !noundef !3924 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !54002
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !54002
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !54002
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !54002 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53993), !dbg !54003
  %i.b = icmp eq ptr %.sroa.4.0.copyload, %.sroa.6.0.copyload, !dbg !54004
  br i1 %i.b, label %._crit_edge18.i, label %.lr.ph.i, !dbg !54005

._crit_edge18.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !54006, !alias.scope !53993, !noalias !53994
  br label %_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtB1D_8iterator8Iterator8for_each4callBR_NCINvMsj_B8_INtB8_3VecBR_E14extend_trustedINtNtNtB1F_8adapters3rev3RevB3_EE0E0ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !54005

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !53995, !noalias !53994, !noundef !3924
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted15.i = load i64, ptr %i.e, align 8, !alias.scope !53995, !noalias !53994
  br label %bb.b, !dbg !54005

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.f = phi i64 [ %.promoted15.i, %.lr.ph.i ], [ %i.k, %bb.b ], !dbg !54007 ; 2 uses
  %i.g = phi ptr [ %.sroa.6.0.copyload, %.lr.ph.i ], [ %i.h, %bb.b ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8, !dbg !54008 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !54009, !noalias !53996, !noundef !3924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53997), !dbg !54010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53998), !dbg !54011
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f, !dbg !54012
  store i64 %i.i, ptr %i.j, align 8, !dbg !54013, !noalias !53999
  %i.k = add i64 %i.f, 1, !dbg !54014             ; 2 uses
  %i.l = icmp eq ptr %.sroa.4.0.copyload, %i.h, !dbg !54004
  br i1 %i.l, label %_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtB1D_8iterator8Iterator8for_each4callBR_NCINvMsj_B8_INtB8_3VecBR_E14extend_trustedINtNtNtB1F_8adapters3rev3RevB3_EE0E0ECs2g09Ig8GZd6_13polars_stream.exit, label %bb.b, !dbg !54005

_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfolduNCINvNvNtNtB1D_8iterator8Iterator8for_each4callBR_NCINvMsj_B8_INtB8_3VecBR_E14extend_trustedINtNtNtB1F_8adapters3rev3RevB3_EE0E0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b, %._crit_edge18.i
  %.val7.i = phi i64 [ %.val7.pre.i, %._crit_edge18.i ], [ %i.k, %bb.b ], !dbg !54006
  %.val6.i = load ptr, ptr %1, align 8, !dbg !54006, !alias.scope !53993, !noalias !53994, !nonnull !3924, !align !4191, !noundef !3924
  store i64 %.val7.i, ptr %.val6.i, align 8, !dbg !54015, !noalias !54000
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !54016, !noalias !54001
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8, !dbg !54017, !noalias !54001
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !54017
  store ptr %.sroa.0.0.copyload, ptr %i.m, align 8, !dbg !54017, !noalias !54001
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !54018, !noalias !54001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !54019, !noalias !54001
  ret void, !dbg !54020
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3n_8adapters3map3MapINtNtNtB3p_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00EEB5x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !54021 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.0.0.copyload31 = load ptr, ptr %1, align 8, !dbg !54143, !alias.scope !54122 ; 4 uses
  %.sroa.7.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !54143
  %.sroa.7.0.copyload33 = load i64, ptr %.sroa.7.0..sroa_idx32, align 8, !dbg !54143, !alias.scope !54122 ; 3 uses
  %.sroa.12.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !54143
  %.sroa.12.0.copyload36 = load i64, ptr %.sroa.12.0..sroa_idx35, align 8, !dbg !54143, !alias.scope !54122 ; 4 uses
  %i.g = icmp ult i64 %.sroa.7.0.copyload33, %.sroa.12.0.copyload36, !dbg !54144
  br i1 %i.g, label %bb.b, label %bb.f, !dbg !54145

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload31) ]
  %i.h = load ptr, ptr %.sroa.0.0.copyload31, align 8, !dbg !54146, !noalias !54123, !nonnull !3924, !noundef !3924 ; 4 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !dbg !54147, !noalias !54123
  %i.j = icmp slt i64 %i.i, 0, !dbg !54148
  br i1 %i.j, label %bb.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit, !dbg !54148

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !54149
  unreachable, !dbg !54149

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit: ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.7.0.copyload33, 1, !dbg !54150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !54151
  store ptr %i.h, ptr %i.f, align 8, !dbg !54151
  %i.l = icmp ult i64 %i.k, %.sroa.12.0.copyload36, !dbg !54152
  br i1 %i.l, label %bb.d, label %bb.g, !dbg !54153

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit
  %i.m = add nuw i64 %.sroa.7.0.copyload33, 2, !dbg !54154 ; 2 uses
  %i.n = load ptr, ptr %.sroa.0.0.copyload31, align 8, !dbg !54155, !noalias !54126, !nonnull !3924, !noundef !3924 ; 4 uses
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !dbg !54156, !noalias !54126
  %i.p = icmp slt i64 %i.o, 0, !dbg !54157
  br i1 %i.p, label %bb.e, label %bb.h, !dbg !54157

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !54158
  unreachable, !dbg !54158

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !54159
  store i32 0, ptr %i.q, align 8, !dbg !54159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !54159
  store i32 1, ptr %i.r, align 4, !dbg !54159
  store ptr null, ptr %0, align 8, !dbg !54159
  br label %bb.m, !dbg !54127

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit
  store ptr %i.h, ptr %0, align 8, !dbg !54160
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !54160
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !54160
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !54160
  store i32 1, ptr %.sroa.7.0..sroa_idx70, align 4, !dbg !54160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !54161
  br label %bb.m, !dbg !54162

.thread53:                                        ; preds = %bb.h, %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = atomicrmw sub ptr %i.n, i64 1 release, align 8, !dbg !54163, !noalias !54129
  %i.u = icmp eq i64 %i.t, 1, !dbg !54164
  br i1 %i.u, label %bb.p, label %.thread, !dbg !54164

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !54165
  store ptr %i.n, ptr %i.e, align 8, !dbg !54165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !54166
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.0.copyload36, i64 %i.m), !dbg !54167
  %i.v = add nuw i64 %spec.select.i.i, 2, !dbg !54168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !54169
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.v, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.i unwind label %.thread53, !dbg !54169

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %i.a, align 8, !dbg !54169, !range !4001, !noundef !3924
  %i.x = trunc nuw i64 %i.w to i1, !dbg !54170
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !54171
  %i.z = load i64, ptr %i.y, align 8, !dbg !54171, !range !4164, !noundef !3924 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !54171 ; 2 uses
  br i1 %i.x, label %bb.j, label %bb.k, !dbg !54170, !prof !3961

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !54172
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #55
          to label %bb.o unwind label %.thread53, !dbg !54173

bb.k:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.aa, align 8, !dbg !54174, !nonnull !3924, !noundef !3924 ; 3 uses
  %i.ad = icmp ule i64 %i.v, %i.z, !dbg !54175
  tail call void @llvm.assume(i1 %i.ad), !dbg !54176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !54177
  store i64 %i.z, ptr %i.d, align 8, !dbg !54178
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !54178
  store ptr %i.ac, ptr %i.ae, align 8, !dbg !54178
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !54178
  store ptr %i.h, ptr %i.ac, align 8, !dbg !54179
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !54180
  store ptr %i.n, ptr %i.ag, align 8, !dbg !54181
  store i64 2, ptr %i.af, align 8, !dbg !54182, !alias.scope !54138
  store ptr %.sroa.0.0.copyload31, ptr %i.c, align 8, !dbg !54183
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !54183
  store i64 %i.m, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !54183
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !54183
  store i64 %.sroa.12.0.copyload36, ptr %.sroa.12.0..sroa_idx, align 8, !dbg !54183
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEINtB4_10SpecExtendBT_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB3q_3ops5range5RangejENCNCNvNtCs2g09Ig8GZd6_13polars_stream13physical_plan19insert_multiplexerss0_00EE11spec_extendB4G_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.l unwind label %.body19.thread, !dbg !54184

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !54185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !54185
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtB10_3vec3VecBV_EE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !54186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !54187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !54188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !54189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !54161
  br label %bb.m, !dbg !54190

bb.m:                                             ; preds = %bb.f, %bb.g, %bb.l
  ret void, !dbg !54191

.body19.thread:                                   ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.d) #54
          to label %.thread47 unwind label %bb.n, !dbg !54188

bb.n:                                             ; preds = %bb.q, %bb.p, %.body19.thread
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #56, !dbg !54192
  unreachable, !dbg !54192

bb.o:                                             ; preds = %bb.j
  unreachable

bb.p:                                             ; preds = %.thread53
  fence acquire, !dbg !54193
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #59
          to label %.thread unwind label %bb.n, !dbg !54194

.thread:                                          ; preds = %.thread53, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !54140), !dbg !54161
  call void @llvm.experimental.noalias.scope.decl(metadata !54141), !dbg !54195
  %i.aj = load ptr, ptr %i.f, align 8, !dbg !54196, !alias.scope !54142, !nonnull !3924, !noundef !3924
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !dbg !54197, !noalias !54142
  %i.al = icmp eq i64 %i.ak, 1, !dbg !54198
  br i1 %i.al, label %bb.q, label %.thread47, !dbg !54198

bb.q:                                             ; preds = %.thread
  fence acquire, !dbg !54199
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #59
          to label %.thread47 unwind label %bb.n, !dbg !54200

.thread47:                                        ; preds = %.body19.thread, %.thread, %bb.q
  %.pn.pn45 = phi { ptr, i32 } [ %i.s, %bb.q ], [ %i.s, %.thread ], [ %i.ah, %.body19.thread ]
  resume { ptr, i32 } %.pn.pn45, !dbg !54192
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBW_E9from_iterINtNtB1V_8adapters12GenericShuntINtNtB35_3map3MapINtNtNtB1X_3ops5range5RangejENCNCNCNCNvMs_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB4v_15RowGroupDecoder32row_group_data_to_df_prefiltered0s1_000EINtNtB1X_6result6ResultNtNtB1X_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEB4D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 16 captures(none) dereferenceable(176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !54201 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 2 uses
  %i.d = alloca [160 x i8], align 16              ; 4 uses
  %i.e = alloca [160 x i8], align 16              ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [160 x i8], align 16              ; 6 uses
  %i.i = alloca [160 x i8], align 16              ; 6 uses
  %.sroa.0 = alloca [160 x i8], align 16          ; 4 uses
  %i.j = alloca [160 x i8], align 16              ; 6 uses
  %i.k = alloca [160 x i8], align 16              ; 8 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !54258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !54259, !alias.scope !54242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !54260
  call void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCNCNCNCNvMs_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB1S_15RowGroupDecoder32row_group_data_to_df_prefiltered0s1_000EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB20_(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l), !dbg !54261
  %i.m = load i8, ptr %i.j, align 16, !dbg !54260, !range !4672, !noundef !3924
  %.not = icmp eq i8 %i.m, 32, !dbg !54260
  br i1 %.not, label %bb.c, label %bb.b, !dbg !54262

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !54263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.k, ptr noundef nonnull align 16 dereferenceable(160) %i.j, i64 160, i1 false), !dbg !54263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !54264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !54265
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCNCNCNCNvMs_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB1S_15RowGroupDecoder32row_group_data_to_df_prefiltered0s1_000EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator4nextB20_(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %bb.e unwind label %.thread, !dbg !54266

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !54264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !54267
  store i32 0, ptr %i.n, align 16, !dbg !54267
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 164, !dbg !54267
  store i32 1, ptr %i.o, align 4, !dbg !54267
  store ptr null, ptr %0, align 16, !dbg !54267
  br label %bb.v, !dbg !54243

bb.d:                                             ; preds = %bb.y
  br i1 %.sroa.02.131, label %bb.z, label %.thread23, !dbg !54268

.thread:                                          ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.z, !dbg !54268

bb.e:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.h, align 16, !dbg !54265, !range !4672, !noundef !3924
  %.not9 = icmp eq i8 %i.q, 32, !dbg !54265
  br i1 %.not9, label %bb.g, label %bb.f, !dbg !54269

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !54270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.i, ptr noundef nonnull align 16 dereferenceable(160) %i.h, i64 160, i1 false), !dbg !54270
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !54271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !54272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !54273
  invoke void @_RNvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3ops5range5RangejENCNCNCNCNvMs_NtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources7parquet16row_group_decodeNtB1S_15RowGroupDecoder32row_group_data_to_df_prefiltered0s1_000EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB20_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.l)
          to label %bb.i unwind label %.thread26, !dbg !54274

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !54271
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0), !dbg !54275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(160) %i.k, i64 160, i1 false), !dbg !54276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0, i64 160, i1 false), !dbg !54277
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !54277
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !54277
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 164, !dbg !54277
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !54277
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0), !dbg !54278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !54268
  br label %bb.v, !dbg !54279

bb.h:                                             ; preds = %.body13.thread
  br i1 %.sroa.01.1.lpad-body35, label %bb.y, label %.thread23, !dbg !54280

.thread26:                                        ; preds = %bb.f, %bb.i, %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y, !dbg !54280

bb.i:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.f, align 8, !dbg !54273, !noundef !3924
  %i.t = add i64 %i.s, 2, !dbg !54273             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !54281
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.t, i1 noundef zeroext false, i64 noundef 16, i64 noundef 160)
          to label %bb.j unwind label %.thread26, !dbg !54281

bb.j:                                             ; preds = %bb.i
  %i.u = load i64, ptr %i.a, align 8, !dbg !54281, !range !4001, !noundef !3924
  %i.v = trunc nuw i64 %i.u to i1, !dbg !54282
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !54283
  %i.x = load i64, ptr %i.w, align 8, !dbg !54283, !range !4164, !noundef !3924 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !54283 ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l, !dbg !54282, !prof !3961

bb.k:                                             ; preds = %bb.j
  %i.z = load i64, ptr %i.y, align 8, !dbg !54284
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #55
          to label %bb.x unwind label %.thread26, !dbg !54285

bb.l:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.y, align 8, !dbg !54286, !nonnull !3924, !noundef !3924 ; 2 uses
  %i.ab = icmp ule i64 %i.t, %i.x, !dbg !54287
  call void @llvm.assume(i1 %i.ab), !dbg !54288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !54289
  store i64 %i.x, ptr %i.g, align 8, !dbg !54290
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !54290 ; 3 uses
end_hunk_0
