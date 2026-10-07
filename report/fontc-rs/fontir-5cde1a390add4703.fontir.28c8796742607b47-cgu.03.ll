Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.03?download=true
inline.NumInlined: 645
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph19has_nonidentity_2x2:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  store ptr null, ptr %i.c, align 8, !alias.scope !684
  %i.e = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !685, !noundef !4
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit, label %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.i

_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.i: ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1U_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B32_NtB32_5Glyph19has_nonidentity_2x20ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB5m_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB32_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5m_B5z_B4t_8try_fold7flattenB6l_uB73_NCINvNvB4t_3any5checkRB6L_NvMst_B32_B6L_19has_nonidentity_2x2E0E0E0B73_EB34_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  br i1 %i.f, label %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit, label %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.thread.i

_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.thread.i: ; preds = %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.i
  %.pre = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !684 ; 2 uses
  store ptr null, ptr %i.c, align 8, !alias.scope !684
  %.not5.i = icmp eq ptr %.pre, null
  br i1 %.not5.i, label %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !688
  store ptr %i.a, ptr %i.b, align 8, !noalias !689
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !690, !noalias !691, !nonnull !4, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = phi ptr [ %i.j, %bb.d ], [ %.pre, %bb.b ] ; 3 uses
  %.not.not.not.i.not.not.not.i7.not.i.not.not = icmp ne ptr %i.i, %i.h ; 2 uses
  br i1 %.not.not.not.i.not.not.not.i7.not.i.not.not, label %bb.d, label %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = call noundef zeroext i1 @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentNvMst_B1N_B1L_19has_nonidentity_2x2E0INtB7_5FnMutTuB1K_EE8call_mutB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i), !noalias !692
  br i1 %i.k, label %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit.sink.split, label %bb.c

_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit.sink.split: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !688
  br label %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit

