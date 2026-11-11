Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.00?download=true
inline.NumInlined: 2826
inline.NumDeleted: 1639
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBZ_9predicate20ExistentialPredicateB1M_EEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB42_5array4iter8IntoIterBU_Kj9_EINtNtB3Y_3map3MapINtNtB3Y_6copied6CopiedINtNtNtB42_5slice4iter4IterBU_EENCINvXs1k_NtB1Q_9predicateNtB6I_26BoundExistentialPredicatesINtNtBZ_4fold12TypeFoldableB1M_E9fold_withINtBX_9ArgFolderB1M_EE0EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics:bb.a
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29, !noalias !2876
  unreachable

bb.e:                                             ; preds = %.noexc4.i
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !2873, !nonnull !8, !noundef !8
  %i.ag = icmp ule i64 %i.y, %i.ac
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2873
  store i64 %i.ac, ptr %i.i, align 8, !noalias !2873
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.ah, align 8, !noalias !2873
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 0, ptr %i.ai, align 8, !noalias !2873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(408) %1, i64 408, i1 false), !noalias !2876
  call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2882
  call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  %i.aj = load i64, ptr %i.g, align 8, !range !26, !alias.scope !2884, !noalias !2873, !noundef !8
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 384 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !2884, !noalias !2873, !noundef !8
  %.not7.i.i.i.i = icmp eq ptr %i.am, null        ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !2884, !noalias !2873, !noundef !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val9.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !2884, !noalias !2873, !noundef !8
  %i.ap = sub nuw i64 %.val9.i.i.i.i, %.val.i.i.i.i ; 3 uses
  br i1 %.not7.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.g
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1w_9predicate20ExistentialPredicateB2j_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %.noexc6.i unwind label %bb.k, !noalias !2876

.noexc6.i:                                        ; preds = %.split.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !26, !noalias !2882
  %.phi.trans.insert12.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre13.i.i.i = load i64, ptr %.phi.trans.insert12.i.i.i, align 8, !noalias !2882
  %i.aq = trunc nuw i64 %.pre.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2882
  br i1 %i.aq, label %bb.h, label %bb.j, !prof !41

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i: ; preds = %bb.g, %bb.f
  %.ph.i.i.i = phi i64 [ 0, %bb.g ], [ %i.ap, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2882
  br label %bb.h

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2885
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1w_9predicate20ExistentialPredicateB2j_EEEENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %.noexc7.i unwind label %bb.k, !noalias !2876

.noexc7.i:                                        ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !26, !noalias !2885, !noundef !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !2885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2885
  %i.av = trunc nuw i64 %i.as to i1
  %i.aw = add i64 %i.au, %i.ap                    ; 2 uses
  %i.ax = icmp uge i64 %i.aw, %i.ap
  %narrow.i.i.i.i = select i1 %i.av, i1 %i.ax, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2882
  br i1 %narrow.i.i.i.i, label %bb.h, label %bb.j, !prof !41

bb.h:                                             ; preds = %.noexc7.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i, %.noexc6.i
  %i.ay = phi i64 [ %.ph.i.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i ], [ %i.aw, %.noexc7.i ], [ %.pre13.i.i.i, %.noexc6.i ] ; 2 uses
  %i.az = load i64, ptr %i.ai, align 8, !alias.scope !2886, !noalias !2873, !noundef !8 ; 3 uses
  %i.ba = load i64, ptr %i.i, align 8, !range !14, !alias.scope !2886, !noalias !2873, !noundef !8
  %i.bb = sub i64 %i.ba, %i.az
  %i.bc = icmp ugt i64 %i.ay, %i.bb
  br i1 %i.bc, label %bb.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBL_9predicate20ExistentialPredicateB1y_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB3H_5array4iter8IntoIterBG_Kj9_EINtNtB3D_3map3MapINtNtB3D_6copied6CopiedINtNtNtB3H_5slice4iter4IterBG_EENCINvXs1k_NtB1C_9predicateNtB6n_26BoundExistentialPredicatesINtNtBL_4fold12TypeFoldableB1y_E9fold_withINtBJ_9ArgFolderB1y_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, !prof !13

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.az, i64 noundef %i.ay, i64 noundef 8, i64 noundef 40)
          to label %.noexc8.i unwind label %bb.k, !noalias !2876

.noexc8.i:                                        ; preds = %bb.i
  %.pre14.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !2887, !noalias !2873
  br label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBL_9predicate20ExistentialPredicateB1y_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB3H_5array4iter8IntoIterBG_Kj9_EINtNtB3D_3map3MapINtNtB3D_6copied6CopiedINtNtNtB3H_5slice4iter4IterBG_EENCINvXs1k_NtB1C_9predicateNtB6n_26BoundExistentialPredicatesINtNtBL_4fold12TypeFoldableB1y_E9fold_withINtBJ_9ArgFolderB1y_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.j:                                             ; preds = %.noexc7.i, %.noexc6.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %.noexc9.i unwind label %bb.k, !noalias !2876

.noexc9.i:                                        ; preds = %bb.j
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBL_9predicate20ExistentialPredicateB1y_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB3H_5array4iter8IntoIterBG_Kj9_EINtNtB3D_3map3MapINtNtB3D_6copied6CopiedINtNtNtB3H_5slice4iter4IterBG_EENCINvXs1k_NtB1C_9predicateNtB6n_26BoundExistentialPredicatesINtNtBL_4fold12TypeFoldableB1y_E9fold_withINtBJ_9ArgFolderB1y_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %.noexc8.i, %bb.h
  %i.bd = phi i64 [ %.pre14.i.i.i, %.noexc8.i ], [ %i.az, %bb.h ]
  %i.be = load ptr, ptr %i.ah, align 8, !alias.scope !2887, !noalias !2873, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(408) %1, i64 408, i1 false), !noalias !2876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2888
  store ptr %i.ai, ptr %i.a, align 8, !noalias !2889
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2889
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.be, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2889
  invoke void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1z_9predicate20ExistentialPredicateB2m_EEKj9_EINtNtB7_3map3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterB1u_EENCINvXs1k_NtB2q_9predicateNtB5t_26BoundExistentialPredicatesINtNtB1z_4fold12TypeFoldableB2m_E9fold_withINtB1x_9ArgFolderB2m_EE0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB7o_8for_each4callB1u_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB8E_3VecB1u_E14extend_trustedBO_E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(408) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB18_9predicate20ExistentialPredicateB1V_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB4j_5array4iter8IntoIterB13_Kj9_EINtNtB4f_3map3MapINtNtB4f_6copied6CopiedINtNtNtB4j_5slice4iter4IterB13_EENCINvXs1k_NtB1Z_9predicateNtB71_26BoundExistentialPredicatesINtNtB18_4fold12TypeFoldableB1V_E9fold_withINtB16_9ArgFolderB1V_EE0EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.k, !noalias !2876

