Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.12?download=true
inline.NumInlined: 991
inline.NumDeleted: 464
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1Q_5ChainINtNtB1S_6filter6FilterINtBO_11AstChildrenBI_ENCNvNtBO_6traits21attrs_including_inner0EIB2x_INtNtB1S_7flatten7FlatMapINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtBQ_11syntax_node12RustLanguageEEB2T_NCB3i_s_0ENCB3i_s0_0EENtNtNtB1U_6traits8iterator8Iterator4next0ECs33K2ylI4knu_10hir_expand:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67
  store ptr %i.e, ptr %i.c, align 8, !noalias !68
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !range !8, !alias.scope !69, !noalias !70, !noundef !7
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br i1 %i.h, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71
  store ptr %i.c, ptr %i.b, align 8, !noalias !72
  br label %.noexc

.noexc:                                           ; preds = %.noexc4, %bb.d
  %i.j = call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %.noexc4

.noexc4:                                          ; preds = %.noexc
  %i.k = call noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1R_6traits21attrs_including_inners0_0E0INtB7_5FnMutTuB1L_EE8call_mutCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.j) ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not6.i.i.i.i.i.i.i.i, label %.noexc, label %bb.h

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71
  %.val15.pre.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !8, !alias.scope !69, !noalias !70
  %i.l = icmp eq i64 %.val15.pre.i.i.i.i.i.i, 0
  %.val16.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !69, !noalias !70 ; 3 uses
  %i.m = icmp eq ptr %.val16.i.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val16.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !noundef !7
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val16.i.i.i.i.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i unwind label %bb.i

bb.h:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2x_3ast11AstChildrenNtNtNtB3o_9generated5nodes4AttrENCNvNtB3o_6traits21attrs_including_inners_0ENCB4j_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand.exit.i

bb.i:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.f, align 8, !alias.scope !69, !noalias !70
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  store i64 0, ptr %i.f, align 8, !alias.scope !69, !noalias !70
  %i.s = load i64, ptr %1, align 8, !range !8, !alias.scope !73, !noalias !74, !noundef !7
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit19.i.i.i.i.i.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = call noundef ptr @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB24_3ast6traits21attrs_including_inners_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB4z_13FlattenCompatppE13iter_try_fold7flattenINtB2Y_11AstChildrenNtNtNtB2Y_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5S_ENCINvNvXsi_B4z_B4M_B3G_8try_fold7flattenB5y_uB6p_NCINvNvB3G_4find5checkB5S_QNCB2U_s0_0E0E0E0B6p_ECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i.i.i.i.i, label %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.thread.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2x_3ast11AstChildrenNtNtNtB3o_9generated5nodes4AttrENCNvNtB3o_6traits21attrs_including_inners_0ENCB4j_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand.exit.i

_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.thread.i.i.i.i.i.i: ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i
  %.val13.pre.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !8, !alias.scope !69, !noalias !70
  %i.w = icmp eq i64 %.val13.pre.i.i.i.i.i.i, 0
  %.val14.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !69, !noalias !70 ; 3 uses
  %i.x = icmp eq ptr %.val14.i.i.i.i.i.i, null
  %or.cond.i17.i.i.i.i.i.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i17.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit19.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.thread.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !noundef !7
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit19.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val14.i.i.i.i.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit19.i.i.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.f, align 8, !alias.scope !69, !noalias !70
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit19.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.thread.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i
  store i64 0, ptr %i.f, align 8, !alias.scope !69, !noalias !70
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !8, !alias.scope !69, !noalias !70, !noundef !7
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit.i.i.i

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit19.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  store ptr %i.c, ptr %i.a, align 8, !noalias !76
  br label %.noexc6

.noexc6:                                          ; preds = %.noexc7, %bb.m
  %i.ah = call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) ; 2 uses
  %.not.i.i20.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i20.i.i.i.i.i.i, label %bb.n, label %.noexc7

.noexc7:                                          ; preds = %.noexc6
  %i.ai = call noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1R_6traits21attrs_including_inners0_0E0INtB7_5FnMutTuB1L_EE8call_mutCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.ah) ; 2 uses
  %.not6.i.i21.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i.i21.i.i.i.i.i.i, label %.noexc6, label %bb.q

bb.n:                                             ; preds = %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  %.val.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !range !8, !alias.scope !69, !noalias !70
  %i.aj = icmp eq i64 %.val.pre.i.i.i.i.i.i, 0
  %.val12.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !69, !noalias !70 ; 3 uses
  %i.ak = icmp eq ptr %.val12.i.i.i.i.i.i, null
  %or.cond.i24.i.i.i.i.i.i = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i24.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.val12.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !7
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val12.i.i.i.i.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit.i.i.i unwind label %bb.r

