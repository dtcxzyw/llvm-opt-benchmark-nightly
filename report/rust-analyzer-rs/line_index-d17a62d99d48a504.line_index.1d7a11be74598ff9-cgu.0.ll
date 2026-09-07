Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/line_index-d17a62d99d48a504.line_index.1d7a11be74598ff9-cgu.0?download=true
inline.NumInlined: 222
inline.NumDeleted: 123
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_Cs2wU4RHBJEmX_10line_indexNtB5_9LineIndex12try_line_col:bb.a
  %i.av = add i16 %.sroa.06.0.i31.i.i, -1
  %i.aw = and i16 %i.av, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ax = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ay = add i64 %.sroa.01.0.i.i.i, %i.ax
  br label %bb.j

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1t_.exit.i: ; preds = %._crit_edge.i.i, %.lr.ph.i.i
  %i.az = phi ptr [ %i.ap, %.lr.ph.i.i ], [ null, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.ba
  br label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.i: ; preds = %bb.h, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1t_.exit.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEEE4findNCINvNtB8_3map14equivalent_keymmBR_E0EB1t_.exit.i ], [ null, %bb.h ]
  store i64 1, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.0.1.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !noalias !199
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !198, !noalias !200
  %i.bb = call noundef zeroext i1 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B1Y_NtB1Y_9LineIndex12try_line_cols_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4c_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB1W_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4c_B4p_B3j_8try_fold7flattenB5b_uB5H_NCINvNvB3j_3all5checkRB1W_NCB2B_s0_0E0E0E0B5H_EB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.43.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx)
  br i1 %i.bb, label %_RINvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2t_NtB2t_9LineIndex12try_line_cols_0EINtNtNtBc_5slice4iter4IterB2r_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3O_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB4V_3all5checkRB2r_NCB36_s0_0E0E0B5P_EB2t_.exit.thread, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.thread.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.thread.i: ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.i
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8, !alias.scope !198, !noalias !200
  %i.bc = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !198, !noalias !200, !noundef !4 ; 2 uses
  %.not5.i = icmp eq ptr %i.bc, null
  br i1 %.not5.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !203
  store ptr %i.b, ptr %i.a, align 8, !noalias !204
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !205, !noalias !206, !nonnull !4, !noundef !4
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.bf = phi ptr [ %i.bg, %bb.o ], [ %i.bc, %bb.m ] ; 3 uses
  %.not.not.not.i.not.not.not.i7.not.i = icmp eq ptr %i.bf, %i.be
  br i1 %.not.not.not.i.not.not.not.i7.not.i, label %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCs2wU4RHBJEmX_10line_index8WideCharEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3all5checkRB2y_NCNvMs0_B2A_NtB2A_9LineIndex12try_line_cols0_0E0E0B2A_.exit8.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3all5checkRNtCs2wU4RHBJEmX_10line_index8WideCharNCNvMs0_B1N_NtB1N_9LineIndex12try_line_cols0_0E0INtB7_5FnMutTuB1K_EE8call_mutB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bf), !noalias !207
  br i1 %i.bh, label %bb.p, label %bb.n

_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCs2wU4RHBJEmX_10line_index8WideCharEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3all5checkRB2y_NCNvMs0_B2A_NtB2A_9LineIndex12try_line_cols0_0E0E0B2A_.exit8.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  br label %_RINvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2t_NtB2t_9LineIndex12try_line_cols_0EINtNtNtBc_5slice4iter4IterB2r_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3O_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB4V_3all5checkRB2r_NCB36_s0_0E0E0B5P_EB2t_.exit.thread

_RINvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2t_NtB2t_9LineIndex12try_line_cols_0EINtNtNtBc_5slice4iter4IterB2r_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3O_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB4V_3all5checkRB2r_NCB36_s0_0E0E0B5P_EB2t_.exit.thread: ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.q:                                             ; preds = %_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_5slice4iter4IterNtCs2wU4RHBJEmX_10line_index8WideCharEuINtNtNtBg_3ops12control_flow11ControlFlowuENCINvNvB1j_3all5checkRB2y_NCNvMs0_B2A_NtB2A_9LineIndex12try_line_cols0_0E0E0B2A_.exit8.i, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2g_NtB2g_9LineIndex12try_line_cols_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4g_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterB2e_EuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B4g_B4t_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5f_uB5L_NCINvNvB6L_3all5checkRB2e_NCB2T_s0_0E0E0E0B5L_EB2g_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.t, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.s, ptr %i.bj, align 4
  br label %bb.r