bb.k:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBL_9predicate20ExistentialPredicateB1y_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB3H_5array4iter8IntoIterBG_Kj9_EINtNtB3D_3map3MapINtNtB3D_6copied6CopiedINtNtNtB3H_5slice4iter4IterBG_EENCINvXs1k_NtB1C_9predicateNtB6n_26BoundExistentialPredicatesINtNtBL_4fold12TypeFoldableB1y_E9fold_withINtBJ_9ArgFolderB1y_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, %bb.j, %bb.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1y_9predicate20ExistentialPredicateB2l_EEKj9_EINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterB1t_EENCINvXs1k_NtB2p_9predicateNtB5s_26BoundExistentialPredicatesINtNtB1y_4fold12TypeFoldableB2l_E9fold_withINtB1w_9ArgFolderB2l_EE0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i, %.split.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBR_9predicate20ExistentialPredicateB1E_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.m unwind label %bb.l, !noalias !2876

bb.l:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !2876
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bf

_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB18_9predicate20ExistentialPredicateB1V_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB4j_5array4iter8IntoIterB13_Kj9_EINtNtB4f_3map3MapINtNtB4f_6copied6CopiedINtNtNtB4j_5slice4iter4IterB13_EENCINvXs1k_NtB1Z_9predicateNtB71_26BoundExistentialPredicatesINtNtB18_4fold12TypeFoldableB1V_E9fold_withINtB16_9ArgFolderB1V_EE0EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBL_9predicate20ExistentialPredicateB1y_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtNtB3H_5array4iter8IntoIterBG_Kj9_EINtNtB3D_3map3MapINtNtB3D_6copied6CopiedINtNtNtB3H_5slice4iter4IterBG_EENCINvXs1k_NtB1C_9predicateNtB6n_26BoundExistentialPredicatesINtNtBL_4fold12TypeFoldableB1y_E9fold_withINtBJ_9ArgFolderB1y_EE0EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2873
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBZ_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1O_11SyntaxTokenB29_EEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3T_7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtNtNtB2d_3ast9generated5nodes4PathEABU_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBL_B5w_EEs_0EINtNtNtB3X_5array4iter8IntoIterBU_Kj1_EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2922 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [192 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [192 x i8], align 8               ; 26 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2924
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !range !16, !alias.scope !2925, !noundef !8 ; 3 uses
  %.not.i.i = icmp eq i64 %i.g, 2
  %i.h = load i64, ptr %1, align 8, !range !26, !alias.scope !2925, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %.split.i, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %.thread11.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9.i.i = load i64, ptr %i.j, align 8, !alias.scope !2925, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i.i = load i64, ptr %i.k, align 8, !alias.scope !2925, !noundef !8
  %i.l = sub nuw i64 %.val10.i.i, %.val9.i.i
  br label %.thread11.i

.split.i:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = trunc nuw i64 %i.g to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !2926
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !2926
  %i.q = sub nuw i64 %.val3.i.i.i.i.i, %.val.i.i.i.i.i
  %.sroa.7.0.i.i.i.i = select i1 %i.n, i64 %i.q, i64 0 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load i64, ptr %i.r, align 8, !range !26, !alias.scope !2926, !noundef !8
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i56.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !2926
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val3.i57.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !2926
  %i.w = sub nuw i64 %.val3.i57.i.i.i.i, %.val.i56.i.i.i.i
  %.sroa.8.0.i.i.i.i = select i1 %i.t, i64 %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2926, !noundef !8
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2926, !nonnull !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val54.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !2926, !nonnull !8
  %i.ab = ptrtoint ptr %.val54.i.i.i.i to i64
  %i.ac = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ad = sub nuw i64 %i.ab, %i.ac
  %i.ae = lshr exact i64 %i.ad, 2
  %.sroa.869.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.ae
  %i.af = add i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i ; 3 uses
  %.not72.i.i.i.i = icmp uge i64 %i.af, %.sroa.7.0.i.i.i.i ; 2 uses
  %i.ag = add i64 %.sroa.869.0.i.i.i.i, %i.af     ; 2 uses
  %i.ah = icmp uge i64 %i.ag, %i.af
  %or.cond.not.i.i.i.i = select i1 %.not72.i.i.i.i, i1 %i.ah, i1 false, !prof !2927 ; 2 uses
  %.sroa.8.3.i.i.i.i = select i1 %.not72.i.i.i.i, i64 %i.ag, i64 undef, !prof !2927 ; 2 uses
  %.val.i.i = load i64, ptr %i.m, align 8, !alias.scope !2925, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8.i.i = load i64, ptr %i.ai, align 8, !alias.scope !2925, !noundef !8
  %i.aj = sub nuw i64 %.val8.i.i, %.val.i.i
  %i.ak = add i64 %.sroa.8.3.i.i.i.i, %i.aj       ; 2 uses
  %i.al = icmp uge i64 %i.ak, %.sroa.8.3.i.i.i.i
  %.sroa.46.0.i.i = select i1 %or.cond.not.i.i.i.i, i64 %i.ak, i64 undef
  %narrow.i.i = select i1 %or.cond.not.i.i.i.i, i1 %i.al, i1 false
  br i1 %narrow.i.i, label %.thread11.i, label %bb.g, !prof !2928

bb.e:                                             ; preds = %bb.b
  %i.am = trunc nuw i64 %i.g to i1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i11.i.i = load i64, ptr %i.an, align 8, !alias.scope !2929
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i12.i.i = load i64, ptr %i.ao, align 8, !alias.scope !2929
  %i.ap = sub nuw i64 %.val3.i.i.i12.i.i, %.val.i.i.i11.i.i
  %.sroa.7.0.i.i13.i.i = select i1 %i.am, i64 %i.ap, i64 0 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !range !26, !alias.scope !2929, !noundef !8
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i56.i.i14.i.i = load i64, ptr %i.at, align 8, !alias.scope !2929
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val3.i57.i.i15.i.i = load i64, ptr %i.au, align 8, !alias.scope !2929
  %i.av = sub nuw i64 %.val3.i57.i.i15.i.i, %.val.i56.i.i14.i.i
  %.sroa.8.0.i.i16.i.i = select i1 %i.as, i64 %i.av, i64 0
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !2929, !noundef !8
  %.not.i.i17.i.i = icmp eq ptr %i.ax, null
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val.i.i18.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !2929, !nonnull !8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val54.i.i19.i.i = load ptr, ptr %i.az, align 8, !alias.scope !2929, !nonnull !8
  %i.ba = ptrtoint ptr %.val54.i.i19.i.i to i64
  %i.bb = ptrtoint ptr %.val.i.i18.i.i to i64
  %i.bc = sub nuw i64 %i.ba, %i.bb
  %i.bd = lshr exact i64 %i.bc, 2
  %.sroa.869.0.i.i20.i.i = select i1 %.not.i.i17.i.i, i64 0, i64 %i.bd
  %i.be = add i64 %.sroa.8.0.i.i16.i.i, %.sroa.7.0.i.i13.i.i ; 3 uses
  %.not72.i.i21.i.i = icmp uge i64 %i.be, %.sroa.7.0.i.i13.i.i ; 2 uses
  %i.bf = add i64 %.sroa.869.0.i.i20.i.i, %i.be   ; 2 uses
  %i.bg = icmp uge i64 %i.bf, %i.be
  %or.cond.not.i.i22.i.i = select i1 %.not72.i.i21.i.i, i1 %i.bg, i1 false, !prof !2927
  %.sroa.8.3.i.i23.i.i = select i1 %.not72.i.i21.i.i, i64 %i.bf, i64 undef, !prof !2927
  br i1 %or.cond.not.i.i22.i.i, label %.thread11.i, label %bb.g, !prof !2928

.thread11.i:                                      ; preds = %bb.e, %.split.i, %bb.d, %bb.c
  %.sroa.46.0.sink.i15.i = phi i64 [ %.sroa.46.0.i.i, %.split.i ], [ %.sroa.8.3.i.i23.i.i, %bb.e ], [ 0, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2924
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.46.0.sink.i15.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc.i unwind label %bb.v, !noalias !2924

.noexc.i:                                         ; preds = %.thread11.i
  %i.bh = load i64, ptr %i.c, align 8, !range !26, !noalias !2924, !noundef !8
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !39, !noalias !2924, !noundef !8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bi, label %bb.f, label %bb.h, !prof !13

bb.f:                                             ; preds = %.noexc.i
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !2924
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bm) #29
          to label %.noexc3.i unwind label %bb.v, !noalias !2924

.noexc3.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %.split.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #29
          to label %bb.t unwind label %bb.v, !noalias !2924

bb.h:                                             ; preds = %.noexc.i
  %i.bn = load ptr, ptr %i.bl, align 8, !noalias !2924, !nonnull !8, !noundef !8 ; 3 uses
  %i.bo = icmp ule i64 %.sroa.46.0.sink.i15.i, %i.bk
  tail call void @llvm.assume(i1 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2924
  store i64 %i.bk, ptr %i.e, align 8, !noalias !2924
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.bp, align 8, !noalias !2924
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.bq, align 8, !noalias !2924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false), !noalias !2930
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !range !16, !alias.scope !2935, !noalias !2924, !noundef !8 ; 3 uses
  %.not.i.i.i4.i = icmp eq i64 %i.bs, 2
  %i.bt = load i64, ptr %i.d, align 8, !range !26, !alias.scope !2935, !noalias !2924, !noundef !8
  %i.bu = trunc nuw i64 %i.bt to i1               ; 2 uses
  br i1 %.not.i.i.i4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.bu, label %.split.i.i.i, label %bb.l

bb.j:                                             ; preds = %bb.h
  br i1 %i.bu, label %bb.k, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val9.i.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !2935, !noalias !2924, !noundef !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val10.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !2935, !noalias !2924, !noundef !8
  %i.bx = sub nuw i64 %.val10.i.i.i.i, %.val9.i.i.i.i
  br label %.thread13.i.i.i

.split.i.i.i:                                     ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bz = trunc nuw i64 %i.bs to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !2936, !noalias !2924
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !2936, !noalias !2924
  %i.cc = sub nuw i64 %.val3.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i.i = select i1 %i.bz, i64 %i.cc, i64 0 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !range !26, !alias.scope !2936, !noalias !2924, !noundef !8
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.val.i56.i.i.i.i.i.i = load i64, ptr %i.cg, align 8, !alias.scope !2936, !noalias !2924
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %.val3.i57.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !alias.scope !2936, !noalias !2924
  %i.ci = sub nuw i64 %.val3.i57.i.i.i.i.i.i, %.val.i56.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = select i1 %i.cf, i64 %i.ci, i64 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !2936, !noalias !2924, !noundef !8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !2936, !noalias !2924, !nonnull !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %.val54.i.i.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !2936, !noalias !2924, !nonnull !8
  %i.cn = ptrtoint ptr %.val54.i.i.i.i.i.i to i64
  %i.co = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.cp = sub nuw i64 %i.cn, %i.co
  %i.cq = lshr exact i64 %i.cp, 2
  %.sroa.869.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %i.cq
  %i.cr = add i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i ; 3 uses
  %.not72.i.i.i.i.i.i = icmp uge i64 %i.cr, %.sroa.7.0.i.i.i.i.i.i ; 2 uses
  %i.cs = add i64 %.sroa.869.0.i.i.i.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp uge i64 %i.cs, %i.cr
  %or.cond.not.i.i.i.i.i.i = select i1 %.not72.i.i.i.i.i.i, i1 %i.ct, i1 false, !prof !2927 ; 2 uses
  %.sroa.8.3.i.i.i.i.i.i = select i1 %.not72.i.i.i.i.i.i, i64 %i.cs, i64 undef, !prof !2927 ; 2 uses
  %.val.i.i.i5.i = load i64, ptr %i.by, align 8, !alias.scope !2935, !noalias !2924, !noundef !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val8.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !2935, !noalias !2924, !noundef !8
  %i.cv = sub nuw i64 %.val8.i.i.i.i, %.val.i.i.i5.i
  %i.cw = add i64 %.sroa.8.3.i.i.i.i.i.i, %i.cv   ; 2 uses
  %i.cx = icmp uge i64 %i.cw, %.sroa.8.3.i.i.i.i.i.i
  %.sroa.46.0.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i.i, i64 %i.cw, i64 undef
  %narrow.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i.i, i1 %i.cx, i1 false
  br i1 %narrow.i.i.i.i, label %.thread13.i.i.i, label %bb.n, !prof !2928

bb.l:                                             ; preds = %bb.i
  %i.cy = trunc nuw i64 %i.bs to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val.i.i.i11.i.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !2937, !noalias !2924
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val3.i.i.i12.i.i.i.i = load i64, ptr %i.da, align 8, !alias.scope !2937, !noalias !2924
  %i.db = sub nuw i64 %.val3.i.i.i12.i.i.i.i, %.val.i.i.i11.i.i.i.i
  %.sroa.7.0.i.i13.i.i.i.i = select i1 %i.cy, i64 %i.db, i64 0 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.dd = load i64, ptr %i.dc, align 8, !range !26, !alias.scope !2937, !noalias !2924, !noundef !8
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.val.i56.i.i14.i.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !2937, !noalias !2924
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %.val3.i57.i.i15.i.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !2937, !noalias !2924
  %i.dh = sub nuw i64 %.val3.i57.i.i15.i.i.i.i, %.val.i56.i.i14.i.i.i.i
  %.sroa.8.0.i.i16.i.i.i.i = select i1 %i.de, i64 %i.dh, i64 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !2937, !noalias !2924, !noundef !8
  %.not.i.i17.i.i.i.i = icmp eq ptr %i.dj, null
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.val.i.i18.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !2937, !noalias !2924, !nonnull !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %.val54.i.i19.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !2937, !noalias !2924, !nonnull !8
  %i.dm = ptrtoint ptr %.val54.i.i19.i.i.i.i to i64
  %i.dn = ptrtoint ptr %.val.i.i18.i.i.i.i to i64
  %i.do = sub nuw i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 2
  %.sroa.869.0.i.i20.i.i.i.i = select i1 %.not.i.i17.i.i.i.i, i64 0, i64 %i.dp
  %i.dq = add i64 %.sroa.8.0.i.i16.i.i.i.i, %.sroa.7.0.i.i13.i.i.i.i ; 3 uses
  %.not72.i.i21.i.i.i.i = icmp uge i64 %i.dq, %.sroa.7.0.i.i13.i.i.i.i ; 2 uses
  %i.dr = add i64 %.sroa.869.0.i.i20.i.i.i.i, %i.dq ; 2 uses
  %i.ds = icmp uge i64 %i.dr, %i.dq
  %or.cond.not.i.i22.i.i.i.i = select i1 %.not72.i.i21.i.i.i.i, i1 %i.ds, i1 false, !prof !2927
  %.sroa.8.3.i.i23.i.i.i.i = select i1 %.not72.i.i21.i.i.i.i, i64 %i.dr, i64 undef, !prof !2927
  br i1 %or.cond.not.i.i22.i.i.i.i, label %.thread13.i.i.i, label %bb.n, !prof !2928

.thread13.i.i.i:                                  ; preds = %bb.l, %.split.i.i.i, %bb.k
  %.sroa.46.0.sink.i17.i.i.i = phi i64 [ %.sroa.46.0.i.i.i.i, %.split.i.i.i ], [ %.sroa.8.3.i.i23.i.i.i.i, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.dt = icmp ugt i64 %.sroa.46.0.sink.i17.i.i.i, %i.bk
  br i1 %i.dt, label %bb.m, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, !prof !42

bb.m:                                             ; preds = %.thread13.i.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0, i64 noundef %.sroa.46.0.sink.i17.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i_crit_edge.i unwind label %bb.p, !noalias !2938

._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i_crit_edge.i: ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.bp, align 8, !alias.scope !2939, !noalias !2924
  %.pre17.i = load i64, ptr %i.bq, align 8, !alias.scope !2939, !noalias !2924
  br label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.n:                                             ; preds = %bb.l, %.split.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29
          to label %bb.o unwind label %bb.p, !noalias !2940

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3o_3api10SyntaxNodeNtNtB2x_11syntax_node12RustLanguageEINtB4d_11SyntaxTokenB4z_EEj2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorINtB1G_3VecB2p_EEs_0EINtNtNtB4_5array4iter8IntoIterB3j_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.d) #25
          to label %.body.i unwind label %bb.q, !noalias !2924

bb.q:                                             ; preds = %bb.p
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !2924
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i_crit_edge.i, %.thread13.i.i.i, %bb.j
  %i.dv = phi i64 [ %.pre17.i, %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i_crit_edge.i ], [ 0, %bb.j ], [ 0, %.thread13.i.i.i ]
  %i.dw = phi ptr [ %.pre.i, %._RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i_crit_edge.i ], [ %i.bn, %bb.j ], [ %i.bn, %.thread13.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false), !noalias !2930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2941
  store ptr %i.bq, ptr %i.a, align 8, !noalias !2942
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.dv, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !2942
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.dw, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !2942
  invoke void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3b_3api10SyntaxNodeNtNtB2k_11syntax_node12RustLanguageEINtB40_11SyntaxTokenB4m_EEj2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorINtB1t_3VecB2c_EEs_0EINtNtNtBb_5array4iter8IntoIterB36_Kj1_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB7B_8for_each4callB36_NCINvMsk_B1t_IB6D_B36_E14extend_trustedBO_E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB4a_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB2n_3ast9generated5nodes4PathEAB13_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBU_B5N_EEs_0EINtNtNtB4e_5array4iter8IntoIterB13_Kj1_EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.r, !noalias !2924

bb.r:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dx, %bb.r ], [ %lpad.thr_comm.i.i.i, %bb.p ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1d_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB22_11SyntaxTokenB2o_EEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #25
          to label %bb.u unwind label %bb.s, !noalias !2924

bb.s:                                             ; preds = %bb.v, %.body.i
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !2930
  unreachable

bb.t:                                             ; preds = %bb.g
  unreachable

bb.u:                                             ; preds = %bb.v, %.body.i
  %.pn9.i = phi { ptr, i32 } [ %i.dz, %bb.v ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn9.i

bb.v:                                             ; preds = %bb.g, %bb.f, %.thread11.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathEAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB3o_3api10SyntaxNodeNtNtB2x_11syntax_node12RustLanguageEINtB4d_11SyntaxTokenB4z_EEj2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorINtB1G_3VecB2p_EEs_0EINtNtNtB4_5array4iter8IntoIterB3j_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1) #25
          to label %bb.u unwind label %bb.s, !noalias !2930

_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB18_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1X_11SyntaxTokenB2j_EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB4a_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB2n_3ast9generated5nodes4PathEAB13_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBU_B5N_EEs_0EINtNtNtB4e_5array4iter8IntoIterB13_Kj1_EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB3y_7flatten7FlatMapINtNtB6_9into_iter8IntoIterNtNtNtNtB1Z_3ast9generated5nodes4PathEABG_j2_NCINvNtNtCs6oosyzwIepl_6ide_db7imports10insert_use23insert_uses_with_editorIBx_B5b_EEs_0EINtNtNtB3C_5array4iter8IntoIterBG_Kj1_EEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2924
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2F_4util11SharedValueuEEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6D_3ops5range5RangejENCNvMs1_B2F_INtB2F_7DashMapB45_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EE9from_iterCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2955 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2957
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !2958, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !2959, !noundef !8
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val2.i, i64 %.val.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2957
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 128, i64 noundef 128), !noalias !2957
  %i.f = load i64, ptr %i.b, align 8, !range !26, !noalias !2957, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !39, !noalias !2957, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2r_4util11SharedValueuEEEEEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6i_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2957
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29, !noalias !2957
  unreachable

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2r_4util11SharedValueuEEEEEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6i_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2957, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2957
  store i64 %i.i, ptr %i.c, align 8, !noalias !2957
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !2957
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !noalias !2957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2960
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !2960
  store ptr %i.o, ptr %i.a, align 8, !noalias !2960
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !2960
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_Cs2WklPA5QxgX_7dashmapINtB1x_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB54_8for_each4callINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueuEEEEENCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB9K_3VecB67_E14extend_trustedBN_E0E0ECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2O_4util11SharedValueuEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6T_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EE9from_iterCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.c, !noalias !2961

