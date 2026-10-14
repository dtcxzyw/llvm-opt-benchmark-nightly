Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.02?download=true
inline.NumInlined: 6474
inline.NumDeleted: 3263
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBY_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBY_3str4iter5CharsNCNvMsP_B2d_NtB2d_18StringLiteralValue5chars0EB36_ENtNtNtBW_6traits8iterator8Iterator4findNCINvNvXs0_NtBU_10skip_whileINtB57_9SkipWhileppEB4j_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixBC_Es_0E0EB6d_:bb.a
  store ptr %i.d, ptr %i.b, align 8, !noalias !5552
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %bb.u
  %i.es = phi ptr [ %i.gb, %bb.y ], [ %.val9.i.i.i.i.i.i.i, %bb.u ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5553)
  call void @llvm.experimental.noalias.scope.decl(metadata !5554)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.es, %i.er
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralNtNtNtBa_3str4iter5CharsuINtNtNtBa_3ops12control_flow11ControlFlowcENCNvMsP_B12_NtB12_18StringLiteralValue5chars0NCINvNvMsg_NtB6_7flattenINtB3U_13FlattenCompatppE13iter_try_fold7flattenB1U_uB2j_NCINvNvXsi_B3U_B47_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1U_uB2j_NCINvNvB5l_4find5checkcNCINvNvXs0_NtB6_10skip_whileINtB6R_9SkipWhileppEB5l_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtB3U_7FlatMapINtNtNtBa_5slice4iter4IterB10_EB1U_B30_EB1U_EEs_0E0E0E0E0E0B7X_.exit.i.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1 ; 4 uses
  store ptr %i.et, ptr %i.cu, align 8, !alias.scope !5555, !noalias !5556
  %i.eu = load i8, ptr %i.es, align 1, !noalias !5557, !noundef !12 ; 5 uses
  %i.ev = icmp sgt i8 %i.eu, -1
  br i1 %i.ev, label %bb.x, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.ew = and i8 %i.eu, 31
  %i.ex = zext nneg i8 %i.ew to i32               ; 3 uses
  %i.ey = icmp ne ptr %i.et, %i.er
  call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 2 ; 4 uses
  store ptr %i.ez, ptr %i.cu, align 8, !alias.scope !5558, !noalias !5556
  %i.fa = load i8, ptr %i.et, align 1, !noalias !5557, !noundef !12
  %i.fb = shl nuw nsw i32 %i.ex, 6
  %i.fc = and i8 %i.fa, 63
  %i.fd = zext nneg i8 %i.fc to i32               ; 2 uses
  %i.fe = or disjoint i32 %i.fb, %i.fd
  %i.ff = icmp samesign ugt i8 %i.eu, -33
  br i1 %i.ff, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fg = zext nneg i8 %i.eu to i32
  br label %bb.y

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fh = icmp ne ptr %i.ez, %i.er
  call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 3 ; 4 uses
  store ptr %i.fi, ptr %i.cu, align 8, !alias.scope !5559, !noalias !5556
  %i.fj = load i8, ptr %i.ez, align 1, !noalias !5557, !noundef !12
  %i.fk = shl nuw nsw i32 %i.fd, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fk, %i.fm            ; 2 uses
  %i.fo = shl nuw nsw i32 %i.ex, 12
  %i.fp = or disjoint i32 %i.fn, %i.fo
  %i.fq = icmp samesign ugt i8 %i.eu, -17
  br i1 %i.fq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fr = icmp ne ptr %i.fi, %i.er
  call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 2 uses
  store ptr %i.fs, ptr %i.cu, align 8, !alias.scope !5560, !noalias !5556
  %i.ft = load i8, ptr %i.fi, align 1, !noalias !5557, !noundef !12
  %i.fu = shl nuw nsw i32 %i.ex, 18
  %i.fv = and i32 %i.fu, 1835008
  %i.fw = shl nuw nsw i32 %i.fn, 6
  %i.fx = and i8 %i.ft, 63
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = or disjoint i32 %i.fz, %i.fv
  br label %bb.y

