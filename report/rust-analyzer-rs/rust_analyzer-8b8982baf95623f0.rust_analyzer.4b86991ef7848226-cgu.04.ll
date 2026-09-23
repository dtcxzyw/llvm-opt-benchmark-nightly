Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.04?download=true
inline.NumInlined: 5008
inline.NumDeleted: 2523
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB2u_11GlobalState15process_changess0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3S_8for_each4callNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5H_3VecB4V_E14extend_trustedBN_E0E0EB2w_:bb.a
bb.e:                                             ; preds = %.noexc15.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #47
          to label %bb.h unwind label %bb.f, !noalias !5503

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !5503
  unreachable

_RNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB6_11GlobalState15process_changess0_0B8_.exit.i.i: ; preds = %.noexc15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5501
  invoke void @_RNvXs_NtCs4sl5YdnrCxp_3vfs8vfs_pathNtB4_7VfsPathINtNtCshzWfHUSfYae_4core7convert4FromNtCs9R0CJ7nmiec_5paths10AbsPathBufE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.c, !noalias !5502

bb.g:                                             ; preds = %_RNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB6_11GlobalState15process_changess0_0B8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5501
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !5504
  %i.q = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5500
  %i.r = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.h
  br i1 %i.s, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB3Z_11GlobalState15process_changess0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5Y_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3S_EE0E0E0EB41_.exit, label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.n, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5502
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB3Z_11GlobalState15process_changess0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5Y_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3S_EE0E0E0EB41_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.q, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5502
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3I_8for_each4callRNtCs9R0CJ7nmiec_5paths7AbsPathNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5p_3VecB4L_E14extend_trustedBN_E0E0EB2v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_RNtCs9R0CJ7nmiec_5paths7AbsPathuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5G_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3K_EE0E0E0EB3S_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 704
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [704 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.g = invoke { ptr, i64 } @_RNvMs_NtCsdcPuHeDsw6v_13project_model9workspaceNtB4_16ProjectWorkspace16manifest_or_root(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.f)
          to label %bb.d unwind label %bb.e, !noalias !5515 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !noalias !5516, !captures !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.i, ptr %i.k, align 8, !noalias !5517
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.e
  br i1 %i.n, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_RNtCs9R0CJ7nmiec_5paths7AbsPathuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5G_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3K_EE0E0E0EB3S_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5515
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_RNtCs9R0CJ7nmiec_5paths7AbsPathuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5G_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3K_EE0E0E0EB3S_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5515
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0ENtNtNtBa_6traits8iterator8Iterator4foldmNCINvNvB3r_6max_by4foldmNvYmNtNtBc_3cmp3Ord3cmpE0EB2p_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1Q_8adapters3map8map_foldRBQ_mmNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0NCINvNvB1K_6max_by4foldmNvYmNtNtBb_3cmp3Ord3cmpE0E0EB3i_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi i32 [ %2, %bb.b ], [ %..i.i.i.i, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [256 x i8], ptr %0, i64 %.sroa.04.0.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.k = call noundef i32 @_RNvMs_NtCsf8NQSppxkmK_14ide_completion4itemNtB4_19CompletionRelevance5score(ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.j), !noalias !5525 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5526
  store i32 %.sroa.02.0.i, ptr %i.c, align 4, !noalias !5527
  store i32 %i.k, ptr %i.b, align 4, !noalias !5527
  %i.l = call noundef i8 @_RNvXs2_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNvYmNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRmB1p_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b), !noalias !5528
  %i.m = icmp sgt i8 %i.l, 0
  %..i.i.i.i = select i1 %i.m, i32 %.sroa.02.0.i, i32 %i.k ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5526
  %i.n = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1Q_8adapters3map8map_foldRBQ_mmNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0NCINvNvB1K_6max_by4foldmNvYmNtNtBb_3cmp3Ord3cmpE0E0EB3i_.exit, label %bb.c

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemENtNtNtNtBb_4iter6traits8iterator8Iterator4foldmNCINvNtNtB1Q_8adapters3map8map_foldRBQ_mmNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0NCINvNvB1K_6max_by4foldmNvYmNtNtBb_3cmp3Ord3cmpE0E0EB3i_.exit: ; preds = %bb.c, %bb.a
  %.sroa.0.0.i = phi i32 [ %2, %bb.a ], [ %..i.i.i.i, %bb.c ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -2, 4) i8 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledEEB37_8try_folduNCINvNvB37_12try_for_each4callNtCs3gTr8JIMkcl_7edition7EditionINtNtNtBc_3ops12control_flow11ControlFlowB6A_ENcNtB76_5Break0E0B76_E0IB77_B76_EEB28_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5533)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !5534, !nonnull !14, !noundef !14 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5534, !nonnull !14, !noundef !14
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs3gTr8JIMkcl_7edition7EditionNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledEuINtNtNtBa_3ops12control_flow11ControlFlowIB4w_B3f_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt0NCINvXB2i_INtB2i_12GenericShuntINtB2g_3MapB3_B5l_EIB2U_NtNtBa_7convert10InfallibleB3L_EEB1m_8try_folduNCINvNvB1m_12try_for_each4callB3f_B5a_NcNtB5a_5Break0E0B5a_E0E0B4v_EB5t_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %0, align 8, !alias.scope !5534
  %.val7.i = load i32, ptr %i.a, align 4, !range !61, !noalias !5533, !noundef !14
  %i.g = getelementptr i8, ptr %i.a, i64 4
  %.val8.i = load i32, ptr %i.g, align 4, !noalias !5533, !noundef !14
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !5533, !nonnull !14, !align !20, !noundef !14
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.i = tail call { i1, i8 } @_RNvMs1_CslLuZgPVt6hg_3ideNtB5_8Analysis13crate_edition(ptr noundef nonnull align 8 %i.h, i32 noundef %.val7.i, i32 noundef %.val8.i), !noalias !5533 ; 2 uses
  %i.j = extractvalue { i1, i8 } %i.i, 0
  %i.k = extractvalue { i1, i8 } %i.i, 1          ; 3 uses
  br i1 %i.j, label %bb.c, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs3gTr8JIMkcl_7edition7EditionNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledEuINtNtNtBa_3ops12control_flow11ControlFlowIB4w_B3f_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt0NCINvXB2i_INtB2i_12GenericShuntINtB2g_3MapB3_B5l_EIB2U_NtNtBa_7convert10InfallibleB3L_EEB1m_8try_folduNCINvNvB1m_12try_for_each4callB3f_B5a_NcNtB5a_5Break0E0B5a_E0E0B4v_EB5t_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ult i8 %i.k, 3
  tail call void @llvm.assume(i1 %i.l)
  store i8 %i.k, ptr %2, align 1, !noalias !5533
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs3gTr8JIMkcl_7edition7EditionNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledEuINtNtNtBa_3ops12control_flow11ControlFlowIB4w_B3f_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt0NCINvXB2i_INtB2i_12GenericShuntINtB2g_3MapB3_B5l_EIB2U_NtNtBa_7convert10InfallibleB3L_EEB1m_8try_folduNCINvNvB1m_12try_for_each4callB3f_B5a_NcNtB5a_5Break0E0B5a_E0E0B4v_EB5t_.exit

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs3gTr8JIMkcl_7edition7EditionNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledEuINtNtNtBa_3ops12control_flow11ControlFlowIB4w_B3f_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt0NCINvXB2i_INtB2i_12GenericShuntINtB2g_3MapB3_B5l_EIB2U_NtNtBa_7convert10InfallibleB3L_EEB1m_8try_folduNCINvNvB1m_12try_for_each4callB3f_B5a_NcNtB5a_5Break0E0B5a_E0E0B4v_EB5t_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.k, %bb.b ], [ -1, %bb.c ], [ -2, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request35handle_view_recursive_memory_layout00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4callNtNtNtB2w_3lsp3ext16MemoryLayoutNodeNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5G_3VecB4X_E14extend_trustedBN_E0E0EB2w_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i = alloca [48 x i8], align 8        ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_NtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB3j_8handlers7request35handle_view_recursive_memory_layout00NCINvNvB1P_8for_each4callB3d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5X_3VecB3d_E14extend_trustedINtB2F_3MapBF_B4d_EE0E0E0EB3j_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 96
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.g, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.q, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.g ] ; 2 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5547)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5548)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5549
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i)
          to label %.noexc.i unwind label %bb.c, !noalias !5550

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5549
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.g unwind label %bb.e, !noalias !5551