bb.c:                                             ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2r_4util11SharedValueuEEEEEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6i_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2T_4util11SharedValueuEEEEEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #25
          to label %bb.e unwind label %bb.d, !noalias !2957

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !2957
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2O_4util11SharedValueuEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6T_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EE9from_iterCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedEINtNtB2r_4util11SharedValueuEEEEEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6i_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2957
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts7valtree15ValTreeInternedEINtNtB2F_4util11SharedValueuEEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB6W_3ops5range5RangejENCNvMs1_B2F_INtB2F_7DashMapB45_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amount0EE9from_iterCscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !2974 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
end_hunk_0
begin_hunk_1_@_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB2c_6option8IntoIterB11_EINtNtB28_10filter_map9FilterMapINtNtB28_7flatten7FlatMapIB2W_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB28_6copied6CopiedINtNtNtB2c_5slice4iter4IterNtB4V_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB7g_4Type24type_and_const_arguments0ENCB79_s_0EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics:bb.a
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.am = load i8, ptr %i.c, align 8, !range !19, !noalias !4202, !noundef !8
  %.not.i.i = icmp eq i8 %i.am, -1
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4202
  %i.an = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4203, !noundef !8 ; 4 uses
  %i.ao = icmp ult i64 %i.an, 384307168202282326
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.i, align 8, !range !14, !alias.scope !4203, !noundef !8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.y, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4202
  call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !4205)
  %i.as = load i8, ptr %i.ar, align 8, !range !25, !alias.scope !4206, !noundef !8 ; 3 uses
  %i.at = icmp eq i8 %i.as, -2
  br i1 %i.at, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !4207)
  call void @llvm.experimental.noalias.scope.decl(metadata !4208)
  call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  %i.au = icmp eq i8 %i.as, -1
  br i1 %i.au, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  call void @llvm.experimental.noalias.scope.decl(metadata !4211)
  %switch.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.as, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4212)
  call void @llvm.experimental.noalias.scope.decl(metadata !4213)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !4214, !nonnull !8, !noundef !8
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !4215
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.x, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.av) #23
          to label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.af