bb.q:                                             ; preds = %.noexc7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2x_3ast11AstChildrenNtNtNtB3o_9generated5nodes4AttrENCNvNtB3o_6traits21attrs_including_inners_0ENCB4j_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.ad, align 8, !alias.scope !69, !noalias !70
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECs33K2ylI4knu_10hir_expand.exit19.i.i.i.i.i.i
  store i64 0, ptr %i.ad, align 8, !alias.scope !69, !noalias !70
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2x_3ast11AstChildrenNtNtNtB3o_9generated5nodes4AttrENCNvNtB3o_6traits21attrs_including_inners_0ENCB4j_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand.exit.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2x_3ast11AstChildrenNtNtNtB3o_9generated5nodes4AttrENCNvNtB3o_6traits21attrs_including_inners_0ENCB4j_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit.i.i.i, %bb.q, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i, %bb.h
  %.sroa.0.0.i.i.i4.i.i.i = phi ptr [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit.i.i.i ], [ %i.v, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECs33K2ylI4knu_10hir_expand.exit.i.i.i.i.i.i ], [ %i.ai, %bb.q ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit9: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2x_3ast11AstChildrenNtNtNtB3o_9generated5nodes4AttrENCNvNtB3o_6traits21attrs_including_inners_0ENCB4j_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand.exit.i, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i.i.i4.i.i.i, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtB2x_3ast11AstChildrenNtNtNtB3o_9generated5nodes4AttrENCNvNtB3o_6traits21attrs_including_inners_0ENCB4j_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand.exit.i ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.i, %bb.l, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.ap, %bb.r ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsqiF3OZxLbD_3mbe6parserNtB3_12MetaTemplate5parseNCNvXNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB15_5files13InFileWrapperNtB15_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expanderB1I_NtBX_11InnerTrait_20decl_macro_expander_s_0EB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [28 x i8], align 4                ; 3 uses
  %i.o = alloca [28 x i8], align 4                ; 3 uses
  %i.p = alloca [28 x i8], align 4                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [112 x i8], align 8               ; 7 uses
  %i.s = alloca [28 x i8], align 4                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [88 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 7 uses
  %i.w = alloca [92 x i8], align 4                ; 5 uses
  %i.x = alloca [88 x i8], align 4                ; 5 uses
  %i.y = alloca [88 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 10 uses
  %i.aa = alloca [88 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 11 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [88 x i8], align 4               ; 5 uses
  %i.ae = alloca [88 x i8], align 4               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 11 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 11 uses
  %i.ak = alloca [40 x i8], align 8               ; 9 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [64 x i8], align 8               ; 16 uses
  %i.ao = alloca [40 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [104 x i8], align 8              ; 11 uses
  %i.ar = alloca [96 x i8], align 8               ; 13 uses
  %i.as = alloca [40 x i8], align 8               ; 10 uses
  %i.at = alloca [88 x i8], align 4               ; 5 uses
  %i.au = alloca [88 x i8], align 4               ; 6 uses
  %i.av = alloca [88 x i8], align 8               ; 10 uses
  %.sroa.10 = alloca [60 x i8], align 8           ; 7 uses
  %i.aw = alloca [88 x i8], align 8               ; 6 uses
  %i.ax = alloca [28 x i8], align 4               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [64 x i8], align 8               ; 14 uses
  %i.ba = alloca [88 x i8], align 8               ; 12 uses
  %i.bb = alloca [24 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 3 uses
  store i64 0, ptr %i.bd, align 8
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.7.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.sroa.9.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 4 uses
  %.sroa.11.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %.sroa.12.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %.sroa.13.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %.sroa.14.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %.sroa.15.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %.sroa.16.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 76
  %.sroa.20.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %.sroa.685.0..sroa_idx86.a = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7.0..sroa_idx88.a = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.sroa.9.0..sroa_idx90.a = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4195.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5197.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.11.16..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.z, i64 28 ; 2 uses
  %.sroa.4190.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5192.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.4250.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5251.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.9.12..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.sroa.4150.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.5152.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4170.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.5171.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %.sroa.6172.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.7173.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.8.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.av, i64 84
  %.sroa.7157.0..sroa_idx158.a = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.9160.0..sroa_idx161.a = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.9163.0..sroa_idx164.a = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.10.0..sroa_idx166.a = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.4202.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.4202.sroa.4.0..sroa.4202.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.sroa.4202.sroa.5.0..sroa.4202.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4202.sroa.7.0..sroa.4202.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.4202.sroa.8.0..sroa.4202.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.5203.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.5203.sroa.4.0..sroa.5203.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %.sroa.5203.sroa.8.0..sroa.5203.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.5203.sroa.9.0..sroa.5203.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.5203.sroa.10.0..sroa.5203.0..sroa_idx.sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %.sroa.4184.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.4184.i.sroa.4.0..sroa.4184.0..sroa_idx.i.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.4184.i.sroa.5.0..sroa.4184.0..sroa_idx.i.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %.sroa.4184.i.sroa.6.0..sroa.4184.0..sroa_idx.i.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %.sroa.5185.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %.sroa.6186.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %.sroa.2.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %.sroa.2.i.sroa.4.0..sroa.2.0..sroa_idx.i.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.2.i.sroa.6.0..sroa.2.0..sroa_idx.i.sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.3.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.4195.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %.sroa.9160.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %.sroa.9163.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %.sroa.10.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.4118.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %.sroa.5119.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %.sroa.5180.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.6181.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4136.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.sroa.5137.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %.sroa.11.16..sroa_idx91.a = getelementptr inbounds nuw i8, ptr %i.ab, i64 28 ; 2 uses
  %.sroa.4185.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5187.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4247.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5248.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 30
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.dr, %bb.a
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter4peek(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %bb.c unwind label %.body.thread220.loopexit

.body.thread220.loopexit:                         ; preds = %bb.r, %bb.q, %bb.dh, %bb.dg, %bb.dj, %.noexc27, %.noexc14, %bb.aa, %bb.u, %bb.t, %.noexc77, %bb.e, %bb.b, %.noexc18
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread220.loopexit.split-lp:                ; preds = %.invoke, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %bb.b
  %i.bs = load i64, ptr %i.ba, align 8, !range !105, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.bs, -2
  br i1 %.not, label %bb.dk, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.685.0.copyload = load i32, ptr %.sroa.685.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx.a, align 4 ; 2 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx.a, align 4 ; 3 uses
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx.a, align 8
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx.a, align 8
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx.a, align 8
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx.a, align 8
  %i.bt = load <4 x i8>, ptr %.sroa.16.0..sroa_idx.a, align 4
  %.sroa.20.0.copyload = load i64, ptr %.sroa.20.0..sroa_idx.a, align 8
  %.not.i = icmp eq i64 %i.bs, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !106
  store i64 %i.bs, ptr %i.v, align 8, !noalias !107
  store i32 %.sroa.685.0.copyload, ptr %.sroa.685.0..sroa_idx86.a, align 8, !noalias !107
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx88.a, align 4, !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx90.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.a, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !106
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc unwind label %.body.thread220.loopexit, !inline_history !82

.noexc:                                           ; preds = %bb.e
  %i.bu = load i64, ptr %i.u, align 8, !range !105, !noalias !106, !noundef !7 ; 2 uses
  %.not289.i = icmp eq i64 %i.bu, -2
  br i1 %.not289.i, label %.invoke, label %bb.di, !prof !9

bb.f:                                             ; preds = %bb.d
  switch i32 %.sroa.685.0.copyload, label %default.unreachable.i [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

default.unreachable.i:                            ; preds = %bb.ak, %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ab, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.9.0..sroa_idx.a, i64 28, i1 false)
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.16..sroa_idx91.a, align 4, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !106
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.k unwind label %.loopexit369, !noalias !108, !inline_history !82

bb.h:                                             ; preds = %bb.f
  %i.bv = icmp eq i32 %.sroa.7.0.copyload, 36
  br i1 %i.bv, label %bb.t, label %bb.u

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.9.0..sroa_idx.a, i64 28, i1 false)
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.16..sroa_idx.a, align 4, !noalias !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !106
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.db unwind label %.loopexit, !noalias !108, !inline_history !82

.loopexit369:                                     ; preds = %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit83, %bb.m
  %lpad.loopexit371 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp370:                            ; preds = %bb.n
  %lpad.loopexit.split-lp372 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp370, %.loopexit369
  %lpad.phi373 = phi { ptr, i32 } [ %lpad.loopexit371, %.loopexit369 ], [ %lpad.loopexit.split-lp372, %.loopexit.split-lp370 ]
  %.val307.i = load ptr, ptr %i.ab, align 8, !noalias !106, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand(ptr nonnull %.val307.i) #38
          to label %.body.thread unwind label %bb.s, !noalias !108, !inline_history !82

bb.k:                                             ; preds = %bb.g
  %i.bw = load i64, ptr %i.aa, align 8, !range !105, !noalias !106, !noundef !7 ; 2 uses
  %.not286.i = icmp eq i64 %i.bw, -2
  br i1 %.not286.i, label %bb.n, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  %.sroa.4185.0.copyload = load i32, ptr %.sroa.4185.0..sroa_idx.a, align 8, !noalias !106
  %.sroa.5187.0.copyload = load ptr, ptr %.sroa.5187.0..sroa_idx.a, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !106
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit83

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.4185.0.copyload, ptr %.sroa.5187.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit83 unwind label %.loopexit369

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #39
          to label %bb.o unwind label %.loopexit.split-lp370, !noalias !108, !inline_history !82

bb.o:                                             ; preds = %bb.de, %bb.n
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit83: ; preds = %bb.l, %bb.m
  %i.by = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.p unwind label %.loopexit369, !noalias !108, !inline_history !82

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit83
  %.sroa.0246.0.copyload.i = load ptr, ptr %i.bq, align 8, !noalias !106
  %.sroa.4247.0.copyload.i = load i64, ptr %.sroa.4247.0..sroa_idx.i.a, align 8, !noalias !106
  %.sroa.5248.0.copyload.i = load i32, ptr %.sroa.5248.0..sroa_idx.i.a, align 8, !noalias !106
  %4 = load i8, ptr %i.br, align 2, !noalias !106
  %5 = load <4 x i8>, ptr %.sroa.11.16..sroa_idx91.a, align 4
  %.val306.i = load ptr, ptr %i.ab, align 8, !noalias !106, !nonnull !7, !noundef !7 ; 2 uses
  %i.bz = ptrtoint ptr %.val306.i to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i.i.i.i75 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i75, label %.noexc10, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr i8, ptr %.val306.i, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  %i.cc = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.cb)
          to label %.noexc76 unwind label %.body.thread220.loopexit

.noexc76:                                         ; preds = %bb.q
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 %i.cd ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ce, ptr %i.g, align 8
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8
  %i.cg = icmp eq i64 %i.cf, 2
  br i1 %i.cg, label %bb.r, label %.noexc77, !prof !9

bb.r:                                             ; preds = %.noexc76
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc77 unwind label %.body.thread220.loopexit

.noexc77:                                         ; preds = %bb.r, %.noexc76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ce, ptr %i.f, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc78 unwind label %.body.thread220.loopexit

.noexc78:                                         ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.noexc10

.noexc10:                                         ; preds = %.noexc78, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !106
  %6 = insertelement <4 x i8> poison, i8 %4, i64 0
  %7 = shufflevector <4 x i8> %6, <4 x i8> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %8 = shufflevector <4 x i8> %5, <4 x i8> %7, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %.thread289

bb.s:                                             ; preds = %bb.ai, %bb.bk, %bb.cr, %bb.da, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit, %.thread229.thread, %bb.bm, %bb.as, %bb.j
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !108, !inline_history !82
  unreachable

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !106
  store i32 36, ptr %i.ax, align 4, !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.9.12..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.a, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !106
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc11 unwind label %.body.thread220.loopexit, !inline_history !82

.noexc11:                                         ; preds = %bb.t
  %i.ci = load i64, ptr %i.aw, align 8, !range !105, !noalias !106, !noundef !7 ; 2 uses
  %.not274.i = icmp eq i64 %i.ci, -2
  br i1 %.not274.i, label %.invoke, label %bb.z, !prof !9

bb.u:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !106
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter18expect_glued_punct(ptr noalias nofree noundef nonnull sret([92 x i8]) align 4 captures(none) dereferenceable(92) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc12 unwind label %.body.thread220.loopexit, !inline_history !82

.noexc12:                                         ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.cj = load i32, ptr %i.w, align 4, !range !110, !alias.scope !111, !noalias !112, !noundef !7
  %i.ck = trunc nuw i32 %i.cj to i1
  br i1 %i.ck, label %bb.v, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EuE6unwrapCs33K2ylI4knu_10hir_expand.exit.i, !prof !9

bb.v:                                             ; preds = %.noexc12
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41
          to label %.noexc13 unwind label %.body.thread220.loopexit.split-lp, !inline_history !82

.noexc13:                                         ; preds = %bb.v
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EuE6unwrapCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.noexc12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.x, ptr noundef nonnull readonly align 4 dereferenceable(88) %i.bh, i64 88, i1 false), !alias.scope !113, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !106
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !114
  %i.cl = call noundef align 4 dereferenceable_or_null(88) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 585) 88, i64 noundef range(i64 4, 9) 4) #31, !noalias !114 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.w, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i, !prof !9

bb.w:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EuE6unwrapCs33K2ylI4knu_10hir_expand.exit.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 88) #39
          to label %.noexc73 unwind label %bb.x

.noexc73:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.x)
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !108, !inline_history !82
  unreachable

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EuE6unwrapCs33K2ylI4knu_10hir_expand.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.cl, ptr noundef nonnull align 4 dereferenceable(88) %i.x, i64 88, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !106
  br label %.thread289

bb.z:                                             ; preds = %.noexc11
  %.sroa.4150.0.copyload = load i32, ptr %.sroa.4150.0..sroa_idx.a, align 8, !noalias !106
  %.sroa.5152.0.copyload = load ptr, ptr %.sroa.5152.0..sroa_idx.a, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !106
  %i.cp = icmp eq i64 %i.ci, -1
  br i1 %i.cp, label %bb.aa, label %.noexc14

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.4150.0.copyload, ptr %.sroa.5152.0.copyload)
          to label %.noexc14 unwind label %.body.thread220.loopexit

