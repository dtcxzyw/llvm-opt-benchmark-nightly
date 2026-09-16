Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvNtCs6u1mgJOKDyY_13rust_analyzer12global_state14url_to_file_id:bb.a
; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = tail call noundef nonnull ptr @_RINvMNtCsdRkQxkTxnTp_6anyhow5errorNtB5_5Error3msgReECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.f = call noundef nonnull ptr @_RINvMNtCsdRkQxkTxnTp_6anyhow5errorNtB5_5Error3msgNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 461168601842738791) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 461168601842738791) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw [20 x i8], ptr %3, i64 %4 ; 2 uses
  %i.e = getelementptr inbounds nuw [20 x i8], ptr %1, i64 %2
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEBW_EINtB5_7ZipImplBW_BW_E3newCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %i.e)
  %.sroa.027.0.copyload = load ptr, ptr %i.c, align 8 ; 2 uses
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.429.0.copyload = load ptr, ptr %.sroa.429.0..sroa_idx, align 8 ; 2 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx32, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = icmp ult i64 %.sroa.531.0.copyload, %.sroa.6.0.copyload
  br i1 %i.f, label %.lr.ph.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit.thread

.lr.ph.i.i.i:                                     ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.027.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.429.0.copyload) ]
  %i.g = sub nuw i64 %.sroa.6.0.copyload, %.sroa.531.0.copyload ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB6b_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ai, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB6b_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i ] ; 6 uses
  %i.h = phi i64 [ %.sroa.531.0.copyload, %.lr.ph.i.i.i ], [ %i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB6b_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i ] ; 3 uses
  %i.i = add nuw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [20 x i8], ptr %.sroa.027.0.copyload, i64 %i.h ; 5 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.sroa.429.0.copyload, i64 %i.h ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5407)
  %i.l = load i32, ptr %i.j, align 4, !alias.scope !5406, !noalias !5408, !noundef !5
  %i.m = load i32, ptr %i.k, align 4, !alias.scope !5407, !noalias !5409, !noundef !5
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = load i32, ptr %i.o, align 4, !alias.scope !5406, !noalias !5408, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !5407, !noalias !5409, !noundef !5
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !5406, !noalias !5408, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !5407, !noalias !5409, !noundef !5
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !5406, !noalias !5408, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !5407, !noalias !5409, !noundef !5
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0B7_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit

_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0B7_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !5406, !noalias !5408, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !5407, !noalias !5409, !noundef !5
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB6b_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB6b_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i: ; preds = %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0B7_.exit.i.i.i.i
  %i.ai = add nuw i64 %.sroa.01.020.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond.not.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit, label %bb.b

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0B7_.exit.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB6b_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %i.g, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EB6b_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i ], [ %.sroa.01.020.i.i.i, %bb.b ], [ %.sroa.01.020.i.i.i, %bb.c ], [ %.sroa.01.020.i.i.i, %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0B7_.exit.i.i.i.i ], [ %.sroa.01.020.i.i.i, %bb.e ], [ %.sroa.01.020.i.i.i, %bb.d ] ; 5 uses
  %.not.i = icmp ugt i64 %.sroa.0.1.i.i, %2
  br i1 %.not.i, label %bb.f, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit, !prof !5410

bb.f:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @205, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #46, !noalias !5411
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokens0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4i_5count0EB3f_.exit
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %1, i64 %.sroa.0.1.i.i
  %i.ak = sub nuw nsw i64 %2, %.sroa.0.1.i.i
  %.not.i9 = icmp ugt i64 %.sroa.0.1.i.i, %4
  br i1 %.not.i9, label %bb.g, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit.thread, !prof !5412