bb.y:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4202
  invoke fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtB6_10filter_map9FilterMapINtNtB6_7flatten7FlatMapIB10_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtB3p_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB5I_4Type24type_and_const_arguments0ENCB5B_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.e)
          to label %bb.ac unwind label %bb.z

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.s
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4203, !nonnull !8, !noundef !8
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bb = add nuw nsw i64 %i.an, 1
  store i64 %i.bb, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4202
  br label %bb.p

bb.z:                                             ; preds = %bb.ad, %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4216)
  call void @llvm.experimental.noalias.scope.decl(metadata !4217)
  %i.bd = load i8, ptr %i.b, align 8, !range !20, !alias.scope !4218, !noalias !4202, !noundef !8
  %switch.i.i.i.i = icmp samesign ult i8 %i.bd, 25
  br i1 %switch.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4219)
  call void @llvm.experimental.noalias.scope.decl(metadata !4220)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !4221, !noalias !4202, !nonnull !8, !noundef !8
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !4221
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %i.bi = load i64, ptr %i.a, align 8, !noalias !4202, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4202
  %i.bj = call i64 @llvm.uadd.sat.i64(i64 %i.bi, i64 1) ; 2 uses
  %i.bk = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4222, !noundef !8 ; 2 uses
  %i.bl = load i64, ptr %i.i, align 8, !range !14, !alias.scope !4222, !noundef !8
  %i.bm = sub i64 %i.bl, %i.bk
  %i.bn = icmp ugt i64 %i.bj, %i.bm
  br i1 %i.bn, label %bb.ad, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i, !prof !13

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bk, i64 noundef range(i64 1, 0) %i.bj, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.z