.noexc14:                                         ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !106
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %.noexc15 unwind label %.body.thread220.loopexit, !inline_history !82

.noexc15:                                         ; preds = %.noexc14
  %i.cq = load i64, ptr %i.av, align 8, !range !105, !noalias !106, !noundef !7 ; 3 uses
  %.not275.i = icmp eq i64 %i.cq, -2
  br i1 %.not275.i, label %bb.ac, label %bb.ab

.invoke:                                          ; preds = %.noexc, %.noexc11
  %i.cr = phi ptr [ @13, %.noexc11 ], [ @23, %.noexc ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #41
          to label %.cont unwind label %.body.thread220.loopexit.split-lp, !inline_history !82

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %.noexc15
  %.sroa.4170.0.copyload = load i32, ptr %.sroa.4170.0..sroa_idx.a, align 8, !noalias !106 ; 5 uses
  %.sroa.5171.0.copyload = load i32, ptr %.sroa.5171.0..sroa_idx.a, align 4, !noalias !106 ; 3 uses
  %.sroa.6172.0.copyload = load ptr, ptr %.sroa.6172.0..sroa_idx.a, align 8, !noalias !106 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(60) %.sroa.7173.0..sroa_idx.a, i64 60, i1 false), !noalias !106
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx.a, align 4, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !106
  %.not276.i.not = icmp eq i64 %i.cq, -1
  br i1 %.not276.i.not, label %bb.ak, label %bb.aj

bb.ac:                                            ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !106
  store i32 0, ptr %i.au, align 4, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !106
  invoke void @_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl8try_pushCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.s, ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.au, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %i.ax)
          to label %bb.ad unwind label %.loopexit364, !noalias !108, !inline_history !82

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.cs = load i32, ptr %i.s, align 4, !range !116, !alias.scope !115, !noalias !117, !noundef !7
  %.not.i297.i = icmp eq i32 %i.cs, -1
  br i1 %.not.i297.i, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit299.i, label %bb.ae, !prof !10

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.n, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.s, i64 28, i1 false), !noalias !117
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 43, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
          to label %.noexc298.i unwind label %.loopexit.split-lp365, !noalias !108, !inline_history !82

.noexc298.i:                                      ; preds = %bb.ae
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit299.i: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.at, ptr noundef nonnull align 4 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !106
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !119
  %i.ct = call noundef align 4 dereferenceable_or_null(88) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 585) 88, i64 noundef range(i64 4, 9) 4) #31, !noalias !119 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.af, label %bb.dl, !prof !9

bb.af:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit299.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 88) #39
          to label %.noexc66 unwind label %bb.ag

.noexc66:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.at)
          to label %.body.thread unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !108, !inline_history !82
  unreachable

.loopexit364:                                     ; preds = %bb.ac
  %lpad.loopexit366 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp365:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp367 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp365, %.loopexit364
  %lpad.phi368 = phi { ptr, i32 } [ %lpad.loopexit366, %.loopexit364 ], [ %lpad.loopexit.split-lp367, %.loopexit.split-lp365 ]
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.au)
          to label %.body.thread unwind label %bb.s

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !106
  store i64 %i.cq, ptr %i.as, align 8, !noalias !106
  store i32 %.sroa.4170.0.copyload, ptr %.sroa.7157.0..sroa_idx158.a, align 8, !noalias !106
  store i32 %.sroa.5171.0.copyload, ptr %.sroa.9160.0..sroa_idx161.a, align 4, !noalias !106
  store ptr %.sroa.6172.0.copyload, ptr %.sroa.9163.0..sroa_idx164.a, align 8, !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx166.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10, i64 16, i1 false), !noalias !106
  switch i8 %.sroa.8.0.copyload, label %bb.bz [
    i8 0, label %bb.ca
    i8 1, label %bb.cb
  ]

bb.ak:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !106
  store i32 %.sroa.4170.0.copyload, ptr %i.ak, align 8, !noalias !106
  store i32 %.sroa.5171.0.copyload, ptr %.sroa.9160.8..sroa_idx.a, align 4, !noalias !106
  store ptr %.sroa.6172.0.copyload, ptr %.sroa.9163.8..sroa_idx.a, align 8, !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.8..sroa_idx.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !noalias !106
  switch i32 %.sroa.4170.0.copyload, label %default.unreachable.i [
    i32 0, label %bb.al
    i32 1, label %bb.am
    i32 2, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cx = invoke noundef zeroext i1 @_RNvNtCsqiF3OZxLbD_3mbe6parser18is_boolean_literal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.9163.8..sroa_idx.a)
          to label %bb.ap unwind label %.thread229, !noalias !108, !inline_history !82

bb.am:                                            ; preds = %bb.ak
  %i.cy = icmp eq i32 %.sroa.5171.0.copyload, 36
  br i1 %i.cy, label %bb.ba, label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %i.cz = icmp eq ptr %.sroa.6172.0.copyload, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols6crate_10SYMBOL_STR
  br i1 %i.cz, label %bb.bx, label %bb.bl

.thread244.loopexit:                              ; preds = %.noexc508, %bb.bu, %bb.bt
  %lpad.loopexit353 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.thread244.loopexit.split-lp:                     ; preds = %.noexc48, %bb.bq, %bb.bp
  %lpad.loopexit.split-lp354 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ao:                                            ; preds = %bb.ar
  %lpad.thr_comm.split-lp251 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %cond = icmp eq i32 %.sroa.4170.0.copyload, 0
  br i1 %cond, label %.thread229.thread, label %.body.thread

bb.ap:                                            ; preds = %bb.al
  br i1 %i.cx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9163.8..sroa_idx.a, i64 32, i1 false), !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !106
  invoke fastcc void @_RINvNtCsqiF3OZxLbD_3mbe6parser17eat_fragment_kindNCNvXNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtBY_5files13InFileWrapperNtBY_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expanderB1B_NtBQ_11InnerTrait_20decl_macro_expander_s_0EBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3)
          to label %bb.at unwind label %bb.as, !noalias !120, !inline_history !82

bb.ar:                                            ; preds = %bb.ap, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !106
  invoke void @_RNvMCsqiF3OZxLbD_3mbeNtB2_10ParseError8expected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14)
          to label %bb.be unwind label %bb.ao, !noalias !108, !inline_history !82

bb.as:                                            ; preds = %bb.av, %bb.aq
  %i.da = landingpad { ptr, i32 }
          cleanup
  %.val305.i = load ptr, ptr %i.ah, align 8, !noalias !106, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand(ptr nonnull %.val305.i) #38
          to label %.body.thread unwind label %bb.s, !noalias !108, !inline_history !82

bb.at:                                            ; preds = %bb.aq
  %i.db = load i64, ptr %i.ag, align 8, !range !121, !noalias !106, !noundef !7 ; 2 uses
  %.not278.i = icmp eq i64 %i.db, -1
  br i1 %.not278.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.4241.0.copyload.i = load i64, ptr %i.bo, align 8, !noalias !106
  %.sroa.5242.i.sroa.4.0..sroa.5242.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5242.i.sroa.4.0.copyload = load i64, ptr %.sroa.5242.i.sroa.4.0..sroa.5242.0..sroa_idx.i.sroa_idx, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !106
  %.val304.i = load ptr, ptr %i.ah, align 8, !noalias !106, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand(ptr nonnull %.val304.i)
          to label %bb.az unwind label %.thread229.thread279.loopexit.split-lp, !noalias !108, !inline_history !82

bb.av:                                            ; preds = %bb.at
  %i.dc = load i8, ptr %i.bo, align 8, !range !11, !noalias !106, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !106
  %i.dd = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %bb.aw unwind label %bb.as, !noalias !108, !inline_history !82

bb.aw:                                            ; preds = %bb.av
  %.sroa.0135.0.copyload.i = load i32, ptr %i.bp, align 8, !noalias !106
  %.sroa.4136.0.copyload.i = load ptr, ptr %.sroa.4136.0..sroa_idx.i.a, align 4, !noalias !106
  %.sroa.5137.0.copyload.i = load ptr, ptr %.sroa.5137.0..sroa_idx.i.a, align 4, !noalias !106
  %.val303.i = load ptr, ptr %i.ah, align 8, !noalias !106, !nonnull !7, !noundef !7 ; 2 uses
  %i.de = ptrtoint ptr %.val303.i to i64
  %i.df = and i64 %i.de, 1
  %.not.i.i.i.i500 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i500, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dg = getelementptr i8, ptr %.val303.i, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ], !noalias !108
  %i.dh = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.dg)
          to label %.noexc501 unwind label %.thread229.thread279.loopexit

.noexc501:                                        ; preds = %bb.ax
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %i.di ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !108
  store ptr %i.dj, ptr %i.e, align 8, !noalias !108
  %i.dk = load atomic i64, ptr %i.dj acquire, align 8, !noalias !108
  %i.dl = icmp eq i64 %i.dk, 2
  br i1 %i.dl, label %bb.ay, label %.noexc502, !prof !9

