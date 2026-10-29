Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontc_crater.fontc_crater.f024a1d66527347-cgu.03?download=true
inline.NumInlined: 895
inline.NumDeleted: 494
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1V_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB6_3map3MapINtB1P_4KeysB2L_B37_ENvMB2N_B2L_6as_strENCNvMs0_B39_NtB39_10DiffOutput11iter_tables0EIB10_IB1o_RB5c_EBZ_NCNvNtNtB3b_2ci4html31format_diff_report_detail_tables_0EENtNtNtB8_6traits8iterator8Iterator4nextB3b_:bb.a
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i.i.i.peel.i.i.i, ptr %.sroa.1034.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2198
  store i64 %.sroa.5.0.i.i.i.i.peel.i.i.i, ptr %.sroa.1135.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2198
  %i.n = tail call noundef align 8 ptr @_RNvXsF_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4KeysNtNtBb_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB20_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1U_4KeysB2Q_B3c_ENvMB2S_B2Q_6as_strENCNvMs0_B3e_NtB3e_10DiffOutput11iter_tables0EReNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_.exit

bb.g:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i.i
  store i64 2, ptr %i.b, align 8, !alias.scope !2193
  %.pre.i.i.i = load i64, ptr %0, align 8, !range !14, !alias.scope !2199
  %i.o = trunc nuw i64 %.pre.i.i.i to i1
  br i1 %i.o, label %bb.h, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !alias.scope !2200, !align !7, !noundef !6 ; 2 uses
  store ptr null, ptr %i.c, align 8, !alias.scope !2200
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i.i, label %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i.i, !llvm.loop !0

_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !range !18, !alias.scope !2201, !noundef !6
  %.not.i3.i.i.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i3.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i.i
  %i.s = tail call noundef align 8 ptr @_RNvXsF_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4KeysNtNtBb_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.q) ; 2 uses
  %.not.i.i.i4.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i4.i.i.i.i, label %bb.j, label %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB20_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1U_4KeysB2Q_B3c_ENvMB2S_B2Q_6as_strENCNvMs0_B3e_NtB3e_10DiffOutput11iter_tables0EReNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_.exit

bb.j:                                             ; preds = %bb.i
  store i64 2, ptr %i.q, align 8, !alias.scope !2201
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.thread.i.i.i.i
  store i64 2, ptr %0, align 8, !alias.scope !2192
  br label %bb.l