bb.ae:                                            ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.af:                                            ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.af ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %bb.ah unwind label %bb.ag

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapIB1e_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtBG_6copied6CopiedINtNtNtB4_5slice4iter4IterNtB3D_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB5W_4Type24type_and_const_arguments0ENCB5P_s_0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.ag:                                            ; preds = %bb.l, %bb.ai, %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ah:                                            ; preds = %.body, %bb.ai
  %.pn9 = phi { ptr, i32 } [ %.pn.ph, %bb.ai ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn9

bb.ai:                                            ; preds = %bb.b, %bb.l, %bb.j, %bb.k
  %.pn.ph = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.v, %bb.l ], [ %i.v, %bb.j ], [ %i.v, %bb.k ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapIB1e_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtBG_6copied6CopiedINtNtNtB4_5slice4iter4IterNtB3D_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB5W_4Type24type_and_const_arguments0ENCB5P_s_0EEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(112) %1) #25
          to label %bb.ah unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2k_4take4TakeINtNtB2k_7flatten7FlattenINtNtB2o_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvB13_18syntax_diagnostics0EE9from_iterB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4249 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [12 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [112 x i8], align 8               ; 4 uses
  %i.l = alloca [112 x i8], align 8               ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [112 x i8], align 8               ; 4 uses
  %i.o = alloca [112 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2Z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.o, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #31
  %i.q = load i64, ptr %i.o, align 8, !range !9, !noundef !8
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4250, !noundef !8 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0                      ; 2 uses
  br i1 %i.t, label %bb.f, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4251, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !4251, !nonnull !8
  %i.x = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 5
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !4251, !noundef !8 ; 2 uses
  %.not53.i.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i61.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !4251, !nonnull !8
  %i.ae = ptrtoint ptr %.val3.i61.i.i.i.i to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 5
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.ah
  %i.ai = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.ai)
  %i.aj = tail call i64 @llvm.umax.i64(i64 %..i.i.i, i64 3)
  %i.ak = add nuw nsw i64 %i.aj, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.d

bb.d:                                             ; preds = %.loopexit66, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEBD_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.n) #25
          to label %bb.q unwind label %bb.p