_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit: ; preds = %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit.sink.split, %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.thread.i, %bb.a, %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.i
  %.sroa.0.0.i = phi i1 [ true, %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.i ], [ false, %_RINvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2c_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3k_NtB3k_5Glyph19has_nonidentity_2x20EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB5q_13FlattenCompatppE13iter_try_fold7flattenINtNtNtBc_5slice4iter4IterNtB3k_9ComponentEuINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B5q_B5D_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB6p_uB77_NCINvNvB87_3any5checkRB6P_NvMst_B3k_B6P_19has_nonidentity_2x2E0E0E0B77_EB3m_.exit.thread.i ], [ false, %bb.a ], [ %.not.not.not.i.not.not.not.i7.not.i.not.not, %_RINvMsg_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB2p_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENCNvMsm_B3x_NtB3x_5Glyph19has_nonidentity_2x20EINtNtNtBc_5slice4iter4IterNtB3x_9ComponentEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4Y_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB6h_3any5checkRB5o_NvMst_B3x_B5o_19has_nonidentity_2x2E0E0B7b_EB3z_.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph33has_mixed_contours_and_components(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBQ_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterB1Z_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = call { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %.not.i.i = icmp ne ptr %i.d, null
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 3 uses
  %.not6.i = icmp ne ptr %i.e, null
  %.not.i = select i1 %.not.i.i, i1 %.not6.i, i1 false ; 2 uses
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3any5checkRB26_NCNvMsm_B28_NtB28_5Glyph33has_mixed_contours_and_components0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 48
  %.val.i = load i64, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 72
  %.val5.i = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %.val5.i, 96076792050570582
  call void @llvm.assume(i1 %i.h)
  %i.i = icmp ne i64 %.val5.i, 0
  %i.j = icmp ne i64 %.val.i, 0
  %spec.select.i.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %spec.select.i.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3any5checkRB26_NCNvMsm_B28_NtB28_5Glyph33has_mixed_contours_and_components0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit, label %bb.b

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3any5checkRB26_NCNvMsm_B28_NtB28_5Glyph33has_mixed_contours_and_components0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.i.i.i = alloca [16 x i8], align 8      ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 17 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %.sroa.05 = alloca [144 x i8], align 8          ; 7 uses
  %i.s = alloca [40 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = alloca [40 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [40 x i8], align 8                ; 6 uses
  %i.aa = alloca [40 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBQ_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterB1Z_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %bb.d unwind label %.loopexit.split-lp67.loopexit.split-lp

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 0, ptr %i.aa, align 8
  invoke void @_RINvMs0_NtCs3v5ql5U6hxj_6fontir5errorNtB6_8BadGlyph3newNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtB6_12BadGlyphKindEB8_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aa)
          to label %bb.ax unwind label %.loopexit.split-lp67.loopexit.split-lp

.loopexit.split-lp67:                             ; preds = %.loopexit66, %.loopexit.split-lp67.loopexit.split-lp, %.loopexit.split-lp67.loopexit, %.body
  %.sroa.06.0 = phi i1 [ true, %.body ], [ true, %.loopexit66 ], [ true, %.loopexit.split-lp67.loopexit ], [ %.sroa.06.1.ph.ph, %.loopexit.split-lp67.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.loopexit68, %.loopexit66 ], [ %lpad.loopexit71, %.loopexit.split-lp67.loopexit ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp67.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBS_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %4)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1z_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceEEB2J_.exit unwind label %bb.ar

.loopexit66:                                      ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i22
  %lpad.loopexit68 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp67

.loopexit.split-lp67.loopexit:                    ; preds = %bb.e
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp67

.loopexit.split-lp67.loopexit.split-lp:           ; preds = %bb.as, %bb.l, %bb.k, %bb.c, %bb.b
  %.sroa.06.1.ph.ph = phi i1 [ false, %bb.as ], [ false, %bb.l ], [ true, %bb.k ], [ true, %bb.b ], [ false, %bb.c ]
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp67

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i, %bb.d
  %i.ag = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %.noexc unwind label %.loopexit.split-lp67.loopexit

.noexc:                                           ; preds = %bb.e
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 5 uses
  %.not.i.a = icmp eq ptr %i.ah, null
  br i1 %.not.i.a, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !752, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !752, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.al, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %.not.not.not.i.not.i.i.i.i104 = icmp eq i64 %i.al, 0
  br i1 %.not.not.not.i.not.i.i.i.i104, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.not.not.i.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i.i = load double, ptr %i.ap, align 8, !alias.scope !753, !noalias !754, !noundef !4
  %i.aq = fcmp une double %.val.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.aq, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i, label %bb.g

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i: ; preds = %bb.g, %.lr.ph, %bb.f
  %..i.i = phi ptr [ %i.ah, %bb.f ], [ %i.ah, %bb.g ], [ null, %.lr.ph ] ; 2 uses
  %.not6.i = icmp eq ptr %..i.i, null
  br i1 %.not6.i, label %bb.e, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i, %.noexc
  %.sroa.0.0.i = phi ptr [ null, %.noexc ], [ %..i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i ] ; 3 uses
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i22

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i22: ; preds = %.lr.ph108, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit
  %i.ar = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z)
          to label %.noexc26 unwind label %.loopexit66

.noexc26:                                         ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i22
  %i.as = extractvalue { ptr, ptr } %i.ar, 0      ; 3 uses
  %.not.i19 = icmp eq ptr %i.as, null
  br i1 %.not.i19, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc26
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !755, !nonnull !4, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !755, !noundef !4 ; 2 uses
  %.idx110 = shl nuw nsw i64 %i.aw, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx110
  %.not.not.not.i.not.i.i.i.i20.not107 = icmp eq i64 %i.aw, 0
  br i1 %.not.not.not.i.not.i.i.i.i20.not107, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit27, label %.lr.ph108

bb.i:                                             ; preds = %.lr.ph108
  %i.ay = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i.i.i20.not = icmp eq ptr %i.ay, %i.ax
  br i1 %.not.not.not.i.not.i.i.i.i20.not, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit27, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.h, %bb.i
  %i.az = phi ptr [ %i.ay, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val.i.i.i.i.i.i21 = load double, ptr %i.ba, align 8, !alias.scope !756, !noalias !757, !noundef !4
  %i.bb = fcmp une double %.val.i.i.i.i.i.i21, 0.000000e+00
  br i1 %i.bb, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkRINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB1g_15NormalizedSpaceEQNCNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB2v_5Glyph3new0E0B2x_.exit.i22, label %bb.i

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit27: ; preds = %bb.h, %bb.i
  %.not13 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not13, label %bb.l, label %bb.as

bb.j:                                             ; preds = %.noexc26
  %.not12 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i)
          to label %bb.m unwind label %.loopexit.split-lp67.loopexit.split-lp

bb.l:                                             ; preds = %bb.j, %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4KeysINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBY_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2L_4find5checkRBV_QNCNvMsm_B25_NtB25_5Glyph3new0E0INtNtNtB2T_3ops12control_flow11ControlFlowB4c_EEB27_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 2, ptr %i.v, align 8
  invoke void @_RINvMs0_NtCs3v5ql5U6hxj_6fontir5errorNtB6_8BadGlyph3newNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtB6_12BadGlyphKindEB8_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.v)
          to label %bb.at unwind label %.loopexit.split-lp67.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %1, ptr %i.p, align 8, !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !758
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBQ_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterB1Z_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.m
  %i.bc = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %.noexc30
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0
  %.not9.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %.noexc31
  %i.be = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc32:                                         ; preds = %bb.n
  %i.bf = extractvalue { ptr, ptr } %i.be, 0
  %.not.i9.i.i = icmp ne ptr %i.bf, null
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  %.not810.i.i = icmp ne ptr %i.bg, null
  %.not11.i.i = select i1 %.not.i9.i.i, i1 %.not810.i.i, i1 false
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3all5checkRB26_NCNvB28_29has_consistent_2x2_transforms0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc32
  %i.bh = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.noexc36, %.lr.ph.i.i
  %i.bn = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.ci, %.noexc36 ] ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 72
  %.val6.i.i = load i64, ptr %i.bo, align 8, !noundef !4 ; 4 uses
  %i.bp = load i64, ptr %i.bi, align 8, !noalias !759, !noundef !4 ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 96076792050570582
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp ult i64 %.val6.i.i, 96076792050570582
  call void @llvm.assume(i1 %i.br)
  %.not.i.i.i.i = icmp eq i64 %i.bp, %.val6.i.i
  br i1 %.not.i.i.i.i, label %bb.p, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3all5checkRB26_NCNvB28_29has_consistent_2x2_transforms0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr i8, ptr %i.bn, i64 64
  %.val5.i.i = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !760
  %i.bt = load ptr, ptr %i.bj, align 8, !noalias !759, !nonnull !4, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %i.bt, i64 %.val6.i.i
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %.val5.i.i, i64 %.val6.i.i
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBW_EINtB5_7ZipImplBW_BW_E3newB1q_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu, ptr noundef nonnull %.val5.i.i, ptr noundef nonnull %i.bv)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc33:                                         ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.bw = load i64, ptr %i.bl, align 8, !alias.scope !762, !noalias !760, !noundef !4 ; 3 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !762, !noalias !760 ; 3 uses
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !761, !noalias !760, !nonnull !4
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !761, !noalias !760, !nonnull !4
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i.i, i64 %i.bw)
  %exitcond.not.i1.not.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.bw
  br i1 %exitcond.not.i1.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.backedge.sink.split.i.i