bb.y:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.x, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gb = phi ptr [ %i.fi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ez, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.et, %bb.x ]
  %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ga, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fe, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fg, %bb.x ]
  %i.gc = call noundef i32 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkcNCINvNvXs0_NtNtB11_8adapters10skip_whileINtB1X_9SkipWhileppEBV_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtNtB1Z_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBb_3str4iter5CharsNCNvMsP_B6t_NtB6t_18StringLiteralValue5chars0EB7m_EEs_0E0E0INtB7_5FnMutTucEE8call_mutB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i), !noalias !5561 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.gc, -1
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.z

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralNtNtNtBa_3str4iter5CharsuINtNtNtBa_3ops12control_flow11ControlFlowcENCNvMsP_B12_NtB12_18StringLiteralValue5chars0NCINvNvMsg_NtB6_7flattenINtB3U_13FlattenCompatppE13iter_try_fold7flattenB1U_uB2j_NCINvNvXsi_B3U_B47_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1U_uB2j_NCINvNvB5l_4find5checkcNCINvNvXs0_NtB6_10skip_whileINtB6R_9SkipWhileppEB5l_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtB3U_7FlatMapINtNtNtBa_5slice4iter4IterB10_EB1U_B30_EB1U_EEs_0E0E0E0E0E0B7X_.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5551
  %i.gd = icmp eq ptr %i.ep, %i.el
  br i1 %i.gd, label %.loopexit.i.i.i.i, label %bb.u

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5551
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBc_3str4iter5CharsNCNvMsP_B1r_NtB1r_18StringLiteralValue5chars0ENtNtNtBa_6traits8iterator8Iterator4findNCINvNvXs0_NtB8_10skip_whileINtB4g_9SkipWhileppEB3s_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherB3_B2k_EEs_0E0EB5m_.exit