bb.f:                                             ; preds = %bb.b, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %..i.sink.i.i = phi i64 [ %i.ak, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i ], [ 4, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %..i.sink.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.ao = load i64, ptr %i.m, align 8, !range !26, !noundef !8
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !39, !noundef !8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %.noexc
  %i.at = load i64, ptr %i.as, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #29
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.av = icmp ule i64 %..i.sink.i.i, %i.ar
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.au, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  store i64 %i.ar, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.037.0.copyload = load i64, ptr %1, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.539.0.copyload = load ptr, ptr %.sroa.539.0..sroa_idx, align 8 ; 7 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 5 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8 ; 5 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8 ; 7 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.30.0.copyload = load ptr, ptr %.sroa.30.0..sroa_idx, align 8 ; 5 uses
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.38.0.copyload = load ptr, ptr %.sroa.38.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4253)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4254
  br i1 %i.t, label %.loopexit66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.fr21.i.i.i.i11 = freeze i64 %.sroa.037.0.copyload
  %i.aw = trunc i64 %.fr21.i.i.i.i11 to i1        ; 2 uses
  %.not.i.us.peel.i.i.i.i14 = icmp eq ptr %.sroa.11.0.copyload, null
  %i.ax = icmp eq ptr %.sroa.11.0.copyload, %.sroa.20.0.copyload
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload, i64 32 ; 2 uses
  %or.cond = select i1 %.not.i.us.peel.i.i.i.i14, i1 true, i1 %i.ax ; 2 uses
  br i1 %i.aw, label %.split.us.preheader.i.i.i.i26, label %.split.i.i.i.i15

.split.us.preheader.i.i.i.i26:                    ; preds = %bb.i
  br i1 %or.cond, label %select.unfold.us.peel.i.i.i.i29, label %bb.j

select.unfold.us.peel.i.i.i.i29:                  ; preds = %.split.us.preheader.i.i.i.i26
  %.not4.us.peel.i.i.i.i30 = icmp eq ptr %.sroa.539.0.copyload, null
  br i1 %.not4.us.peel.i.i.i.i30, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, label %.sink.split.i.us.peel26.i.i.i.i31

.sink.split.i.us.peel26.i.i.i.i31:                ; preds = %select.unfold.us.peel.i.i.i.i29
  %.idx.i.i.i.i32 = shl nuw nsw i64 %.sroa.9.0.copyload, 5
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.539.0.copyload, i64 %.idx.i.i.i.i32 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.9.0.copyload, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.539.0.copyload, i64 32
  br i1 %i.ba, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, label %bb.j

.split.i.i.i.i15:                                 ; preds = %bb.i
  br i1 %or.cond, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, label %bb.j

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21: ; preds = %.split.i.i.i.i15, %.sink.split.i.us.peel26.i.i.i.i31, %select.unfold.us.peel.i.i.i.i29
  %.sroa.20.6 = phi ptr [ %.sroa.20.0.copyload, %select.unfold.us.peel.i.i.i.i29 ], [ %i.az, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.20.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.539.6 = phi ptr [ null, %select.unfold.us.peel.i.i.i.i29 ], [ null, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.539.0.copyload, %.split.i.i.i.i15 ]
  %.not.i6.i.i.i.i22 = icmp eq ptr %.sroa.25.0.copyload, null
  br i1 %.not.i6.i.i.i.i22, label %.loopexit66, label %.sink.split.i7.i.i.i.i23

.sink.split.i7.i.i.i.i23:                         ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.30.0.copyload) ]
  %i.bc = icmp eq ptr %.sroa.25.0.copyload, %.sroa.30.0.copyload
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload, i64 32
  br i1 %i.bc, label %.loopexit66, label %bb.j