bb.r:                                             ; preds = %_RINvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2t_NtB2t_9LineIndex12try_line_cols_0EINtNtNtBc_5slice4iter4IterB2r_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3O_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB4V_3all5checkRB2r_NCB36_s0_0E0E0B5P_EB2t_.exit.thread, %bb.q
  %storemerge = phi i32 [ 1, %bb.q ], [ 0, %_RINvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEENCNvMs0_B2t_NtB2t_9LineIndex12try_line_cols_0EINtNtNtBc_5slice4iter4IterB2r_EE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB3O_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB4V_3all5checkRB2r_NCB36_s0_0E0E0B5P_EB2t_.exit.thread ]
  store i32 %storemerge, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs2wU4RHBJEmX_10line_indexNtB5_9LineIndex3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.k = icmp ult i64 %2, 4294967295
  br i1 %i.k, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23, !noalias !240
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !241
  store i64 0, ptr %i.g, align 8, !noalias !241
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.l, align 8, !noalias !241
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !241
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.n = lshr i64 %2, 4                           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph52.i.i.i

.lr.ph52.i.i.i:                                   ; preds = %bb.c, %.backedge.i.i.i
  %.sroa.04.051.i.i.i = phi i64 [ %.sroa.04.0.be.i.i.i, %.backedge.i.i.i ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.050.i.i.i = phi i64 [ %i.o, %.backedge.i.i.i ], [ 0, %bb.c ] ; 4 uses
  %i.o = add nuw nsw i64 %.sroa.0.050.i.i.i, 1    ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.0.050.i.i.i
  %.sroa.020.0.copyload46.i.i.i = load <16 x i8>, ptr %i.p, align 1, !alias.scope !246, !noalias !247 ; 2 uses
  %i.q = icmp slt <16 x i8> %.sroa.020.0.copyload46.i.i.i, zeroinitializer
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

._crit_edge.i.i.i:                                ; preds = %.backedge.i.i.i, %bb.c
  %.sroa.04.0.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.04.0.be.i.i.i, %.backedge.i.i.i ]
  %i.t = and i64 %2, 4294967280
  %i.u = add i64 %.sroa.04.0.lcssa.i.i.i, %i.t    ; 7 uses
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.d, label %_RNvCs2wU4RHBJEmX_10line_index28analyze_source_file_dispatch.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !248, !noalias !249, !noundef !4
  %i.z = icmp sgt i8 %i.y, -65
  br i1 %i.z, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit.i.i.i, label %.invoke.i

_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.aa = sub nuw nsw i64 %2, %i.u                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.ac = trunc nuw i64 %i.u to i32
  %i.ad = invoke fastcc noundef i64 @_RNvCs2wU4RHBJEmX_10line_index27analyze_source_file_generic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.aa, i64 noundef %i.aa, i32 noundef %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RNvCs2wU4RHBJEmX_10line_index28analyze_source_file_dispatch.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !240 ; 0 uses

bb.f:                                             ; preds = %.lr.ph52.i.i.i
  %i.ae = icmp eq i64 %.sroa.04.051.i.i.i, 0
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !11

bb.g:                                             ; preds = %.lr.ph52.i.i.i
  %i.af = shl nuw nsw i64 %.sroa.0.050.i.i.i, 4
  %i.ag = add i64 %i.af, %.sroa.04.051.i.i.i      ; 9 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit19.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i17.i.i.i = icmp ult i64 %i.ag, %2
  br i1 %.not.i.i.i17.i.i.i, label %bb.i, label %.split.i.i.i18.i.i.i

.split.i.i.i18.i.i.i:                             ; preds = %bb.h
  %i.ai = icmp eq i64 %i.ag, %2
  br i1 %i.ai, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit19.i.i.i, label %.invoke.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !250, !noalias !251, !noundef !4
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit19.i.i.i, label %.invoke.i

.invoke.i:                                        ; preds = %bb.i, %.split.i.i.i18.i.i.i, %bb.e
  %i.am = phi i64 [ %i.u, %bb.e ], [ %i.ag, %.split.i.i.i18.i.i.i ], [ %i.ag, %bb.i ]
  %i.an = phi ptr [ @5, %bb.e ], [ @8, %.split.i.i.i18.i.i.i ], [ @8, %bb.i ]
  invoke void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, 4294967295) %2, i64 noundef %i.am, i64 noundef range(i64 0, 4294967295) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an) #23
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !240

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit19.i.i.i: ; preds = %bb.i, %.split.i.i.i18.i.i.i, %bb.g
  %i.ao = sub nuw nsw i64 %2, %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.aq = sub i64 16, %.sroa.04.051.i.i.i
  %i.ar = trunc i64 %i.ag to i32
  %i.as = invoke fastcc noundef i64 @_RNvCs2wU4RHBJEmX_10line_index27analyze_source_file_generic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ap, i64 noundef %i.ao, i64 noundef %i.aq, i32 noundef %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.backedge.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !240

