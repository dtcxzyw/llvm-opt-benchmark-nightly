Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.06?download=true
inline.NumInlined: 1559
inline.NumDeleted: 650
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages6search:bb.a
.loopexit946:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECs6oosyzwIepl_6ide_db.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit726
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  call void @llvm.experimental.noalias.scope.decl(metadata !1858)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  %i.aji = load i64, ptr %.sroa.7.0..sroa_idx738, align 32, !range !32, !alias.scope !1862, !noundef !29
  %i.ajj = icmp eq i64 %i.aji, 0
  br i1 %i.ajj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCslLTI5cSnp8O_6memchr6memmem8FindIterNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2a_10FindUsages13match_indices0EEB2c_.exit671, label %bb.oy

bb.oy:                                            ; preds = %.loopexit946
  %.val1.i.i.i.i.i669 = load i64, ptr %.sroa.9.0..sroa_idx742, align 16, !alias.scope !1862, !noundef !29 ; 2 uses
  %i.ajk = icmp eq i64 %.val1.i.i.i.i.i669, 0
  br i1 %i.ajk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCslLTI5cSnp8O_6memchr6memmem8FindIterNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2a_10FindUsages13match_indices0EEB2c_.exit671, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %.val.i.i.i.i.i670 = load ptr, ptr %.sroa.8.0..sroa_idx740, align 8, !alias.scope !1862, !nonnull !29, !noundef !29
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i670, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i669, i64 noundef 1) #36, !noalias !1862
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCslLTI5cSnp8O_6memchr6memmem8FindIterNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2a_10FindUsages13match_indices0EEB2c_.exit671

bb.pa:                                            ; preds = %bb.ox
  %i.ajl = invoke noundef nonnull align 8 ptr @_RNvMNtNtCshzWfHUSfYae_4core4cell4lazyINtB2_8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2s_10FindUsages6searchs3_0E11really_initB2u_(ptr noundef nonnull align 8 %i.da)
          to label %bb.pb unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

bb.pb:                                            ; preds = %bb.pa, %bb.ox
  %.sroa.042.0 = phi ptr [ %.sroa.4108.0..sroa_idx, %bb.ox ], [ %i.ajl, %bb.pa ]
  invoke fastcc void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages10find_nodes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.cx, ptr noundef nonnull align 8 %i.ec, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.020.0, i64 noundef %.sroa.10.0, i32 noundef %i.rf, i32 noundef %i.re, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.042.0, i32 noundef %i.aef)
          to label %bb.pc unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cw, ptr noundef nonnull align 8 dereferenceable(120) %i.cx, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.pc
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.pk, ptr %i.r, align 8, !noalias !1864
  %i.ajm = load i64, ptr %i.cw, align 8, !range !32, !alias.scope !1863, !noundef !29
  %i.ajn = trunc nuw i64 %i.ajm to i1
  br i1 %i.ajn, label %bb.pd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i

bb.pd:                                            ; preds = %.backedge
  %i.ajo = invoke fastcc { i64, ptr } @_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4X_10FindUsages10find_nodess_00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtB3W_3ast8node_ext8NameLikeENCINvNvB1j_8find_map5checkINtB3f_10SyntaxNodeB3S_EB6G_QNvYB6G_NtB6K_7AstNode4castE0E0B4Z_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef align 8 dereferenceable(40) %i.pl) #38
          to label %.noexc679 unwind label %bb.pt ; 2 uses

.noexc679:                                        ; preds = %bb.pd
  %i.ajp = extractvalue { i64, ptr } %i.ajo, 0    ; 2 uses
  %.not.i.i675 = icmp eq i64 %i.ajp, -1
  br i1 %.not.i.i675, label %bb.pe, label %bb.pu

bb.pe:                                            ; preds = %.noexc679
  %.pr.i676 = load i64, ptr %i.cw, align 8, !alias.scope !1865
  %i.ajq = icmp eq i64 %.pr.i676, 0
  br i1 %i.ajq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pl)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i.i unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.ajr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pl)
          to label %.body.i677 unwind label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.ajs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i.i: ; preds = %bb.pf
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pl)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i unwind label %bb.pi