.loopexit.i.i.i.i:                                ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralNtNtNtBa_3str4iter5CharsuINtNtNtBa_3ops12control_flow11ControlFlowcENCNvMsP_B12_NtB12_18StringLiteralValue5chars0NCINvNvMsg_NtB6_7flattenINtB3U_13FlattenCompatppE13iter_try_fold7flattenB1U_uB2j_NCINvNvXsi_B3U_B47_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1U_uB2j_NCINvNvB5l_4find5checkcNCINvNvXs0_NtB6_10skip_whileINtB6R_9SkipWhileppEB5l_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtB3U_7FlatMapINtNtNtBa_5slice4iter4IterB10_EB1U_B30_EB1U_EEs_0E0E0E0E0E0B7X_.exit.i.i.i.i.i.i.i, %bb.t, %bb.s
  store ptr null, ptr %i.cu, align 8, !alias.scope !5522, !noalias !5523
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !5522, !noalias !5523, !noundef !12 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not11.i.i.i.i, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5562)
  call void @llvm.experimental.noalias.scope.decl(metadata !5563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5564
  store ptr %i.d, ptr %i.a, align 8, !noalias !5565
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !5566, !noalias !5567, !nonnull !12, !noundef !12 ; 4 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %bb.aa
  %i.gi = phi ptr [ %i.hr, %bb.ae ], [ %i.gf, %bb.aa ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5568)
  call void @llvm.experimental.noalias.scope.decl(metadata !5569)
  %.not.i.i.i14.i.i.i.i = icmp eq ptr %i.gi, %i.gh
  br i1 %.not.i.i.i14.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter5CharsuINtNtNtBg_3ops12control_flow11ControlFlowcENCINvNvB1j_4find5checkcNCINvNvXs0_NtBc_10skip_whileINtB3M_9SkipWhileppEB1j_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtBa_7FlatMapINtNtNtBg_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralEB28_NCNvMsP_B7W_NtB7W_18StringLiteralValue5chars0EB28_EEs_0E0E0E0B4S_.exit21.thread.i.i.i.i, label %bb.ac

_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter5CharsuINtNtNtBg_3ops12control_flow11ControlFlowcENCINvNvB1j_4find5checkcNCINvNvXs0_NtBc_10skip_whileINtB3M_9SkipWhileppEB1j_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtBa_7FlatMapINtNtNtBg_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralEB28_NCNvMsP_B7W_NtB7W_18StringLiteralValue5chars0EB28_EEs_0E0E0E0B4S_.exit21.thread.i.i.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5564
  br label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1 ; 4 uses
  store ptr %i.gj, ptr %i.ge, align 8, !alias.scope !5566, !noalias !5567
  %i.gk = load i8, ptr %i.gi, align 1, !noalias !5570, !noundef !12 ; 5 uses
  %i.gl = icmp sgt i8 %i.gk, -1
  br i1 %i.gl, label %bb.ad, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i15.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i15.i.i.i.i: ; preds = %bb.ac
  %i.gm = and i8 %i.gk, 31
  %i.gn = zext nneg i8 %i.gm to i32               ; 3 uses
  %i.go = icmp ne ptr %i.gj, %i.gh
  call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 2 ; 4 uses
  store ptr %i.gp, ptr %i.ge, align 8, !alias.scope !5571, !noalias !5567
  %i.gq = load i8, ptr %i.gj, align 1, !noalias !5570, !noundef !12
  %i.gr = shl nuw nsw i32 %i.gn, 6
  %i.gs = and i8 %i.gq, 63
  %i.gt = zext nneg i8 %i.gs to i32               ; 2 uses
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = icmp samesign ugt i8 %i.gk, -33
  br i1 %i.gv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i19.i.i.i.i, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gw = zext nneg i8 %i.gk to i32
  br label %bb.ae

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i19.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i15.i.i.i.i
  %i.gx = icmp ne ptr %i.gp, %i.gh
  call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 3 ; 4 uses
  store ptr %i.gy, ptr %i.ge, align 8, !alias.scope !5572, !noalias !5567
  %i.gz = load i8, ptr %i.gp, align 1, !noalias !5570, !noundef !12
  %i.ha = shl nuw nsw i32 %i.gt, 6
  %i.hb = and i8 %i.gz, 63
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = or disjoint i32 %i.ha, %i.hc            ; 2 uses
  %i.he = shl nuw nsw i32 %i.gn, 12
  %i.hf = or disjoint i32 %i.hd, %i.he
  %i.hg = icmp samesign ugt i8 %i.gk, -17
  br i1 %i.hg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i20.i.i.i.i, label %bb.ae

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i20.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i19.i.i.i.i
  %i.hh = icmp ne ptr %i.gy, %i.gh
  call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  store ptr %i.hi, ptr %i.ge, align 8, !alias.scope !5573, !noalias !5567
  %i.hj = load i8, ptr %i.gy, align 1, !noalias !5570, !noundef !12
  %i.hk = shl nuw nsw i32 %i.gn, 18
  %i.hl = and i32 %i.hk, 1835008
  %i.hm = shl nuw nsw i32 %i.hd, 6
  %i.hn = and i8 %i.hj, 63
  %i.ho = zext nneg i8 %i.hn to i32
  %i.hp = or disjoint i32 %i.hm, %i.ho
  %i.hq = or disjoint i32 %i.hp, %i.hl
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i20.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i19.i.i.i.i, %bb.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i15.i.i.i.i
  %i.hr = phi ptr [ %i.gy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i19.i.i.i.i ], [ %i.hi, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i20.i.i.i.i ], [ %i.gp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i15.i.i.i.i ], [ %i.gj, %bb.ad ]
  %spec.select.i.ph.i.i16.i.i.i.i = phi i32 [ %i.hf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i19.i.i.i.i ], [ %i.hq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i20.i.i.i.i ], [ %i.gu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i15.i.i.i.i ], [ %i.gw, %bb.ad ]
  %i.hs = call noundef i32 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator4find5checkcNCINvNvXs0_NtNtB11_8adapters10skip_whileINtB1X_9SkipWhileppEBV_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtNtB1Z_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBb_3str4iter5CharsNCNvMsP_B6t_NtB6t_18StringLiteralValue5chars0EB7m_EEs_0E0E0INtB7_5FnMutTucEE8call_mutB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %spec.select.i.ph.i.i16.i.i.i.i), !noalias !5574 ; 2 uses
  %.not7.i.i17.i.i.i.i = icmp eq i32 %i.hs, -1
  br i1 %.not7.i.i17.i.i.i.i, label %bb.ab, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5564
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBc_3str4iter5CharsNCNvMsP_B1r_NtB1r_18StringLiteralValue5chars0ENtNtNtBa_6traits8iterator8Iterator4findNCINvNvXs0_NtB8_10skip_whileINtB4g_9SkipWhileppEB3s_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherB3_B2k_EEs_0E0EB5m_.exit