.backedge.i.i.i:                                  ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i, %bb.l, %bb.j, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit19.i.i.i
  %.sroa.04.0.be.i.i.i = phi i64 [ %i.as, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit19.i.i.i ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.n
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph52.i.i.i

bb.j:                                             ; preds = %bb.f
  %i.at = icmp eq <16 x i8> %.sroa.020.0.copyload46.i.i.i, splat (i8 10)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %.backedge.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.f
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !240

.noexc7.i:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aw = zext i16 %i.au to i32
  %i.ax = or disjoint i32 %i.aw, -65536           ; 2 uses
  %.tr.i.i.i = trunc i64 %.sroa.0.050.i.i.i to i32
  %i.ay = shl i32 %.tr.i.i.i, 4
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = call noundef range(i32 0, 17) i32 @llvm.cttz.i32(i32 range(i32 -65536, 0) %i.ax, i1 true) ; 2 uses
  %3 = icmp samesign ugt i32 %i.ba, 15
  br i1 %3, label %.backedge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %.pre.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !252, !noalias !253
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.bb = phi i64 [ %i.bi, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = phi i32 [ %i.bl, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i ], [ %i.ba, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.02.049.i.i.i = phi i32 [ %i.bk, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i ], [ %i.ax, %.lr.ph.preheader.i.i.i ]
  %i.bd = add i32 %i.az, %i.bc
  %i.be = load i64, ptr %i.g, align 8, !range !10, !alias.scope !252, !noalias !253, !noundef !4
  %i.bf = icmp eq i64 %i.bb, %i.be
  br i1 %i.bf, label %bb.m, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsuAhG64lL82_9text_size4size8TextSizeE8grow_oneCs2wU4RHBJEmX_10line_index(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i unwind label %.loopexit.i, !noalias !240

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE4pushCs2wU4RHBJEmX_10line_index.exit.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.bg = load ptr, ptr %i.l, align 8, !alias.scope !252, !noalias !253, !nonnull !4, !noundef !4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bb
  store i32 %i.bd, ptr %i.bh, align 4, !noalias !240
  %i.bi = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.m, align 8, !alias.scope !252, !noalias !253
  %i.bj = shl nsw i32 -2, %i.bc
  %i.bk = and i32 %i.bj, %.sroa.02.049.i.i.i      ; 2 uses
  %i.bl = call noundef range(i32 0, 17) i32 @llvm.cttz.i32(i32 range(i32 -65536, 0) %i.bk, i1 true) ; 2 uses
  %i.bm = icmp samesign ugt i32 %i.bl, 15
  br i1 %i.bm, label %.backedge.i.i.i, label %.lr.ph.i.i.i

_RNvCs2wU4RHBJEmX_10line_index28analyze_source_file_dispatch.exit.i: ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit.i.i.i, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !241
  invoke void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs2wU4RHBJEmX_10line_index8WideCharEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEENtNtNtNtB22_4iter6traits7collect12IntoIterator9into_iterB1n_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.o unwind label %bb.n, !noalias !240

bb.n:                                             ; preds = %bb.o, %_RNvCs2wU4RHBJEmX_10line_index28analyze_source_file_dispatch.exit.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeEECs2wU4RHBJEmX_10line_index(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %common.resume unwind label %bb.p, !noalias !240

bb.o:                                             ; preds = %_RNvCs2wU4RHBJEmX_10line_index28analyze_source_file_dispatch.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !241
  invoke void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEEINtNtNtNtB2n_4iter6traits7collect12FromIteratorTmB16_EE9from_iterINtNtNtB40_8adapters3map3MapINtB7_8IntoItermINtNtB1b_3vec3VecB1G_EENCNvB1I_19analyze_source_file0EEB1I_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
          to label %_RNvCs2wU4RHBJEmX_10line_index19analyze_source_file.exit unwind label %bb.n, !noalias !240

bb.p:                                             ; preds = %bb.q, %.loopexit.split-lp.i, %bb.n
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !240
  unreachable

.loopexit.i:                                      ; preds = %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit19.i.i.i
  %lpad.loopexit15.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.k, %.invoke.i, %_RNvXs2_NtNtCshzWfHUSfYae_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs2wU4RHBJEmX_10line_index.exit.i.i.i
  %lpad.loopexit.split-lp16.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit15.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp16.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3raw8RawTableTmINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs2wU4RHBJEmX_10line_index8WideCharEEEEB1S_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.p, !noalias !240

common.resume:                                    ; preds = %bb.s, %bb.n, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %bb.q ], [ %i.bn, %bb.n ], [ %i.bw, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %.loopexit.split-lp.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeEECs2wU4RHBJEmX_10line_index(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #19
          to label %common.resume unwind label %bb.p, !noalias !240

_RNvCs2wU4RHBJEmX_10line_index19analyze_source_file.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bq = invoke { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCsuAhG64lL82_9text_size4size8TextSizeE16into_boxed_sliceCs2wU4RHBJEmX_10line_index(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.r unwind label %bb.s       ; 2 uses

bb.r:                                             ; preds = %_RNvCs2wU4RHBJEmX_10line_index19analyze_source_file.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.bs = extractvalue { ptr, i64 } %i.bq, 0      ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bq, 1
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %2 to i32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  store ptr %i.bs, ptr %0, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.s:                                             ; preds = %_RNvCs2wU4RHBJEmX_10line_index19analyze_source_file.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs2wU4RHBJEmX_10line_index8WideCharEINtNtB4_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHashermEEEEB29_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #19
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs2wU4RHBJEmX_10line_indexNtB5_9LineIndex4line(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 5 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp ugt i64 %i.d, %i.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !4
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.04.0.in7 = select i1 %i.e, ptr %i.g, ptr %i.h
  %.sroa.04.08 = load i32, ptr %.sroa.04.0.in7, align 4, !noundef !4
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i64 %i.a, -1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %storemerge = phi i32 [ 1, %bb.f ], [ 0, %bb.b ]
  store i32 %storemerge, ptr %0, align 4
  ret void

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  %i.o = load i32, ptr %i.n, align 4, !noundef !4 ; 2 uses
  %i.p = icmp ugt i64 %i.k, %i.a
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.04.0.in = select i1 %i.p, ptr %i.q, ptr %i.r
  %.sroa.04.0 = load i32, ptr %.sroa.04.0.in, align 4, !noundef !4 ; 2 uses
  %.not = icmp ugt i32 %i.o, %.sroa.04.0
  br i1 %.not, label %bb.e, label %bb.f, !prof !254

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23
  unreachable

bb.f:                                             ; preds = %.thread, %bb.d
  %.sroa.04.011 = phi i32 [ %.sroa.04.08, %.thread ], [ %.sroa.04.0, %bb.d ]
  %.sroa.5.010 = phi i32 [ 0, %.thread ], [ %i.o, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.010, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.04.011, ptr %i.t, align 4
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_Cs2wU4RHBJEmX_10line_indexNtB5_9LineIndex5lines(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 4 uses
  store i32 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %3, ptr %i.b, align 4
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = call noundef i64 @_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtCsuAhG64lL82_9text_size4size8TextSize15partition_pointNCNvMs0_Cs2wU4RHBJEmX_10line_indexNtB1z_9LineIndex5lines0EB1z_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.g = call noundef i64 @_RINvMNtCshzWfHUSfYae_4core5sliceSNtNtCsuAhG64lL82_9text_size4size8TextSize15partition_pointNCNvMs0_Cs2wU4RHBJEmX_10line_indexNtB1z_9LineIndex5liness_0EB1z_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a) ; 4 uses
  %i.h = icmp ult i64 %i.g, %i.f
  %.not = icmp ugt i64 %i.g, %i.e
  %or.cond = or i1 %i.h, %.not
  br i1 %or.cond, label %bb.b, label %_RNvXs4_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtB9_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB1w_EEEB14_ENtNtBb_5clone5Clone5cloneCs2wU4RHBJEmX_10line_index.exit, !prof !255

_RNvXs4_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtB9_7sources4once4OnceNtNtCsuAhG64lL82_9text_size4size8TextSizeEINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB1w_EEEB14_ENtNtBb_5clone5Clone5cloneCs2wU4RHBJEmX_10line_index.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g ; 2 uses
  %.sroa.1024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1024.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %.sroa.418.0..sroa_idx, align 4
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %.sroa.620.0..sroa_idx, align 4
end_hunk_0