bb.pi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i.i
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i677

.body.i677:                                       ; preds = %bb.pi, %bb.pg
  %eh.lpad-body.i678 = phi { ptr, i32 } [ %i.ajt, %bb.pi ], [ %i.ajr, %bb.pg ]
  store i64 0, ptr %i.cw, align 8, !alias.scope !1863
  br label %.body682

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i.i, %bb.pe, %.backedge
  store i64 0, ptr %i.cw, align 8, !alias.scope !1863
  %i.aju = load ptr, ptr %i.pm, align 8, !alias.scope !1866, !noundef !29
  %.not.i28.i = icmp eq ptr %i.aju, null
  br i1 %.not.i28.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i
  %i.ajv = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB31_10FindUsages10find_nodess_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4W_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1l_j1_ENCNCB2V_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB25_3ast8node_ext8NameLikeENCINvNvXsi_B4W_B59_B43_8try_fold7flattenB5V_uB7l_NCINvNvB43_8find_map5checkINtB1o_10SyntaxNodeB21_EB80_QNvYB80_NtB84_7AstNode4castE0E0E0B7l_EB33_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pm, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cw)
          to label %.noexc680 unwind label %bb.pt ; 2 uses

.noexc680:                                        ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i
  %i.ajw = extractvalue { i64, ptr } %i.ajv, 0    ; 2 uses
  %.not.i.i.i672 = icmp eq i64 %i.ajw, -1
  br i1 %.not.i.i.i672, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i, label %bb.pu

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i: ; preds = %.noexc680
  %.pre.i = load i64, ptr %i.cw, align 8, !range !32, !alias.scope !1867
  %i.ajx = icmp eq i64 %.pre.i, 0
  br i1 %i.ajx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i, label %bb.pj

bb.pj:                                            ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pl)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i unwind label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ajy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pl)
          to label %.body33.i unwind label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.ajz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i: ; preds = %bb.pj
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.pl)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i unwind label %bb.pm

bb.pm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i

.body33.i:                                        ; preds = %bb.pm, %bb.pk
  %eh.lpad-body34.i = phi { ptr, i32 } [ %i.aka, %bb.pm ], [ %i.ajy, %bb.pk ]
  store i64 0, ptr %i.cw, align 8, !alias.scope !1863
  br label %.body682

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i32.i, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.thread.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit.i
  store i64 0, ptr %i.cw, align 8, !alias.scope !1863
  %i.akb = load i64, ptr %i.pn, align 8, !range !32, !alias.scope !1863, !noundef !29
  %i.akc = trunc nuw i64 %i.akb to i1
  br i1 %i.akc, label %bb.pn, label %.thread877

bb.pn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i
  %i.akd = invoke fastcc { i64, ptr } @_RNCINvNvXsi_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtBc_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4X_10FindUsages10find_nodess_00EuINtNtNtBg_3ops12control_flow11ControlFlowNtNtNtB3W_3ast8node_ext8NameLikeENCINvNvB1j_8find_map5checkINtB3f_10SyntaxNodeB3S_EB6G_QNvYB6G_NtB6K_7AstNode4castE0E0B4Z_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.r, ptr noalias nofree noundef align 8 dereferenceable(40) %i.po) #38
          to label %.noexc681 unwind label %bb.pt ; 2 uses

.noexc681:                                        ; preds = %bb.pn
  %i.ake = extractvalue { i64, ptr } %i.akd, 0    ; 2 uses
  %.not.i37.i = icmp eq i64 %i.ake, -1
  br i1 %.not.i37.i, label %bb.po, label %bb.pu