bb.ag:                                            ; preds = %_RNCINvNvXsi_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenNtNtNtBg_3str4iter5CharsuINtNtNtBg_3ops12control_flow11ControlFlowcENCINvNvB1j_4find5checkcNCINvNvXs0_NtBc_10skip_whileINtB3M_9SkipWhileppEB1j_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtBa_7FlatMapINtNtNtBg_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralEB28_NCNvMsP_B7W_NtB7W_18StringLiteralValue5chars0EB28_EEs_0E0E0E0B4S_.exit21.thread.i.i.i.i, %.loopexit.i.i.i.i
  store ptr null, ptr %i.ge, align 8, !alias.scope !5522, !noalias !5523
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBc_3str4iter5CharsNCNvMsP_B1r_NtB1r_18StringLiteralValue5chars0ENtNtNtBa_6traits8iterator8Iterator4findNCINvNvXs0_NtB8_10skip_whileINtB4g_9SkipWhileppEB3s_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherB3_B2k_EEs_0E0EB5m_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBc_3str4iter5CharsNCNvMsP_B1r_NtB1r_18StringLiteralValue5chars0ENtNtNtBa_6traits8iterator8Iterator4findNCINvNvXs0_NtB8_10skip_whileINtB4g_9SkipWhileppEB3s_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherB3_B2k_EEs_0E0EB5m_.exit: ; preds = %bb.r, %bb.z, %bb.af, %bb.ag
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.ei, %bb.r ], [ %i.gc, %bb.z ], [ %i.hs, %bb.af ], [ -1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5520
  br label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtBN_8adapters10skip_whileINtB1C_9SkipWhileppEBH_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtNtB1E_7flatten7FlatMapINtNtNtB9_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralEB3_NCNvMsP_B67_NtB67_18StringLiteralValue5chars0EB3_EEs_0E0EB2S_.exit

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator4findNCINvNvXs0_NtNtBN_8adapters10skip_whileINtB1C_9SkipWhileppEBH_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtNtB1E_7flatten7FlatMapINtNtNtB9_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralEB3_NCNvMsP_B67_NtB67_18StringLiteralValue5chars0EB3_EEs_0E0EB2S_.exit: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkcNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB1o_9SkipWhileppEB6_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtNtB1q_7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBe_3str4iter5CharsNCNvMsP_B5T_NtB5T_18StringLiteralValue5chars0EB6M_EEs_0E0E0B2E_.exit.i.i, %.split.us.i.i, %bb.b, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBc_3str4iter5CharsNCNvMsP_B1r_NtB1r_18StringLiteralValue5chars0ENtNtNtBa_6traits8iterator8Iterator4findNCINvNvXs0_NtB8_10skip_whileINtB4g_9SkipWhileppEB3s_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherB3_B2k_EEs_0E0EB5m_.exit
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.i.i.i.i, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBc_3str4iter5CharsNCNvMsP_B1r_NtB1r_18StringLiteralValue5chars0ENtNtNtBa_6traits8iterator8Iterator4findNCINvNvXs0_NtB8_10skip_whileINtB4g_9SkipWhileppEB3s_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherB3_B2k_EEs_0E0EB5m_.exit ], [ %.us-phi.i.i, %.split.us.i.i ], [ -1, %bb.b ], [ -1, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkcNCINvNvXs0_NtNtBc_8adapters10skip_whileINtB1o_9SkipWhileppEB6_4next5checkcNCINvNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_bandit5rules24suspicious_function_call19suspicious_function15has_http_prefixINtCsddXFpJ32JCa_6either6EitherINtNtB1q_7flatten7FlatMapINtNtNtBe_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtBe_3str4iter5CharsNCNvMsP_B5T_NtB5T_18StringLiteralValue5chars0EB6M_EEs_0E0E0B2E_.exit.i.i ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_8Iterator4folduNCINvNvB1f_8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB28_3VechE14extend_trustedBQ_E0E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5599)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !5599, !noalias !5598 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !5599, !noalias !5598 ; 8 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !5599, !noalias !5598 ; 8 uses
  %.sroa.6.0.copyload.i6 = ptrtoaddr ptr %.sroa.6.0.copyload.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5600)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5601, !noalias !5602, !nonnull !12, !noundef !12 ; 3 uses
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !5601, !noalias !5602 ; 8 uses
  %.promoted.i.i7 = ptrtoaddr ptr %.promoted.i.i to i64 ; 2 uses
  %.not9.i.i = icmp eq ptr %.promoted.i.i, %i.b
  br i1 %.not9.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2v_3VechE14extend_trustedBQ_E0E0ECsEhZmuQNqkz_11ruff_linter.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.d = sub i64 %i.c, %.promoted.i.i7            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.4.0.copyload.i, %.sroa.6.0.copyload.i6
  %i.f = sub i64 %.promoted.i.i7, %i.e
  %diff.check = icmp ugt i64 %i.f, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.4.0.copyload.i, %n.vec    ; 2 uses
  %i.i = getelementptr i8, ptr %.promoted.i.i, i64 %n.vec ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i, i64 %index ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !5604
  %wide.load9 = load <16 x i8>, ptr %i.k, align 1, !noalias !5604
  %i.l = getelementptr i8, ptr %i.j, i64 %index   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <16 x i8> %wide.load, ptr %i.l, align 1, !noalias !5605
  store <16 x i8> %wide.load9, ptr %i.m, align 1, !noalias !5605
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !5591

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !5606

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.d, -8                     ; 4 uses
  %i.o = add i64 %.sroa.4.0.copyload.i, %n.vec11  ; 2 uses
  %i.p = getelementptr i8, ptr %.promoted.i.i, i64 %n.vec11 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep13 = getelementptr i8, ptr %.promoted.i.i, i64 %index12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !noalias !5604
  %i.r = getelementptr i8, ptr %i.q, i64 %index12
  store <8 x i8> %wide.load14, ptr %i.r, align 1, !noalias !5605
  %index.next15 = add nuw i64 %index12, 8         ; 2 uses
  %i.s = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5592

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.d, %n.vec11
  br i1 %cmp.n16, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload.i, %iter.check ], [ %.sroa.4.0.copyload.i, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.ph19 = phi ptr [ %.promoted.i.i, %iter.check ], [ %.promoted.i.i, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 3 uses
  %.ph1922 = ptrtoaddr ptr %.ph19 to i64          ; 2 uses
  %i.t = sub i64 %i.c, %.ph1922
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %i.u = phi i64 [ %i.z, %.lr.ph.i.i.prol ], [ %.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i.prol ], [ %.ph19, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.v, align 1, !noalias !5604, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.u
  store i8 %i.x, ptr %i.y, align 1, !noalias !5605
  %i.z = add i64 %i.u, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !5593

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa21.unr.a = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.w, %.lr.ph.i.i.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.prol ]
  %.unr23 = phi ptr [ %.ph19, %.lr.ph.i.i.preheader ], [ %i.w, %.lr.ph.i.i.prol ]
  %i.aa = sub i64 %.ph1922, %i.c
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ac = phi i64 [ %i.at, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.ad = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.unr23, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ad, align 1, !noalias !5604, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  store i8 %i.af, ptr %i.ag, align 1, !noalias !5605
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ai = load i8, ptr %i.ae, align 1, !noalias !5607, !noundef !12
  %i.aj = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  %i.ak = getelementptr i8, ptr %i.aj, i64 1
  store i8 %i.ai, ptr %i.ak, align 1, !noalias !5605
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.am = load i8, ptr %i.ah, align 1, !noalias !5608, !noundef !12
  %i.an = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  store i8 %i.am, ptr %i.ao, align 1, !noalias !5605
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %i.aq = load i8, ptr %i.al, align 1, !noalias !5609, !noundef !12
  %i.ar = getelementptr i8, ptr %.sroa.6.0.copyload.i, i64 %i.ac
  %i.as = getelementptr i8, ptr %i.ar, i64 3
  store i8 %i.aq, ptr %i.as, align 1, !noalias !5605
  %i.at = add i64 %i.ac, 4                        ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !5597

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa5 = phi ptr [ %i.p, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa21.unr.a, %.lr.ph.i.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i ]
  %.lcssa = phi i64 [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa20.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.at, %.lr.ph.i.i ]
  store ptr %.lcssa5, ptr %0, align 8, !alias.scope !5601, !noalias !5602
  br label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2v_3VechE14extend_trustedBQ_E0E0ECsEhZmuQNqkz_11ruff_linter.exit

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQNtNtNtBc_3str4iter5BytesNtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2v_3VechE14extend_trustedBQ_E0E0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %._crit_edge.i.i
  %.val6.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val6.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !5610
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterTNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingNtB1y_19UnusedImportContextEENCNvB1y_13unused_imports3_0ENCINvB1y_23fix_by_removing_importsB11_E0ENvYNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9AnyImportNtB4A_8Imported11member_nameENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5X_8for_each4callINtNtCscdodAO9FK5_5alloc6borrow3CoweENCINvMsj_NtB75_3vecINtB7K_3VecB70_E14extend_trustedBN_E0E0EB1G_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5631)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !alias.scope !5632 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !5632 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !5632
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingNtB1u_19UnusedImportContextEENCNvB1u_13unused_imports3_0ENCINvB1u_23fix_by_removing_importsBX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9AnyImportINtNtCscdodAO9FK5_5alloc6borrow3CoweEuNvYB5m_NtB5o_8Imported11member_nameNCINvNvB4q_8for_each4callB6i_NCINvMsj_NtB6n_3vecINtB85_3VecB6i_E14extend_trustedIBO_BN_B6U_EE0E0E0EB1C_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5633
  invoke void @_RNvXs8_NtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB5_9AnyImportNtB5_8Imported11member_name(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g)
          to label %bb.d unwind label %bb.e, !noalias !5634

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload.i.i, i64 %.val15.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5635
  %i.i = add i64 %.val15.i.i.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5633
  %i.j = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingNtB1u_19UnusedImportContextEENCNvB1u_13unused_imports3_0ENCINvB1u_23fix_by_removing_importsBX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9AnyImportINtNtCscdodAO9FK5_5alloc6borrow3CoweEuNvYB5m_NtB5o_8Imported11member_nameNCINvNvB4q_8for_each4callB6i_NCINvMsj_NtB6n_3vecINtB85_3VecB6i_E14extend_trustedIBO_BN_B6U_EE0E0E0EB1C_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val15.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !5634
  resume { ptr, i32 } %i.l

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterTNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13ImportBindingNtB1u_19UnusedImportContextEENCNvB1u_13unused_imports3_0ENCINvB1u_23fix_by_removing_importsBX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9AnyImportINtNtCscdodAO9FK5_5alloc6borrow3CoweEuNvYB5m_NtB5o_8Imported11member_nameNCINvNvB4q_8for_each4callB6i_NCINvMsj_NtB6n_3vecINtB85_3VecB6i_E14extend_trustedIBO_BN_B6U_EE0E0E0EB1C_.exit: ; preds = %bb.d, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !5634
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif11SarifResultENCNvXs_B1P_NtB1P_12SarifEmitterNtB1R_7Emitter4emits_0ENCB2N_s0_0ENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB3X_7HashSetTReNtB1P_10SarifLevelENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4G_E6extendBX_E0ENtNtB5V_8iterator8Iterator4folduNCINvNvB6E_8for_each4callTB4G_uENCINvXs1i_NtB3Z_3mapINtB7Q_7HashMapB4G_uB52_EIB5R_B7z_E6extendBN_E0E0EB1T_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtNtCsEhZmuQNqkz_11ruff_linter7message5sarif11SarifResultENCNvXs_B1L_NtB1L_12SarifEmitterNtB1N_7Emitter4emits_0ENCB2J_s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldTReNtB1L_10SarifLevelETB4F_uEuNCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB5i_7HashSetB4F_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtB3O_7collect6ExtendB4F_E6extendBN_E0NCINvNvB3K_8for_each4callB51_NCINvXs1i_NtB5k_3mapINtB8b_7HashMapB4F_uB65_EIB6U_B51_E6extendIBO_BN_B59_EE0E0E0EB1P_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 96
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