bb.j:                                             ; preds = %.split.i.i.i.i15, %.split.us.preheader.i.i.i.i26, %.sink.split.i7.i.i.i.i23, %.sink.split.i.us.peel26.i.i.i.i31
  %.sroa.25.4 = phi ptr [ %i.bd, %.sink.split.i7.i.i.i.i23 ], [ %.sroa.25.0.copyload, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.25.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.25.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.20.5 = phi ptr [ %.sroa.20.6, %.sink.split.i7.i.i.i.i23 ], [ %i.az, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.20.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.20.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.11.6 = phi ptr [ null, %.sink.split.i7.i.i.i.i23 ], [ %i.bb, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %i.ay, %.split.us.preheader.i.i.i.i26 ], [ %i.ay, %.split.i.i.i.i15 ]
  %.sroa.539.5 = phi ptr [ %.sroa.539.6, %.sink.split.i7.i.i.i.i23 ], [ null, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.539.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.539.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.0.0.i.ph.i18 = phi ptr [ %.sroa.25.0.copyload, %.sink.split.i7.i.i.i.i23 ], [ %.sroa.539.0.copyload, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.11.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.11.0.copyload, %.split.i.i.i.i15 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4255
  store ptr %.sroa.0.0.i.ph.i18, ptr %i.e, align 8, !noalias !4256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4256
  store i8 1, ptr %i.d, align 8, !noalias !4256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4256
  store ptr %i.e, ptr %i.b, align 8, !noalias !4256
  %.sroa.42.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB6_7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.42.0..sroa_idx.i.i20, align 8, !noalias !4256
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @9, ptr noundef nonnull %i.b)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4256
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.38.0.copyload) ]
  %i.be = load i32, ptr %.sroa.38.0.copyload, align 4, !noalias !4256, !noundef !8
  %i.bf = load ptr, ptr %i.e, align 8, !noalias !4256, !nonnull !8, !align !38, !noundef !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.be, ptr %i.bh, align 8, !noalias !4256
  %i.bi = load <2 x i32>, ptr %i.bg, align 8, !noalias !4257
  store <2 x i32> %i.bi, ptr %i.a, align 8, !noalias !4256
  invoke void @_RINvMs_CscA5P7HRgTCP_15ide_diagnosticsNtB5_10Diagnostic3newNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEB5_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc6:                                          ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4255
  %.pr = load i64, ptr %i.l, align 8, !noalias !4254
  %.not2.i.i = icmp eq i64 %.pr, -1
  br i1 %.not2.i.i, label %.loopexit66, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc6
  %i.bj = ptrtoint ptr %.sroa.30.0.copyload to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %.sroa.9.0.copyload, 5
  %i.bk = icmp eq i64 %.sroa.9.0.copyload, 0
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc7
  %.sroa.33.0.in = phi i64 [ %.sroa.33.0, %.noexc7 ], [ %i.s, %.lr.ph.i.i.preheader ]
  %.sroa.25.0 = phi ptr [ %.sroa.25.1, %.noexc7 ], [ %.sroa.25.4, %.lr.ph.i.i.preheader ] ; 9 uses
  %.sroa.20.0 = phi ptr [ %.sroa.20.1, %.noexc7 ], [ %.sroa.20.5, %.lr.ph.i.i.preheader ] ; 6 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %.noexc7 ], [ %.sroa.11.6, %.lr.ph.i.i.preheader ] ; 7 uses
  %.sroa.539.0 = phi ptr [ %.sroa.539.1, %.noexc7 ], [ %.sroa.539.5, %.lr.ph.i.i.preheader ] ; 7 uses
  %.sroa.33.0 = add i64 %.sroa.33.0.in, -1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false), !noalias !4254
  %i.bm = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4258, !noundef !8 ; 5 uses
  %i.bn = icmp ult i64 %i.bm, 82351536043346213
  call void @llvm.assume(i1 %i.bn)
  %i.bo = load i64, ptr %i.p, align 8, !range !14, !alias.scope !4258, !noundef !8
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.k, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bq = icmp eq i64 %.sroa.33.0, 0
  br i1 %i.bq, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.11.0, null
  %i.br = ptrtoint ptr %.sroa.20.0 to i64
  %i.bs = ptrtoint ptr %.sroa.11.0 to i64
  %i.bt = sub nuw i64 %i.br, %i.bs
  %i.bu = lshr exact i64 %i.bt, 5
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %i.bu
  %.not53.i.i.i.i.i.i = icmp eq ptr %.sroa.25.0, null
  %i.bv = ptrtoint ptr %.sroa.25.0 to i64
  %i.bw = sub nuw i64 %i.bj, %i.bv
  %i.bx = lshr exact i64 %i.bw, 5
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %i.bx
  %i.by = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i, %.sroa.8.0.i.i.i.i.i.i
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.33.0, i64 %i.by)
  %i.bz = add nuw nsw i64 %..i.i.i.i.i, 1
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i, %.lr.ph.i.i
  %i.ca = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4258, !nonnull !8, !noundef !8
  %i.cb = getelementptr inbounds nuw [112 x i8], ptr %i.ca, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cb, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false), !noalias !4259
  %i.cc = add nuw nsw i64 %i.bm, 1
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4254
  %i.cd = icmp eq i64 %.sroa.33.0, 0
  br i1 %i.cd, label %.loopexit66, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i
  %.not.i.us.peel.i.i.i.i = icmp eq ptr %.sroa.11.0, null
  %i.ce = icmp eq ptr %.sroa.11.0, %.sroa.20.0
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 32 ; 2 uses
  %or.cond63 = select i1 %.not.i.us.peel.i.i.i.i, i1 true, i1 %i.ce ; 2 uses
  br i1 %i.aw, label %.split.us.preheader.i.i.i.i, label %.split.i.i.i.i

.split.us.preheader.i.i.i.i:                      ; preds = %bb.l
  br i1 %or.cond63, label %select.unfold.us.peel.i.i.i.i, label %bb.m

