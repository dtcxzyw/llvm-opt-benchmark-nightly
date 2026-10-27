Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtB7_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1F_9generated5nodes4AttrENCNvNtB1F_6traits21attrs_including_inner0EIB1h_INtNtB7_7flatten7FlatMapINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1H_11syntax_node12RustLanguageEEB1C_NCB2R_s_0ENCB2R_s0_0EENcNtINtCs83ee1IJTiSq_6either6EitherB2j_NtNtBb_7convert10InfallibleE4Left0ENtNtNtB9_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def:bb.a
bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %.val12.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !noundef !5
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.z, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val12.i.i.i.i.i.i.i.i) #45
          to label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4243
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread9

bb.ab:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.bf, align 8, !alias.scope !4239
  br label %common.resume.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread9: ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i, %bb.aa, %bb.r
  %.sroa.0.0.i.i.i4.i.i.i.i.i.ph = phi ptr [ %i.am, %bb.r ], [ %i.bk, %bb.aa ], [ %i.ax, %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvNtNtB2m_3ast6traits21attrs_including_inners_0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4D_13FlattenCompatppE13iter_try_fold7flattenINtB3g_11AstChildrenNtNtNtB3g_9generated5nodes4AttrEuINtNtNtBc_3ops12control_flow11ControlFlowB5W_ENCINvNvXsi_B4D_B4Q_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5C_uB6t_NCINvNvB7w_4find5checkB5W_QNCB3c_s0_0E0E0E0B6t_ECsileJQcQObtj_7hir_def.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4237
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4AttrEEECsileJQcQObtj_7hir_def.exit19.i.i.i.i.i.i.i.i, %bb.x, %bb.y, %bb.z
  store i64 0, ptr %i.bf, align 8, !alias.scope !4239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4237
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread: ; preds = %bb.l, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread5, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread9, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i.i.i4.i.i.i.i.i.ph, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread9 ], [ null, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit ], [ %i.k, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1o_9generated5nodes4AttrENCNvNtB1o_6traits21attrs_including_inner0EIB10_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1q_11syntax_node12RustLanguageEEB1l_NCB2A_s_0ENCB2A_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def.exit.thread5 ], [ null, %bb.l ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs12_Cs33K2ylI4knu_10hir_expandNtB6_13MacroCallKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i32, ptr %0, align 8, !range !28, !noundef !5 ; 2 uses
  %i.e = add nsw i32 %i.d, -2
  %.inv = icmp samesign ult i32 %i.d, 2
  %narrow = select i1 %.inv, i32 2, i32 %i.e
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 6, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @127, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 9, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @129)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store ptr %i.m, ptr %i.b, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 17, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @133, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 12, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @134, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 15, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.a, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 9, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @140, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.n, %bb.d ], [ %i.q, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1N_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i32, ptr %0, align 4, !range !29, !noundef !5
  %i.d = trunc nuw i32 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @135)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtCsileJQcQObtj_7hir_def7TraitIdTB1t_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB2g_7HashSetB1t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBX_6traits7collect6ExtendB1t_E6extendINtNtBV_5chain5ChainINtNtBV_10filter_map9FilterMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtB1v_6per_ns4ItemNtB1v_11ModuleDefIdNtNtB1v_10item_scope19ImportOrExternCrateEENCNvMs1_B7l_NtB7l_9ItemScope6traits0EINtBT_3MapINtNtNtBb_5slice4iter4IterTB1t_IB6G_uEEENCB82_s_0EEE0NCINvNvNtNtB3Q_8iterator8Iterator8for_each4callB1Z_NCINvXs1i_NtB2i_3mapINtBaB_7HashMapB1t_uB33_EIB3M_B1Z_E6extendIB8C_B4t_B27_EE0E0E0INtB7_5FnMutTuB1t_EE8call_mutB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def7TraitIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val, i32 noundef range(i32 1, 0) %1, i32 noundef %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtBT_8ArenaMapINtBV_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13LifetimeParamE4iter0INtB7_5FnMutTTjRINtNtBb_6option6OptionB2K_EEEE8call_mutB1R_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #15 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !alias.scope !4247, !noundef !5
  %.not.i = icmp eq ptr %i.a, null
  %i.b = trunc i64 %1 to i32
  %.sroa.3.0.i = select i1 %.not.i, ptr null, ptr %2
  %i.c = insertvalue { i32, ptr } poison, i32 %i.b, 0
  %i.d = insertvalue { i32, ptr } %i.c, ptr %.sroa.3.0.i, 1
  ret { i32, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i32, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtBT_8ArenaMapINtBV_3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEINtCs83ee1IJTiSq_6either6EitherNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext16TypeOrConstParamNtNtNtB3m_9generated5nodes5TraitEE4iter0INtB7_5FnMutTTjRINtNtBb_6option6OptionB2N_EEEE8call_mutB1R_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !30, !alias.scope !4250, !noundef !5
  %.not.i = icmp eq i64 %i.a, -1
  %i.b = trunc i64 %1 to i32
  %.sroa.3.0.i = select i1 %.not.i, ptr null, ptr %2
  %i.c = insertvalue { i32, ptr } poison, i32 %i.b, 0
  %i.d = insertvalue { i32, ptr } %i.c, ptr %.sroa.3.0.i, 1
  ret { i32, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtBW_9AttrQuery5attrs0INtB7_5FnMutTRRNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEE8call_mutB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !5, !align !18, !noundef !5
  %i.b = load ptr, ptr %.val1, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call noundef align 8 ptr @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8as_ident(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c) ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery5attrs0Bb_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = icmp eq ptr %i.e, %.val
  br label %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery5attrs0Bb_.exit

_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery5attrs0Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtBW_9AttrQuery9tt_values0INtB7_5FnMutTRNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrEE8call_mutB10_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !align !18, !noundef !5 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery9tt_values0Bb_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.val, align 8, !range !30, !noundef !5
  %.not1.i = icmp eq i64 %i.b, -1
  %..i = select i1 %.not1.i, ptr null, ptr %.val
  br label %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery9tt_values0Bb_.exit

_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery9tt_values0Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %..i, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_trees_0INtB7_5FnMutTNtCs4dcH4YgJDq_2tt14TokenTreesViewEE8call_mutCsileJQcQObtj_7hir_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((64, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 7 uses
  %i.d = alloca [20 x i8], align 4                ; 4 uses
  %i.e = alloca [24 x i8], align 4                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val1 = load ptr, ptr %i.h, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4255
  call void @_RNvMs3_Cs4dcH4YgJDq_2ttNtB5_14TokenTreesView10first_span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f), !noalias !4254
  %i.i = load i32, ptr %i.e, align 4, !range !29, !noalias !4255, !noundef !5
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, ptr noundef nonnull align 4 dereferenceable(20) %i.k, i64 20, i1 false), !noalias !4255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath7from_tt(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %.val1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !4254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4255
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !16, !noalias !4255, !noundef !5
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4255
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.n, align 8, !alias.scope !4254
  br label %_RNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_trees_0CsileJQcQObtj_7hir_def.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !4255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4255
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 20, i1 false), !noalias !4255
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false), !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_trees_0CsileJQcQObtj_7hir_def.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4255
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.q, align 8, !alias.scope !4254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_trees_0CsileJQcQObtj_7hir_def.exit

_RNCNvNtCs33K2ylI4knu_10hir_expand5attrs27parse_path_comma_token_trees_0CsileJQcQObtj_7hir_def.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsjpcu9PwIgok_8smallvec8SmallVecAINtNtB8_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEj4_ENtB6_5Debug3fmtB2E_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4263
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !4262
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4264, !noundef !5 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 4                     ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !4264, !nonnull !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4264
  %.sink11.i.i = select i1 %i.e, ptr %i.f, ptr %i.b ; 2 uses
  %.sink10.i.i = select i1 %i.e, i64 %i.h, i64 %i.d
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRINtNtBa_6option6OptionINtCs83ee1IJTiSq_6either6EitherNtCs33K2ylI4knu_10hir_expand11MacroCallIdNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEINtNtNtBa_5slice4iter4IterB14_EEB2C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink11.i.i, ptr noundef nonnull %i.i)
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4263
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_ENtB6_5Debug3fmtB18_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4270)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4271
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !4270
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4272, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 2                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4272, !nonnull !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4272
  %.sink11.i.i = select i1 %i.d, ptr %i.f, ptr %i.e ; 2 uses
  %.sink10.i.i = select i1 %i.d, i64 %i.h, i64 %i.c
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtCsileJQcQObtj_7hir_def7MacroIdINtNtNtBa_5slice4iter4IterB14_EEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink11.i.i, ptr noundef nonnull %i.i)
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4271
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4278)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4279
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !4278
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4280, !noundef !5 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1                     ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !4280, !nonnull !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4280
  %.sink11.i.i = select i1 %i.e, ptr %i.f, ptr %i.b ; 2 uses
  %.sink10.i.i = select i1 %i.e, i64 %i.h, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtNtBa_5slice4iter4IterB14_EECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink11.i.i, ptr noundef nonnull %i.i)
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4279
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_ENtB6_5Debug3fmtB1a_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4287
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !4286
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !4288, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4288, !nonnull !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4288
  %.sink11.i.i = select i1 %i.d, ptr %i.f, ptr %i.e ; 2 uses
  %.sink10.i.i = select i1 %i.d, i64 %i.h, i64 %i.c
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %.sink11.i.i, i64 %.sink10.i.i
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %.sink11.i.i, ptr noundef nonnull %i.i)
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4287
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !35, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4292
  store ptr %i.b, ptr %i.a, align 8, !noalias !4292
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @195, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @194)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4292
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathNtB6_5Debug3fmtCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4296
  store ptr %i.b, ptr %i.a, align 8, !noalias !4296
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @153, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4296
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics13DefDiagnosticNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4300
  store ptr %i.b, ptr %i.a, align 8, !noalias !4300
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 9, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4300
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtCsileJQcQObtj_7hir_def7nameres11diagnostics17DefDiagnosticKindNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load ptr, ptr %0, align 8, !nonnull !5, !align !18, !noundef !5 ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4304)
  %i.l = load i32, ptr %i.k, align 8, !range !46, !alias.scope !4304, !noundef !5
  switch i32 %i.l, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4305
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !noalias !4305
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 3, ptr noundef nonnull readonly %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 10, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4305
  br label %_RNvXs0_NtNtCsileJQcQObtj_7hir_def7nameres11diagnosticsNtB5_17DefDiagnosticKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4305
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store ptr %i.p, ptr %i.i, align 8, !noalias !4305
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 3, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4305
  br label %_RNvXs0_NtNtCsileJQcQObtj_7hir_def7nameres11diagnosticsNtB5_17DefDiagnosticKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4305
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store ptr %i.s, ptr %i.h, align 8, !noalias !4305
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 2, ptr noundef nonnull readonly %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 5, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4305
  br label %_RNvXs0_NtNtCsileJQcQObtj_7hir_def7nameres11diagnosticsNtB5_17DefDiagnosticKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4305
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.w, ptr %i.g, align 8, !noalias !4305
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 6, ptr noundef nonnull readonly %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 3, ptr noundef nonnull readonly %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 4, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4305
end_hunk_0