bb.po:                                            ; preds = %.noexc681
  %.pr50.i = load i64, ptr %i.pn, align 8, !alias.scope !1868
  %i.akf = icmp eq i64 %.pr50.i, 0
  br i1 %i.akf, label %.thread877, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.po)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i unwind label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.akg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.po)
          to label %.body41.i unwind label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.akh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i: ; preds = %bb.pp
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.po)
          to label %.thread877 unwind label %bb.ps

bb.ps:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i
  %i.aki = landingpad { ptr, i32 }
          cleanup
  br label %.body41.i

.body41.i:                                        ; preds = %bb.ps, %bb.pq
  %eh.lpad-body42.i = phi { ptr, i32 } [ %i.aki, %bb.ps ], [ %i.akg, %bb.pq ]
  store i64 0, ptr %i.pn, align 8, !alias.scope !1863
  br label %.body682

.body682:                                         ; preds = %bb.qy, %bb.qz, %bb.qu, %bb.qv, %bb.qq, %bb.qr, %bb.pt, %.body41.i, %.body33.i, %.body.i677
  %.pn208 = phi { ptr, i32 } [ %i.amd, %bb.qu ], [ %eh.lpad-body.i678, %.body.i677 ], [ %i.alu, %bb.qq ], [ %i.akj, %bb.pt ], [ %eh.lpad-body42.i, %.body41.i ], [ %eh.lpad-body34.i, %.body33.i ], [ %i.alu, %bb.qr ], [ %i.amd, %bb.qv ], [ %i.amm, %bb.qz ], [ %i.amm, %bb.qy ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cw)
          to label %.body667 unwind label %bb.ib

bb.pt:                                            ; preds = %bb.rb, %bb.qx, %bb.qt, %bb.pn, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3j_10FindUsages10find_nodess_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB50_13FlattenCompatppE13iter_try_fold7flattenINtNtB8_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1D_j1_ENCNCB3d_s_00EuINtNtNtBc_3ops12control_flow11ControlFlowNtNtNtB2n_3ast8node_ext8NameLikeENCINvNvXsi_B50_B5d_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5Z_uB7p_NCINvNvB8U_8find_map5checkINtB1G_10SyntaxNodeB2j_EB84_QNvYB84_NtB88_7AstNode4castE0E0E0B7p_EB3l_.exit.i, %bb.pd
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %.body682

bb.pu:                                            ; preds = %.noexc679, %.noexc680, %.noexc681
  %.pn881 = phi { i64, ptr } [ %i.akd, %.noexc681 ], [ %i.ajv, %.noexc680 ], [ %i.ajo, %.noexc679 ]
  %.sroa.0.0.i673.ph = phi i64 [ %i.ake, %.noexc681 ], [ %i.ajw, %.noexc680 ], [ %i.ajp, %.noexc679 ]
  %.sroa.5.0.i.ph = extractvalue { i64, ptr } %.pn881, 1 ; 24 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  switch i64 %.sroa.0.0.i673.ph, label %.loopexit924 [
    i64 2, label %bb.qm
    i64 0, label %bb.pv
    i64 1, label %bb.pw
  ]

.thread877:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB44_10FindUsages10find_nodess_00EEEB46_.exit36.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB3I_10FindUsages10find_nodess_00EEB3K_.exit.i40.i, %bb.po
  store i64 0, ptr %i.pn, align 8, !alias.scope !1863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit687 unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit687: ; preds = %.thread877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.me

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.cv, align 8
  %i.akk = invoke fastcc noundef zeroext i1 @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages14found_name_ref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cv, ptr noundef nonnull %1, ptr %.val8.i.i.i)
          to label %bb.qs unwind label %bb.qq