bb.e:                                             ; preds = %.noexc.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #47
          to label %bb.h unwind label %bb.f, !noalias !5551

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #48, !noalias !5551
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !5552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5549
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i ; 3 uses
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %3 = load <4 x i64>, ptr %i.m, align 8, !alias.scope !5553, !noalias !5551
  %4 = shufflevector <4 x i64> %3, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.sroa.74.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.p = load <2 x i64>, ptr %i.n, align 8, !alias.scope !5553, !noalias !5551
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i, i64 48, i1 false), !noalias !5554
  store <4 x i64> %4, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !5555
  store <2 x i64> %i.p, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !noalias !5555
  %i.q = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.r = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.g
  br i1 %i.s, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_NtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB3j_8handlers7request35handle_view_recursive_memory_layout00NCINvNvB1P_8for_each4callB3d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5X_3VecB3d_E14extend_trustedINtB2F_3MapBF_B4d_EE0E0E0EB3j_.exit, label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.k, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5550
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_NtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB3j_8handlers7request35handle_view_recursive_memory_layout00NCINvNvB1P_8for_each4callB3d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5X_3VecB3d_E14extend_trustedINtB2F_3MapBF_B4d_EE0E0E0EB3j_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.q, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5550
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3i_8for_each4callNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptorNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5j_3VecB4l_E14extend_trustedBN_E0E0EB2j_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_NtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5A_3VecB32_E14extend_trustedINtB2u_3MapBF_B3S_EE0E0E0EB40_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.c, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5569
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5570, !noalias !5571, !nonnull !14, !noundef !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5570, !noalias !5571, !noundef !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !56, !alias.scope !5570, !noalias !5571, !noundef !14
  %i.n = shl nuw nsw i8 %i.m, 3
  %switch.shiftamt = zext nneg i8 %i.n to i64
  %switch.downshift = lshr i64 579283224505877249, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  invoke void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip18new_descriptor_str(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i8 noundef %switch.masked)
          to label %bb.c unwind label %bb.d, !noalias !5572

bb.c:                                             ; preds = %switch.lookup
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !5573
  %i.p = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5569
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.f
  br i1 %i.r, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_NtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5A_3VecB32_E14extend_trustedINtB2u_3MapBF_B3S_EE0E0E0EB40_.exit, label %switch.lookup

bb.d:                                             ; preds = %switch.lookup
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5572
  resume { ptr, i32 } %i.s

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_NtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5A_3VecB32_E14extend_trustedINtB2u_3MapBF_B3S_EE0E0E0EB40_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !5572
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEB3v_8try_folduNCINvXB8_IB4n_B4m_INtNtBc_6option6OptionB55_EEB3v_8try_folduNCINvNvB3v_12try_for_each4callINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtNtBc_3ops12control_flow11ControlFlowB7H_ENcNtB92_5Break0E0B92_E0IB93_B92_EE0IB93_Ba9_EEB2x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5601)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !5602, !noalias !5603, !nonnull !14, !noundef !14 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5602, !noalias !5603, !nonnull !14, !noundef !14
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.h, ptr %1, align 8, !alias.scope !5602, !noalias !5603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5604
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !5604, !nonnull !14, !align !20, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.i, align 8, !noalias !5604, !nonnull !14, !align !20, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !5606
  call void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp10from_proto10file_range(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %.val.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val1.i.i, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.a), !noalias !5607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5605
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.b, align 8, !noalias !5604 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !5604 ; 4 uses
  %i.j = icmp eq i32 %.sroa.0.0.copyload.i.i, 2
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  %i.k = load ptr, ptr %3, align 8, !alias.scope !5608, !noalias !5609, !noundef !14
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs4_NtCsdRkQxkTxnTp_6anyhow5errorNtB7_5ErrorNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %3)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i unwind label %bb.g, !noalias !5609