_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB20_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1U_4KeysB2Q_B3c_ENvMB2S_B2Q_6as_strENCNvMs0_B3e_NtB3e_10DiffOutput11iter_tables0EReNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_.exit: ; preds = %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i.i, %bb.c, %bb.i
  %.lcssa.i.i.pn.i = phi ptr [ %i.s, %bb.i ], [ %i.e, %bb.c ], [ %i.n, %_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1M_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEENCNvMs0_B30_NtB30_10DiffOutput11iter_tables0EEINtB5_8FuseImplBY_E4nextB32_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.in.i = getelementptr i8, ptr %.lcssa.i.i.pn.i, i64 8
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.in.i, align 8, !nonnull !6, !noundef !6
  %.sroa.3.0.i8.pn.i.i.i.in.i = getelementptr i8, ptr %.lcssa.i.i.pn.i, i64 16
  %.sroa.3.0.i8.pn.i.i.i.i = load i64, ptr %.sroa.3.0.i8.pn.i.i.i.in.i, align 8, !noundef !6
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB10_5ChainINtNtB12_7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2u_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB12_3map3MapINtB2o_4KeysB3k_B3G_ENvMB3m_B3k_6as_strENCNvMs0_B3I_NtB3I_10DiffOutput11iter_tables0EIB1H_IB26_RB5M_EB1G_NCNvNtNtB3K_2ci4html31format_diff_report_detail_tables_0EENtNtNtB14_6traits8iterator8Iterator4next0EB3K_.exit

bb.l:                                             ; preds = %bb.a, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !18, !noalias !2202, !noundef !6
  %.not.i.i = icmp eq i64 %i.u, 2
  br i1 %.not.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB10_5ChainINtNtB12_7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2u_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB12_3map3MapINtB2o_4KeysB3k_B3G_ENvMB3m_B3k_6as_strENCNvMs0_B3I_NtB3I_10DiffOutput11iter_tables0EIB1H_IB26_RB5M_EB1G_NCNvNtNtB3K_2ci4html31format_diff_report_detail_tables_0EENtNtNtB14_6traits8iterator8Iterator4next0EB3K_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.w = tail call fastcc { ptr, i64 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1S_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1M_4KeysB2I_B34_ENvMB2K_B2I_6as_strENCNvMs0_B36_NtB36_10DiffOutput11iter_tables0EReNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB38_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.v) #25, !noalias !2202 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not25.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not25.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.515.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.717.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  %i.z = load i64, ptr %i.t, align 8, !range !14, !alias.scope !2204, !noalias !2202, !noundef !6
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %i.ab = load ptr, ptr %i.y, align 8, !alias.scope !2206, !noalias !2202, !align !7, !noundef !6 ; 3 uses
  store ptr null, ptr %i.y, align 8, !alias.scope !2206, !noalias !2202
  %.not.i.i.i.i.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i64, ptr %i.ab, align 8, !range !14, !alias.scope !2207, !noalias !2208, !noundef !6
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.ad, ptr %i.ae, ptr null
  store i64 1, ptr %i.v, align 8, !alias.scope !2209, !noalias !2202
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2209, !noalias !2202
  store i64 2, ptr %.sroa.515.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2209, !noalias !2202
  store i64 2, ptr %.sroa.717.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2209, !noalias !2202
  %i.af = tail call fastcc { ptr, i64 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1S_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1M_4KeysB2I_B34_ENvMB2K_B2I_6as_strENCNvMs0_B36_NtB36_10DiffOutput11iter_tables0EReNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB38_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.v) #25, !noalias !2202 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %bb.n, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i.i

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = tail call fastcc { ptr, i64 } @_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtB2_7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1S_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1M_4KeysB2I_B34_ENvMB2K_B2I_6as_strENCNvMs0_B36_NtB36_10DiffOutput11iter_tables0EReNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB38_(ptr noalias nofree noundef align 8 dereferenceable(160) %i.ah) #25, !noalias !2202 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i.i

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i.i: ; preds = %bb.p, %bb.q, %bb.m
  %.pn.i.i.i.i = phi { ptr, i64 } [ %i.ai, %bb.q ], [ %i.w, %bb.m ], [ %i.af, %bb.p ]
  %.sroa.0.0.i.i.i.i2 = phi ptr [ %i.aj, %bb.q ], [ %i.x, %bb.m ], [ %i.ag, %bb.p ]
  %.sroa.3.0.i.i.i.i = extractvalue { ptr, i64 } %.pn.i.i.i.i, 1
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB10_5ChainINtNtB12_7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2u_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB12_3map3MapINtB2o_4KeysB3k_B3G_ENvMB3m_B3k_6as_strENCNvMs0_B3I_NtB3I_10DiffOutput11iter_tables0EIB1H_IB26_RB5M_EB1G_NCNvNtNtB3K_2ci4html31format_diff_report_detail_tables_0EENtNtNtB14_6traits8iterator8Iterator4next0EB3K_.exit

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB10_5ChainINtNtB12_7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2u_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB12_3map3MapINtB2o_4KeysB3k_B3G_ENvMB3m_B3k_6as_strENCNvMs0_B3I_NtB3I_10DiffOutput11iter_tables0EIB1H_IB26_RB5M_EB1G_NCNvNtNtB3K_2ci4html31format_diff_report_detail_tables_0EENtNtNtB14_6traits8iterator8Iterator4next0EB3K_.exit: ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB20_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1U_4KeysB2Q_B3c_ENvMB2S_B2Q_6as_strENCNvMs0_B3e_NtB3e_10DiffOutput11iter_tables0EReNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_.exit, %bb.l, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i.i
  %.pn4.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB20_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1U_4KeysB2Q_B3c_ENvMB2S_B2Q_6as_strENCNvMs0_B3e_NtB3e_10DiffOutput11iter_tables0EReNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_.exit ], [ %.sroa.0.0.i.i.i.i2, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i.i ], [ null, %bb.l ]
  %.pn2.i = phi i64 [ %.sroa.3.0.i8.pn.i.i.i.i, %_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters5chain17and_then_or_clearINtNtB4_7flatten7FlatMapINtNtB8_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB20_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB4_3map3MapINtB1U_4KeysB2Q_B3c_ENvMB2S_B2Q_6as_strENCNvMs0_B3e_NtB3e_10DiffOutput11iter_tables0EReNvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3g_.exit ], [ %.sroa.3.0.i.i.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i.i ], [ undef, %bb.l ]
  %.pn.i = insertvalue { ptr, i64 } poison, ptr %.pn4.i, 0
  %.merged.i = insertvalue { ptr, i64 } %.pn.i, i64 %.pn2.i, 1
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1V_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB6_3map3MapINtB1P_4KeysB2L_B37_ENvMB2N_B2L_6as_strENCNvMs0_B39_NtB39_10DiffOutput11iter_tables0EIB10_IB1o_RB5c_EBZ_NCNvNtNtB3b_2ci4html31format_diff_report_detail_tables_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3b_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca i64, align 8                  ; 6 uses
  %.sroa.8 = alloca i64, align 8                  ; 4 uses
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !6 ; 3 uses
  %.not = icmp eq i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load i64, ptr %i.b, align 8, !range !18, !noundef !6 ; 3 uses
  %.not7 = icmp eq i64 %i.c, 2                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.m, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit

bb.c:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2267)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.e = load i64, ptr %i.d, align 8, !range !18, !alias.scope !2268, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.g = load i64, ptr %i.f, align 8, !range !18, !alias.scope !2269, !noundef !6
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !2269
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.i.i ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.j = load i64, ptr %i.i, align 8, !range !18, !alias.scope !2269, !noundef !6
  %.not53.i.i.i.i.i.i = icmp eq i64 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val.i60.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !2269
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %.val.i60.i.i.i.i.i.i ; 2 uses
  %i.l = trunc nuw i64 %i.e to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !2269, !align !7
  %.not75.i.i.i.i.i.i = icmp ne ptr %.val.i.i.i.i.i.i, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.l, i1 %.not75.i.i.i.i.i.i, i1 false ; 2 uses
  %i.n = add i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i ; 2 uses
  %i.o = icmp uge i64 %i.n, %.sroa.7.0.i.i.i.i.i.i
  %.sroa.7.0.i.i = select i1 %or.cond.not.i.i.i.i.i.i, i64 undef, i64 %i.n
  %not.or.cond.not.i.i.i.i.i.i = xor i1 %or.cond.not.i.i.i.i.i.i, true
  %narrow.i.i = select i1 %not.or.cond.not.i.i.i.i.i.i, i1 %i.o, i1 false
  %i.p = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i.i, i64 %.sroa.8.0.i.i.i.i.i.i)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i, %bb.d
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.0.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %.sroa.5.0.i.i = phi i1 [ %narrow.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i ], [ true, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.p, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.r = load i64, ptr %i.q, align 8, !range !18, !alias.scope !2268, !noundef !6 ; 2 uses
  %.not53.i.i = icmp eq i64 %i.r, 2
  br i1 %.not53.i.i, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.t = load i64, ptr %i.s, align 8, !range !18, !alias.scope !2270, !noundef !6
  %.not.i.i.i.i60.i.i = icmp eq i64 %i.t, 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val.i.i.i.i.i61.i.i = load i64, ptr %i.u, align 8, !alias.scope !2270
  %.sroa.7.0.i.i.i.i62.i.i = select i1 %.not.i.i.i.i60.i.i, i64 0, i64 %.val.i.i.i.i.i61.i.i ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.w = load i64, ptr %i.v, align 8, !range !18, !alias.scope !2270, !noundef !6
  %.not53.i.i.i.i63.i.i = icmp eq i64 %i.w, 2
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val.i60.i.i.i.i64.i.i = load i64, ptr %i.x, align 8, !alias.scope !2270
  %.sroa.8.0.i.i.i.i65.i.i = select i1 %.not53.i.i.i.i63.i.i, i64 0, i64 %.val.i60.i.i.i.i64.i.i ; 2 uses
  %i.y = trunc nuw i64 %i.r to i1
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val.i.i.i.i66.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2270, !align !7
  %.not75.i.i.i.i67.i.i = icmp ne ptr %.val.i.i.i.i66.i.i, null
  %or.cond.not.i.i.i.i68.i.i = select i1 %i.y, i1 %.not75.i.i.i.i67.i.i, i1 false ; 2 uses
  %i.aa = add i64 %.sroa.8.0.i.i.i.i65.i.i, %.sroa.7.0.i.i.i.i62.i.i ; 2 uses
  %i.ab = icmp uge i64 %i.aa, %.sroa.7.0.i.i.i.i62.i.i
  %.sroa.8.0.i.i = select i1 %or.cond.not.i.i.i.i68.i.i, i64 undef, i64 %i.aa
  %not.or.cond.not.i.i.i.i68.i.i = xor i1 %or.cond.not.i.i.i.i68.i.i, true
  %narrow86.i.i = select i1 %not.or.cond.not.i.i.i.i68.i.i, i1 %i.ab, i1 false
  %i.ac = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i62.i.i, i64 %.sroa.8.0.i.i.i.i65.i.i)
  %i.ad = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i, i64 %i.ac)
  %2 = freeze i1 %narrow86.i.i
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i
  %.sroa.8.1.i.i = phi i64 [ %.sroa.8.0.i.i, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i ]
  %.sroa.580.0.i.i = phi i1 [ %2, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i ], [ true, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i ] ; 2 uses
  %.sroa.079.0.i.i = phi i64 [ %i.ad, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i ], [ %.sroa.0.0.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i ] ; 2 uses
  %i.ae = trunc nuw i64 %i.c to i1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i.i = load ptr, ptr %i.af, align 8, !alias.scope !2268, !align !7, !noundef !6
  %.not87.i.i = icmp eq ptr %.val.i.i, null
  %op.rdx = and i1 %.not87.i.i, %.sroa.580.0.i.i
  %op.rdx84 = select i1 %op.rdx, i1 %.sroa.5.0.i.i, i1 false
  br i1 %op.rdx84, label %bb.h, label %bb.g