bb.pw:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1869
  invoke void @_RNvMs0_NtCs6oosyzwIepl_6ide_db4defsNtB5_9NameClass8classify(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, ptr noundef nonnull align 8 %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc692 unwind label %bb.qu

.noexc692:                                        ; preds = %bb.pw
  %i.akl = load i32, ptr %i.q, align 8, !range !1870, !noalias !1869, !noundef !29 ; 3 uses
  %.not.i688 = icmp eq i32 %i.akl, -1
  br i1 %.not.i688, label %bb.qw, label %bb.px

bb.px:                                            ; preds = %.noexc692
  %i.akm = add nsw i32 %i.akl, -3
  %i.akn = icmp samesign ugt i32 %i.akl, 2
  %narrow.i = select i1 %i.akn, i32 %i.akm, i32 2
  switch i32 %narrow.i, label %bb.py [
    i32 0, label %bb.pz
    i32 1, label %bb.qa
    i32 2, label %bb.qb
  ]

bb.py:                                            ; preds = %bb.px
  unreachable

bb.pz:                                            ; preds = %bb.px
  %i.ako = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.px, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  br i1 %i.ako, label %bb.qw, label %bb.qc

bb.qa:                                            ; preds = %bb.px
  %i.akp = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.px) #38
  br i1 %i.akp, label %bb.qj, label %bb.qw

bb.qb:                                            ; preds = %bb.px
  br i1 %i.pq, label %bb.qk, label %bb.qw

bb.qc:                                            ; preds = %bb.pz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.px, i64 40, i1 false), !noalias !1869
  br i1 %.not19.i, label %bb.qg, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  br i1 %i.qe, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1869
  %i.akq = load ptr, ptr %i.ec, align 8, !nonnull !29, !align !37, !noundef !29
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noundef nonnull %i.akq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc693 unwind label %bb.qu

.noexc693:                                        ; preds = %bb.qe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1869
  %i.akr = load ptr, ptr %i.ec, align 8, !nonnull !29, !align !37, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ee, i64 40, i1 false), !noalias !1871
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noundef nonnull %i.akr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.h)
          to label %.noexc694 unwind label %bb.qu

.noexc694:                                        ; preds = %.noexc693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1869
  %i.aks = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1869
  br i1 %i.aks, label %bb.qi, label %bb.qg

bb.qf:                                            ; preds = %bb.qd
  br i1 %.not20.i, label %bb.qh, label %bb.qg

bb.qg:                                            ; preds = %.noexc695, %bb.qf, %.noexc694, %bb.qc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1869
  br label %bb.qw

bb.qh:                                            ; preds = %bb.qf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1869
  %i.akt = load ptr, ptr %i.ec, align 8, !nonnull !29, !align !37, !noundef !29
  invoke void @_RNvNtCs6oosyzwIepl_6ide_db6traits23convert_to_def_in_trait(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noundef nonnull %i.akt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @18, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
          to label %.noexc695 unwind label %bb.qu

.noexc695:                                        ; preds = %bb.qh
  %i.aku = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1869
  br i1 %i.aku, label %bb.qi, label %bb.qg

bb.qi:                                            ; preds = %.noexc695, %.noexc694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1869
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc696 unwind label %bb.qu

.noexc696:                                        ; preds = %bb.qi
  %i.akv = load i32, ptr %i.f, align 4, !range !44, !noalias !1869, !noundef !29 ; 2 uses
  %i.akw = load i32, ptr %i.qf, align 4, !noalias !1869, !noundef !29 ; 2 uses
  %i.akx = load <2 x i32>, ptr %i.qg, align 4, !noalias !1869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1869
  %i.aky = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc697 unwind label %bb.qu

.noexc697:                                        ; preds = %.noexc696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1869
  store i32 %i.akv, ptr %i.e, align 8, !noalias !1869
  store i32 %i.akw, ptr %i.qh, align 4, !noalias !1869
  store i32 0, ptr %i.qi, align 8, !noalias !1869
  store ptr %i.aky, ptr %.sroa.012.sroa.5.0..sroa_idx.i, align 8, !noalias !1869
  store <2 x i32> %i.akx, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1869
  store i8 0, ptr %.sroa.615.0..sroa_idx.i, align 8, !noalias !1869
  %i.akz = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.akv, i32 noundef %i.akw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qi) #38
          to label %.noexc698 unwind label %bb.qu, !inline_history !1604

.noexc698:                                        ; preds = %.noexc697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1869
  br label %bb.qw