bb.q:                                             ; preds = %.noexc35
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.by, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.backedge.sink.split.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc33, %bb.q
  %i.bx = phi i64 [ %i.by, %bb.q ], [ %.promoted.i.i.i.i.i, %.noexc33 ] ; 4 uses
  %i.by = add i64 %i.bx, 1                        ; 2 uses
  %i.bz = getelementptr inbounds nuw [96 x i8], ptr %.val1.i.i.i.i.i.i.i, i64 %i.bx ; 2 uses
  %i.ca = getelementptr inbounds nuw [96 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.bx ; 2 uses
  %i.cb = invoke noundef zeroext i1 @_RNvXs3_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ca)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc34:                                         ; preds = %.lr.ph.i.i.i.i
  br i1 %i.cb, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentB1c_ENCNCNvB1f_29has_consistent_2x2_transforms00E0B1h_.exit.i.i.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Y_3all5checkTRB1h_B32_ENCNCNvB1j_29has_consistent_2x2_transforms00E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1l_.exit.loopexit.i.i.i.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentB1c_ENCNCNvB1f_29has_consistent_2x2_transforms00E0B1h_.exit.i.i.i.i.i: ; preds = %.noexc34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !763
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cc, i64 48, i1 false), !noalias !764
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !763
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.cd, i64 48, i1 false), !noalias !765
  %i.ce = invoke noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpdINtB5_14SlicePartialEqdE17equal_same_lengthCs3v5ql5U6hxj_6fontir(ptr noundef nonnull %i.k, ptr noundef nonnull %i.j, i64 noundef 4)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc35:                                         ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentB1c_ENCNCNvB1f_29has_consistent_2x2_transforms00E0B1h_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !763
  br i1 %i.ce, label %bb.q, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Y_3all5checkTRB1h_B32_ENCNCNvB1j_29has_consistent_2x2_transforms00E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1l_.exit.loopexit.i.i.i.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Y_3all5checkTRB1h_B32_ENCNCNvB1j_29has_consistent_2x2_transforms00E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1l_.exit.loopexit.i.i.i.i: ; preds = %.noexc35, %.noexc34
  %i.cf = icmp ult i64 %i.bx, %i.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !760
  br i1 %i.cf, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3all5checkRB26_NCNvB28_29has_consistent_2x2_transforms0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit.i, label %.backedge.i.i