bb.f:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i
  %or.cond54.i.i = and i1 %.sroa.5.0.i.i, %.sroa.580.0.i.i
  br i1 %or.cond54.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %.sroa.079.0.i.i, ptr %0, align 8, !alias.scope !2271
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ag = add i64 %.sroa.8.1.i.i, %.sroa.7.1.i.i  ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %.sroa.7.1.i.i
  %.55.i.i = zext i1 %i.ah to i64
  store i64 %.sroa.079.0.i.i, ptr %0, align 8, !alias.scope !2271
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.55.i.i, ptr %i.ai, align 8, !alias.scope !2271
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit

bb.i:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit: ; preds = %bb.h, %bb.g, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit61, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit73, %bb.i
  %.sink83 = phi i64 [ 16, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit61 ], [ 8, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit73 ], [ 16, %bb.i ], [ 16, %bb.h ], [ 8, %bb.g ]
  %.sroa.46.0.sink = phi i64 [ %.sroa.46.0, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit61 ], [ %.55.sink.i.i72, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit73 ], [ 0, %bb.i ], [ %i.ag, %bb.h ], [ 0, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.sink83
  store i64 %.sroa.46.0.sink, ptr %i.ak, align 8
  ret void

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !18, !alias.scope !2272, !noundef !6
  %.not.i.i10 = icmp eq i64 %i.am, 2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !2272
  %.sroa.7.0.i.i11 = select i1 %.not.i.i10, i64 0, i64 %.val.i.i.i ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load i64, ptr %i.ao, align 8, !range !18, !alias.scope !2272, !noundef !6
  %.not53.i.i12 = icmp eq i64 %i.ap, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i60.i.i = load i64, ptr %i.aq, align 8, !alias.scope !2272
  %.sroa.8.0.i.i13 = select i1 %.not53.i.i12, i64 0, i64 %.val.i60.i.i ; 2 uses
  %i.ar = trunc nuw i64 %i.a to i1
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i14 = load ptr, ptr %i.as, align 8, !alias.scope !2272, !align !7
  %.not75.i.i = icmp ne ptr %.val.i.i14, null
  %or.cond.not.i.i = select i1 %i.ar, i1 %.not75.i.i, i1 false ; 2 uses
  %i.at = add i64 %.sroa.8.0.i.i13, %.sroa.7.0.i.i11 ; 2 uses
  %i.au = icmp uge i64 %i.at, %.sroa.7.0.i.i11
  %.sroa.6.0 = select i1 %or.cond.not.i.i, i64 undef, i64 %i.at ; 2 uses
  %not.or.cond.not.i.i = xor i1 %or.cond.not.i.i, true
  %narrow = select i1 %not.or.cond.not.i.i, i1 %i.au, i1 false
  %i.av = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i11, i64 %.sroa.8.0.i.i13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ax = load i64, ptr %i.aw, align 8, !range !18, !alias.scope !2277, !noundef !6 ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.ax, 2
  br i1 %.not.i.i16, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i17

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i17: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.az = load i64, ptr %i.ay, align 8, !range !18, !alias.scope !2278, !noundef !6
  %.not.i.i.i.i.i.i18 = icmp eq i64 %i.az, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val.i.i.i.i.i.i.i19 = load i64, ptr %i.ba, align 8, !alias.scope !2278
  %.sroa.7.0.i.i.i.i.i.i20 = select i1 %.not.i.i.i.i.i.i18, i64 0, i64 %.val.i.i.i.i.i.i.i19 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bc = load i64, ptr %i.bb, align 8, !range !18, !alias.scope !2278, !noundef !6
  %.not53.i.i.i.i.i.i21 = icmp eq i64 %i.bc, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val.i60.i.i.i.i.i.i22 = load i64, ptr %i.bd, align 8, !alias.scope !2278
  %.sroa.8.0.i.i.i.i.i.i23 = select i1 %.not53.i.i.i.i.i.i21, i64 0, i64 %.val.i60.i.i.i.i.i.i22 ; 2 uses
  %i.be = trunc nuw i64 %i.ax to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.val.i.i.i.i.i.i24 = load ptr, ptr %i.bf, align 8, !alias.scope !2278, !align !7
  %.not75.i.i.i.i.i.i25 = icmp ne ptr %.val.i.i.i.i.i.i24, null
  %or.cond.not.i.i.i.i.i.i26 = select i1 %i.be, i1 %.not75.i.i.i.i.i.i25, i1 false ; 2 uses
  %i.bg = add i64 %.sroa.8.0.i.i.i.i.i.i23, %.sroa.7.0.i.i.i.i.i.i20 ; 2 uses
  %i.bh = icmp uge i64 %i.bg, %.sroa.7.0.i.i.i.i.i.i20
  %.sroa.7.0.i.i27 = select i1 %or.cond.not.i.i.i.i.i.i26, i64 undef, i64 %i.bg
  %not.or.cond.not.i.i.i.i.i.i28 = xor i1 %or.cond.not.i.i.i.i.i.i26, true
  %narrow.i.i29 = select i1 %not.or.cond.not.i.i.i.i.i.i28, i1 %i.bh, i1 false
  %i.bi = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i.i.i20, i64 %.sroa.8.0.i.i.i.i.i.i23)
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i17, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit
  %.sroa.7.1.i.i31 = phi i64 [ %.sroa.7.0.i.i27, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i17 ], [ 0, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit ] ; 2 uses
  %.sroa.5.0.i.i32 = phi i1 [ %narrow.i.i29, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i17 ], [ true, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit ] ; 2 uses
  %.sroa.0.0.i.i33 = phi i64 [ %i.bi, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i.i.i17 ], [ 0, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bk = load i64, ptr %i.bj, align 8, !range !18, !alias.scope !2277, !noundef !6 ; 2 uses
  %.not53.i.i34 = icmp eq i64 %i.bk, 2
  br i1 %.not53.i.i34, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i48, label %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i35

_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i35: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bm = load i64, ptr %i.bl, align 8, !range !18, !alias.scope !2279, !noundef !6
  %.not.i.i.i.i60.i.i36 = icmp eq i64 %i.bm, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val.i.i.i.i.i61.i.i37 = load i64, ptr %i.bn, align 8, !alias.scope !2279
  %.sroa.7.0.i.i.i.i62.i.i38 = select i1 %.not.i.i.i.i60.i.i36, i64 0, i64 %.val.i.i.i.i.i61.i.i37 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bp = load i64, ptr %i.bo, align 8, !range !18, !alias.scope !2279, !noundef !6
  %.not53.i.i.i.i63.i.i39 = icmp eq i64 %i.bp, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.val.i60.i.i.i.i64.i.i40 = load i64, ptr %i.bq, align 8, !alias.scope !2279
  %.sroa.8.0.i.i.i.i65.i.i41 = select i1 %.not53.i.i.i.i63.i.i39, i64 0, i64 %.val.i60.i.i.i.i64.i.i40 ; 2 uses
  %i.br = trunc nuw i64 %i.bk to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val.i.i.i.i66.i.i42 = load ptr, ptr %i.bs, align 8, !alias.scope !2279, !align !7
  %.not75.i.i.i.i67.i.i43 = icmp ne ptr %.val.i.i.i.i66.i.i42, null
  %or.cond.not.i.i.i.i68.i.i44 = select i1 %i.br, i1 %.not75.i.i.i.i67.i.i43, i1 false ; 2 uses
  %i.bt = add i64 %.sroa.8.0.i.i.i.i65.i.i41, %.sroa.7.0.i.i.i.i62.i.i38 ; 2 uses
  %i.bu = icmp uge i64 %i.bt, %.sroa.7.0.i.i.i.i62.i.i38
  %.sroa.8.0.i.i45 = select i1 %or.cond.not.i.i.i.i68.i.i44, i64 undef, i64 %i.bt
  %not.or.cond.not.i.i.i.i68.i.i46 = xor i1 %or.cond.not.i.i.i.i68.i.i44, true
  %narrow86.i.i47 = select i1 %not.or.cond.not.i.i.i.i68.i.i46, i1 %i.bu, i1 false
  %i.bv = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i.i.i62.i.i38, i64 %.sroa.8.0.i.i.i.i65.i.i41)
  %i.bw = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i33, i64 %i.bv)
  %3 = freeze i1 %narrow86.i.i47
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i48

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i48: ; preds = %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i35, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30
  %.sroa.8.1.i.i49 = phi i64 [ %.sroa.8.0.i.i45, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i35 ], [ 0, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30 ]
  %.sroa.580.0.i.i50 = phi i1 [ %3, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i35 ], [ true, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30 ] ; 2 uses
  %.sroa.079.0.i.i51 = phi i64 [ %i.bw, %_RNvYNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtBe_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1z_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBa_3map3MapINtB1t_4KeysB2p_B2L_ENvMB2r_B2p_6as_strENCNvMs0_B2N_NtB2N_10DiffOutput11iter_tables0ENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB2P_.exit.i70.i.i35 ], [ %.sroa.0.0.i.i33, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit.i.i30 ]
  %i.bx = trunc nuw i64 %i.c to i1
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i48
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val.i.i56 = load ptr, ptr %i.by, align 8, !alias.scope !2277, !align !7, !noundef !6
  %.not87.i.i57 = icmp eq ptr %.val.i.i56, null
  %op.rdx85 = and i1 %.not87.i.i57, %.sroa.580.0.i.i50
  %op.rdx86 = select i1 %op.rdx85, i1 %.sroa.5.0.i.i32, i1 false
  br i1 %op.rdx86, label %bb.l, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit61