bb.ay:                                            ; preds = %.noexc501
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc502 unwind label %.thread229.thread279.loopexit

.noexc502:                                        ; preds = %bb.ay, %.noexc501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !108
  store ptr %i.dj, ptr %i.d, align 8, !noalias !108
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc503 unwind label %.thread229.thread279.loopexit

.noexc503:                                        ; preds = %.noexc502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !108
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504: ; preds = %.noexc503, %bb.aw
  %i.dm = ptrtoint ptr %i.dd to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !106
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41: ; preds = %bb.bx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504
  %.sroa.16.sroa.3.1.i = phi i32 [ %.sroa.0135.0.copyload.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504 ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ %.sroa.0116.0.copyload.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit ], [ undef, %bb.bx ]
  %.sroa.29.sroa.0.1.i = phi i32 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504 ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.6181.0.copyload, %bb.bx ]
  %.sroa.26.1.i = phi i64 [ %i.dm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504 ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ %i.er, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.5180.0.copyload, %bb.bx ]
  %.sroa.25.1.i = phi ptr [ %.sroa.5137.0.copyload.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504 ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ %.sroa.5119.0.copyload.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.4179.0.copyload, %bb.bx ]
  %.sroa.19.1.i = phi ptr [ %.sroa.4136.0.copyload.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504 ], [ %i.ds, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ %.sroa.4118.0.copyload.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit ], [ @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols12dollar_crate10SYMBOL_STR, %bb.bx ]
  %.sroa.12.1.i = phi i8 [ %i.dc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504 ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ %i.eh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit ], [ undef, %bb.bx ]
  %.sroa.039.1.i = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit504 ], [ 9, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit ], [ 10, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !106
  br label %bb.by

bb.az:                                            ; preds = %bb.au
  %i.dn = inttoptr i64 %.sroa.4241.0.copyload.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !106
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.bd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit50, %.noexc45, %bb.be, %bb.az
  %.sroa.37.1 = phi ptr [ %i.dn, %bb.az ], [ %.sroa.37.8.copyload103, %.noexc45 ], [ %.sroa.37.8.copyload103, %bb.be ], [ %.sroa.37.8.copyload105, %bb.bd ], [ %i.dy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit50 ]
  %.sroa.46.1 = phi i64 [ %.sroa.5242.i.sroa.4.0.copyload, %bb.az ], [ %.sroa.46.8.copyload114, %.noexc45 ], [ %.sroa.46.8.copyload114, %bb.be ], [ %.sroa.46.8.copyload116, %bb.bd ], [ %.sroa.5233.i.sroa.4.0.copyload, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit50 ]
  %.sroa.23.1 = phi i64 [ %i.db, %bb.az ], [ %.sroa.23.8.copyload97, %.noexc45 ], [ %.sroa.23.8.copyload97, %bb.be ], [ %.sroa.23.8.copyload98, %bb.bd ], [ %i.dx, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !106
  br label %.thread340

bb.ba:                                            ; preds = %bb.am
  br i1 %3, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !106
  store i32 0, ptr %i.ae, align 4, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !106
  invoke void @_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl8try_pushCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.p, ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.ae, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %.sroa.9160.8..sroa_idx.a)
          to label %bb.bf unwind label %.loopexit356, !noalias !108

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !106
  invoke void @_RNvMCsqiF3OZxLbD_3mbeNtB2_10ParseError10unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 39)
          to label %bb.bd unwind label %.thread255, !noalias !108, !inline_history !82

.thread255:                                       ; preds = %bb.bc
  %lpad.thr_comm.split-lp251256 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bd:                                            ; preds = %bb.bc
  %.sroa.23.8.copyload98 = load i64, ptr %i.af, align 8, !noalias !122
  %.sroa.37.8..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.37.8.copyload105 = load ptr, ptr %.sroa.37.8..sroa_idx104, align 8, !noalias !122
  %.sroa.46.8..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.46.8.copyload116 = load i64, ptr %.sroa.46.8..sroa_idx115, align 8, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !106
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit

bb.be:                                            ; preds = %bb.ar
  %.sroa.23.8.copyload97 = load i64, ptr %i.ac, align 8, !noalias !122 ; 2 uses
  %.sroa.37.8..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.37.8.copyload103 = load ptr, ptr %.sroa.37.8..sroa_idx102, align 8, !noalias !122 ; 2 uses
  %.sroa.46.8..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.46.8.copyload114 = load i64, ptr %.sroa.46.8..sroa_idx113, align 8, !noalias !122 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !106
  %i.do = icmp ne i32 %.sroa.4170.0.copyload, 0
  %i.dp = ptrtoint ptr %.sroa.6172.0.copyload to i64
  %i.dq = and i64 %i.dp, 1
  %.not.i.i.i.i42 = icmp eq i64 %i.dq, 0
  %or.cond = select i1 %i.do, i1 true, i1 %.not.i.i.i.i42
  br i1 %or.cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit, label %bb.bv

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.dr = load i32, ptr %i.p, align 4, !range !116, !alias.scope !123, !noalias !124, !noundef !7
  %.not.i.i = icmp eq i32 %i.dr, -1
  br i1 %.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit.i, label %bb.bg, !prof !10

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(28) %i.p, i64 28, i1 false), !noalias !124
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 43, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #41
          to label %.noexc.i unwind label %.loopexit.split-lp357, !noalias !108, !inline_history !82

.noexc.i:                                         ; preds = %bb.bg
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ad, ptr noundef nonnull align 4 dereferenceable(88) %i.ae, i64 88, i1 false), !noalias !106
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !126
  %i.ds = call noundef align 4 dereferenceable_or_null(88) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 585) 88, i64 noundef range(i64 4, 9) 4) #31, !noalias !126 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.bh, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i, !prof !9

bb.bh:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 88) #39
          to label %.noexc505 unwind label %bb.bi

.noexc505:                                        ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.ad)
          to label %.body.thread unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !108, !inline_history !82
  unreachable

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ds, ptr noundef nonnull align 4 dereferenceable(88) %i.ad, i64 88, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !106
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41

.loopexit356:                                     ; preds = %bb.bb
  %lpad.loopexit358 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp357:                            ; preds = %bb.bg
  %lpad.loopexit.split-lp359 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp357, %.loopexit356
  %lpad.phi360 = phi { ptr, i32 } [ %lpad.loopexit358, %.loopexit356 ], [ %lpad.loopexit.split-lp359, %.loopexit.split-lp357 ]
  invoke void @_RNvXNtCs474hSbRjvii_8arrayvec8arrayvecINtB2_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 dereferenceable(88) %i.ae)
          to label %.body.thread unwind label %bb.s

bb.bl:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9163.8..sroa_idx.a, i64 32, i1 false), !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !106
  invoke fastcc void @_RINvNtCsqiF3OZxLbD_3mbe6parser17eat_fragment_kindNCNvXNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtBY_5files13InFileWrapperNtBY_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expanderB1B_NtBQ_11InnerTrait_20decl_macro_expander_s_0EBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3)
          to label %bb.bn unwind label %bb.bm, !noalias !120, !inline_history !82

bb.bm:                                            ; preds = %bb.br, %bb.bl
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %.val314.i = load ptr, ptr %i.aj, align 8, !noalias !106, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand(ptr nonnull %.val314.i) #38
          to label %.body.thread unwind label %bb.s, !noalias !108, !inline_history !82

bb.bn:                                            ; preds = %bb.bl
  %i.dx = load i64, ptr %i.ai, align 8, !range !121, !noalias !106, !noundef !7 ; 2 uses
  %.not277.i = icmp eq i64 %i.dx, -1
  br i1 %.not277.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.4232.0.copyload.i = load i64, ptr %i.bm, align 8, !noalias !106
  %.sroa.5233.i.sroa.4.0..sroa.5233.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5233.i.sroa.4.0.copyload = load i64, ptr %.sroa.5233.i.sroa.4.0..sroa.5233.0..sroa_idx.i.sroa_idx, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !106
  %i.dy = inttoptr i64 %.sroa.4232.0.copyload.i to ptr
  %.val313.i = load ptr, ptr %i.aj, align 8, !noalias !106, !nonnull !7, !noundef !7 ; 2 uses
  %i.dz = ptrtoint ptr %.val313.i to i64
  %i.ea = and i64 %i.dz, 1
  %.not.i.i.i.i46 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i46, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit50, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eb = getelementptr i8, ptr %.val313.i, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ], !noalias !108
  %i.ec = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.eb)
          to label %.noexc47 unwind label %.thread244.loopexit.split-lp

.noexc47:                                         ; preds = %bb.bp
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !108
  store ptr %i.ee, ptr %i.i, align 8, !noalias !108
  %i.ef = load atomic i64, ptr %i.ee acquire, align 8, !noalias !108
  %i.eg = icmp eq i64 %i.ef, 2
  br i1 %i.eg, label %bb.bq, label %.noexc48, !prof !9

bb.bq:                                            ; preds = %.noexc47
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc48 unwind label %.thread244.loopexit.split-lp

.noexc48:                                         ; preds = %bb.bq, %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !108
  store ptr %i.ee, ptr %i.h, align 8, !noalias !108
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc49 unwind label %.thread244.loopexit.split-lp

.noexc49:                                         ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !108
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit50

bb.br:                                            ; preds = %bb.bn
  %i.eh = load i8, ptr %i.bm, align 8, !range !11, !noalias !106, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !106
  %i.ei = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %bb.bs unwind label %bb.bm, !noalias !108, !inline_history !82