.backedge.sink.split.i.i:                         ; preds = %bb.q, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !760
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.sink.split.i.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Y_3all5checkTRB1h_B32_ENCNCNvB1j_29has_consistent_2x2_transforms00E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1l_.exit.loopexit.i.i.i.i
  %i.cg = invoke { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBN_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1W_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc36:                                         ; preds = %.backedge.i.i
  %i.ch = extractvalue { ptr, ptr } %i.cg, 0
  %.not.i.i.i = icmp ne ptr %i.ch, null
  %i.ci = extractvalue { ptr, ptr } %i.cg, 1      ; 2 uses
  %.not8.i.i = icmp ne ptr %i.ci, null
  %.not.i.i = select i1 %.not.i.i.i, i1 %.not8.i.i, i1 false
  br i1 %.not.i.i, label %bb.o, label %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3all5checkRB26_NCNvB28_29has_consistent_2x2_transforms0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit.i

_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3all5checkRB26_NCNvB28_29has_consistent_2x2_transforms0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit.i: ; preds = %.noexc36, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Y_3all5checkTRB1h_B32_ENCNCNvB1j_29has_consistent_2x2_transforms00E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1l_.exit.loopexit.i.i.i.i, %bb.o, %.noexc32
  %i.cj = phi i1 [ true, %.noexc32 ], [ false, %bb.o ], [ false, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1Y_3all5checkTRB1h_B32_ENCNCNvB1j_29has_consistent_2x2_transforms00E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB1l_.exit.loopexit.i.i.i.i ], [ true, %.noexc36 ] ; 3 uses
  %i.ck = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !758 ; 2 uses
  %i.cl = icmp ult i64 %i.ck, 6
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp samesign ugt i64 %i.ck, 4
  br i1 %i.cm, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_RINvYINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map6ValuesINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtB10_15NormalizedSpaceENtNtCs3v5ql5U6hxj_6fontir2ir13GlyphInstanceENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2O_3all5checkRB26_NCNvB28_29has_consistent_2x2_transforms0E0INtNtNtB2W_3ops12control_flow11ControlFlowuEEB2a_.exit.i
  %i.cn = invoke noundef zeroext i1 @_RINvNtCsksibNCz2yVN_3log13___private_api7enabledNtB2_12GlobalLoggerECs3v5ql5U6hxj_6fontir(i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 10)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.r
  %.not.i29 = xor i1 %i.cn, true
  %or.cond.i = or i1 %i.cj, %.not.i29
  br i1 %or.cond.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.noexc37
  %i.co = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !758 ; 2 uses
  %i.cp = icmp ult i64 %i.co, 6
  call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp samesign ugt i64 %i.co, 4
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !758
  store ptr %i.p, ptr %i.n, align 8, !noalias !758
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameNtB6_7Display3fmtCs3v5ql5U6hxj_6fontir, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !758
  store ptr @6, ptr %i.m, align 8, !noalias !758
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 10, ptr %i.cr, align 8, !noalias !758
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @6, ptr %i.cs, align 8, !noalias !758
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 10, ptr %i.ct, align 8, !noalias !758
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @68, ptr %i.cu, align 8, !noalias !758
  invoke void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs3v5ql5U6hxj_6fontir(ptr noundef nonnull @67, ptr noundef nonnull %i.n, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !758
  br label %bb.u

.loopexit:                                        ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNCNvNtCs3v5ql5U6hxj_6fontir2ir30has_overflowing_2x2_transforms000EB1M_.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.loopexit.i.i
  %lpad.loopexit58 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs3v5ql5U6hxj_6fontir2ir9ComponentB1c_ENCNCNvB1f_29has_consistent_2x2_transforms00E0B1h_.exit.i.i.i.i.i
  %lpad.loopexit61 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.backedge.i.i, %bb.p
end_hunk_0