bb.qj:                                            ; preds = %bb.qa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1869
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.m, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc699 unwind label %bb.qu

.noexc699:                                        ; preds = %bb.qj
  %i.ala = load i32, ptr %i.m, align 4, !range !44, !noalias !1869, !noundef !29 ; 2 uses
  %i.alb = load i32, ptr %i.py, align 4, !noalias !1869, !noundef !29 ; 2 uses
  %i.alc = load <2 x i32>, ptr %i.pz, align 4, !noalias !1869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1869
  %i.ald = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc700 unwind label %bb.qu

.noexc700:                                        ; preds = %.noexc699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1869
  store i32 %i.ala, ptr %i.l, align 8, !noalias !1869
  store i32 %i.alb, ptr %i.qa, align 4, !noalias !1869
  store i32 0, ptr %i.qb, align 8, !noalias !1869
  store ptr %i.ald, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !noalias !1869
  store <2 x i32> %i.alc, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1869
  store i8 0, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1869
  %i.ale = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.ala, i32 noundef %i.alb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qb) #38
          to label %.noexc701 unwind label %bb.qu, !inline_history !1604

.noexc701:                                        ; preds = %.noexc700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1869
  br label %bb.qw

bb.qk:                                            ; preds = %bb.qb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1869
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ps, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i64 16, i1 false), !noalias !1869
  store i8 1, ptr %i.p, align 8, !noalias !1869
  %i.alf = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1869
  br i1 %i.alf, label %bb.ql, label %bb.qw

bb.ql:                                            ; preds = %bb.qk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1869
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.o, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc702 unwind label %bb.qu

.noexc702:                                        ; preds = %bb.ql
  %i.alg = load i32, ptr %i.o, align 4, !range !44, !noalias !1869, !noundef !29 ; 2 uses
  %i.alh = load i32, ptr %i.pt, align 4, !noalias !1869, !noundef !29 ; 2 uses
  %i.ali = load <2 x i32>, ptr %i.pu, align 4, !noalias !1869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1869
  %i.alj = invoke noundef nonnull ptr @_RNvXsen_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4NameNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu)
          to label %.noexc703 unwind label %bb.qu

.noexc703:                                        ; preds = %.noexc702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1869
  store i32 %i.alg, ptr %i.n, align 8, !noalias !1869
  store i32 %i.alh, ptr %i.pv, align 4, !noalias !1869
  store i32 0, ptr %i.pw, align 8, !noalias !1869
  store ptr %i.alj, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !noalias !1869
  store <2 x i32> %i.ali, ptr %.sroa.4.0..sroa_idx.i689, align 8, !noalias !1869
  store i8 2, ptr %.sroa.6.0..sroa_idx.i691, align 8, !noalias !1869
  %i.alk = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.alg, i32 noundef %i.alh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.pw) #38
          to label %.noexc704 unwind label %bb.qu, !inline_history !1604

.noexc704:                                        ; preds = %.noexc703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1869
  br label %bb.qw

bb.qm:                                            ; preds = %bb.pu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  store ptr %.sroa.5.0.i.ph, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1872
  invoke void @_RNvMs2_NtCs6oosyzwIepl_6ide_db4defsNtB5_12NameRefClass17classify_lifetime(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noundef nonnull align 8 %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc711 unwind label %bb.qy

.noexc711:                                        ; preds = %bb.qm
  %i.all = load i32, ptr %i.d, align 8, !range !51, !noalias !1872, !noundef !29 ; 3 uses
  %.not.i705 = icmp eq i32 %i.all, -1
  br i1 %.not.i705, label %bb.ra, label %bb.qn

bb.qn:                                            ; preds = %.noexc711
  %i.alm = icmp ne i32 %i.all, 4
  call void @llvm.assume(i1 %i.alm)
  %i.aln = icmp eq i32 %i.all, 3
  br i1 %i.aln, label %bb.qo, label %bb.ra

bb.qo:                                            ; preds = %bb.qn
  %i.alo = call fastcc noundef zeroext i1 @_RNvXsi_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.qj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ee) #38
  br i1 %i.alo, label %bb.qp, label %bb.ra