bb.bs:                                            ; preds = %bb.br
  %.sroa.0116.0.copyload.i = load i32, ptr %i.bn, align 8, !noalias !106
  %.sroa.4118.0.copyload.i = load ptr, ptr %.sroa.4118.0..sroa_idx.i.a, align 4, !noalias !106
  %.sroa.5119.0.copyload.i = load ptr, ptr %.sroa.5119.0..sroa_idx.i.a, align 4, !noalias !106
  %.val312.i = load ptr, ptr %i.aj, align 8, !noalias !106, !nonnull !7, !noundef !7 ; 2 uses
  %i.ej = ptrtoint ptr %.val312.i to i64
  %i.ek = and i64 %i.ej, 1
  %.not.i.i.i.i506 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.i506, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.el = getelementptr i8, ptr %.val312.i, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ], !noalias !108
  %i.em = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.el)
          to label %.noexc507 unwind label %.thread244.loopexit

.noexc507:                                        ; preds = %bb.bt
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !108
  store ptr %i.eo, ptr %i.c, align 8, !noalias !108
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8, !noalias !108
  %i.eq = icmp eq i64 %i.ep, 2
  br i1 %i.eq, label %bb.bu, label %.noexc508, !prof !9

bb.bu:                                            ; preds = %.noexc507
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc508 unwind label %.thread244.loopexit

.noexc508:                                        ; preds = %bb.bu, %.noexc507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !108
  store ptr %i.eo, ptr %i.b, align 8, !noalias !108
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc509 unwind label %.thread244.loopexit

.noexc509:                                        ; preds = %.noexc508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !108
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit: ; preds = %.noexc509, %bb.bs
  %i.er = ptrtoint ptr %i.ei to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !106
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit50: ; preds = %.noexc49, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !106
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit

bb.bv:                                            ; preds = %bb.be
  %i.es = getelementptr i8, ptr %.sroa.6172.0.copyload, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ], !noalias !108
  %i.et = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.es)
          to label %.noexc43 unwind label %.loopexit.split-lp349

.noexc43:                                         ; preds = %bb.bv
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %i.eu ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !108
  store ptr %i.ev, ptr %i.k, align 8, !noalias !108
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8, !noalias !108
  %i.ex = icmp eq i64 %i.ew, 2
  br i1 %i.ex, label %bb.bw, label %.noexc44, !prof !9

bb.bw:                                            ; preds = %.noexc43
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %.noexc44 unwind label %.loopexit.split-lp349

.noexc44:                                         ; preds = %bb.bw, %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !108
  store ptr %i.ev, ptr %i.j, align 8, !noalias !108
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc45 unwind label %.loopexit.split-lp349

.noexc45:                                         ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !108
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit

.loopexit348:                                     ; preds = %bb.cs, %bb.ca
  %lpad.loopexit350 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp349:                            ; preds = %.noexc44, %bb.bw, %bb.bv, %bb.ch, %bb.cw, %bb.ct, %bb.bz
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bx:                                            ; preds = %bb.an
  %.sroa.4179.0.copyload = load ptr, ptr %.sroa.10.8..sroa_idx.a, align 8, !noalias !106
  %.sroa.5180.0.copyload = load i64, ptr %.sroa.5180.0..sroa_idx.a, align 8, !noalias !106
  %.sroa.6181.0.copyload = load i32, ptr %.sroa.6181.0..sroa_idx.a, align 8, !noalias !106
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41