select.unfold.us.peel.i.i.i.i:                    ; preds = %.split.us.preheader.i.i.i.i
  %.not4.us.peel.i.i.i.i = icmp eq ptr %.sroa.539.0, null
  br i1 %.not4.us.peel.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, label %.sink.split.i.us.peel26.i.i.i.i

.sink.split.i.us.peel26.i.i.i.i:                  ; preds = %select.unfold.us.peel.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.539.0, i64 %.idx.i.i.i.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.539.0, i64 32
  br i1 %i.bk, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, label %bb.m

.split.i.i.i.i:                                   ; preds = %bb.l
  br i1 %or.cond63, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, label %bb.m

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i: ; preds = %.split.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i, %select.unfold.us.peel.i.i.i.i
  %.sroa.20.2 = phi ptr [ %.sroa.20.0, %select.unfold.us.peel.i.i.i.i ], [ %i.cg, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.20.0, %.split.i.i.i.i ]
  %.sroa.539.2 = phi ptr [ null, %select.unfold.us.peel.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.539.0, %.split.i.i.i.i ]
  %.not.i6.i.i.i.i = icmp eq ptr %.sroa.25.0, null
  br i1 %.not.i6.i.i.i.i, label %.loopexit66, label %.sink.split.i7.i.i.i.i

.sink.split.i7.i.i.i.i:                           ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.30.0.copyload) ]
  %i.ci = icmp eq ptr %.sroa.25.0, %.sroa.30.0.copyload
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.25.0, i64 32
  br i1 %i.ci, label %.loopexit66, label %bb.m

bb.m:                                             ; preds = %.split.i.i.i.i, %.split.us.preheader.i.i.i.i, %.sink.split.i7.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i
  %.sroa.25.1 = phi ptr [ %i.cj, %.sink.split.i7.i.i.i.i ], [ %.sroa.25.0, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.25.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.25.0, %.split.i.i.i.i ]
  %.sroa.20.1 = phi ptr [ %.sroa.20.2, %.sink.split.i7.i.i.i.i ], [ %i.cg, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.20.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.20.0, %.split.i.i.i.i ]
  %.sroa.11.1 = phi ptr [ null, %.sink.split.i7.i.i.i.i ], [ %i.ch, %.sink.split.i.us.peel26.i.i.i.i ], [ %i.cf, %.split.us.preheader.i.i.i.i ], [ %i.cf, %.split.i.i.i.i ]
  %.sroa.539.1 = phi ptr [ %.sroa.539.2, %.sink.split.i7.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.539.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.539.0, %.split.i.i.i.i ]
  %.sroa.0.0.i.ph.i = phi ptr [ %.sroa.25.0, %.sink.split.i7.i.i.i.i ], [ %.sroa.539.0, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.11.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.11.0, %.split.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4260
  store ptr %.sroa.0.0.i.ph.i, ptr %i.j, align 8, !noalias !4261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4261
  store i8 1, ptr %i.i, align 8, !noalias !4261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4261
  store ptr %i.j, ptr %i.g, align 8, !noalias !4261
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB6_7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !4261
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @9, ptr noundef nonnull %i.g)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4261
  %i.ck = load i32, ptr %.sroa.38.0.copyload, align 4, !noalias !4261, !noundef !8
  %i.cl = load ptr, ptr %i.j, align 8, !noalias !4261, !nonnull !8, !align !38, !noundef !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i32 %i.ck, ptr %i.bl, align 8, !noalias !4261
  %i.cn = load <2 x i32>, ptr %i.cm, align 8, !noalias !4262
  store <2 x i32> %i.cn, ptr %i.f, align 8, !noalias !4261
  invoke void @_RINvMs_CscA5P7HRgTCP_15ide_diagnosticsNtB5_10Diagnostic3newNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEB5_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.f)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4260
  %.pr52 = load i64, ptr %i.l, align 8, !noalias !4254
  %.not.i.i = icmp eq i64 %.pr52, -1
  br i1 %.not.i.i, label %.loopexit66, label %.lr.ph.i.i

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEBD_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.k) #25
          to label %.body unwind label %bb.o, !noalias !4259

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i, %bb.k
  %..i.sink.i.i.i.i = phi i64 [ %i.bz, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i ], [ 1, %bb.k ]
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.bm, i64 noundef %..i.sink.i.i.i.i, i64 noundef 8, i64 noundef 112)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i unwind label %bb.n, !noalias !4259

bb.o:                                             ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !4259
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc8, %bb.m, %.noexc34, %bb.j
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.n ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %bb.q unwind label %bb.p

.loopexit66:                                      ; preds = %.noexc7, %.sink.split.i7.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i, %.sink.split.i7.i.i.i.i23, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, %bb.h, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br label %bb.d

bb.p:                                             ; preds = %.body, %bb.e
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.an, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtB2f_5chain5ChainINtNtB2j_6option8IntoIterNtNtB6_6string6StringEINtNtB2f_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB6B_s2_0EE9from_iterB6H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4275 {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 4 uses
  %i.b = alloca [200 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [152 x i8], align 8               ; 8 uses
  %i.e = alloca [200 x i8], align 8               ; 4 uses
  %i.f = alloca [200 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtB7_5chain5ChainINtNtBb_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB7_10filter_map9FilterMapINtNtNtB2v_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB4U_s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB50_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %i.f, ptr noalias nofree noundef align 8 dereferenceable(152) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !16, !noundef !8
  %.not = icmp eq i64 %i.i, 2
  br i1 %.not, label %bb.d, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr noundef nonnull align 8 dereferenceable(200) %i.f, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 200)
          to label %.noexc unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtBG_5chain5ChainINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtBG_10filter_map9FilterMapINtNtNtB2I_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB57_s2_0EEB5d_(ptr noalias nofree noundef align 8 dereferenceable(152) %1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtB1W_5chain5ChainINtNtB20_6option8IntoIterNtNtB6_6string6StringEINtNtB1W_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB6i_s2_0EE11spec_extendB6o_.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.g, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists6AssistECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(200) %i.e) #25
          to label %bb.t unwind label %bb.r

.noexc:                                           ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i
  %i.m = load i64, ptr %i.c, align 8, !range !26, !noundef !8
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !39, !noundef !8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #29
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8 ; 2 uses
end_hunk_1