bb.g:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @205, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #46, !noalias !5413
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %bb.a, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit
  %i.al = phi i64 [ %i.ak, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %2, %bb.a ] ; 4 uses
  %i.am = phi ptr [ %i.aj, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.1.i.i6063 = phi i64 [ %.sroa.0.1.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit ], [ 0, %bb.a ] ; 4 uses
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %3, i64 %.sroa.0.1.i.i6063 ; 3 uses
  %i.ao = sub nuw nsw i64 %4, %.sroa.0.1.i.i6063  ; 2 uses
  %i.ap = icmp samesign eq i64 %.sroa.0.1.i.i6063, %4
  br i1 %i.ap, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit21, label %.lr.ph.i.i.i15.preheader

.lr.ph.i.i.i15.preheader:                         ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit.thread
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %i.al
  br label %.lr.ph.i.i.i15

.lr.ph.i.i.i15:                                   ; preds = %.lr.ph.i.i.i15.preheader, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i
  %i.ar = phi ptr [ %i.av, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i ], [ %i.aq, %.lr.ph.i.i.i15.preheader ] ; 6 uses
  %.sroa.01.022.i.i.i = phi i64 [ %i.bt, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i15.preheader ] ; 6 uses
  %i.as = phi ptr [ %i.at, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i ], [ %i.d, %.lr.ph.i.i.i15.preheader ] ; 5 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -20 ; 3 uses
  %i.au = icmp eq ptr %i.am, %i.ar
  br i1 %i.au, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit21, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i15
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 -20 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5415)
  %i.aw = load i32, ptr %i.at, align 4, !alias.scope !5414, !noalias !5416, !noundef !5
  %i.ax = load i32, ptr %i.av, align 4, !alias.scope !5415, !noalias !5417, !noundef !5
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds i8, ptr %i.as, i64 -16
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !5414, !noalias !5416, !noundef !5
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !5415, !noalias !5417, !noundef !5
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.j, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 -12
  %i.bf = load i32, ptr %i.be, align 4, !alias.scope !5414, !noalias !5416, !noundef !5
  %i.bg = getelementptr inbounds i8, ptr %i.ar, i64 -12
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !5415, !noalias !5417, !noundef !5
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.k, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !5414, !noalias !5416, !noundef !5
  %i.bl = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !5415, !noalias !5417, !noundef !5
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0B7_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit

_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0B7_.exit.i.i.i.i: ; preds = %bb.k
  %i.bo = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !5414, !noalias !5416, !noundef !5
  %i.bq = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !5415, !noalias !5417, !noundef !5
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit

_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i: ; preds = %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0B7_.exit.i.i.i.i
  %i.bt = add nuw nsw i64 %.sroa.01.022.i.i.i, 1  ; 2 uses
  %i.bu = icmp eq ptr %i.an, %i.at
  br i1 %i.bu, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit, label %.lr.ph.i.i.i15

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0B7_.exit.i.i.i.i, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i
  %.sroa.0.1.i.i16 = phi i64 [ %.sroa.01.022.i.i.i, %bb.j ], [ %i.bt, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0NCINvMB3q_B3n_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterB27_EEB6d_EB46_EB1i_5count0E0E0B4e_.exit.i.i.i ], [ %.sroa.01.022.i.i.i, %bb.h ], [ %.sroa.01.022.i.i.i, %bb.i ], [ %.sroa.01.022.i.i.i, %_RNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0B7_.exit.i.i.i.i ], [ %.sroa.01.022.i.i.i, %bb.k ] ; 2 uses
  %.not.i17 = icmp ugt i64 %.sroa.0.1.i.i16, %i.al
  br i1 %.not.i17, label %bb.l, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit21, !prof !5418

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @205, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #46, !noalias !5419
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit21: ; preds = %.lr.ph.i.i.i15, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit.thread, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit
  %.sroa.0.1.i.i1671 = phi i64 [ %.sroa.0.1.i.i16, %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEB1r_ENCNvNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp15semantic_tokens11diff_tokenss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4B_5count0EB3w_.exit ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit.thread ], [ %i.al, %.lr.ph.i.i.i15 ] ; 3 uses
  %i.bv = sub nuw nsw i64 %i.al, %.sroa.0.1.i.i1671 ; 2 uses
  %i.bw = sub nuw nsw i64 %i.ao, %.sroa.0.1.i.i1671 ; 2 uses
  %.not.i22 = icmp ugt i64 %.sroa.0.1.i.i1671, %i.ao
  br i1 %.not.i22, label %bb.m, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit26, !prof !16

bb.m:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit21
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @205, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @350) #46, !noalias !5420
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit26: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit21
  %i.bx = or i64 %i.bv, %i.bw
  %or.cond = icmp eq i64 %i.bx, 0
  br i1 %or.cond, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %i.an, i64 %i.bw
  store i64 0, ptr %i.a, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.an, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.by, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB1B_6copied6CopiedINtNtNtB1F_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticTokenEEAmj5_NvYB4s_INtNtB1F_7convert4FromB3g_E4fromEE9from_iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34
  %i.bz = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 16, 4649) 32, i64 noundef 8) #34 ; 5 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.o, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit, !prof !16

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #43
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures13SemanticToken8split_atCs6u1mgJOKDyY_13rust_analyzer.exit26
  store i64 0, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cc, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit, %bb.p
  ret void