bb.qp:                                            ; preds = %bb.qo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1872
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl14original_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull align 8 %i.pb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc712 unwind label %bb.qy

.noexc712:                                        ; preds = %bb.qp
  %i.alp = load i32, ptr %i.c, align 4, !range !44, !noalias !1872, !noundef !29 ; 2 uses
  %i.alq = load i32, ptr %i.qk, align 4, !noalias !1872, !noundef !29 ; 2 uses
  %i.alr = load <2 x i32>, ptr %i.ql, align 4, !noalias !1872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1872
  %i.als = invoke noundef nonnull ptr @_RNvXscl_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_8LifetimeNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct)
          to label %.noexc713 unwind label %bb.qy

.noexc713:                                        ; preds = %.noexc712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1872
  store i32 %i.alp, ptr %i.b, align 8, !noalias !1872
  store i32 %i.alq, ptr %i.qm, align 4, !noalias !1872
  store i32 2, ptr %i.qn, align 8, !noalias !1872
  store ptr %i.als, ptr %.sroa.01.sroa.5.0..sroa_idx.i707, align 8, !noalias !1872
  store <2 x i32> %i.alr, ptr %.sroa.4.0..sroa_idx.i708, align 8, !noalias !1872
  store i8 0, ptr %.sroa.6.0..sroa_idx.i710, align 8, !noalias !1872
  %i.alt = invoke noundef zeroext i1 %.val8.i.i.i(ptr noundef nonnull %1, i32 noundef %i.alp, i32 noundef %i.alq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.qn) #38
          to label %.noexc714 unwind label %bb.qy, !inline_history !1608

.noexc714:                                        ; preds = %.noexc713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1872
  br label %bb.ra

bb.qq:                                            ; preds = %bb.pv
  %i.alu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  %i.alv = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !noundef !29
  %i.alx = add i32 %i.alw, -1                     ; 2 uses
  store i32 %i.alx, ptr %i.alv, align 4
  %i.aly = icmp eq i32 %i.alx, 0
  br i1 %i.aly, label %bb.qr, label %.body682

bb.qr:                                            ; preds = %bb.qq
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.qs:                                            ; preds = %bb.pv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  %i.alz = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.ama = load i32, ptr %i.alz, align 4, !noundef !29
  %i.amb = add i32 %i.ama, -1                     ; 2 uses
  store i32 %i.amb, ptr %i.alz, align 4
  %i.amc = icmp eq i32 %i.amb, 0
  br i1 %i.amc, label %bb.qt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718

bb.qt:                                            ; preds = %bb.qs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718 unwind label %bb.pt

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718: ; preds = %bb.qs, %bb.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br i1 %i.akk, label %bb.rc, label %.backedge.backedge

.noexc720:                                        ; preds = %bb.qx, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br i1 %.sroa.0.2.i, label %bb.rc, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.noexc720, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718, %.split
  br label %.backedge

bb.qu:                                            ; preds = %.noexc703, %.noexc702, %bb.ql, %.noexc700, %.noexc699, %bb.qj, %.noexc697, %.noexc696, %bb.qi, %bb.qh, %.noexc693, %bb.qe, %bb.pw
  %i.amd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  %i.ame = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amf = load i32, ptr %i.ame, align 4, !noundef !29
  %i.amg = add i32 %i.amf, -1                     ; 2 uses
  store i32 %i.amg, ptr %i.ame, align 4
  %i.amh = icmp eq i32 %i.amg, 0
  br i1 %i.amh, label %bb.qv, label %.body682