bb.e:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !5604
  %i.m = trunc nuw i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.m, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !noalias !5609, !nonnull !14, !noundef !14
  store i8 1, ptr %.val.i.i.i, align 1, !noalias !5610
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5.0.copyload.i.i, ptr %3, align 8, !noalias !5609
  resume { ptr, i32 } %i.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.d, %bb.c
  store ptr %.sroa.5.0.copyload.i.i, ptr %3, align 8, !noalias !5609
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4, !alias.scope !5611, !noalias !5612
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5S_IB5S_B40_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB2H_INtB2H_12GenericShuntINtB2F_3MapB3_B6N_EIB3j_NtNtBa_7convert10InfallibleB5m_EEB1L_8try_folduNCINvXB2H_IB83_B82_IB3F_B8L_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callB40_B6B_NcNtB6B_5Break0E0B6B_E0B6w_E0E0B5R_EB6V_.exit

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %bb.f, %bb.e
  %.sroa.8.0.i = phi ptr [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ], [ undef, %bb.f ], [ %.sroa.5.0.copyload.i.i, %bb.e ]
  %.sroa.6.0.i = phi i32 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ], [ undef, %bb.f ], [ %.sroa.4.0.copyload.i.i, %bb.e ]
  %.sroa.06.0.i = phi i32 [ 2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ], [ 0, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5604
  store i32 %.sroa.06.0.i, ptr %0, align 4, !alias.scope !5613, !noalias !5612
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.0.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !5613, !noalias !5612
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !5613, !noalias !5612
  br label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5S_IB5S_B40_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB2H_INtB2H_12GenericShuntINtB2F_3MapB3_B6N_EIB3j_NtNtBa_7convert10InfallibleB5m_EEB1L_8try_folduNCINvXB2H_IB83_B82_IB3F_B8L_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callB40_B6B_NcNtB6B_5Break0E0B6B_E0B6w_E0E0B5R_EB6V_.exit

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5S_IB5S_B40_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB2H_INtB2H_12GenericShuntINtB2F_3MapB3_B6N_EIB3j_NtNtBa_7convert10InfallibleB5m_EEB1L_8try_folduNCINvXB2H_IB83_B82_IB3F_B8L_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callB40_B6B_NcNtB6B_5Break0E0B6B_E0B6w_E0E0B5R_EB6V_.exit: ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEB3J_8try_folduNCINvNvB3J_12try_for_each4callB1n_INtNtNtBc_3ops12control_flow11ControlFlowB1n_ENcNtB71_5Break0E0B71_E0IB72_B71_EEB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5635)
  %i.b = load ptr, ptr %1, align 8, !alias.scope !5636, !noalias !5634, !nonnull !14, !noundef !14 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !5636, !noalias !5634, !nonnull !14, !noundef !14
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %1, align 8, !alias.scope !5636, !noalias !5634
  %.val5.i = load i32, ptr %i.b, align 4, !noalias !5637, !noundef !14
  %i.h = getelementptr i8, ptr %i.b, i64 4
  %.val6.i = load i32, ptr %i.h, align 4, !noalias !5637, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5638)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5639
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !5638, !noalias !5640, !nonnull !14, !align !20, !noundef !14 ; 2 uses
  call void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp10from_proto6offset(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i32 noundef %.val5.i, i32 noundef %.val6.i), !noalias !5639
  %i.j = load i32, ptr %i.a, align 8, !range !50, !noalias !5639, !noundef !14
  %i.k = trunc nuw i32 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !5639, !nonnull !14, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5639
  %i.n = load ptr, ptr %3, align 8, !alias.scope !5641, !noalias !5642, !noundef !14
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!5352 = distinct !{!5352, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB6_12global_state11GlobalState17switch_workspacessc_0B6_"}
!5353 = distinct !{!5353, !5352, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB6_12global_state11GlobalState17switch_workspacessc_0B6_: argument 1"}
!5354 = distinct !{!5354, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionINtNtBb_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEEuNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB5l_12global_state11GlobalState17switch_workspacessc_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7t_3VecB3e_E14extend_trustedINtB2G_3MapBF_B5e_EE0E0E0EB5l_"}
!5355 = distinct !{!5355, !5354, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionINtNtBb_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEEuNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB5l_12global_state11GlobalState17switch_workspacessc_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7t_3VecB3e_E14extend_trustedINtB2G_3MapBF_B5e_EE0E0E0EB5l_: argument 0"}
!5356 = distinct !{!5356, !5350, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceINtNtBa_6option6OptionINtNtBa_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEEuNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB41_12global_state11GlobalState17switch_workspacessc_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6D_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB3U_EE0E0E0B41_: argument 0"}
!5357 = distinct !{!5357, !5352, !"_RNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB6_12global_state11GlobalState17switch_workspacessc_0B6_: argument 0"}
!5358 = distinct !{!5358, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB1J_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2z_12global_state11GlobalState17switch_workspacessc_00ENtNtNtBa_6traits8iterator8Iterator5chainIB4_IBS_B1J_INtNtBc_6option6OptionB1J_EENCB2s_s_0EEB2z_"}
!5359 = distinct !{!5359, !5358, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB1J_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2z_12global_state11GlobalState17switch_workspacessc_00ENtNtNtBa_6traits8iterator8Iterator5chainIB4_IBS_B1J_INtNtBc_6option6OptionB1J_EENCB2s_s_0EEB2z_: argument 1"}
!5360 = distinct !{!5360, !5358, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB1J_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2z_12global_state11GlobalState17switch_workspacessc_00ENtNtNtBa_6traits8iterator8Iterator5chainIB4_IBS_B1J_INtNtBc_6option6OptionB1J_EENCB2s_s_0EEB2z_: argument 0"}
!5361 = distinct !{!5361, !5358, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB1J_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2z_12global_state11GlobalState17switch_workspacessc_00ENtNtNtBa_6traits8iterator8Iterator5chainIB4_IBS_B1J_INtNtBc_6option6OptionB1J_EENCB2s_s_0EEB2z_: argument 2"}
!5362 = distinct !{!5362, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs9R0CJ7nmiec_5paths7AbsPathE6filterNCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB1u_12global_state11GlobalState17switch_workspacessc_0s0_0EB1u_"}
!5363 = distinct !{!5363, !5362, !"_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRNtCs9R0CJ7nmiec_5paths7AbsPathE6filterNCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB1u_12global_state11GlobalState17switch_workspacessc_0s0_0EB1u_: argument 0"}
!5364 = distinct !{!5364, !"_RNCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB8_12global_state11GlobalState17switch_workspacessc_0s1_0B8_"}
!5365 = distinct !{!5365, !5364, !"_RNCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB8_12global_state11GlobalState17switch_workspacessc_0s1_0B8_: argument 1"}
!5366 = distinct !{!5366, !5364, !"_RNCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB8_12global_state11GlobalState17switch_workspacessc_0s1_0B8_: argument 0"}
!5367 = distinct !{!5367, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCs9R0CJ7nmiec_5paths7AbsPathNtB5_12SpecToString14spec_to_stringCs6u1mgJOKDyY_13rust_analyzer"}
!5368 = distinct !{!5368, !5367, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCs9R0CJ7nmiec_5paths7AbsPathNtB5_12SpecToString14spec_to_stringCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5369 = distinct !{!5369, !5367, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtCs9R0CJ7nmiec_5paths7AbsPathNtB5_12SpecToString14spec_to_stringCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5370 = distinct !{!5370, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB23_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2T_12global_state11GlobalState17switch_workspacessc_00EIBW_IB1c_B23_INtNtBc_6option6OptionB23_EENCB2M_s_0EENtNtNtBa_6traits8iterator8Iterator5chainIB4F_TB23_B4E_EEEB2T_"}
!5371 = distinct !{!5371, !5370, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB23_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2T_12global_state11GlobalState17switch_workspacessc_00EIBW_IB1c_B23_INtNtBc_6option6OptionB23_EENCB2M_s_0EENtNtNtBa_6traits8iterator8Iterator5chainIB4F_TB23_B4E_EEEB2T_: argument 1"}
!5372 = distinct !{!5372, !5370, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB23_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2T_12global_state11GlobalState17switch_workspacessc_00EIBW_IB1c_B23_INtNtBc_6option6OptionB23_EENCB2M_s_0EENtNtNtBa_6traits8iterator8Iterator5chainIB4F_TB23_B4E_EEEB2T_: argument 2"}
!5373 = distinct !{!5373, !5370, !"_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB8_3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringB23_ENCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB2T_12global_state11GlobalState17switch_workspacessc_00EIBW_IB1c_B23_INtNtBc_6option6OptionB23_EENCB2M_s_0EENtNtNtBa_6traits8iterator8Iterator5chainIB4F_TB23_B4E_EEEB2T_: argument 0"}
!5374 = distinct !{!5374, !"_RNvXs4_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!5375 = distinct !{!5375, !5374, !"_RNvXs4_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!5376 = distinct !{!5376, !5374, !"_RNvXs4_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!5377 = distinct !{!5377, !"_RNvXsi_NtCshzWfHUSfYae_4core5tupleTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtB7_6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIB16_B2S_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtB7_3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer"}
!5378 = distinct !{!5378, !5377, !"_RNvXsi_NtCshzWfHUSfYae_4core5tupleTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtB7_6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIB16_B2S_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtB7_3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5379 = distinct !{!5379, !"_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCsfxDLtZq386g_6semver7VersionENtNtB7_3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer"}
!5380 = distinct !{!5380, !5379, !"_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCsfxDLtZq386g_6semver7VersionENtNtB7_3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5381 = distinct !{!5381, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtBb_6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIB1r_B3d_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB6p_12global_state11GlobalState17switch_workspacessc_0s2_0EB6p_"}
!5382 = distinct !{!5382, !5381, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtBb_6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIB1r_B3d_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB6p_12global_state11GlobalState17switch_workspacessc_0s2_0EB6p_: argument 0"}
!5383 = distinct !{!5383, !5377, !"_RNvXsi_NtCshzWfHUSfYae_4core5tupleTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtB7_6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIB16_B2S_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtB7_3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5384 = distinct !{!5384, !5379, !"_RNvXsf_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCsfxDLtZq386g_6semver7VersionENtNtB7_3cmp9PartialEq2eqCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5385 = distinct !{!5385, !"_RNvXs7_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!5386 = distinct !{!5386, !5385, !"_RNvXs7_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!5387 = distinct !{!5387, !5385, !"_RNvXs7_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!5388 = distinct !{!5388, !"_RNvXsk_CsJo5RpJFzwk_14proc_macro_apiNtB5_15ProcMacroClientNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!5389 = distinct !{!5389, !5388, !"_RNvXsk_CsJo5RpJFzwk_14proc_macro_apiNtB5_15ProcMacroClientNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!5390 = distinct !{!5390, !5388, !"_RNvXsk_CsJo5RpJFzwk_14proc_macro_apiNtB5_15ProcMacroClientNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!5391 = distinct !{!5391, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolEECs6u1mgJOKDyY_13rust_analyzer"}
!5392 = distinct !{!5392, !5391, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5393 = distinct !{!5393, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!5394 = distinct !{!5394, !5393, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5395 = distinct !{!5395, !"_RNvYTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIBC_B2E_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtBG_5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer"}
!5396 = distinct !{!5396, !5395, !"_RNvYTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIBC_B2E_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtBG_5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5397 = distinct !{!5397, !5395, !"_RNvYTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringIBC_B2E_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtBG_5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5398 = distinct !{!5398, !"_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCsfxDLtZq386g_6semver7VersionENtNtB7_5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer"}
!5399 = distinct !{!5399, !5398, !"_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCsfxDLtZq386g_6semver7VersionENtNtB7_5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5400 = distinct !{!5400, !5398, !"_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtCsfxDLtZq386g_6semver7VersionENtNtB7_5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5401 = distinct !{!5401, !"_RNvXs4_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!5402 = distinct !{!5402, !5401, !"_RNvXs4_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!5403 = distinct !{!5403, !5401, !"_RNvXs4_CsfxDLtZq386g_6semverNtB5_7VersionNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!5404 = distinct !{!5404, !"_RNvXsk_CsJo5RpJFzwk_14proc_macro_apiNtB5_15ProcMacroClientNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!5405 = distinct !{!5405, !5404, !"_RNvXsk_CsJo5RpJFzwk_14proc_macro_apiNtB5_15ProcMacroClientNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!5406 = distinct !{!5406, !5404, !"_RNvXsk_CsJo5RpJFzwk_14proc_macro_apiNtB5_15ProcMacroClientNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!5407 = distinct !{!5407, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolEECs6u1mgJOKDyY_13rust_analyzer"}
!5408 = distinct !{!5408, !5407, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5409 = distinct !{!5409, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer"}
!5410 = distinct !{!5410, !5409, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtCsJo5RpJFzwk_14proc_macro_api4pool19ProcMacroServerPoolENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5411 = distinct !{!5411, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtB7_6string6StringIB1g_B3i_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientEE8push_mutCs6u1mgJOKDyY_13rust_analyzer"}
!5412 = distinct !{!5412, !5411, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtB7_6string6StringIB1g_B3i_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientEE8push_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5413 = distinct !{!5413, !5411, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTTNtCs9R0CJ7nmiec_5paths10AbsPathBufINtNtCshzWfHUSfYae_4core6option6OptionNtCsfxDLtZq386g_6semver7VersionEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtB7_6string6StringIB1g_B3i_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientEE8push_mutCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5414 = distinct !{!5414, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer"}
!5415 = distinct !{!5415, !5414, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5416 = distinct !{!5416, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer"}
!5417 = distinct !{!5417, !5416, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5418 = distinct !{!5418, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionINtNtBe_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEENCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3n_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB6h_12global_state11GlobalState17switch_workspacessc_0EE0E0B6h_"}
!5419 = distinct !{!5419, !5418, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionINtNtBe_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEENCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3n_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB6h_12global_state11GlobalState17switch_workspacessc_0EE0E0B6h_: argument 0"}
!5420 = distinct !{!5420, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecINtNtCshzWfHUSfYae_4core6option6OptionINtNtBN_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB5j_12global_state11GlobalState17switch_workspacessc_0EE0B5j_"}
!5421 = distinct !{!5421, !5420, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecINtNtCshzWfHUSfYae_4core6option6OptionINtNtBN_6result6ResultNtCsJo5RpJFzwk_14proc_macro_api15ProcMacroClientNtCsdRkQxkTxnTp_6anyhow5ErrorEEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB5j_12global_state11GlobalState17switch_workspacessc_0EE0B5j_: argument 0"}
!5422 = !{!5351}
!5423 = !{!5353}
!5424 = !{!5357, !5353, !5356, !5351, !5355}
!5425 = !{!5355}
!5426 = !{!5353, !5351}
!5427 = !{!5357, !5356, !5355}
!5428 = !{!5357, !5353, !5356, !5355}
!5429 = !{!5360, !5359}
!5430 = !{!5361, !5357, !5353, !5356, !5351, !5355}
!5431 = !{!5363, !5357, !5353, !5356, !5351, !5355}
!5432 = !{!5363, !5357, !5356, !5355}
!5433 = !{!5366, !5365, !5357, !5353, !5356, !5351, !5355}
!5434 = !{!5366, !5365, !5357, !5356, !5355}
!5435 = !{!5369, !5368, !5366, !5365, !5357, !5353, !5356, !5351, !5355}
!5436 = !{!5369, !5366, !5357, !5356, !5355}
!5437 = !{!5366, !5357, !5356, !5355}
!5438 = !{!5365, !5357, !5353, !5356, !5351, !5355}
!5439 = !{!5371}
!5440 = !{!5372}
!5441 = !{!5373}
!5442 = !{!5371, !5372, !5357, !5353, !5356, !5351, !5355}
!5443 = !{!5373, !5371}
!5444 = !{!5372, !5357, !5353, !5356, !5351, !5355}
!5445 = !{!5373, !5372}
!5446 = !{!5371, !5357, !5353, !5356, !5351, !5355}
!5447 = !{!5375}
!5448 = !{!5375, !5353, !5351}
!5449 = !{!5376, !5357, !5356, !5355}
!5450 = !{!5376, !5375, !5357, !5353, !5356, !5351, !5355}
!5451 = !{!5380, !5378}
!5452 = !{!5384, !5383, !5382, !5357, !5356, !5355}
!5453 = !{!5386, !5380, !5378}
!5454 = !{!5387, !5384, !5383, !5382, !5357, !5356, !5355}
!5455 = !{!5389}
!5456 = !{!5390, !5389, !5357, !5353, !5356, !5351, !5355}
!5457 = !{!5390, !5357, !5356, !5355}
!5458 = !{!5390, !5389, !5357, !5356, !5355}
!5459 = !{!5394, !5392, !5390, !5357, !5356, !5355}
!5460 = !{!5353, !5356, !5351, !5355}
!5461 = !{!5396}
!5462 = !{!5397}
!5463 = !{!5399}
!5464 = !{!5400}
!5465 = !{!5400, !5397}
!5466 = !{!5399, !5396, !5357, !5353, !5356, !5351, !5355}
!5467 = !{!5402}
!5468 = !{!5402, !5400, !5397}
!5469 = !{!5403, !5399, !5396, !5357, !5353, !5356, !5351, !5355}
!5470 = !{!5403, !5402, !5399, !5400, !5396, !5397, !5357, !5353, !5356, !5351, !5355}
!5471 = !{!5396, !5357, !5356, !5355}
!5472 = !{!5403, !5399, !5396, !5357, !5356, !5355}
!5473 = !{!5399, !5396}
!5474 = !{!5400, !5397, !5357, !5353, !5356, !5351, !5355}
!5475 = !{!5405}
!5476 = !{!5406, !5405, !5357, !5353, !5356, !5351, !5355}
!5477 = !{!5406, !5357, !5353, !5356, !5351, !5355}
!5478 = !{!5406, !5405, !5357, !5356, !5355}
!5479 = !{!5406, !5357, !5356, !5355}
!5480 = !{!5410, !5408, !5406, !5357, !5356, !5355}
!5481 = !{!5412}
!5482 = !{!5413, !5357, !5353, !5356, !5355}
!5483 = !{!5413, !5357, !5356, !5355}
!5484 = !{!5415}
!5485 = !{!5415, !5357, !5353, !5356, !5351, !5355}
!5486 = !{!5417}
!5487 = !{!5421, !5419, !5356, !5355}
!5488 = distinct !{!5488, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB3Z_11GlobalState15process_changess0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5Y_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3S_EE0E0E0EB41_"}
!5489 = distinct !{!5489, !5488, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_NtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB3Z_11GlobalState15process_changess0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5Y_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3S_EE0E0E0EB41_: argument 0"}
!5490 = distinct !{!5490, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB2F_11GlobalState15process_changess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB58_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2y_EE0E0E0B2H_"}
!5491 = distinct !{!5491, !5490, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB2F_11GlobalState15process_changess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB58_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2y_EE0E0E0B2H_: argument 1"}
!5492 = distinct !{!5492, !5490, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathuNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB2F_11GlobalState15process_changess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB58_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2y_EE0E0E0B2H_: argument 0"}
!5493 = distinct !{!5493, !"_RNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB6_11GlobalState15process_changess0_0B8_"}
!5494 = distinct !{!5494, !5493, !"_RNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB6_11GlobalState15process_changess0_0B8_: argument 1"}
!5495 = distinct !{!5495, !5493, !"_RNCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB6_11GlobalState15process_changess0_0B8_: argument 0"}
!5496 = distinct !{!5496, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB4V_11GlobalState15process_changess0_0EE0E0B4X_"}
!5497 = distinct !{!5497, !5496, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB21_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB4V_11GlobalState15process_changess0_0EE0E0B4X_: argument 0"}
!5498 = distinct !{!5498, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB3Y_11GlobalState15process_changess0_0EE0B40_"}
!5499 = distinct !{!5499, !5498, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtCs4sl5YdnrCxp_3vfs8vfs_path7VfsPathE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1L_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvMs_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB3Y_11GlobalState15process_changess0_0EE0B40_: argument 0"}
!5500 = !{!5492, !5491, !5489}
!5501 = !{!5495, !5494, !5492, !5491, !5489}
!5502 = !{!5489}
!5503 = !{!5495, !5492, !5489}
!5504 = !{!5499, !5497, !5492, !5489}
!5505 = distinct !{!5505, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_RNtCs9R0CJ7nmiec_5paths7AbsPathuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5G_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3K_EE0E0E0EB3S_"}
!5506 = distinct !{!5506, !5505, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1W_8adapters3map8map_foldRBQ_RNtCs9R0CJ7nmiec_5paths7AbsPathuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0NCINvNvB1Q_8for_each4callB3e_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5G_3VecB3e_E14extend_trustedINtB2G_3MapBF_B3K_EE0E0E0EB3S_: argument 0"}
!5507 = distinct !{!5507, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceRNtCs9R0CJ7nmiec_5paths7AbsPathuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4Q_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2q_EE0E0E0B2y_"}
!5508 = distinct !{!5508, !5507, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceRNtCs9R0CJ7nmiec_5paths7AbsPathuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1U_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4Q_3VecB1U_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2q_EE0E0E0B2y_: argument 0"}
!5509 = distinct !{!5509, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callRNtCs9R0CJ7nmiec_5paths7AbsPathNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB1T_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0EE0E0B4O_"}
!5510 = distinct !{!5510, !5509, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callRNtCs9R0CJ7nmiec_5paths7AbsPathNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB1T_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0EE0E0B4O_: argument 1"}
!5511 = distinct !{!5511, !5509, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callRNtCs9R0CJ7nmiec_5paths7AbsPathNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB1T_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0EE0E0B4O_: argument 0"}
!5512 = distinct !{!5512, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecRNtCs9R0CJ7nmiec_5paths7AbsPathE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0EE0B3R_"}
!5513 = distinct !{!5513, !5512, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecRNtCs9R0CJ7nmiec_5paths7AbsPathE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0EE0B3R_: argument 1"}
!5514 = distinct !{!5514, !5512, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecRNtCs9R0CJ7nmiec_5paths7AbsPathE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1D_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_analyzer_statuss0_0EE0B3R_: argument 0"}
!5515 = !{!5506}
!5516 = !{!5514, !5513, !5511, !5510, !5508, !5506}
!5517 = !{!5514, !5511, !5508, !5506}
!5518 = distinct !{!5518, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemmmNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B1Y_"}
!5519 = distinct !{!5519, !5518, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemmmNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B1Y_: argument 0"}
!5520 = distinct !{!5520, !5518, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCsf8NQSppxkmK_14ide_completion4item14CompletionItemmmNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp8to_proto16completion_itemss_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldmNvYmNtNtBa_3cmp3Ord3cmpE0E0B1Y_: argument 1"}
!5521 = distinct !{!5521, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator6max_by4foldmNvYmNtNtBe_3cmp3Ord3cmpE0Cs6u1mgJOKDyY_13rust_analyzer"}
!5522 = distinct !{!5522, !5521, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator6max_by4foldmNvYmNtNtBe_3cmp3Ord3cmpE0Cs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5523 = distinct !{!5523, !"_RINvNtCshzWfHUSfYae_4core3cmp6max_bymQNvYmNtB2_3Ord3cmpECs6u1mgJOKDyY_13rust_analyzer"}
!5524 = distinct !{!5524, !5523, !"_RINvNtCshzWfHUSfYae_4core3cmp6max_bymQNvYmNtB2_3Ord3cmpECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5525 = !{!5519}
!5526 = !{!5522, !5519, !5520}
!5527 = !{!5524, !5522, !5519, !5520}
!5528 = !{!5520}
!5529 = distinct !{!5529, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs3gTr8JIMkcl_7edition7EditionNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledEuINtNtNtBa_3ops12control_flow11ControlFlowIB4w_B3f_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt0NCINvXB2i_INtB2i_12GenericShuntINtB2g_3MapB3_B5l_EIB2U_NtNtBa_7convert10InfallibleB3L_EEB1m_8try_folduNCINvNvB1m_12try_for_each4callB3f_B5a_NcNtB5a_5Break0E0B5a_E0E0B4v_EB5t_"}
!5530 = distinct !{!5530, !5529, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs3gTr8JIMkcl_7edition7EditionNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledEuINtNtNtBa_3ops12control_flow11ControlFlowIB4w_B3f_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request11run_rustfmt0NCINvXB2i_INtB2i_12GenericShuntINtB2g_3MapB3_B5l_EIB2U_NtNtBa_7convert10InfallibleB3L_EEB1m_8try_folduNCINvNvB1m_12try_for_each4callB3f_B5a_NcNtB5a_5Break0E0B5a_E0E0B4v_EB5t_: argument 0"}
!5531 = distinct !{!5531, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer"}
!5532 = distinct !{!5532, !5531, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5533 = !{!5530}
!5534 = !{!5532, !5530}
!5535 = distinct !{!5535, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB1Z_8handlers7request35handle_view_recursive_memory_layout00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB57_3VecB1T_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2T_EE0E0E0B1Z_"}
!5536 = distinct !{!5536, !5535, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB1Z_8handlers7request35handle_view_recursive_memory_layout00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB57_3VecB1T_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2T_EE0E0E0B1Z_: argument 1"}
!5537 = distinct !{!5537, !"_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request35handle_view_recursive_memory_layout00B9_"}
!5538 = distinct !{!5538, !5537, !"_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request35handle_view_recursive_memory_layout00B9_: argument 1"}
!5539 = distinct !{!5539, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_NtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB3j_8handlers7request35handle_view_recursive_memory_layout00NCINvNvB1P_8for_each4callB3d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5X_3VecB3d_E14extend_trustedINtB2F_3MapBF_B4d_EE0E0E0EB3j_"}
!5540 = distinct !{!5540, !5539, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters3map8map_foldRBQ_NtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB3j_8handlers7request35handle_view_recursive_memory_layout00NCINvNvB1P_8for_each4callB3d_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5X_3VecB3d_E14extend_trustedINtB2F_3MapBF_B4d_EE0E0E0EB3j_: argument 0"}
!5541 = distinct !{!5541, !5535, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeuNCNCNvNtNtB1Z_8handlers7request35handle_view_recursive_memory_layout00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1T_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB57_3VecB1T_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2T_EE0E0E0B1Z_: argument 0"}
!5542 = distinct !{!5542, !5537, !"_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request35handle_view_recursive_memory_layout00B9_: argument 0"}
!5543 = distinct !{!5543, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2n_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENCNCNvNtNtB1l_8handlers7request35handle_view_recursive_memory_layout00EE0E0B1l_"}
!5544 = distinct !{!5544, !5543, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2n_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENCNCNvNtNtB1l_8handlers7request35handle_view_recursive_memory_layout00EE0E0B1l_: argument 0"}
!5545 = distinct !{!5545, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENCNCNvNtNtBO_8handlers7request35handle_view_recursive_memory_layout00EE0BO_"}
!5546 = distinct !{!5546, !5545, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext16MemoryLayoutNodeE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB27_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide18view_memory_layout16MemoryLayoutNodeENCNCNvNtNtBO_8handlers7request35handle_view_recursive_memory_layout00EE0BO_: argument 0"}
!5547 = !{!5536}
!5548 = !{!5538}
!5549 = !{!5542, !5538, !5541, !5536, !5540}
!5550 = !{!5540}
!5551 = !{!5542, !5541, !5540}
!5552 = !{!5541, !5536, !5540}
!5553 = !{!5538, !5536}
!5554 = !{!5541, !5540}
!5555 = !{!5546, !5544, !5541, !5540}
!5556 = distinct !{!5556, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4K_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2y_EE0E0E0B2G_"}
!5557 = distinct !{!5557, !5556, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4K_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2y_EE0E0E0B2G_: argument 1"}
!5558 = distinct !{!5558, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_NtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5A_3VecB32_E14extend_trustedINtB2u_3MapBF_B3S_EE0E0E0EB40_"}
!5559 = distinct !{!5559, !5558, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1K_8adapters3map8map_foldRBQ_NtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvB1E_8for_each4callB32_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5A_3VecB32_E14extend_trustedINtB2u_3MapBF_B3S_EE0E0E0EB40_: argument 0"}
!5560 = distinct !{!5560, !5556, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptoruNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1I_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4K_3VecB1I_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2y_EE0E0E0B2G_: argument 0"}
!5561 = distinct !{!5561, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0B7_"}
!5562 = distinct !{!5562, !5561, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0B7_: argument 1"}
!5563 = distinct !{!5563, !5561, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0B7_: argument 0"}
!5564 = distinct !{!5564, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptorNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2d_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0EE0E0B4W_"}
!5565 = distinct !{!5565, !5564, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptorNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB2d_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0EE0E0B4W_: argument 0"}
!5566 = distinct !{!5566, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptorE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0EE0B3Z_"}
!5567 = distinct !{!5567, !5566, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtNtCsfeJ0nYrpyOI_4scip8scip_mod4scip10DescriptorE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1X_5slice4iter4IterNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3cli4scip19moniker_descriptors0EE0B3Z_: argument 0"}
!5568 = !{!5557}
!5569 = !{!5560, !5557, !5559}
!5570 = !{!5562, !5557}
!5571 = !{!5563, !5560, !5559}
!5572 = !{!5559}
!5573 = !{!5567, !5565, !5560, !5557, !5559}
!5574 = distinct !{!5574, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5S_IB5S_B40_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB2H_INtB2H_12GenericShuntINtB2F_3MapB3_B6N_EIB3j_NtNtBa_7convert10InfallibleB5m_EEB1L_8try_folduNCINvXB2H_IB83_B82_IB3F_B8L_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callB40_B6B_NcNtB6B_5Break0E0B6B_E0B6w_E0E0B5R_EB6V_"}
!5575 = distinct !{!5575, !5574, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5S_IB5S_B40_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB2H_INtB2H_12GenericShuntINtB2F_3MapB3_B6N_EIB3j_NtNtBa_7convert10InfallibleB5m_EEB1L_8try_folduNCINvXB2H_IB83_B82_IB3F_B8L_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callB40_B6B_NcNtB6B_5Break0E0B6B_E0B6w_E0E0B5R_EB6V_: argument 0"}
!5576 = distinct !{!5576, !5574, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5S_IB5S_B40_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB2H_INtB2H_12GenericShuntINtB2F_3MapB3_B6N_EIB3j_NtNtBa_7convert10InfallibleB5m_EEB1L_8try_folduNCINvXB2H_IB83_B82_IB3F_B8L_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callB40_B6B_NcNtB6B_5Break0E0B6B_E0B6w_E0E0B5R_EB6V_: argument 1"}
!5577 = distinct !{!5577, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer"}
!5578 = distinct !{!5578, !5577, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5579 = distinct !{!5579, !5574, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1R_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5S_IB5S_B40_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB2H_INtB2H_12GenericShuntINtB2F_3MapB3_B6N_EIB3j_NtNtBa_7convert10InfallibleB5m_EEB1L_8try_folduNCINvXB2H_IB83_B82_IB3F_B8L_EEB1L_8try_folduNCINvNvB1L_12try_for_each4callB40_B6B_NcNtB6B_5Break0E0B6B_E0B6w_E0E0B5R_EB6V_: argument 2"}
!5580 = distinct !{!5580, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeINtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_IB4B_B2J_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5w_EIB22_NtNtBa_7convert10InfallibleB45_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6L_B6K_IB2o_B7T_EEB8q_8try_folduNCINvNvB8q_12try_for_each4callB2J_B5k_NcNtB5k_5Break0E0B5k_E0B5f_E0E0B5E_"}
!5581 = distinct !{!5581, !5580, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeINtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_IB4B_B2J_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5w_EIB22_NtNtBa_7convert10InfallibleB45_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6L_B6K_IB2o_B7T_EEB8q_8try_folduNCINvNvB8q_12try_for_each4callB2J_B5k_NcNtB5k_5Break0E0B5k_E0B5f_E0E0B5E_: argument 2"}
!5582 = distinct !{!5582, !5580, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeINtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_IB4B_B2J_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5w_EIB22_NtNtBa_7convert10InfallibleB45_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6L_B6K_IB2o_B7T_EEB8q_8try_folduNCINvNvB8q_12try_for_each4callB2J_B5k_NcNtB5k_5Break0E0B5k_E0B5f_E0E0B5E_: argument 1"}
!5583 = distinct !{!5583, !5580, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeINtNtBa_6result6ResultINtNtBa_6option6OptionINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEENtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_IB4B_B2J_EEENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5w_EIB22_NtNtBa_7convert10InfallibleB45_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvXB6_IB6L_B6K_IB2o_B7T_EEB8q_8try_folduNCINvNvB8q_12try_for_each4callB2J_B5k_NcNtB5k_5Break0E0B5k_E0B5f_E0E0B5E_: argument 0"}
!5584 = distinct !{!5584, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0B7_"}
!5585 = distinct !{!5585, !5584, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0B7_: argument 1"}
!5586 = distinct !{!5586, !5584, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0B7_: argument 0"}
!5587 = distinct !{!5587, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!5588 = distinct !{!5588, !5587, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5589 = distinct !{!5589, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvXB5_IBH_BG_INtNtB9_6option6OptionB4a_EEB56_8try_folduNCINvNvB56_12try_for_each4callINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtNtB9_3ops12control_flow11ControlFlowB7e_ENcNtB8z_5Break0E0B8z_E0IB8A_B8z_EE0B2Q_"}
!5590 = distinct !{!5590, !5589, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvXB5_IBH_BG_INtNtB9_6option6OptionB4a_EEB56_8try_folduNCINvNvB56_12try_for_each4callINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtNtB9_3ops12control_flow11ControlFlowB7e_ENcNtB8z_5Break0E0B8z_E0IB8A_B8z_EE0B2Q_: argument 1"}
!5591 = distinct !{!5591, !5589, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvXB5_IBH_BG_INtNtB9_6option6OptionB4a_EEB56_8try_folduNCINvNvB56_12try_for_each4callINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtNtB9_3ops12control_flow11ControlFlowB7e_ENcNtB8z_5Break0E0B8z_E0IB8A_B8z_EE0B2Q_: argument 0"}
!5592 = distinct !{!5592, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntIBH_INtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEINtNtB9_6option6OptionB4e_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtNtB9_3ops12control_flow11ControlFlowB6O_ENcNtB89_5Break0E0B89_E0B2U_"}
!5593 = distinct !{!5593, !5592, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntIBH_INtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEINtNtB9_6option6OptionB4e_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtNtB9_3ops12control_flow11ControlFlowB6O_ENcNtB89_5Break0E0B89_E0B2U_: argument 1"}
!5594 = distinct !{!5594, !5592, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntIBH_INtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures5RangeENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request10handle_ssr0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEINtNtB9_6option6OptionB4e_EENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5C_12try_for_each4callINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEINtNtNtB9_3ops12control_flow11ControlFlowB6O_ENcNtB89_5Break0E0B89_E0B2U_: argument 0"}
!5595 = distinct !{!5595, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_IBI_INtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEEENtNtB4_9try_trait3Try11from_outputCs6u1mgJOKDyY_13rust_analyzer"}
!5596 = distinct !{!5596, !5595, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_IBI_INtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEEENtNtB4_9try_trait3Try11from_outputCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5597 = distinct !{!5597, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_IBK_INtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer"}
!5598 = distinct !{!5598, !5597, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_IBK_INtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5599 = distinct !{!5599, !5597, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_IBK_INtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5600 = !{!5575}
!5601 = !{!5576}
!5602 = !{!5578, !5576}
!5603 = !{!5575, !5579}
!5604 = !{!5583, !5582, !5581, !5575, !5576, !5579}
!5605 = !{!5586, !5585, !5583, !5582, !5581, !5575, !5576, !5579}
!5606 = !{!5586, !5583, !5582, !5575, !5576, !5579}
!5607 = !{!5585, !5583, !5582, !5581, !5575, !5576, !5579}
!5608 = !{!5588}
!5609 = !{!5591, !5590, !5583, !5582, !5581, !5575, !5576, !5579}
!5610 = !{!5594, !5593, !5591, !5590, !5583, !5582, !5581, !5575, !5576, !5579}
!5611 = !{!5596, !5575}
!5612 = !{!5576, !5579}
!5613 = !{!5599, !5598, !5575}
!5614 = distinct !{!5614, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_BJ_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B54_EIB3m_NtNtBa_7convert10InfallibleB3K_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callBJ_B4U_NcNtB4U_5Break0E0B4U_E0E0B4f_EB5c_"}
!5615 = distinct !{!5615, !5614, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_BJ_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B54_EIB3m_NtNtBa_7convert10InfallibleB3K_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callBJ_B4U_NcNtB4U_5Break0E0B4U_E0E0B4f_EB5c_: argument 0"}
!5616 = distinct !{!5616, !5614, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultBJ_NtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4g_BJ_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B54_EIB3m_NtNtBa_7convert10InfallibleB3K_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callBJ_B4U_NcNtB4U_5Break0E0B4U_E0E0B4f_EB5c_: argument 1"}
!5617 = distinct !{!5617, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer"}
!5618 = distinct !{!5618, !5617, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5619 = distinct !{!5619, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0B7_"}
!5620 = distinct !{!5620, !5619, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0B7_: argument 1"}
!5621 = distinct !{!5621, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionINtNtBa_6result6ResultB10_NtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B10_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3P_EIB25_NtNtBa_7convert10InfallibleB2u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6U_12try_for_each4callB10_B3E_NcNtB3E_5Break0E0B3E_E0E0B3X_"}
!5622 = distinct !{!5622, !5621, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionINtNtBa_6result6ResultB10_NtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB30_B10_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3P_EIB25_NtNtBa_7convert10InfallibleB2u_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6U_12try_for_each4callB10_B3E_NcNtB3E_5Break0E0B3E_E0E0B3X_: argument 0"}
!5623 = distinct !{!5623, !5619, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0B7_: argument 0"}
!5624 = distinct !{!5624, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!5625 = distinct !{!5625, !5624, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5626 = distinct !{!5626, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5k_12try_for_each4callB1G_INtNtNtB9_3ops12control_flow11ControlFlowB1G_ENcNtB6A_5Break0E0B6A_E0B2T_"}
!5627 = distinct !{!5627, !5626, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5k_12try_for_each4callB1G_INtNtNtB9_3ops12control_flow11ControlFlowB1G_ENcNtB6A_5Break0E0B6A_E0B2T_: argument 1"}
!5628 = distinct !{!5628, !5626, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request21handle_matching_brace0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5k_12try_for_each4callB1G_INtNtNtB9_3ops12control_flow11ControlFlowB1G_ENcNtB6A_5Break0E0B6A_E0B2T_: argument 0"}
!5629 = distinct !{!5629, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionEENtNtB4_9try_trait3Try11from_outputCs6u1mgJOKDyY_13rust_analyzer"}
!5630 = distinct !{!5630, !5629, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionEENtNtB4_9try_trait3Try11from_outputCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5631 = distinct !{!5631, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer"}
!5632 = distinct !{!5632, !5631, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5633 = distinct !{!5633, !5631, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5634 = !{!5615}
!5635 = !{!5616}
!5636 = !{!5618, !5616}
!5637 = !{!5615, !5616}
!5638 = !{!5620}
!5639 = !{!5623, !5620, !5622, !5615, !5616}
!5640 = !{!5623, !5622, !5615, !5616}
!5641 = !{!5625}
!5642 = !{!5628, !5627, !5622, !5615, !5616}
!5643 = !{!5630, !5615}
!5644 = !{!5633, !5632, !5615}
!5645 = distinct !{!5645, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_14SelectionRangeNtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4y_B3H_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B5n_EIB3m_NtNtBa_7convert10InfallibleB42_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3H_B5c_NcNtB5c_5Break0E0B5c_E0E0B4x_EB5v_"}
!5646 = distinct !{!5646, !5645, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_14SelectionRangeNtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4y_B3H_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B5n_EIB3m_NtNtBa_7convert10InfallibleB42_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3H_B5c_NcNtB5c_5Break0E0B5c_E0E0B4x_EB5v_: argument 0"}
!5647 = distinct !{!5647, !5645, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtBL_14SelectionRangeNtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4y_B3H_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0NCINvXB2K_INtB2K_12GenericShuntINtB2I_3MapB3_B5n_EIB3m_NtNtBa_7convert10InfallibleB42_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3H_B5c_NcNtB5c_5Break0E0B5c_E0E0B4x_EB5v_: argument 1"}
!5648 = distinct !{!5648, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer"}
!5649 = distinct !{!5649, !5648, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5650 = distinct !{!5650, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0B7_"}
!5651 = distinct !{!5651, !5650, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0B7_: argument 1"}
!5652 = distinct !{!5652, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionINtNtBa_6result6ResultNtB12_14SelectionRangeNtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3i_B2q_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB47_EIB25_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7d_12try_for_each4callB2q_B3W_NcNtB3W_5Break0E0B3W_E0E0B4f_"}
!5653 = distinct !{!5653, !5652, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionINtNtBa_6result6ResultNtB12_14SelectionRangeNtCsdRkQxkTxnTp_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3i_B2q_EENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB47_EIB25_NtNtBa_7convert10InfallibleB2M_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7d_12try_for_each4callB2q_B3W_NcNtB3W_5Break0E0B3W_E0E0B4f_: argument 0"}
!5654 = distinct !{!5654, !5650, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0B7_: argument 0"}
!5655 = distinct !{!5655, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size5range9TextRangeE8push_mutCs6u1mgJOKDyY_13rust_analyzer"}
!5656 = distinct !{!5656, !5655, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsuAhG64lL82_9text_size5range9TextRangeE8push_mutCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5657 = distinct !{!5657, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeE3newCs6u1mgJOKDyY_13rust_analyzer"}
!5658 = distinct !{!5658, !5657, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeE3newCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5659 = distinct !{!5659, !5683}
!5660 = distinct !{!5660, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeECs6u1mgJOKDyY_13rust_analyzer"}
!5661 = distinct !{!5661, !5660, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5662 = distinct !{!5662, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeEEECs6u1mgJOKDyY_13rust_analyzer"}
!5663 = distinct !{!5663, !5662, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5664 = distinct !{!5664, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer"}
!5665 = distinct !{!5665, !5664, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEEECs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5666 = distinct !{!5666, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5l_12try_for_each4callNtB1I_14SelectionRangeINtNtNtB9_3ops12control_flow11ControlFlowB6x_ENcNtB6T_5Break0E0B6T_E0B2T_"}
!5667 = distinct !{!5667, !5666, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5l_12try_for_each4callNtB1I_14SelectionRangeINtNtNtB9_3ops12control_flow11ControlFlowB6x_ENcNtB6T_5Break0E0B6T_E0B2T_: argument 1"}
!5668 = distinct !{!5668, !5666, !"_RNCINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8PositionENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request22handle_selection_range0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsdRkQxkTxnTp_6anyhow5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5l_12try_for_each4callNtB1I_14SelectionRangeINtNtNtB9_3ops12control_flow11ControlFlowB6x_ENcNtB6T_5Break0E0B6T_E0B2T_: argument 0"}
!5669 = distinct !{!5669, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeEENtNtB4_9try_trait3Try11from_outputCs6u1mgJOKDyY_13rust_analyzer"}
!5670 = distinct !{!5670, !5669, !"_RNvXNtNtCshzWfHUSfYae_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeEENtNtB4_9try_trait3Try11from_outputCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5671 = distinct !{!5671, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer"}
!5672 = distinct !{!5672, !5671, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer: argument 1"}
!5673 = distinct !{!5673, !5671, !"_RNvXs_NtNtCshzWfHUSfYae_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures14SelectionRangeEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs6u1mgJOKDyY_13rust_analyzer: argument 0"}
!5674 = !{!5646}
!5675 = !{!5647}
!5676 = !{!5649, !5647}
!5677 = !{!5646, !5647}
!5678 = !{!5651}
!5679 = !{!5654, !5651, !5653, !5646, !5647}
!5680 = !{!5654, !5653, !5646, !5647}
!5681 = !{!5656}
!5682 = !{!5658, !5654, !5651, !5653, !5646, !5647}
!5683 = !{!"llvm.loop.peeled.count", i32 1}
!5684 = !{!5651, !5653, !5646, !5647}
!5685 = !{!5663, !5661}
!5686 = !{!5665}
!5687 = !{!5668, !5667, !5653, !5646, !5647}
!5688 = !{!5670, !5646}
!5689 = !{!5673, !5672, !5646}
!5690 = distinct !{!5690, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB21_8adapters3map8map_foldRBQ_NtBS_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoint0NCINvNvB1V_8for_each4callB3j_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5h_3VecB3j_E14extend_trustedINtB2L_3MapBF_B3v_EE0E0E0EB3D_"}
!5691 = distinct !{!5691, !5690, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB21_8adapters3map8map_foldRBQ_NtBS_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoint0NCINvNvB1V_8for_each4callB3j_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5h_3VecB3j_E14extend_trustedINtB2L_3MapBF_B3v_EE0E0E0EB3D_: argument 0"}
!5692 = distinct !{!5692, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditNtBX_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoint0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Z_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4r_3VecB1Z_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2b_EE0E0E0B2j_"}
!5693 = distinct !{!5693, !5692, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditNtBX_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoint0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Z_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4r_3VecB1Z_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2b_EE0E0E0B2j_: argument 0"}
!5694 = !{!5693, !5691}
!5695 = !{!5691}
!5696 = distinct !{!5696, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB21_8adapters3map8map_foldRBQ_NtBS_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoints_0NCINvNvB1V_8for_each4callB3j_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5j_3VecB3j_E14extend_trustedINtB2L_3MapBF_B3v_EE0E0E0EB3D_"}
!5697 = distinct !{!5697, !5696, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB21_8adapters3map8map_foldRBQ_NtBS_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoints_0NCINvNvB1V_8for_each4callB3j_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5j_3VecB3j_E14extend_trustedINtB2L_3MapBF_B3v_EE0E0E0EB3D_: argument 0"}
!5698 = distinct !{!5698, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditNtBX_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoints_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Z_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4t_3VecB1Z_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2b_EE0E0E0B2j_"}
!5699 = distinct !{!5699, !5698, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditNtBX_5RangeuNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp5utils22all_edits_are_disjoints_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1Z_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB4t_3VecB1Z_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2b_EE0E0E0B2j_: argument 0"}
!5700 = !{!5699, !5697}
!5701 = !{!5697}
!5702 = distinct !{!5702, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto13SubDiagnosticNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationuNCNvBX_26map_rust_diagnostic_to_lsps2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5o_3VecB2f_E14extend_trustedINtNtB6_5chain5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2f_EEINtB4_3MapIB71_BV_EB3F_EEE0E0E0B11_"}
!5703 = distinct !{!5703, !5702, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto13SubDiagnosticNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationuNCNvBX_26map_rust_diagnostic_to_lsps2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5o_3VecB2f_E14extend_trustedINtNtB6_5chain5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2f_EEINtB4_3MapIB71_BV_EB3F_EEE0E0E0B11_: argument 1"}
!5704 = distinct !{!5704, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsps2_0B7_"}
!5705 = distinct !{!5705, !5704, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsps2_0B7_: argument 1"}
!5706 = distinct !{!5706, !"_RNvXsDg_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_28DiagnosticRelatedInformationNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!5707 = distinct !{!5707, !5706, !"_RNvXsDg_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_28DiagnosticRelatedInformationNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!5708 = distinct !{!5708, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto13SubDiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationuNCNvBS_26map_rust_diagnostic_to_lsps2_0NCINvNvB2b_8for_each4callB3z_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6e_3VecB3z_E14extend_trustedINtNtB33_5chain5ChainINtNtB33_6cloned6ClonedIBG_B3z_EEINtB31_3MapBF_B4Z_EEE0E0E0EBW_"}
!5709 = distinct !{!5709, !5708, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto13SubDiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldRBQ_NtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationuNCNvBS_26map_rust_diagnostic_to_lsps2_0NCINvNvB2b_8for_each4callB3z_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6e_3VecB3z_E14extend_trustedINtNtB33_5chain5ChainINtNtB33_6cloned6ClonedIBG_B3z_EEINtB31_3MapBF_B4Z_EEE0E0E0EBW_: argument 0"}
!5710 = distinct !{!5710, !5702, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto13SubDiagnosticNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationuNCNvBX_26map_rust_diagnostic_to_lsps2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2f_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB5o_3VecB2f_E14extend_trustedINtNtB6_5chain5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterB2f_EEINtB4_3MapIB71_BV_EB3F_EEE0E0E0B11_: argument 0"}
!5711 = distinct !{!5711, !5704, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics17flycheck_to_proto26map_rust_diagnostic_to_lsps2_0B7_: argument 0"}
!5712 = distinct !{!5712, !5706, !"_RNvXsDg_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_28DiagnosticRelatedInformationNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!5713 = distinct !{!5713, !"_RNvXsi_Cs2vT3jxLudSK_3urlNtB5_3UrlNtNtCshzWfHUSfYae_4core5clone5Clone5clone"}
!5714 = distinct !{!5714, !5713, !"_RNvXsi_Cs2vT3jxLudSK_3urlNtB5_3UrlNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 0"}
!5715 = distinct !{!5715, !5713, !"_RNvXsi_Cs2vT3jxLudSK_3urlNtB5_3UrlNtNtCshzWfHUSfYae_4core5clone5Clone5clone: argument 1"}
!5716 = !{!5703}
!5717 = !{!5705}
!5718 = !{!5707}
!5719 = !{!5712, !5707, !5711, !5705, !5710, !5703, !5709}
!5720 = !{!5714}
!5721 = !{!5715}
!5722 = !{!5709}
!5723 = !{!5714, !5715}
!5724 = !{!5712, !5711, !5710, !5709}
!5725 = !{i16 0, i16 2}
!5726 = !{!5715, !5707, !5705, !5703}
!5727 = !{!5714, !5712, !5711, !5710, !5709}
!5728 = !{!5715, !5712, !5707, !5711, !5705, !5710, !5703, !5709}
!5729 = !{!5710, !5703, !5709}
!5730 = !{!5710, !5709}
!5731 = distinct !{!5731, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB26_8adapters3map8map_foldRBQ_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBU_12capabilities19server_capabilitiess_0NCINvNvB20_8for_each4callB3o_NCINvMsk_NtB3s_3vecINtB5o_3VecB3o_E14extend_trustedINtB2Q_3MapBF_B41_EE0E0E0EBW_"}
!5732 = distinct !{!5732, !5731, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB26_8adapters3map8map_foldRBQ_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBU_12capabilities19server_capabilitiess_0NCINvNvB20_8for_each4callB3o_NCINvMsk_NtB3s_3vecINtB5o_3VecB3o_E14extend_trustedINtB2Q_3MapBF_B41_EE0E0E0EBW_: argument 0"}
!5733 = distinct !{!5733, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeNtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBZ_12capabilities19server_capabilitiess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtB28_3vecINtB4y_3VecB24_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2H_EE0E0E0B11_"}
!5734 = distinct !{!5734, !5733, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeNtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBZ_12capabilities19server_capabilitiess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtB28_3vecINtB4y_3VecB24_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2H_EE0E0E0B11_: argument 1"}
!5735 = distinct !{!5735, !5733, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeNtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBZ_12capabilities19server_capabilitiess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB24_NCINvMsk_NtB28_3vecINtB4y_3VecB24_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2H_EE0E0E0B11_: argument 0"}
!5736 = distinct !{!5736, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilities19server_capabilitiess_0B7_"}
!5737 = distinct !{!5737, !5736, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilities19server_capabilitiess_0B7_: argument 1"}
!5738 = distinct !{!5738, !5736, !"_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp12capabilities19server_capabilitiess_0B7_: argument 0"}
!5739 = distinct !{!5739, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeNtB5_12SpecToString14spec_to_stringBE_"}
!5740 = distinct !{!5740, !5739, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeNtB5_12SpecToString14spec_to_stringBE_: argument 1"}
!5741 = distinct !{!5741, !5739, !"_RNvXsC_NtCsbSS6DM8SDEO_5alloc6stringNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeNtB5_12SpecToString14spec_to_stringBE_: argument 0"}
!5742 = distinct !{!5742, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsbSS6DM8SDEO_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeENCNvNtB3B_12capabilities19server_capabilitiess_0EE0E0B3D_"}
!5743 = distinct !{!5743, !5742, !"_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtNtCsbSS6DM8SDEO_5alloc6string6StringNCINvMsk_NtB1j_3vecINtB20_3VecB1f_E14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeENCNvNtB3B_12capabilities19server_capabilitiess_0EE0E0B3D_: argument 0"}
!5744 = distinct !{!5744, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeENCNvNtB2D_12capabilities19server_capabilitiess_0EE0B2F_"}
!5745 = distinct !{!5745, !5744, !"_RNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8_3VecNtNtBa_6string6StringE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1t_5slice4iter4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens13SupportedTypeENCNvNtB2D_12capabilities19server_capabilitiess_0EE0B2F_: argument 0"}
!5746 = !{!5741, !5740, !5738, !5737, !5735, !5734, !5732}
!5747 = !{!5741, !5738, !5735, !5732}
!5748 = !{!5735, !5734, !5732}
!5749 = !{!5745, !5743, !5735, !5732}
!5750 = !{!5732}
!5751 = distinct !{!5751, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens18SupportedModifiersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2b_8adapters3map8map_foldRBQ_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBU_12capabilities19server_capabilitiess0_0NCINvNvB25_8for_each4callB3t_NCINvMsk_NtB3x_3vecINtB5u_3VecB3t_E14extend_trustedINtB2V_3MapBF_B46_EE0E0E0EBW_"}
!5752 = distinct !{!5752, !5751, !"_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens18SupportedModifiersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2b_8adapters3map8map_foldRBQ_NtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBU_12capabilities19server_capabilitiess0_0NCINvNvB25_8for_each4callB3t_NCINvMsk_NtB3x_3vecINtB5u_3VecB3t_E14extend_trustedINtB2V_3MapBF_B46_EE0E0E0EBW_: argument 0"}
!5753 = distinct !{!5753, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens18SupportedModifiersNtNtCsbSS6DM8SDEO_5alloc6string6StringuNCNvNtBZ_12capabilities19server_capabilitiess0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB29_NCINvMsk_NtB2d_3vecINtB4E_3VecB29_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0E0B11_"}
end_hunk_1