bb.by:                                            ; preds = %bb.co, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41
  %.sroa.16.sroa.3.2.i = phi i32 [ %.sroa.16.sroa.3.3.i, %bb.co ], [ %.sroa.16.sroa.3.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.16.sroa.0.1.i = phi i16 [ %.sroa.16.sroa.0.2.i, %bb.co ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.29.sroa.9.1.i = phi i64 [ %.sroa.29.sroa.9.2.i, %bb.co ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.29.sroa.0.2.i = phi i32 [ %.sroa.29.sroa.0.3.i, %bb.co ], [ %.sroa.29.sroa.0.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.31.1.i = phi i64 [ %.sroa.31.2.i, %bb.co ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.30.1.i = phi ptr [ %.sroa.30.2.i, %bb.co ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.26.2.i = phi i64 [ %.sroa.26.3.i, %bb.co ], [ %.sroa.26.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.25.2.i = phi ptr [ %.sroa.25.3.i, %bb.co ], [ %.sroa.25.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.19.2.i = phi ptr [ %.sroa.19.3.i, %bb.co ], [ %.sroa.19.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.12.2.i = phi i8 [ %.sroa.12.3.i, %bb.co ], [ %.sroa.12.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %.sroa.039.2.i = phi i8 [ %.sroa.039.3.i, %bb.co ], [ %.sroa.039.1.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  %i.ey = phi <4 x i8> [ %i.fi, %bb.co ], [ <i8 0, i8 undef, i8 undef, i8 undef>, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand.exit41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !106
  br label %.thread289

.thread229.thread279.loopexit:                    ; preds = %.noexc502, %bb.ay, %bb.ax
  %lpad.loopexit361 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.thread229.thread279.loopexit.split-lp:           ; preds = %bb.au
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.thread229:                                       ; preds = %bb.al
  %lpad.thr_comm.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %.thread229.thread

.thread229.thread:                                ; preds = %bb.ao, %.thread229
  %.pn.i234273 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp278, %.thread229 ], [ %lpad.thr_comm.split-lp251, %bb.ao ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand(ptr nonnull %.sroa.6172.0.copyload) #38
          to label %.body.thread unwind label %bb.s, !noalias !108, !inline_history !82

bb.bz:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !106
  invoke void @_RNvMCsqiF3OZxLbD_3mbeNtB2_10ParseError8expected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 45)
          to label %bb.cz unwind label %.loopexit.split-lp349, !noalias !108, !inline_history !82

bb.ca:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !106
  invoke void @_RNvNtCsqiF3OZxLbD_3mbe6parser12parse_repeat(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.cc unwind label %.loopexit348, !noalias !108, !inline_history !82

bb.cb:                                            ; preds = %bb.aj
  br i1 %3, label %bb.cs, label %bb.ct

bb.cc:                                            ; preds = %bb.ca
  %i.ez = load i32, ptr %i.aq, align 8, !range !127, !noalias !106, !noundef !7 ; 2 uses
  %i.fa = icmp eq i32 %i.ez, -2
  br i1 %i.fa, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %.sroa.0212.0.copyload = load i64, ptr %.sroa.4184.i.sroa.4.0..sroa.4184.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  %.sroa.4213.0.copyload = load ptr, ptr %.sroa.4184.i.sroa.5.0..sroa.4184.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  %.sroa.5214.0.copyload = load i64, ptr %.sroa.4184.i.sroa.6.0..sroa.4184.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !106
  br label %bb.cp

bb.ce:                                            ; preds = %bb.cc
  %.sroa.4184.i.sroa.0.0.copyload = load i32, ptr %.sroa.4184.0..sroa_idx.i.a, align 4, !noalias !106
  %.sroa.4184.i.sroa.4.0.copyload = load i64, ptr %.sroa.4184.i.sroa.4.0..sroa.4184.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  %.sroa.4184.i.sroa.5.0.copyload = load ptr, ptr %.sroa.4184.i.sroa.5.0..sroa.4184.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  %.sroa.4184.i.sroa.6.0.copyload = load i64, ptr %.sroa.4184.i.sroa.6.0..sroa.4184.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.3.0..sroa_idx.i.a, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5185.0..sroa_idx.i.a, i64 64, i1 false), !noalias !106
  %.sroa.6186.0.copyload.i = load i8, ptr %.sroa.6186.0..sroa_idx.i.a, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !106
  store i32 %i.ez, ptr %i.ar, align 8, !noalias !106
  store i32 %.sroa.4184.i.sroa.0.0.copyload, ptr %.sroa.2.0..sroa_idx.i.a, align 4, !noalias !106
  store i64 %.sroa.4184.i.sroa.4.0.copyload, ptr %.sroa.2.i.sroa.4.0..sroa.2.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  store ptr %.sroa.4184.i.sroa.5.0.copyload, ptr %.sroa.2.i.sroa.5.0..sroa.2.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  store i64 %.sroa.4184.i.sroa.6.0.copyload, ptr %.sroa.2.i.sroa.6.0..sroa.2.0..sroa_idx.i.sroa_idx.a, align 8, !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !noalias !106
  invoke void @_RINvMNtCsqiF3OZxLbD_3mbe6parserNtB3_12MetaTemplate5parseNCNvXNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB15_5files13InFileWrapperNtB15_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expanderB1I_NtBX_11InnerTrait_20decl_macro_expander_s_0EB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.ao, i1 noundef zeroext %3)
          to label %bb.cf unwind label %bb.cq, !noalias !120, !inline_history !82

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !106
  %i.fb = load i64, ptr %i.ap, align 8, !range !121, !noalias !106, !noundef !7 ; 2 uses
  %.not280.i = icmp eq i64 %i.fb, -1
  %i.fc = load ptr, ptr %i.bi, align 8, !noalias !106 ; 3 uses
  %i.fd = load i64, ptr %i.bj, align 8, !noalias !106 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !106
  %.sroa.021.0.copyload.i = load i32, ptr %i.ar, align 8, !noalias !108 ; 2 uses
  %.not281.i = icmp eq i32 %.sroa.021.0.copyload.i, -1 ; 2 uses
  br i1 %.not280.i, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not281.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit36, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ar)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit36 unwind label %.loopexit.split-lp349

bb.ci:                                            ; preds = %bb.cf
  br i1 %.not281.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.4195.0..sroa_idx.i.a, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.2.0..sroa_idx.i.a, i64 92, i1 false)
  store i64 1, ptr %i.r, align 8, !noalias !106
  store i64 1, ptr %i.bk, align 8, !noalias !106
  store i32 %.sroa.021.0.copyload.i, ptr %i.bl, align 8, !noalias !106
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !128
  %i.fe = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 4, 585) 112, i64 noundef range(i64 4, 9) 8) #31, !noalias !128 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ck, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEE3newCs33K2ylI4knu_10hir_expand.exit.i, !prof !9

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #39
          to label %.noexc510 unwind label %bb.cl

.noexc510:                                        ; preds = %bb.ck
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(96) %i.bl)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !108, !inline_history !82
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.cl
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe6parser12MetaTemplateECs33K2ylI4knu_10hir_expand(ptr nonnull %i.fc, i64 %i.fd) #38
          to label %.body.thread unwind label %bb.s, !noalias !108, !inline_history !82

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEE3newCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fe, ptr noundef nonnull align 8 dereferenceable(112) %i.r, i64 112, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !106
  br label %bb.cn

bb.cn:                                            ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEE3newCs33K2ylI4knu_10hir_expand.exit.i, %bb.ci
  %.sroa.020.0.i = phi ptr [ %i.fe, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEE3newCs33K2ylI4knu_10hir_expand.exit.i ], [ null, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !106
  br label %bb.co

bb.co:                                            ; preds = %bb.cx, %bb.cn
  %.sroa.16.sroa.3.3.i = phi i32 [ undef, %bb.cn ], [ %.sroa.4202.sroa.5.0.copyload.i, %bb.cx ]
  %.sroa.16.sroa.0.2.i = phi i16 [ undef, %bb.cn ], [ %.sroa.4202.sroa.4.0.copyload.i, %bb.cx ]
  %.sroa.29.sroa.9.2.i = phi i64 [ undef, %bb.cn ], [ %.sroa.5203.sroa.8.0.copyload.i, %bb.cx ]
  %.sroa.29.sroa.0.3.i = phi i32 [ undef, %bb.cn ], [ %.sroa.5203.sroa.0.0.copyload.i, %bb.cx ]
  %.sroa.31.2.i = phi i64 [ undef, %bb.cn ], [ %.sroa.5203.sroa.10.0.copyload.i, %bb.cx ]
  %.sroa.30.2.i = phi ptr [ undef, %bb.cn ], [ %.sroa.5203.sroa.9.0.copyload.i, %bb.cx ]
  %.sroa.26.3.i = phi i64 [ %i.fd, %bb.cn ], [ %.sroa.4202.sroa.8.0.copyload.i, %bb.cx ]
  %.sroa.25.3.i = phi ptr [ %i.fc, %bb.cn ], [ %.sroa.4202.sroa.7.0.copyload.i, %bb.cx ]
  %.sroa.19.3.i = phi ptr [ %.sroa.020.0.i, %bb.cn ], [ %.sroa.4202.sroa.6.0.copyload.i, %bb.cx ]
  %.sroa.12.3.i = phi i8 [ %.sroa.6186.0.copyload.i, %bb.cn ], [ %.sroa.4202.sroa.0.0.copyload.i, %bb.cx ]
  %.sroa.039.3.i = phi i8 [ 6, %bb.cn ], [ %i.fm, %bb.cx ]
  %i.fi = phi <4 x i8> [ undef, %bb.cn ], [ %i.fo, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !106
  br label %bb.by

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit36: ; preds = %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !106
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cz, %bb.cy, %bb.cu, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit36, %bb.cd
  %.sroa.37.3 = phi ptr [ %.sroa.37.8.copyload111, %bb.cz ], [ %.sroa.4213.0.copyload, %bb.cd ], [ %i.fc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit36 ], [ %.sroa.634.sroa.10.7.copyload.i, %bb.cy ], [ %.sroa.37.8.copyload107, %bb.cu ]
  %.sroa.46.3 = phi i64 [ %.sroa.46.8.copyload122, %bb.cz ], [ %.sroa.5214.0.copyload, %bb.cd ], [ %i.fd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit36 ], [ %.sroa.634.sroa.11.7.copyload.i, %bb.cy ], [ %.sroa.46.8.copyload118, %bb.cu ]
  %.sroa.23.3 = phi i64 [ %.sroa.23.8.copyload101, %bb.cz ], [ %.sroa.0212.0.copyload, %bb.cd ], [ %i.fb, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit36 ], [ %i.fp, %bb.cy ], [ %.sroa.23.8.copyload99, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !106
  br label %.thread340

bb.cq:                                            ; preds = %bb.ce
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fk = load i32, ptr %i.ar, align 8, !range !129, !alias.scope !130, !noalias !108, !noundef !7
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %.body.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.ar)
          to label %.body.thread unwind label %bb.s

bb.cs:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !106
  invoke void @_RNvNtCsqiF3OZxLbD_3mbe6parser18parse_metavar_expr(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %bb.cv unwind label %.loopexit348, !noalias !108, !inline_history !82

bb.ct:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !106
  invoke void @_RNvMCsqiF3OZxLbD_3mbeNtB2_10ParseError10unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 58)
          to label %bb.cu unwind label %.loopexit.split-lp349, !noalias !108, !inline_history !82

bb.cu:                                            ; preds = %bb.ct
  %.sroa.23.8.copyload99 = load i64, ptr %i.am, align 8, !noalias !122
  %.sroa.37.8..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.37.8.copyload107 = load ptr, ptr %.sroa.37.8..sroa_idx106, align 8, !noalias !122
  %.sroa.46.8..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.46.8.copyload118 = load i64, ptr %.sroa.46.8..sroa_idx117, align 8, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !106
  br label %bb.cp

bb.cv:                                            ; preds = %bb.cs
  %i.fm = load i8, ptr %i.an, align 8, !range !131, !noalias !106, !noundef !7 ; 2 uses
  %i.fn = icmp eq i8 %i.fm, -1
  br i1 %i.fn, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !106
  invoke void @_RNvMCsqiF3OZxLbD_3mbeNtB2_10ParseError10unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 31)
          to label %bb.cy unwind label %.loopexit.split-lp349, !noalias !108, !inline_history !82

bb.cx:                                            ; preds = %bb.cv
  %.sroa.4202.sroa.0.0.copyload.i = load i8, ptr %.sroa.4202.0..sroa_idx.i.a, align 1, !noalias !106
  %.sroa.4202.sroa.4.0.copyload.i = load i16, ptr %.sroa.4202.sroa.4.0..sroa.4202.0..sroa_idx.sroa_idx.i.a, align 2, !noalias !106
  %.sroa.4202.sroa.5.0.copyload.i = load i32, ptr %.sroa.4202.sroa.5.0..sroa.4202.0..sroa_idx.sroa_idx.i.a, align 4, !noalias !106
  %.sroa.4202.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4202.sroa.6.0..sroa.4202.0..sroa_idx.sroa_idx.i.a, align 8, !noalias !106
  %.sroa.4202.sroa.7.0.copyload.i = load ptr, ptr %.sroa.4202.sroa.7.0..sroa.4202.0..sroa_idx.sroa_idx.i.a, align 8, !noalias !106
  %.sroa.4202.sroa.8.0.copyload.i = load i64, ptr %.sroa.4202.sroa.8.0..sroa.4202.0..sroa_idx.sroa_idx.i.a, align 8, !noalias !106
  %.sroa.5203.sroa.0.0.copyload.i = load i32, ptr %.sroa.5203.0..sroa_idx.i.a, align 8, !noalias !106
  %i.fo = load <4 x i8>, ptr %.sroa.5203.sroa.4.0..sroa.5203.0..sroa_idx.sroa_idx.i.a, align 4, !noalias !106
  %.sroa.5203.sroa.8.0.copyload.i = load i64, ptr %.sroa.5203.sroa.8.0..sroa.5203.0..sroa_idx.sroa_idx.i.a, align 8, !noalias !106
  %.sroa.5203.sroa.9.0.copyload.i = load ptr, ptr %.sroa.5203.sroa.9.0..sroa.5203.0..sroa_idx.sroa_idx.i.a, align 8, !noalias !106
  %.sroa.5203.sroa.10.0.copyload.i = load i64, ptr %.sroa.5203.sroa.10.0..sroa.5203.0..sroa_idx.sroa_idx.i.a, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !106
  br label %bb.co

bb.cy:                                            ; preds = %bb.cw
  %.sroa.634.sroa.7.7.copyload.i = load ptr, ptr %i.q, align 8, !noalias !106
  %.sroa.634.sroa.10.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.634.sroa.10.7.copyload.i = load ptr, ptr %.sroa.634.sroa.10.7..sroa_idx.i, align 8, !noalias !106
  %.sroa.634.sroa.11.7..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.634.sroa.11.7.copyload.i = load i64, ptr %.sroa.634.sroa.11.7..sroa_idx.i, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !106
  %i.fp = ptrtoint ptr %.sroa.634.sroa.7.7.copyload.i to i64
  br label %bb.cp

bb.cz:                                            ; preds = %bb.bz
  %.sroa.23.8.copyload101 = load i64, ptr %i.al, align 8, !noalias !122
  %.sroa.37.8..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.37.8.copyload111 = load ptr, ptr %.sroa.37.8..sroa_idx110, align 8, !noalias !122
  %.sroa.46.8..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.46.8.copyload122 = load i64, ptr %.sroa.46.8..sroa_idx121, align 8, !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !106
  br label %bb.cp

.loopexit:                                        ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit32, %bb.dd
  %lpad.loopexit345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.loopexit.split-lp:                               ; preds = %bb.de
  %lpad.loopexit.split-lp346 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.da:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi347 = phi { ptr, i32 } [ %lpad.loopexit345, %.loopexit ], [ %lpad.loopexit.split-lp346, %.loopexit.split-lp ]
  %.val309.i = load ptr, ptr %i.z, align 8, !noalias !106, !nonnull !7, !noundef !7
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs33K2ylI4knu_10hir_expand(ptr nonnull %.val309.i) #38
          to label %.body.thread unwind label %bb.s, !noalias !108, !inline_history !82

bb.db:                                            ; preds = %bb.i
  %i.fq = load i64, ptr %i.y, align 8, !range !105, !noalias !106, !noundef !7 ; 2 uses
  %.not273.i = icmp eq i64 %i.fq, -2
  br i1 %.not273.i, label %bb.de, label %bb.dc, !prof !9

bb.dc:                                            ; preds = %bb.db
  %.sroa.4190.0.copyload = load i32, ptr %.sroa.4190.0..sroa_idx.a, align 8, !noalias !106
  %.sroa.5192.0.copyload = load ptr, ptr %.sroa.5192.0..sroa_idx.a, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !106
  %i.fr = icmp eq i64 %i.fq, -1
  br i1 %i.fr, label %bb.dd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit32

bb.dd:                                            ; preds = %bb.dc
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.4190.0.copyload, ptr %.sroa.5192.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit32 unwind label %.loopexit

bb.de:                                            ; preds = %bb.db
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #39
          to label %bb.o unwind label %.loopexit.split-lp, !noalias !108, !inline_history !82

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit32: ; preds = %bb.dc, %bb.dd
  %i.fs = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %bb.df unwind label %.loopexit, !noalias !108, !inline_history !82

bb.df:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit32
  %.sroa.0249.0.copyload.i = load ptr, ptr %i.bg, align 8, !noalias !106
  %.sroa.4250.0.copyload.i = load i64, ptr %.sroa.4250.0..sroa_idx.i.a, align 8, !noalias !106
  %.sroa.5251.0.copyload.i = load i32, ptr %.sroa.5251.0..sroa_idx.i.a, align 8, !noalias !106
  %i.ft = load i8, ptr %.sroa.11.16..sroa_idx.a, align 4, !range !12, !noalias !106, !noundef !7
  %.val308.i = load ptr, ptr %i.z, align 8, !noalias !106, !nonnull !7, !noundef !7 ; 2 uses
  %i.fu = ptrtoint ptr %.val308.i to i64
  %i.fv = and i64 %i.fu, 1
  %.not.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i.i.i, label %.noexc17, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.fw = getelementptr i8, ptr %.val308.i, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fw) ]
  %i.fx = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.fw)
          to label %.noexc26 unwind label %.body.thread220.loopexit

.noexc26:                                         ; preds = %bb.dg
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fy ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.fz, ptr %i.m, align 8
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8
  %i.gb = icmp eq i64 %i.ga, 2
  br i1 %i.gb, label %bb.dh, label %.noexc27, !prof !9

bb.dh:                                            ; preds = %.noexc26
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %.noexc27 unwind label %.body.thread220.loopexit

.noexc27:                                         ; preds = %bb.dh, %.noexc26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.fz, ptr %i.l, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc28 unwind label %.body.thread220.loopexit

.noexc28:                                         ; preds = %.noexc27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.noexc17

.noexc17:                                         ; preds = %.noexc28, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !106
  %i.gc = insertelement <4 x i8> <i8 poison, i8 undef, i8 undef, i8 undef>, i8 %i.ft, i64 0
  br label %.thread289

bb.di:                                            ; preds = %.noexc
  %.sroa.4195.0.copyload = load i32, ptr %.sroa.4195.0..sroa_idx.a, align 8, !noalias !106
  %.sroa.5197.0.copyload = load ptr, ptr %.sroa.5197.0..sroa_idx.a, align 8, !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !106
  %i.gd = icmp eq i64 %i.bu, -1
  br i1 %i.gd, label %bb.dj, label %.noexc18

bb.dj:                                            ; preds = %bb.di
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.4195.0.copyload, ptr %.sroa.5197.0.copyload)
          to label %.noexc18 unwind label %.body.thread220.loopexit

.noexc18:                                         ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !106
  invoke void @_RINvMNtCsqiF3OZxLbD_3mbe6parserNtB3_12MetaTemplate5parseNCNvXNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB15_5files13InFileWrapperNtB15_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expanderB1I_NtBX_11InnerTrait_20decl_macro_expander_s_0EB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.v, i1 noundef zeroext %3)
          to label %.noexc19 unwind label %.body.thread220.loopexit, !inline_history !82

.noexc19:                                         ; preds = %.noexc18
  %i.ge = load i64, ptr %i.t, align 8, !range !121, !noalias !106, !noundef !7 ; 2 uses
  %.not290.i = icmp eq i64 %i.ge, -1
  %i.gf = load ptr, ptr %i.be, align 8, !noalias !106 ; 2 uses
  %i.gg = load i64, ptr %i.bf, align 8, !noalias !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !106
  br i1 %.not290.i, label %.thread289, label %.thread320

bb.dk:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %i.gh = call { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCsqiF3OZxLbD_3mbe6parser2OpE16into_boxed_sliceCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ay) ; 2 uses
  %i.gi = extractvalue { ptr, i64 } %i.gh, 0
  %i.gj = extractvalue { ptr, i64 } %i.gh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gi, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gj, ptr %i.gl, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ds

.thread340:                                       ; preds = %bb.cp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit
  %.sroa.37.2.ph = phi ptr [ %.sroa.37.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.37.3, %bb.cp ]
  %.sroa.46.2.ph = phi i64 [ %.sroa.46.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.46.3, %bb.cp ]
  %.sroa.23.2.ph = phi i64 [ %.sroa.23.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.23.3, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !106
  br label %.thread320

bb.dl:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuINtNtCs474hSbRjvii_8arrayvec6errors13CapacityErrorNtCs4dcH4YgJDq_2tt5PunctEE6unwrapCs33K2ylI4knu_10hir_expand.exit299.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.ct, ptr noundef nonnull align 4 dereferenceable(88) %i.at, i64 88, i1 false), !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !106
  br label %.thread289

.thread320:                                       ; preds = %.noexc19, %.thread340
  %.sroa.23.4338 = phi i64 [ %.sroa.23.2.ph, %.thread340 ], [ %i.ge, %.noexc19 ]
  %.sroa.46.4337 = phi i64 [ %.sroa.46.2.ph, %.thread340 ], [ %i.gg, %.noexc19 ]
  %.sroa.37.4336 = phi ptr [ %.sroa.37.2.ph, %.thread340 ], [ %i.gf, %.noexc19 ]
  store i64 %.sroa.23.4338, ptr %0, align 8
  %.sroa.4147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.37.4336, ptr %.sroa.4147.0..sroa_idx, align 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.4337, ptr %.sroa.5148.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsqiF3OZxLbD_3mbe6parser2OpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsqiF3OZxLbD_3mbe6parser2OpEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.dm

bb.dm:                                            ; preds = %.thread320
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsqiF3OZxLbD_3mbe6parser2OpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %common.resume unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %.body.thread, %bb.dm
  %common.resume.op = phi { ptr, i32 } [ %i.gm, %bb.dm ], [ %eh.lpad-body218, %.body.thread ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsqiF3OZxLbD_3mbe6parser2OpEECs33K2ylI4knu_10hir_expand.exit: ; preds = %.thread320
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsqiF3OZxLbD_3mbe6parser2OpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
  br label %bb.ds

.thread289:                                       ; preds = %.noexc19, %.noexc17, %bb.by, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i, %.noexc10, %bb.dl
  %.sroa.093.4319 = phi i8 [ 9, %bb.dl ], [ 10, %.noexc17 ], [ 8, %.noexc10 ], [ %.sroa.039.2.i, %bb.by ], [ 9, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ 7, %.noexc19 ]
  %.sroa.1895.0318 = phi i8 [ undef, %bb.dl ], [ undef, %.noexc17 ], [ undef, %.noexc10 ], [ %.sroa.12.2.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ undef, %.noexc19 ]
  %.sroa.2096.0317 = phi i16 [ undef, %bb.dl ], [ undef, %.noexc17 ], [ undef, %.noexc10 ], [ %.sroa.16.sroa.0.1.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ undef, %.noexc19 ]
  %.sroa.21.0316 = phi i32 [ undef, %bb.dl ], [ undef, %.noexc17 ], [ undef, %.noexc10 ], [ %.sroa.16.sroa.3.2.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %.sroa.11.0.copyload, %.noexc19 ]
  %.sroa.23.4315.in = phi ptr [ %i.ct, %bb.dl ], [ %i.fs, %.noexc17 ], [ %i.by, %.noexc10 ], [ %.sroa.19.2.i, %bb.by ], [ %i.cl, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %.sroa.12.0.copyload, %.noexc19 ]
  %.sroa.46.4314 = phi i64 [ undef, %bb.dl ], [ %.sroa.4250.0.copyload.i, %.noexc17 ], [ %.sroa.4247.0.copyload.i, %.noexc10 ], [ %.sroa.26.2.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %.sroa.14.0.copyload, %.noexc19 ]
  %.sroa.51.0313 = phi i32 [ undef, %bb.dl ], [ %.sroa.5251.0.copyload.i, %.noexc17 ], [ %.sroa.5248.0.copyload.i, %.noexc10 ], [ %.sroa.29.sroa.0.2.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %.sroa.15.0.copyload, %.noexc19 ]
  %.sroa.62.0308 = phi i64 [ undef, %bb.dl ], [ undef, %.noexc17 ], [ undef, %.noexc10 ], [ %.sroa.29.sroa.9.1.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %.sroa.20.0.copyload, %.noexc19 ]
  %.sroa.64.0307 = phi ptr [ undef, %bb.dl ], [ undef, %.noexc17 ], [ undef, %.noexc10 ], [ %.sroa.30.1.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %i.gf, %.noexc19 ]
  %.sroa.66.0306 = phi i64 [ undef, %bb.dl ], [ undef, %.noexc17 ], [ undef, %.noexc10 ], [ %.sroa.31.1.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %i.gg, %.noexc19 ]
  %.sroa.37.4305 = phi ptr [ undef, %bb.dl ], [ %.sroa.0249.0.copyload.i, %.noexc17 ], [ %.sroa.0246.0.copyload.i, %.noexc10 ], [ %.sroa.25.2.i, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %.sroa.13.0.copyload, %.noexc19 ]
  %i.go = phi <4 x i8> [ undef, %bb.dl ], [ %i.gc, %.noexc17 ], [ %8, %.noexc10 ], [ %i.ey, %bb.by ], [ undef, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_EE3newCs33K2ylI4knu_10hir_expand.exit296.i ], [ %i.bt, %.noexc19 ]
  %.sroa.23.4315 = ptrtoint ptr %.sroa.23.4315.in to i64
  store i8 %.sroa.093.4319, ptr %i.az, align 8
  store i8 %.sroa.1895.0318, ptr %.sroa.6.0..sroa_idx2, align 1
  store i16 %.sroa.2096.0317, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx2.sroa_idx, align 2
  store i32 %.sroa.21.0316, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx, align 4
  store i64 %.sroa.23.4315, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  store ptr %.sroa.37.4305, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  store i64 %.sroa.46.4314, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  store i32 %.sroa.51.0313, ptr %.sroa.8.0..sroa_idx4, align 8
  store <4 x i8> %i.go, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx4.sroa_idx, align 4
  store i64 %.sroa.62.0308, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx4.sroa_idx, align 8
  store ptr %.sroa.64.0307, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx4.sroa_idx, align 8
  store i64 %.sroa.66.0306, ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx4.sroa_idx, align 8
  %i.gp = load i64, ptr %i.bd, align 8, !alias.scope !132, !noalias !133, !noundef !7 ; 3 uses
  %i.gq = load i64, ptr %i.bb, align 8, !range !13, !alias.scope !132, !noalias !133, !noundef !7
  %i.gr = icmp eq i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %.thread289
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsqiF3OZxLbD_3mbe6parser2OpE8grow_oneCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.dr unwind label %bb.dp, !noalias !133

bb.dp:                                            ; preds = %bb.do
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsqiF3OZxLbD_3mbe6parser2OpECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.az) #38
          to label %.body.thread unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable

bb.dr:                                            ; preds = %bb.do, %.thread289
  %i.gu = load ptr, ptr %i.bc, align 8, !alias.scope !132, !noalias !133, !nonnull !7, !noundef !7
  %i.gv = getelementptr inbounds nuw [64 x i8], ptr %i.gu, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 64, i1 false)
  %i.gw = add i64 %i.gp, 1
  store i64 %i.gw, ptr %i.bd, align 8, !alias.scope !132, !noalias !133
  br label %bb.b