bb.r:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecmEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #41
          to label %bb.t unwind label %bb.s

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.n
  %i.ce = trunc i64 %.sroa.0.1.i.i6063 to i32
  %i.cf = mul i32 %i.ce, 5
  %i.cg = trunc i64 %i.bv to i32
  %i.ch = mul i32 %i.cg, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 %i.cf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  store i32 %i.ch, ptr %.sroa.5.0..sroa_idx, align 4
  store i64 1, ptr %0, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.cj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.t:                                             ; preds = %bb.r
  resume { ptr, i32 } %i.cd
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck(ptr noalias nofree noundef nonnull align 8 dereferenceable(1632) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 8 uses
  %i.b = alloca [248 x i8], align 8               ; 6 uses
  %i.c = alloca [216 x i8], align 8               ; 6 uses
  %i.d = alloca [216 x i8], align 8               ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.i = icmp ult i64 %i.h, 3
  br i1 %i.i, label %bb.b, label %.thread

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCsaWIbZW7RmAr_11parking_lot10raw_rwlock9RawRwLockTNtCs4sl5YdnrCxp_3vfs3VfsINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtB2l_6FileIdNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index11LineEndingsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEEB3T_.exit
  br i1 %.sroa.013.2, label %.body.thread, label %common.resume

.split.thread:                                    ; preds = %bb.r, %bb.c, %bb.g, %bb.d
  %lpad.thr_comm58 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  store i64 2, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.j, align 8
  br label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.k, label %bb.c [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !43

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck10___CALLSITE)
          to label %bb.e unwind label %.split.thread ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.e
  %.sroa.06.0 = phi i8 [ %i.l, %bb.e ], [ %i.k, %bb.b ], [ %i.k, %bb.b ]
  %i.m = load ptr, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5
  %i.n = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, i8 noundef %.sroa.06.0)
          to label %bb.f unwind label %.split.thread

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.thread, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flycheck10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.p, ptr %i.q, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.h unwind label %.split.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.pr = load i64, ptr %i.e, align 8, !alias.scope !5432, !noalias !5433
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %.noexc, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %.noexc unwind label %bb.j, !noalias !5433

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #41
          to label %.body.thread unwind label %bb.k, !noalias !5433

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !5433
  unreachable

.noexc:                                           ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 7 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8 ; 4 uses
  %i.y = and i64 %i.x, 8
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ugt i64 %i.x, -17
  %or.cond.i = or i1 %i.aa, %i.z
  br i1 %or.cond.i, label %_RNvMs8_NtCsaWIbZW7RmAr_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs8_NtCsaWIbZW7RmAr_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit, !prof !51

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCsaWIbZW7RmAr_11parking_lot10raw_rwlock9RawRwLockTNtCs4sl5YdnrCxp_3vfs3VfsINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtB2l_6FileIdNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index11LineEndingsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEEB3T_.exit: ; preds = %bb.ad, %bb.z, %.body25, %bb.n, %bb.o, %bb.ak, %bb.l
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.ak ], [ %lpad.thr_comm.split-lp, %.body25 ], [ %i.ab, %bb.l ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ %i.bh, %bb.z ], [ %i.bm, %bb.ad ] ; 2 uses
  %.sroa.013.2 = phi i1 [ true, %bb.ak ], [ false, %.body25 ], [ true, %bb.l ], [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.z ], [ false, %bb.ad ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #41
          to label %.body unwind label %bb.al

bb.l:                                             ; preds = %bb.q, %bb.s, %_RNvMs8_NtCsaWIbZW7RmAr_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCsaWIbZW7RmAr_11parking_lot10raw_rwlock9RawRwLockTNtCs4sl5YdnrCxp_3vfs3VfsINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtB2l_6FileIdNtNtCs6u1mgJOKDyY_13rust_analyzer10line_index11LineEndingsNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEEB3T_.exit

_RNvMs8_NtCsaWIbZW7RmAr_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %.noexc
  %i.ac = add nuw i64 %i.x, 16
  %i.ad = cmpxchg weak ptr %i.w, i64 %i.x, i64 %i.ac acquire monotonic, align 8
end_hunk_0