bb.qv:                                            ; preds = %bb.qu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.qw:                                            ; preds = %.noexc704, %bb.qk, %.noexc701, %.noexc698, %bb.qg, %bb.qb, %bb.qa, %bb.pz, %.noexc692
  %.sroa.0.2.i = phi i1 [ false, %bb.qg ], [ %i.akz, %.noexc698 ], [ %i.alk, %.noexc704 ], [ %i.ale, %.noexc701 ], [ false, %bb.qb ], [ false, %.noexc692 ], [ false, %bb.qa ], [ false, %bb.pz ], [ false, %bb.qk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1869
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  %i.ami = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amj = load i32, ptr %i.ami, align 4, !noundef !29
  %i.amk = add i32 %i.amj, -1                     ; 2 uses
  store i32 %i.amk, ptr %i.ami, align 4
  %i.aml = icmp eq i32 %i.amk, 0
  br i1 %i.aml, label %bb.qx, label %.noexc720

bb.qx:                                            ; preds = %bb.qw
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.noexc720 unwind label %bb.pt

bb.qy:                                            ; preds = %.noexc713, %.noexc712, %bb.qp, %bb.qm
  %i.amm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  %i.amn = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.amo = load i32, ptr %i.amn, align 4, !noundef !29
  %i.amp = add i32 %i.amo, -1                     ; 2 uses
  store i32 %i.amp, ptr %i.amn, align 4
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %bb.qz, label %.body682

bb.qz:                                            ; preds = %bb.qy
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.body682 unwind label %bb.ib

bb.ra:                                            ; preds = %.noexc714, %bb.qo, %bb.qn, %.noexc711
  %.sroa.0.0.i706 = phi i1 [ %i.alt, %.noexc714 ], [ false, %bb.qo ], [ false, %bb.qn ], [ false, %.noexc711 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1872
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.ph) ]
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i.ph, i64 48 ; 2 uses
  %i.ams = load i32, ptr %i.amr, align 4, !noundef !29
  %i.amt = add i32 %i.ams, -1                     ; 2 uses
  store i32 %i.amt, ptr %i.amr, align 4
  %i.amu = icmp eq i32 %i.amt, 0
  br i1 %i.amu, label %bb.rb, label %.split

bb.rb:                                            ; preds = %bb.ra
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.5.0.i.ph) #35
          to label %.split unwind label %bb.pt

.split:                                           ; preds = %bb.ra, %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br i1 %.sroa.0.0.i706, label %bb.rc, label %.backedge.backedge

bb.rc:                                            ; preds = %.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7NameRefECs6oosyzwIepl_6ide_db.exit718, %.noexc720
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_10filter_map9FilterMapINtCsjpcu9PwIgok_8smallvec8IntoIterAB1F_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4z_10FindUsages10find_nodess_00ENCB4t_s_0EEB4B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.cw)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit726 unwind label %.loopexit.split-lp941.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEIBC_INtCsjpcu9PwIgok_8smallvec8IntoIterAB29_j1_ENCNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB4D_10FindUsages10find_nodess_00ENCB4x_s_0ENvYNtNtNtB2T_3ast8node_ext8NameLikeNtB5X_7AstNode4castEEB4F_.exit726: ; preds = %bb.rc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %.loopexit946

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapNtNtCslLTI5cSnp8O_6memchr6memmem8FindIterNCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2a_10FindUsages13match_indices0EEB2c_.exit671: ; preds = %bb.oz, %bb.oy, %.loopexit946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.nu

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit651: ; preds = %bb.nv, %bb.nu, %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArceE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6oosyzwIepl_6ide_db.exit728 unwind label %.loopexit.split-lp948.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArceEECs6oosyzwIepl_6ide_db.exit728: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4cell4lazy8LazyCellINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB2I_10FindUsages6searchs3_0EEB2K_.exit651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.iy

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit465: ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  call void @llvm.experimental.noalias.scope.decl(metadata !1873)
  %i.amv = getelementptr inbounds nuw i8, ptr %i.df, i64 256
  call void @llvm.experimental.noalias.scope.decl(metadata !1874)
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  %i.amw = load i64, ptr %i.amv, align 32, !range !32, !alias.scope !1876, !noundef !29
  %i.amx = icmp eq i64 %i.amw, 0
  br i1 %i.amx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731, label %bb.rd