bb.k:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtB3_8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtBO_3map3MapINtB1I_4KeysB2E_B30_ENvMB2G_B2E_6as_strENCNvMs0_B32_NtB32_10DiffOutput11iter_tables0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB34_.exit72.i.i48
  %or.cond54.i.i52 = and i1 %.sroa.5.0.i.i32, %.sroa.580.0.i.i50
  br i1 %or.cond54.i.i52, label %bb.l, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit61

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bz = add i64 %.sroa.8.1.i.i49, %.sroa.7.1.i.i31 ; 2 uses
  %i.ca = icmp uge i64 %i.bz, %.sroa.7.1.i.i31
  %.55.i.i55 = zext i1 %i.ca to i64
  store i64 %.55.i.i55, ptr %.sroa.5, align 8, !alias.scope !2280
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit61

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit61: ; preds = %bb.j, %bb.k, %bb.l
  %.sink90.i.i53.sroa.phi = phi ptr [ %.sroa.8, %bb.l ], [ %.sroa.5, %bb.k ], [ %.sroa.5, %bb.j ]
  %.sink.i.i54 = phi i64 [ %i.bz, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i54, ptr %.sink90.i.i53.sroa.phi, align 8, !alias.scope !2280
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !14, !noundef !6
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load i64, ptr %.sroa.8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.cb = tail call i64 @llvm.uadd.sat.i64(i64 %i.av, i64 %.sroa.079.0.i.i51)
  %i.cc = trunc nuw i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. to i1
  %or.cond = and i1 %narrow, %i.cc                ; 2 uses
  %i.cd = add i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., %.sroa.6.0 ; 2 uses
  %i.ce = icmp uge i64 %i.cd, %.sroa.6.0
  %.sroa.46.0 = select i1 %or.cond, i64 %i.cd, i64 undef
  %narrow76 = select i1 %or.cond, i1 %i.ce, i1 false
  %.sroa.05.0 = zext i1 %narrow76 to i64
  store i64 %i.cb, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.cf, align 8
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !18, !alias.scope !2285, !noundef !6
  %.not.i.i62 = icmp eq i64 %i.ch, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i.i.i63 = load i64, ptr %i.ci, align 8, !alias.scope !2285
  %.sroa.7.0.i.i64 = select i1 %.not.i.i62, i64 0, i64 %.val.i.i.i63 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ck = load i64, ptr %i.cj, align 8, !range !18, !alias.scope !2285, !noundef !6
  %.not53.i.i65 = icmp eq i64 %i.ck, 2
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i60.i.i66 = load i64, ptr %i.cl, align 8, !alias.scope !2285
  %.sroa.8.0.i.i67 = select i1 %.not53.i.i65, i64 0, i64 %.val.i60.i.i66 ; 2 uses
  %i.cm = trunc nuw i64 %i.a to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i68 = load ptr, ptr %i.cn, align 8, !alias.scope !2285, !align !7
  %.not75.i.i69 = icmp ne ptr %.val.i.i68, null
  %or.cond.not.i.i70 = select i1 %i.cm, i1 %.not75.i.i69, i1 false
  br i1 %or.cond.not.i.i70, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit73, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = add i64 %.sroa.8.0.i.i67, %.sroa.7.0.i.i64 ; 2 uses
  %i.cp = icmp uge i64 %i.co, %.sroa.7.0.i.i64
  %.55.i.i71 = zext i1 %i.cp to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !2286
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit73

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB1C_6string6StringNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner9DiffValueEEINtNtB7_3map3MapINtB1w_4KeysB2s_B2O_ENvMB2u_B2s_6as_strENCNvMs0_B2Q_NtB2Q_10DiffOutput11iter_tables0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2S_.exit73: ; preds = %bb.m, %bb.n
  %.55.sink.i.i72 = phi i64 [ %.55.i.i71, %bb.n ], [ 0, %bb.m ]
  %i.cr = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i64, i64 %.sroa.8.0.i.i67)
  store i64 %i.cr, ptr %0, align 8, !alias.scope !2286
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlatMapINtNtBb_6option8IntoIterRNtNtCs1hTjP0dFAwJ_12fontc_crater15ttx_diff_runner10DiffOutputEIBR_IB15_RINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB2M_6string6StringNtB1v_9DiffValueEEINtNtB7_3map3MapINtB2G_4KeysB3C_B3Y_ENvMB3E_B3C_6as_strENCNvMs0_B1v_B1t_11iter_tables0ENCNvNtNtB1x_2ci4html31format_diff_report_detail_tables_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1x_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NvNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect14default_extendTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.a, align 8, !alias.scope !2300, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2 = load i64, ptr %i.b, align 8, !alias.scope !2301, !noundef !6 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val2, i64 %.val) ; 4 uses
  %.not.not = icmp ugt i64 %.val2, %.val
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2302, !noundef !6 ; 2 uses
  %i.e = load i64, ptr %0, align 8, !range !13, !alias.scope !2302, !noundef !6
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %spec.select.i.i, %i.f
  br i1 %i.g, label %bb.c, label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.d, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 32)
  br label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i