bb.ds:                                            ; preds = %bb.dk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsqiF3OZxLbD_3mbe6parser2OpEECs33K2ylI4knu_10hir_expand.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  ret void

.body.thread:                                     ; preds = %.thread229.thread279.loopexit, %.thread229.thread279.loopexit.split-lp, %.loopexit348, %.loopexit.split-lp349, %.thread244.loopexit, %.thread244.loopexit.split-lp, %.body.thread220.loopexit, %.body.thread220.loopexit.split-lp, %bb.ao, %bb.bm, %bb.as, %bb.bk, %bb.bi, %bb.cq, %bb.cr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit, %.thread255, %.thread229.thread, %bb.dp, %bb.ai, %bb.ag, %bb.x, %bb.j, %bb.da
  %eh.lpad-body218 = phi { ptr, i32 } [ %i.dw, %bb.bm ], [ %lpad.phi368, %bb.ai ], [ %lpad.phi347, %bb.da ], [ %lpad.phi373, %bb.j ], [ %i.gs, %bb.dp ], [ %lpad.loopexit.split-lp354, %.thread244.loopexit.split-lp ], [ %i.cv, %bb.ag ], [ %i.cn, %bb.x ], [ %lpad.thr_comm.split-lp251256, %.thread255 ], [ %i.fj, %bb.cq ], [ %i.da, %bb.as ], [ %lpad.loopexit.split-lp, %.body.thread220.loopexit.split-lp ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp349 ], [ %.pn.i234273, %.thread229.thread ], [ %lpad.thr_comm.split-lp251, %bb.ao ], [ %lpad.phi360, %bb.bk ], [ %i.fg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync8ArcInnerNtNtCsqiF3OZxLbD_3mbe6parser9SeparatorEECs33K2ylI4knu_10hir_expand.exit ], [ %i.fj, %bb.cr ], [ %i.du, %bb.bi ], [ %lpad.loopexit, %.body.thread220.loopexit ], [ %lpad.loopexit353, %.thread244.loopexit ], [ %lpad.loopexit350, %.loopexit348 ], [ %lpad.loopexit361, %.thread229.thread279.loopexit ], [ %lpad.loopexit.split-lp362, %.thread229.thread279.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsqiF3OZxLbD_3mbe6parser2OpEECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #38
          to label %common.resume unwind label %bb.dt

bb.dt:                                            ; preds = %.body.thread
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCscAsMj0W7j8b_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB1i_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1i_11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECs33K2ylI4knu_10hir_expand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i64 noundef range(i64 0, 3) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !12, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB16_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB16_11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, i64 noundef %2, ptr noundef %3)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !7
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCscAsMj0W7j8b_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB1i_5ParseNtNtNtNtB1i_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECs33K2ylI4knu_10hir_expand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, i64 noundef range(i64 0, 3) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = load i64, ptr %1, align 8, !range !8, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i8, ptr %i.g, align 8, !range !12, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB16_5ParseNtNtNtNtB16_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.d, i64 %i.f, i1 noundef zeroext %i.i, ptr noundef null, i64 noundef %2, ptr noundef %3)
  %i.j = load <2 x ptr>, ptr %i.a, align 16
  %i.k = load ptr, ptr %i.a, align 16, !noundef !7
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.copyload, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.j, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvMs8_NtCshzWfHUSfYae_4core3anyNtB6_6TypeId2ofNtNtCs33K2ylI4knu_10hir_expand8span_map13real_span_mapEBO_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @5, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvMs8_NtCshzWfHUSfYae_4core3anyNtB6_6TypeId2ofNtNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtBU_5files13InFileWrapperNtBU_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expander20decl_macro_expander_EBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEENtNtNtB6_5alloc5inner6GlobalEB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !141, !noundef !7 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEEB1W_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val4.i.i = load <16 x i8>, ptr %.pre, align 16, !noalias !142
  %i.g = icmp sgt <16 x i8> %.val4.i.i, splat (i8 -1)
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.i = bitcast <16 x i1> %i.g to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i, %bb.c
  %.sroa.14.010.i = phi i64 [ %i.e, %bb.c ], [ %i.u, %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i ]
  %.sroa.10.09.i = phi i16 [ %i.i, %bb.c ], [ %i.r, %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i ] ; 2 uses
  %.sroa.6.08.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.6.1.i, %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i ] ; 2 uses
  %.sroa.04.07.i = phi ptr [ %.pre, %bb.c ], [ %.sroa.04.1.i, %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i ] ; 2 uses
  %.not10.i.i = icmp eq i16 %.sroa.10.09.i, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.j = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.6.08.i, %bb.d ] ; 2 uses
  %i.k = phi ptr [ %i.m, %.lr.ph.i.i ], [ %.sroa.04.07.i, %bb.d ]
  %.val8.i.i = load <16 x i8>, ptr %i.j, align 16, !noalias !143
  %i.l = icmp sgt <16 x i8> %.val8.i.i, splat (i8 -1)
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -128 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.l to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i

_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueuEEE9next_implKb0_EB1H_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.1.i = phi ptr [ %.sroa.04.07.i, %bb.d ], [ %i.m, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.08.i, %bb.d ], [ %i.n, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.09.i, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i
end_hunk_0