bb.rd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit465
  %.val1.i.i.i729 = load i64, ptr %.sroa.57.0.in.i560, align 16, !alias.scope !1876, !noundef !29 ; 2 uses
  %i.amy = icmp eq i64 %.val1.i.i.i729, 0
  br i1 %i.amy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %.val.i.i.i730 = load ptr, ptr %.sroa.06.0.in.i558, align 8, !alias.scope !1876, !nonnull !29, !noundef !29
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i730, i64 noundef range(i64 1, 0) %.val1.i.i.i729, i64 noundef 1) #36, !noalias !1876
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit731: ; preds = %bb.re, %bb.rd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTRNtCs8Xq8PKFYOms_3hir4TypeNtNtCslLTI5cSnp8O_6memchr6memmem6FinderEEECs6oosyzwIepl_6ide_db.exit465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  br label %.thread843

.invoke1455.sink.split:                           ; preds = %bb.bs, %.thread843, %bb.bq, %bb.br, %bb.as, %bb.ak, %bb.ai, %bb.aj, %bb.ay, %bb.be, %.noexc4.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLTI5cSnp8O_6memchr6memmem6FinderECs6oosyzwIepl_6ide_db.exit555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  br label %.invoke1455

.invoke1455:                                      ; preds = %.invoke1455.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit308
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dk)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search11SearchScopeEBF_.exit733 unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages8in_scope(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #1 !guid !1881 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1883)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1883, !align !37, !noundef !29
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages9set_scope.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32, !noalias !1884
  unreachable

_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages9set_scope.exit: ; preds = %bb.a
  store ptr %2, ptr %i.a, align 8, !alias.scope !1883
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !alias.scope !1885
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages9set_scope(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2) unnamed_addr #1 !guid !1886 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !37, !noundef !29
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %2, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 13) i8 @_RNvMs5_NtCs6oosyzwIepl_6ide_db6searchNtB5_17ReferenceCategory3new(ptr noundef nonnull align 8 %0, i8 %.0.val, ptr %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1896 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.e = tail call fastcc noundef zeroext i1 @_RNvNtCs6oosyzwIepl_6ide_db6search19is_name_ref_in_test(ptr noundef nonnull align 8 %0, ptr nonnull %.0.val1)
  %spec.select = select i1 %i.e, i8 8, i8 0       ; 3 uses
  switch i8 %.0.val, label %bb.b [
    i8 1, label %bb.c
    i8 14, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvNtCs6oosyzwIepl_6ide_db6search21is_name_ref_in_import(ptr nonnull %.0.val1)
  %i.g = or disjoint i8 %spec.select, 4
  %spec.select9 = select i1 %i.f, i8 %i.g, i8 %spec.select
  br label %bb.bd

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !29 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %.lr.ph.i, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
  unreachable

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %i.h, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.0.val1, i64 60
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val1, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.val.i.i.i4648.i = phi ptr [ %.0.val1, %.lr.ph.i ], [ %.val.i.i.i.i, %.backedge.i ] ; 13 uses
  %i.o = getelementptr i8, ptr %.val.i.i.i4648.i, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !1897, !noundef !29 ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null ; 4 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !1897, !noundef !29 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.h, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 4, !noalias !1897
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %.noexc.i.i unwind label %bb.i, !noalias !1897

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i4648.i, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !1897, !noundef !29
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !noalias !1897
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECs6oosyzwIepl_6ide_db.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i4648.i) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECs6oosyzwIepl_6ide_db.exit unwind label %bb.k, !noalias !1897

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !1897
  unreachable

bb.l:                                             ; preds = %bb.g, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i4648.i, i64 48 ; 18 uses
  %i.aa = load i32, ptr %i.z, align 8, !noalias !1898, !noundef !29 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.m, label %bb.o, !prof !31

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
end_hunk_0