_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2303, !noundef !6 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !range !13, !alias.scope !2303, !noundef !6
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %spec.select.i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.j, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 16)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.d
  tail call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCsgCecv3eZDcN_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0ECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NvNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect14default_extendTINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 4 uses
  %.not.not = icmp ugt i64 %2, %1
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2314, !noundef !6 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !13, !alias.scope !2314, !noundef !6
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %spec.select.i.i, %i.d
  br i1 %i.e, label %bb.c, label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.b, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 32)
  br label %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i

_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2315, !noundef !6 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !13, !alias.scope !2315, !noundef !6
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %spec.select.i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i
  tail call void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.h, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 16)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtCsaM4fumF1j8I_10rayon_core3job6JobRefEEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBF_E14extend_reserveCs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.d
  tail call void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsaM4fumF1j8I_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8FY1skn7E2W_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCsgCecv3eZDcN_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0ECs1hTjP0dFAwJ_12fontc_crater(i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs1hTjP0dFAwJ_12fontc_crater(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2320
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !2320
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noalias !2320, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !noalias !2320, !noundef !6 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1hTjP0dFAwJ_12fontc_crater.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2320
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #23, !noalias !2320
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1hTjP0dFAwJ_12fontc_crater.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2320, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2320
  store i64 %i.i, ptr %0, align 8, !alias.scope !2319
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !alias.scope !2319
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !2319
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1hTjP0dFAwJ_12fontc_crater.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !2319
  store i64 %i.e, ptr %i.o, align 8, !alias.scope !2319
  br label %_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater.exit

_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1hTjP0dFAwJ_12fontc_crater.exit: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1hTjP0dFAwJ_12fontc_crater.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1hTjP0dFAwJ_12fontc_crater(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
end_hunk_0
