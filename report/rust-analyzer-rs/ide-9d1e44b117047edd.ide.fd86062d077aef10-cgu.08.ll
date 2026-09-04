Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.08?download=true
inline.NumInlined: 2573
inline.NumDeleted: 1226
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_14matching_brace0INtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEE00B29_EB15_:bb.a

bb.ca:                                            ; preds = %bb.by
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
          to label %.noexc83.i.i.i.i unwind label %bb.bt, !noalias !253

.noexc83.i.i.i.i:                                 ; preds = %bb.ca
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i.i.i.i: ; preds = %bb.bz
  %i.hr = extractvalue { i64, ptr } %i.hq, 0
  %i.hs = extractvalue { i64, ptr } %i.hq, 1
  store i64 %i.hr, ptr %i.f, align 8, !noalias !254
  %i.ht = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  store ptr %i.hs, ptr %i.ht, align 8, !noalias !254
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.ph, i64 60
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.ph, i64 56
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i.backedge, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i.i.i.i
  %i.hw = invoke { i64, ptr } @_RNvXsl_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.noexc86.i.i.i.i unwind label %bb.cl, !noalias !253 ; 2 uses

.noexc86.i.i.i.i:                                 ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i
  %i.hx = extractvalue { i64, ptr } %i.hw, 0
  %i.hy = extractvalue { i64, ptr } %i.hw, 1      ; 20 uses
  switch i64 %i.hx, label %bb.cc [
    i64 2, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.thread206.i.i.i.i
    i64 0, label %bb.cb
  ]

bb.cb:                                            ; preds = %.noexc86.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 48 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !noalias !253, !noundef !6
  %i.ib = add i32 %i.ia, -1                       ; 2 uses
  store i32 %i.ib, ptr %i.hz, align 4, !noalias !253
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0E0B2P_.exit.sink.split.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i.backedge

bb.cc:                                            ; preds = %.noexc86.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.id = load i64, ptr %i.hy, align 8, !range !14, !noalias !267, !noundef !6
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !267, !nonnull !6, !noundef !6
  %i.ig = shl nuw nsw i64 %i.id, 2
  %.sroa.0.0.in.idx.i.i.i.i.i.i.i.i.i = xor i64 %i.ig, 4
  %.sroa.0.0.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sroa.0.0.in.idx.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.0.0.in.i.i.i.i.i.i.i.i.i, align 4, !noalias !267, !noundef !6
  %i.ih = invoke noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i85.i.i.i.i unwind label %bb.ci, !noalias !253

.noexc.i.i.i85.i.i.i.i:                           ; preds = %bb.cc
  %i.ii = icmp eq i16 %i.ih, %i.hm
  br i1 %i.ii, label %bb.cd, label %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.thread.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %.noexc.i.i.i85.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ie, align 8, !noalias !253, !nonnull !6, !noundef !6
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 60
  %i.ik = load i8, ptr %i.ij, align 4, !range !11, !noalias !253, !noundef !6
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.cf, label %bb.ce, !prof !13

bb.ce:                                            ; preds = %bb.cd
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  %i.in = load i32, ptr %i.im, align 8, !noalias !253, !noundef !6
  br label %.noexc6.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.io = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.hy)
          to label %.noexc6.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !253

.noexc6.i.i.i.i.i.i.i:                            ; preds = %bb.cf, %bb.ce
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.in, %bb.ce ], [ %i.io, %bb.cf ]
  %.sroa.03.0.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gm, align 8, !noalias !253, !nonnull !6, !noundef !6
  %i.ip = load i8, ptr %i.hu, align 4, !range !11, !noalias !253, !noundef !6
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.ch, label %bb.cg, !prof !13

bb.cg:                                            ; preds = %.noexc6.i.i.i.i.i.i.i
  %i.ir = load i32, ptr %i.hv, align 8, !noalias !253, !noundef !6
  br label %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %.noexc6.i.i.i.i.i.i.i
  %i.is = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i.i.i.ph)
          to label %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !253

bb.ci:                                            ; preds = %bb.ch, %bb.cf, %bb.cc
  %i.it = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hy, i64 48 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !noalias !253, !noundef !6
  %i.iw = add i32 %i.iv, -1                       ; 2 uses
  store i32 %i.iw, ptr %i.iu, align 4, !noalias !253
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.cj, label %.body87.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.hy) #38
          to label %.body87.i.i.i.i unwind label %bb.ck, !noalias !253

_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.i.i.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ir, %bb.cg ], [ %i.is, %bb.ch ]
  %i.iy = icmp ne ptr %.sroa.01.0.i.i.i.i.i.i.i.i.i, %.sroa.03.0.i.i.i.i.i.i.i.i.i
  %i.iz = icmp ne i32 %.sroa.02.0.i.i.i.i.i.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i2.not.i.i.i.i.i.i.i.i = or i1 %i.iy, %i.iz
  br i1 %.sroa.0.0.i2.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.i.i.i.i, label %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.thread.i.i.i.i.i.i.i

_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.i.i.i.i.i.i.i, %.noexc.i.i.i85.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hy, i64 48 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !noalias !253, !noundef !6
  %i.jc = add i32 %i.jb, -1                       ; 2 uses
  store i32 %i.jc, ptr %i.ja, align 8, !noalias !253
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0E0B2P_.exit.sink.split.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i.backedge

bb.ck:                                            ; preds = %bb.cj
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !253
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0E0B2P_.exit.sink.split.i.i.i.i.i.i: ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.thread.i.i.i.i.i.i.i, %bb.cb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.hy) #38
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i.backedge unwind label %bb.cl, !noalias !253

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i.backedge: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0E0B2P_.exit.sink.split.i.i.i.i.i.i, %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.thread.i.i.i.i.i.i.i, %bb.cb
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i

bb.cl:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0E0B2P_.exit.sink.split.i.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s0_0E0E0B4G_.exit.i.i.i.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body87.i.i.i.i

.body87.i.i.i.i:                                  ; preds = %bb.cl, %bb.cj, %bb.ci
  %eh.lpad-body88.i.i.i.i = phi { ptr, i32 } [ %i.jf, %bb.cl ], [ %i.it, %bb.cj ], [ %i.it, %bb.ci ] ; 3 uses
  %.val52.i.i.i.i = load i64, ptr %i.f, align 8, !range !12, !noalias !254, !noundef !6
  %.val53.i.i.i.i = load ptr, ptr %i.ht, align 8, !noalias !254 ; 3 uses
  %i.jg = icmp eq i64 %.val52.i.i.i.i, 2
  br i1 %i.jg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.body87.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53.i.i.i.i) ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.val53.i.i.i.i, i64 48 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !noalias !253, !noundef !6
  %i.jj = add i32 %i.ji, -1                       ; 2 uses
  store i32 %i.jj, ptr %i.jh, align 4, !noalias !253
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val53.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit.i.i.i.i unwind label %bb.do, !noalias !253

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.i.i.i.i: ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces0_0B5_.exit.i.i.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hy, i64 60
  %.val50.i.i.i.i = load i64, ptr %i.f, align 8, !range !12, !noalias !254, !noundef !6
  %.val51.i.i.i.i = load ptr, ptr %i.ht, align 8, !noalias !254 ; 3 uses
  %i.jm = icmp eq i64 %.val50.i.i.i.i, 2
  br i1 %i.jm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit95.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51.i.i.i.i) ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.val51.i.i.i.i, i64 48 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !noalias !253, !noundef !6
  %i.jp = add i32 %i.jo, -1                       ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 4, !noalias !253
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i93.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit95.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i93.i.i.i.i: ; preds = %bb.cn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val51.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit95.i.i.i.i unwind label %bb.cv, !noalias !253

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.thread206.i.i.i.i: ; preds = %.noexc86.i.i.i.i
  %.val48.i.i.i.i = load i64, ptr %i.f, align 8, !range !12, !noalias !254, !noundef !6
  %.val49.i.i.i.i = load ptr, ptr %i.ht, align 8, !noalias !254 ; 3 uses
  %i.jr = icmp eq i64 %.val48.i.i.i.i, 2
  br i1 %i.jr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit98.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.thread206.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val49.i.i.i.i) ]
  %i.js = getelementptr inbounds nuw i8, ptr %.val49.i.i.i.i, i64 48 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !noalias !253, !noundef !6
  %i.ju = add i32 %i.jt, -1                       ; 2 uses
  store i32 %i.ju, ptr %i.js, align 4, !noalias !253
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i96.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit98.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i96.i.i.i.i: ; preds = %bb.co
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val49.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit98.i.i.i.i unwind label %bb.bt, !noalias !253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit98.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i96.i.i.i.i, %bb.co, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.thread206.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !254
  br label %_RNvNtCs8yWYkJLPqIi_8cov_mark4___rt3hit.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit73.i.i.i.i: ; preds = %bb.br, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit81.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.jw = load i64, ptr %i.h, align 8, !range !12, !alias.scope !268, !noalias !254, !noundef !6 ; 2 uses
  switch i64 %i.jw, label %bb.cp [
    i64 0, label %bb.fz
    i64 1, label %bb.cr
  ]

bb.cp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit73.i.i.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val3.i100.i.i.i.i = load ptr, ptr %i.jx, align 8, !alias.scope !268, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.val3.i100.i.i.i.i, i64 48 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !noalias !269, !noundef !6
  %i.ka = add i32 %i.jz, -1                       ; 2 uses
  store i32 %i.ka, ptr %i.jy, align 4, !noalias !269
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.cq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i100.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i unwind label %bb.cs, !noalias !269

bb.cr:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit73.i.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val2.i99.i.i.i.i = load ptr, ptr %i.kc, align 8, !alias.scope !268, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.val2.i99.i.i.i.i, i64 48 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !noalias !269, !noundef !6
  %i.kf = add i32 %i.ke, -1                       ; 2 uses
  store i32 %i.kf, ptr %i.kd, align 4, !noalias !269
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, label %bb.fz

bb.cs:                                            ; preds = %bb.cq
  %i.kh = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i102.i.i.i.i = load ptr, ptr %i.ki, align 8, !alias.scope !268, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.val1.i102.i.i.i.i, i64 48 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !noalias !269, !noundef !6
  %i.kl = add i32 %i.kk, -1                       ; 2 uses
  store i32 %i.kl, ptr %i.kj, align 4, !noalias !269
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.ct, label %.body.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i102.i.i.i.i) #38
          to label %.body.i.i.i unwind label %bb.cu, !noalias !269

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.kn, align 8, !alias.scope !268, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 48 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !noalias !269, !noundef !6
  %i.kq = add i32 %i.kp, -1                       ; 2 uses
  store i32 %i.kq, ptr %i.ko, align 4, !noalias !269
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, label %bb.fz

bb.cu:                                            ; preds = %bb.ct
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !269
  unreachable

bb.cv:                                            ; preds = %bb.dd, %bb.da, %bb.cy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i93.i.i.i.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hy, i64 48 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !noalias !253, !noundef !6
  %i.kw = add i32 %i.kv, -1                       ; 2 uses
  store i32 %i.kw, ptr %i.ku, align 4, !noalias !253
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.cw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit.i.i.i.i

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.hy) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit.i.i.i.i unwind label %bb.do, !noalias !253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit95.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i93.i.i.i.i, %bb.cn, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0NCINvNvB1K_4find5checkB4E_NCB5U_s0_0E0E0B57_EB5Y_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !254
  %i.ky = load i8, ptr %i.jl, align 4, !range !11, !noalias !253, !noundef !6
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.cy, label %bb.cx, !prof !13

bb.cx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit95.i.i.i.i
  %i.la = getelementptr inbounds nuw i8, ptr %i.hy, i64 56
  %i.lb = load i32, ptr %i.la, align 8, !noalias !253, !noundef !6
  br label %.noexc107.i.i.i.i

bb.cy:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces_0EEB3a_.exit95.i.i.i.i
  %i.lc = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.hy)
          to label %.noexc107.i.i.i.i unwind label %bb.cv, !noalias !253

.noexc107.i.i.i.i:                                ; preds = %bb.cy, %bb.cx
  %.sroa.0.0.i105.i.i.i.i = phi i32 [ %i.lb, %bb.cx ], [ %i.lc, %bb.cy ] ; 6 uses
  %i.ld = load i64, ptr %i.hy, align 8, !range !14, !noalias !253, !noundef !6
  %i.le = trunc nuw i64 %i.ld to i1
  %i.lf = load ptr, ptr %i.ie, align 8, !noalias !253, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.le, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %.noexc107.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !noalias !253, !noundef !6 ; 2 uses
  %i.li = icmp ugt i64 %i.lh, 4294967295
  %i.lj = shl nuw i64 %i.lh, 32
  %.sroa.09.0.insert.insert.i.i.i.i.i.i = select i1 %i.li, i64 513, i64 %i.lj ; 2 uses
  %i.lk = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.i.i to i1
  br i1 %i.lk, label %bb.da, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i, !prof !13

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !254
  store i8 2, ptr %i.c, align 1, !noalias !254
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #39
          to label %.noexc108.i.i.i.i unwind label %bb.cv, !noalias !253

.noexc108.i.i.i.i:                                ; preds = %bb.da
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i: ; preds = %bb.cz
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i to i32
  br label %bb.dc

bb.db:                                            ; preds = %.noexc107.i.i.i.i
  %i.ll = load i32, ptr %i.lf, align 8, !noalias !253, !noundef !6
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i ], [ %i.ll, %bb.db ]
  %i.lm = xor i32 %.sroa.0.0.i105.i.i.i.i, -1
  %.not.i106.i.i.i.i = icmp ugt i32 %.sroa.02.0.i.i.i.i.i, %i.lm
  br i1 %.not.i106.i.i.i.i, label %bb.dd, label %bb.de, !prof !13

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #39
          to label %.noexc109.i.i.i.i unwind label %bb.cv, !noalias !253

.noexc109.i.i.i.i:                                ; preds = %bb.dd
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.ln = getelementptr inbounds nuw i8, ptr %i.hy, i64 48 ; 2 uses
  %i.lo = load i32, ptr %i.ln, align 8, !noalias !253, !noundef !6
  %i.lp = add i32 %i.lo, -1                       ; 2 uses
  store i32 %i.lp, ptr %i.ln, align 8, !noalias !253
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.df, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit111.i.i.i.i

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.hy) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit111.i.i.i.i unwind label %bb.bt, !noalias !253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit111.i.i.i.i: ; preds = %bb.df, %bb.de
  %i.lr = load i32, ptr %i.eq, align 4, !noalias !253, !noundef !6
  %i.ls = add i32 %i.lr, -1                       ; 2 uses
  store i32 %i.ls, ptr %i.eq, align 4, !noalias !253
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.dg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit113.i.i.i.i

bb.dg:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit111.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val42.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit113.i.i.i.i unwind label %bb.bp, !noalias !253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit113.i.i.i.i: ; preds = %bb.dg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit111.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.ph, i64 48 ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 8, !noalias !253, !noundef !6
  %i.lw = add i32 %i.lv, -1                       ; 2 uses
  store i32 %i.lw, ptr %i.lu, align 8, !noalias !253
  %i.lx = icmp eq i32 %i.lw, 0
  br i1 %i.lx, label %bb.dh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i

bb.dh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit113.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0.0.i.i.i.i.i.ph) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i unwind label %.thread197.i.i.i.i, !noalias !253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i: ; preds = %bb.dh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit113.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.ly = load i64, ptr %i.h, align 8, !range !12, !alias.scope !270, !noalias !254, !noundef !6
  switch i64 %i.ly, label %bb.di [
    i64 0, label %bb.fz
    i64 1, label %bb.dk
  ]

bb.di:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val3.i119.i.i.i.i = load ptr, ptr %i.lz, align 8, !alias.scope !270, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.val3.i119.i.i.i.i, i64 48 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !noalias !271, !noundef !6
  %i.mc = add i32 %i.mb, -1                       ; 2 uses
  store i32 %i.mc, ptr %i.ma, align 4, !noalias !271
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.dj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i119.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i unwind label %bb.dl, !noalias !271

bb.dk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val2.i116.i.i.i.i = load ptr, ptr %i.me, align 8, !alias.scope !270, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.val2.i116.i.i.i.i, i64 48 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !noalias !271, !noundef !6
  %i.mh = add i32 %i.mg, -1                       ; 2 uses
  store i32 %i.mh, ptr %i.mf, align 4, !noalias !271
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, label %bb.fz

bb.dl:                                            ; preds = %bb.dj
  %i.mj = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i122.i.i.i.i = load ptr, ptr %i.mk, align 8, !alias.scope !270, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.val1.i122.i.i.i.i, i64 48 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !noalias !271, !noundef !6
  %i.mn = add i32 %i.mm, -1                       ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 4, !noalias !271
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.dm, label %.body.i.i.i

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i122.i.i.i.i) #38
          to label %.body.i.i.i unwind label %bb.dn, !noalias !271

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i: ; preds = %bb.dj, %bb.di
  %i.mp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val.i121.i.i.i.i = load ptr, ptr %i.mp, align 8, !alias.scope !270, !noalias !254, !nonnull !6, !noundef !6 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.val.i121.i.i.i.i, i64 48 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !noalias !271, !noundef !6
  %i.ms = add i32 %i.mr, -1                       ; 2 uses
  store i32 %i.ms, ptr %i.mq, align 4, !noalias !271
  %i.mt = icmp eq i32 %i.ms, 0
  br i1 %i.mt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, label %bb.fz

bb.dn:                                            ; preds = %bb.dm
  %i.mu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !271
  unreachable

bb.do:                                            ; preds = %.thread190.i.i.i.i, %bb.ft, %bb.dt, %bb.cw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i, %bb.bs, %bb.bo
  %i.mv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !253
  unreachable

_RINvYINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtB8_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4foldINtNtB2l_6option6OptionBW_EINvNvB2d_4last4someBW_EECslLuZgPVt6hg_3ide.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i158.i.i.i.i, %bb.bg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i155.i.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !254
  %.not18.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not18.i.i.i.i, label %bb.fz, label %bb.dp

bb.dp:                                            ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtB8_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4foldINtNtB2l_6option6OptionBW_EINvNvB2d_4last4someBW_EECslLuZgPVt6hg_3ide.exit.i.i.i.i
  %i.mw = getelementptr i8, ptr %storemerge.i.i.i.i.i, i64 16
  %.val41.i.i.i.i = load ptr, ptr %i.mw, align 8, !noalias !253, !noundef !6 ; 3 uses
  %.not.i125.i.i.i.i = icmp eq ptr %.val41.i.i.i.i, null
  br i1 %.not.i125.i.i.i.i, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit127.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mx = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i, i64 48 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 4, !noalias !253, !noundef !6 ; 2 uses
  %i.mz = icmp eq i32 %i.my, -1
  br i1 %i.mz, label %bb.ds, label %bb.dr, !prof !13

bb.dr:                                            ; preds = %bb.dq
  %i.na = add nuw i32 %i.my, 1
  store i32 %i.na, ptr %i.mx, align 4, !noalias !253
  br label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit127.i.i.i.i

bb.ds:                                            ; preds = %bb.dq
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
          to label %.noexc126.i.i.i.i unwind label %bb.du, !noalias !253

.noexc126.i.i.i.i:                                ; preds = %bb.ds
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i, %bb.dk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i, %bb.cr
  %storemerge.i.lcssa457.sink.sink.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i ], [ %.val2.i99.i.i.i.i, %bb.cr ], [ %storemerge.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i ], [ %.val2.i116.i.i.i.i, %bb.dk ], [ %.val.i121.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i ]
  %.sroa.8.4.ph.i.i.i.i = phi i32 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i ], [ undef, %bb.cr ], [ %.sroa.3.0.i217.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i ], [ %.sroa.0.0.i105.i.i.i.i, %bb.dk ], [ %.sroa.0.0.i105.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i ]
  %.sroa.0.4.ph.i.i.i.i = phi i64 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i ], [ 0, %bb.cr ], [ %.sroa.0.5218.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i ], [ 1, %bb.dk ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i.lcssa457.sink.sink.i.i.i.i) #38
          to label %bb.fz unwind label %bb.fx, !noalias !253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i: ; preds = %bb.ft, %bb.fs, %.body133.i.i.i.i, %bb.eb, %bb.ea, %bb.du
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.nf, %bb.du ], [ %eh.lpad-body134.i.i.i.i, %bb.ft ], [ %eh.lpad-body134.i.i.i.i, %.body133.i.i.i.i ], [ %eh.lpad-body134.i.i.i.i, %bb.fs ], [ %i.nm, %bb.eb ], [ %i.nm, %bb.ea ] ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 48 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 8, !noalias !253, !noundef !6
  %i.nd = add i32 %i.nc, -1                       ; 2 uses
  store i32 %i.nd, ptr %i.nb, align 8, !noalias !253
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.dt, label %.body.i.i.i

bb.dt:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i.i.i.i.i) #38
          to label %.body.i.i.i unwind label %bb.do, !noalias !253

bb.du:                                            ; preds = %bb.fw, %bb.ds
  %i.nf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit127.i.i.i.i: ; preds = %bb.dr, %bb.dp
  %i.ng = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br label %bb.dv

bb.dv:                                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCsuAhG64lL82_9text_size4size8TextSizeENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0E0E0B61_.exit.i.i.i.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit127.i.i.i.i
  %.sroa.0169.0.i.i.i.i = phi ptr [ %.val41.i.i.i.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData11parent_node.exit127.i.i.i.i ], [ %.val.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCsuAhG64lL82_9text_size4size8TextSizeENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0E0E0B61_.exit.i.i.i.i.i ] ; 8 uses
  %.not.i.i130.i.i.i.i = icmp eq ptr %.sroa.0169.0.i.i.i.i, null
  br i1 %.not.i.i130.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nh = getelementptr i8, ptr %.sroa.0169.0.i.i.i.i, i64 16
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.nh, align 8, !noalias !272, !noundef !6 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ed, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ni = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !noalias !272, !noundef !6 ; 2 uses
  %i.nk = icmp eq i32 %i.nj, -1
  br i1 %i.nk, label %bb.dz, label %bb.dy, !prof !13

bb.dy:                                            ; preds = %bb.dx
  %i.nl = add nuw i32 %i.nj, 1
  store i32 %i.nl, ptr %i.ni, align 4, !noalias !272
  br label %bb.ed

bb.dz:                                            ; preds = %bb.dx
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
          to label %.noexc.i.i.i.i.i.i unwind label %bb.ea, !noalias !272

.noexc.i.i.i.i.i.i:                               ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dz
  %i.nm = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0169.0.i.i.i.i, i64 48 ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !noalias !272, !noundef !6
  %i.np = add i32 %i.no, -1                       ; 2 uses
  store i32 %i.np, ptr %i.nn, align 4, !noalias !272
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %bb.eb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0169.0.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i unwind label %bb.ec, !noalias !272

bb.ec:                                            ; preds = %bb.eb
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !272
  unreachable

bb.ed:                                            ; preds = %bb.dy, %bb.dw
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0169.0.i.i.i.i, i64 48 ; 6 uses
  %i.nt = load i32, ptr %i.ns, align 8, !noalias !273, !noundef !6 ; 2 uses
  %i.nu = icmp eq i32 %i.nt, -1
  br i1 %i.nu, label %bb.ef, label %bb.ee, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.nv = add nuw i32 %i.nt, 1
  store i32 %i.nv, ptr %i.ns, align 8, !noalias !273
  %i.nw = invoke { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.sroa.0169.0.i.i.i.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !273 ; 2 uses

bb.ef:                                            ; preds = %bb.ed
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #35
          to label %.noexc6.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !273

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.ef
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %bb.fn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ee
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.ef
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.fl, %bb.fk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i16.i.i.i.i.i.i.i.i.i, %bb.fa, %.body.thread.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body4.i.i.i.i.i.i.i.i.i, %.body.thread.i.i.i.i.i.i.i.i.i ], [ %lpad.phi10.i.i.i.i.i, %bb.fk ], [ %eh.lpad-body4.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i16.i.i.i.i.i.i.i.i.i ], [ %eh.lpad-body4.i.i.i.i.i.i.i.i.i, %bb.fa ], [ %lpad.phi10.i.i.i.i.i, %bb.fl ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ] ; 2 uses
  %i.nx = load i32, ptr %i.ns, align 4, !noalias !273, !noundef !6
  %i.ny = add i32 %i.nx, -1                       ; 2 uses
  store i32 %i.ny, ptr %i.ns, align 4, !noalias !273
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.eg, label %.body133.i.i.i.i

bb.eg:                                            ; preds = %.body.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0169.0.i.i.i.i) #38
          to label %.body133.i.i.i.i unwind label %bb.fq, !noalias !273

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ee
  %i.oa = extractvalue { i64, ptr } %i.nw, 0
  %i.ob = extractvalue { i64, ptr } %i.nw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !274
  store i64 %i.oa, ptr %i.b, align 8, !noalias !274
  store ptr %i.ob, ptr %i.ng, align 8, !noalias !274
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.outer

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.outer: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.outer.backedge, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i.i.i.ph = phi ptr [ null, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit.i.i.i.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i.i.i.i.ph.be, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.outer.backedge ] ; 23 uses
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.backedge, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.outer
  %i.oc = invoke { i64, ptr } @_RNvXsl_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.ew, !noalias !273 ; 2 uses

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i
  %i.od = extractvalue { i64, ptr } %i.oc, 0
  %i.oe = extractvalue { i64, ptr } %i.oc, 1      ; 13 uses
  switch i64 %i.od, label %bb.ei [
    i64 2, label %bb.eu
    i64 0, label %bb.eh
  ]

.body.i.i.i.i.i.i.i.i.i:                          ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i
  %i.of = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.thread.i.i.i.i.i.i.i.i.i

bb.eh:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oe) ]
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 48 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !noalias !273, !noundef !6
  %i.oi = add i32 %i.oh, -1                       ; 2 uses
  store i32 %i.oi, ptr %i.og, align 4, !noalias !273
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.backedge

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eh
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.oe) #38
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.backedge unwind label %bb.eq, !noalias !273

bb.ei:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oe) ]
  %i.ok = load i64, ptr %i.oe, align 8, !range !14, !noalias !275, !noundef !6
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !275, !nonnull !6, !noundef !6
  %i.on = shl nuw nsw i64 %i.ok, 2
  %.sroa.0.0.in.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = xor i64 %i.on, 4
  %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.om, i64 %.sroa.0.0.in.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !275, !noundef !6
  %i.oo = invoke noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.el, !noalias !273

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ei
  switch i16 %i.oo, label %_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s_0B7_.exit.i.i.i.i.i.i.i.i.i.i.i [
    i16 7, label %bb.ej
    i16 8, label %bb.ej
    i16 9, label %bb.ej
    i16 10, label %bb.ej
    i16 5, label %bb.ej
    i16 6, label %bb.ej
    i16 11, label %bb.ej
    i16 12, label %bb.ej
    i16 18, label %bb.ej
  ]

_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s_0B7_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %i.oe, i64 48 ; 2 uses
  %i.oq = load i32, ptr %i.op, align 8, !noalias !273, !noundef !6
  %i.or = add i32 %i.oq, -1                       ; 2 uses
  store i32 %i.or, ptr %i.op, align 8, !noalias !273
  %i.os = icmp eq i32 %i.or, 0
  br i1 %i.os, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.backedge

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i.backedge: ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s_0B7_.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eh
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1f_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB24_11SyntaxTokenB2q_EEB3h_INtNtBa_6option6OptionB3h_ENCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_00NCINvNtB6_6filter11filter_foldB3h_B3L_NCB4e_s_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB3h_EE0E0B4k_.exit.i.i.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.ot = icmp eq ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, null
end_hunk_0
begin_hunk_1_@_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_14matching_brace0INtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEE00B29_EB15_:bb.a
bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i.i.i.i.i.i.i.i.i.ph) #38
          to label %.body.thread.i.i.i.i.i.i.i.i.i unwind label %bb.ez, !noalias !273

bb.ez:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i16.i.i.i.i.i.i.i.i.i, %bb.ey
  %i.qb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !273
  unreachable

.body.thread.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %.noexc10.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i
  %eh.lpad-body4.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.of, %.body.i.i.i.i.i.i.i.i.i ], [ %i.pj, %bb.eq ], [ %i.pj, %bb.er ], [ %i.oy, %bb.ep ], [ %i.oy, %.noexc10.i.i.i.i.i.i.i.i.i.i.i ], [ %i.oy, %bb.eo ], [ %i.pj, %bb.es ], [ %i.pv, %bb.ey ], [ %i.pv, %bb.ew ], [ %i.pv, %bb.ex ] ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !12, !noalias !274, !noundef !6
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ng, align 8, !noalias !274 ; 3 uses
  %i.qc = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.qc, label %.body.i.i.i.i.i.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %.body.thread.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i.i.i.i.i.i.i.i) ]
  %i.qd = getelementptr inbounds nuw i8, ptr %.val9.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !noalias !273, !noundef !6
  %i.qf = add i32 %i.qe, -1                       ; 2 uses
  store i32 %i.qf, ptr %i.qd, align 4, !noalias !273
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i16.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i16.i.i.i.i.i.i.i.i.i: ; preds = %bb.fa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i) #38
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.ez, !noalias !273

bb.fb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !274
  %.not.i.not.i.i.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, null ; 2 uses
  br i1 %.not.i.not.i.i.not.i.i.i.i.i, label %_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s0_0B7_.exit.i.i.i.i.i.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.qh = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, i64 60
  %i.qi = load i8, ptr %i.qh, align 4, !range !11, !noalias !273, !noundef !6
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %bb.fe, label %bb.fd, !prof !13

bb.fd:                                            ; preds = %bb.fc
  %i.qk = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, i64 56
  %i.ql = load i32, ptr %i.qk, align 8, !noalias !273, !noundef !6
  br label %.noexc.i8.i.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.qm = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %storemerge.i.i.i.i.i.i.i.i.i.ph)
          to label %.noexc.i8.i.i.i.i.i.i.i.i unwind label %.loopexit6.i.i.i.i.i, !noalias !273

.noexc.i8.i.i.i.i.i.i.i.i:                        ; preds = %bb.fe, %bb.fd
  %.sroa.0.0.i.i.i.i.i.i131.i.i.i.i = phi i32 [ %i.ql, %bb.fd ], [ %i.qm, %bb.fe ] ; 3 uses
  %i.qn = load i64, ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, align 8, !range !14, !noalias !273, !noundef !6
  %i.qo = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, i64 8
  %i.qp = trunc nuw i64 %i.qn to i1
  %i.qq = load ptr, ptr %i.qo, align 8, !noalias !273, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.qp, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %.noexc.i8.i.i.i.i.i.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !noalias !273, !noundef !6 ; 2 uses
  %i.qt = icmp ugt i64 %i.qs, 4294967295
  %i.qu = shl nuw i64 %i.qs, 32
  %.sroa.09.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.qt, i64 513, i64 %i.qu ; 2 uses
  %i.qv = trunc i64 %.sroa.09.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.qv, label %bb.fg, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i.i.i.i.i.i, !prof !13

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  store i8 2, ptr %i.a, align 1, !noalias !274
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #39
          to label %.noexc2.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp7.i.i.i.i.i, !noalias !273

.noexc2.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.fg
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ff
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %bb.fi

bb.fh:                                            ; preds = %.noexc.i8.i.i.i.i.i.i.i.i
  %i.qw = load i32, ptr %i.qq, align 8, !noalias !273, !noundef !6
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.qw, %bb.fh ]
  %i.qx = xor i32 %.sroa.0.0.i.i.i.i.i.i131.i.i.i.i, -1
  %.not.i.i9.i.i.i.i.i.i.i.i = icmp ugt i32 %.sroa.02.0.i.i.i.i.i.i.i.i.i.i, %i.qx
  br i1 %.not.i.i9.i.i.i.i.i.i.i.i, label %bb.fj, label %bb.fm, !prof !13

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #39
          to label %.noexc3.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp7.i.i.i.i.i, !noalias !273

.noexc3.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.fj
  unreachable

.loopexit6.i.i.i.i.i:                             ; preds = %bb.fe
  %lpad.loopexit8.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.fk

.loopexit.split-lp7.i.i.i.i.i:                    ; preds = %bb.fj, %bb.fg
  %lpad.loopexit.split-lp9.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.fk

bb.fk:                                            ; preds = %.loopexit.split-lp7.i.i.i.i.i, %.loopexit6.i.i.i.i.i
  %lpad.phi10.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit8.i.i.i.i.i, %.loopexit6.i.i.i.i.i ], [ %lpad.loopexit.split-lp9.i.i.i.i.i, %.loopexit.split-lp7.i.i.i.i.i ] ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, i64 48 ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !noalias !273, !noundef !6
  %i.ra = add i32 %i.qz, -1                       ; 2 uses
  store i32 %i.ra, ptr %i.qy, align 4, !noalias !273
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %bb.fl, label %.body.i.i.i.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i.i.i.i.i.i.i.i.i.ph) #38
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.fo, !noalias !273

bb.fm:                                            ; preds = %bb.fi
  %i.rc = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i.i.i.i.ph, i64 48 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 8, !noalias !273, !noundef !6
  %i.re = add i32 %i.rd, -1                       ; 2 uses
  store i32 %i.re, ptr %i.rc, align 8, !noalias !273
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.fn, label %_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s0_0B7_.exit.i.i.i.i.i.i.i.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %storemerge.i.i.i.i.i.i.i.i.i.ph) #38
          to label %_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s0_0B7_.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !273

bb.fo:                                            ; preds = %bb.fl
  %i.rg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !273
  unreachable

_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s0_0B7_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.fn, %bb.fm, %bb.fb
  %.sroa.3.0.i.i.i.i.i.i.i.i = phi i32 [ undef, %bb.fb ], [ %.sroa.0.0.i.i.i.i.i.i131.i.i.i.i, %bb.fn ], [ %.sroa.0.0.i.i.i.i.i.i131.i.i.i.i, %bb.fm ] ; 3 uses
  %i.rh = load i32, ptr %i.ns, align 8, !noalias !273, !noundef !6
  %i.ri = add i32 %i.rh, -1                       ; 2 uses
  store i32 %i.ri, ptr %i.ns, align 8, !noalias !273
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.fp, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCsuAhG64lL82_9text_size4size8TextSizeENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0E0E0B61_.exit.i.i.i.i.i

bb.fp:                                            ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s0_0B7_.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.0169.0.i.i.i.i) #38
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCsuAhG64lL82_9text_size4size8TextSizeENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0E0E0B61_.exit.i.i.i.i.i unwind label %bb.fr, !noalias !253

bb.fq:                                            ; preds = %bb.eg
  %i.rk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !273
  unreachable

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCsuAhG64lL82_9text_size4size8TextSizeENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0E0E0B61_.exit.i.i.i.i.i: ; preds = %bb.fp, %_RNCNCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0s0_0B7_.exit.i.i.i.i.i.i.i.i
  br i1 %.not.i.not.i.i.not.i.i.i.i.i, label %bb.dv, label %bb.fu

bb.fr:                                            ; preds = %bb.fp
  %i.rl = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body133.i.i.i.i

.body133.i.i.i.i:                                 ; preds = %bb.fr, %bb.eg, %.body.i.i.i.i.i.i.i.i
  %eh.lpad-body134.i.i.i.i = phi { ptr, i32 } [ %i.rl, %bb.fr ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %bb.eg ], [ %eh.lpad-body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i, label %bb.fs

bb.fs:                                            ; preds = %.body133.i.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !noalias !253, !noundef !6
  %i.ro = add i32 %i.rn, -1                       ; 2 uses
  store i32 %i.ro, ptr %i.rm, align 4, !noalias !253
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.ft, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i

bb.ft:                                            ; preds = %bb.fs
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i unwind label %bb.do, !noalias !253

bb.fu:                                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeINtNtB13_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCsuAhG64lL82_9text_size4size8TextSizeENvYB1G_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB1G_B3C_NCNvNtCslLuZgPVt6hg_3ide14matching_brace14matching_braces1_0E0E0B61_.exit.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.rq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4, !noalias !253, !noundef !6
  %i.rs = add i32 %i.rr, -1                       ; 2 uses
  store i32 %i.rs, ptr %i.rq, align 4, !noalias !253
  %i.rt = icmp eq i32 %i.rs, 0
  br i1 %i.rt, label %bb.fw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i unwind label %bb.du, !noalias !253

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i: ; preds = %bb.dv, %bb.fw, %bb.fv, %bb.fu
  %.sroa.0.5218.i.i.i.i = phi i64 [ 1, %bb.fw ], [ 1, %bb.fu ], [ 1, %bb.fv ], [ 0, %bb.dv ] ; 2 uses
  %.sroa.3.0.i217.i.i.i.i = phi i32 [ %.sroa.3.0.i.i.i.i.i.i.i.i, %bb.fw ], [ %.sroa.3.0.i.i.i.i.i.i.i.i, %bb.fu ], [ %.sroa.3.0.i.i.i.i.i.i.i.i, %bb.fv ], [ undef, %bb.dv ] ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 48 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 8, !noalias !253, !noundef !6
  %i.rw = add i32 %i.rv, -1                       ; 2 uses
  store i32 %i.rw, ptr %i.ru, align 8, !noalias !253
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, label %bb.fz

.thread190.i.i.i.i:                               ; preds = %bb.bo, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i.i.i, %.body.thread.i.i.i.i.i, %bb.an, %bb.am, %.thread197.i.i.i.i, %bb.h, %bb.g
  %.pn28177.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body5.i.i.i.i.i, %.body.thread.i.i.i.i.i ], [ %lpad.thr_comm.i.i.i.i, %.thread197.i.i.i.i ], [ %.pn26.i.i.i.i, %bb.bo ], [ %i.dy, %bb.an ], [ %i.dy, %bb.am ], [ %.pn26.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i.i.i ], [ %i.am, %bb.h ], [ %i.am, %bb.g ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #34
          to label %.body.i.i.i unwind label %bb.do, !noalias !253

bb.fx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i155.i.i.i.i, %.noexc.i.i.i, %bb.c
  %i.ry = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.fx, %.thread190.i.i.i.i, %bb.dt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i, %bb.dm, %bb.dl, %bb.ct, %bb.cs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i, %bb.bi, %bb.bh
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ry, %bb.fx ], [ %i.mj, %bb.dl ], [ %i.kh, %bb.cs ], [ %i.kh, %bb.ct ], [ %i.mj, %bb.dm ], [ %.pn28177.i.i.i.i, %.thread190.i.i.i.i ], [ %.pn.i.i.i.i, %bb.dt ], [ %i.ge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i ], [ %i.fl, %bb.bi ], [ %i.fl, %bb.bh ], [ %.pn.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit.i.i.i.i ] ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !noalias !253, !noundef !6
  %i.sb = add i32 %i.sa, -1                       ; 2 uses
  store i32 %i.sb, ptr %i.rz, align 4, !noalias !253
  %i.sc = icmp eq i32 %i.sb, 0
  br i1 %i.sc, label %bb.fy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit.i.i.i

bb.fy:                                            ; preds = %.body.i.i.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.u) #38
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit.i.i.i unwind label %bb.gb, !noalias !253

bb.fz:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtB8_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4foldINtNtB2l_6option6OptionBW_EINvNvB2d_4last4someBW_EECslLuZgPVt6hg_3ide.exit.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i, %bb.dk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i, %bb.cr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit73.i.i.i.i
  %.sroa.8.4.i.i.i.i = phi i32 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit73.i.i.i.i ], [ undef, %_RINvYINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtB8_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4foldINtNtB2l_6option6OptionBW_EINvNvB2d_4last4someBW_EECslLuZgPVt6hg_3ide.exit.i.i.i.i ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i ], [ undef, %bb.cr ], [ %.sroa.0.0.i105.i.i.i.i, %bb.dk ], [ %.sroa.0.0.i105.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i ], [ %.sroa.0.0.i105.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i ], [ %.sroa.3.0.i217.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i ], [ %.sroa.8.4.ph.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i ] ; 2 uses
  %.sroa.0.4.i.i.i.i = phi i64 [ %i.jw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit73.i.i.i.i ], [ 0, %_RINvYINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtB8_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4foldINtNtB2l_6option6OptionBW_EINvNvB2d_4last4someBW_EECslLuZgPVt6hg_3ide.exit.i.i.i.i ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i101.i.i.i.i ], [ 0, %bb.cr ], [ 1, %bb.dk ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i120.i.i.i.i ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit115.i.i.i.i ], [ %.sroa.0.5218.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtBI_7sources10successors10SuccessorsNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeNvMs4_B1R_B1P_6parentENvYINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB4_7convert4FromB1P_E4fromEECslLuZgPVt6hg_3ide.exit138.i.i.i.i ], [ %.sroa.0.4.ph.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide.exit.sink.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !253
  %i.sd = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.se = load i32, ptr %i.sd, align 4, !noalias !253, !noundef !6
  %i.sf = add i32 %i.se, -1                       ; 2 uses
  store i32 %i.sf, ptr %i.sd, align 4, !noalias !253
  %i.sg = icmp eq i32 %i.sf, 0
  br i1 %i.sg, label %bb.ga, label %_RNCNCINvMs1_CslLuZgPVt6hg_3ideNtBa_8Analysis7with_dbNCNvB6_14matching_brace0INtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEE00Ba_.exit.i

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.u) #38
          to label %_RNCNCINvMs1_CslLuZgPVt6hg_3ideNtBa_8Analysis7with_dbNCNvB6_14matching_brace0INtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEE00Ba_.exit.i unwind label %bb.b, !noalias !253

bb.gb:                                            ; preds = %bb.fy, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit.i.i.i
  %i.sh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !253
  unreachable

_RNCNCINvMs1_CslLuZgPVt6hg_3ideNtBa_8Analysis7with_dbNCNvB6_14matching_brace0INtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEE00Ba_.exit.i: ; preds = %bb.ga, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !253
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes10SourceFileEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.ge unwind label %bb.gc

bb.gc:                                            ; preds = %_RNCNCINvMs1_CslLuZgPVt6hg_3ideNtBa_8Analysis7with_dbNCNvB6_14matching_brace0INtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEE00Ba_.exit.i, %.noexc7, %.noexc6, %.noexc5, %.noexc, %bb.a
  %i.si = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit.i.i.i, %bb.gc
  %eh.lpad-body = phi { ptr, i32 } [ %i.si, %bb.gc ], [ %.pn.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit.i.i.i ]
  %i.sj = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.sk = invoke { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr noundef %i.sj)
          to label %bb.gf unwind label %bb.gd     ; 2 uses

bb.gd:                                            ; preds = %.body
  %i.sl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.ge:                                            ; preds = %_RNCNCINvMs1_CslLuZgPVt6hg_3ideNtBa_8Analysis7with_dbNCNvB6_14matching_brace0INtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size4size8TextSizeEE00Ba_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !253
  %.sroa.3.sroa.0.0.extract.trunc = trunc i32 %.sroa.8.4.i.i.i.i to i8
  %.sroa.3.sroa.3.0.extract.shift = and i32 %.sroa.8.4.i.i.i.i, -256
  br label %bb.gj

bb.gf:                                            ; preds = %.body
  %i.sm = extractvalue { ptr, ptr } %i.sk, 0      ; 6 uses
  %i.sn = extractvalue { ptr, ptr } %i.sk, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sm) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !277
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  %i.sp = load ptr, ptr %i.so, align 8, !invariant.load !6, !alias.scope !276, !noalias !278, !nonnull !6
  invoke void %i.sp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.sm)
          to label %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit unwind label %bb.gg, !noalias !277

bb.gg:                                            ; preds = %bb.gf
  %i.sq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslLuZgPVt6hg_3ide(ptr nonnull %i.sm, ptr nonnull readonly align 8 dereferenceable(32) %i.sn) #34
          to label %bb.gi unwind label %bb.gh, !noalias !278

bb.gh:                                            ; preds = %bb.gg
  %i.sr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !277
  unreachable

bb.gi:                                            ; preds = %bb.gg
  resume { ptr, i32 } %i.sq

_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit: ; preds = %bb.gf
  %i.ss = load i128, ptr %i.k, align 16, !noalias !277, !noundef !6
  %i.st = icmp eq i128 %i.ss, 166215278244808769718339722483714545572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !277
  br i1 %i.st, label %bb.gl, label %bb.gk

bb.gj:                                            ; preds = %bb.gl, %bb.ge
  %.sroa.3.sroa.3.sroa.0.0 = phi i32 [ 0, %bb.gl ], [ %.sroa.3.sroa.3.0.extract.shift, %bb.ge ]
  %.sroa.3.sroa.0.0 = phi i8 [ %i.su, %bb.gl ], [ %.sroa.3.sroa.0.0.extract.trunc, %bb.ge ]
  %.sroa.0.0 = phi i64 [ 2, %bb.gl ], [ %.sroa.0.4.i.i.i.i, %bb.ge ]
  %.sroa.3.sroa.0.0.insert.ext = zext i8 %.sroa.3.sroa.0.0 to i32
  %.sroa.3.sroa.0.0.insert.insert = or disjoint i32 %.sroa.3.sroa.3.sroa.0.0, %.sroa.3.sroa.0.0.insert.ext
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.sroa.0.0.insert.insert to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert

bb.gk:                                            ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtCscAsMj0W7j8b_3std5panic13resume_unwind(ptr noundef nonnull %i.sm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.sn) #35
  unreachable

bb.gl:                                            ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  %i.su = load i8, ptr %i.sm, align 1, !range !7, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sm, i64 noundef 1, i64 noundef 1) #36
  br label %bb.gj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_14outgoing_calls0INtNtCshzWfHUSfYae_4core6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtB15_14call_hierarchy8CallItemEEE00B29_EB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.018.0.copyload = load i64, ptr %1, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  %i.c = inttoptr i64 %.sroa.018.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i.i = load i32, ptr %.sroa.9.0.copyload, align 4, !noalias !285, !noundef !6
  %i.d = getelementptr i8, ptr %.sroa.9.0.copyload, i64 4
  %.val1.i.i = load i32, ptr %i.d, align 4, !noalias !285, !noundef !6
  invoke void @_RNvNtCslLuZgPVt6hg_3ide14call_hierarchy14outgoing_calls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.13.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, i32 noundef %.val.i.i, i32 noundef %.val1.i.i)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = invoke { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr noundef %i.f)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.018.0.copyload19 = load i64, ptr %i.a, align 8
  %.sroa.9.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx20, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.018.0.copyload19, ptr %0, align 8
  store <2 x ptr> %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.j = extractvalue { ptr, ptr } %i.g, 0        ; 5 uses
  %i.k = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !287
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !6, !alias.scope !286, !noalias !288, !nonnull !6
  invoke void %i.m(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.j)
          to label %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit unwind label %bb.f, !noalias !287

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslLuZgPVt6hg_3ide(ptr nonnull %i.j, ptr nonnull readonly align 8 dereferenceable(32) %i.k) #34
          to label %bb.h unwind label %bb.g, !noalias !288

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !287
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.n

_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit: ; preds = %bb.e
  %i.p = load i128, ptr %i.b, align 16, !noalias !287, !noundef !6
  %i.q = icmp eq i128 %i.p, 166215278244808769718339722483714545572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !287
  br i1 %i.q, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.d
  ret void

bb.j:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtCscAsMj0W7j8b_3std5panic13resume_unwind(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k) #35
  unreachable

bb.k:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  %i.r = load i8, ptr %i.j, align 1, !range !7, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.r, ptr %i.s, align 8
  store i64 -2, ptr %0, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef 1) #36
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_14prepare_rename0INtNtCshzWfHUSfYae_4core6result6ResultINtB15_9RangeInfouENtNtCs6oosyzwIepl_6ide_db6rename11RenameErrorEE00B29_EB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i = load i32, ptr %1, align 4, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i = load i32, ptr %i.c, align 4, !noundef !6
  invoke void @_RNvNtCslLuZgPVt6hg_3ide6rename14prepare_rename(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %2, i32 noundef %.val.i, i32 noundef %.val1.i)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = invoke { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr noundef %i.e)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #33
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.018.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.018.0.copyload, ptr %0, align 8
  store <2 x ptr> %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, ptr } %i.f, 0        ; 5 uses
  %i.j = extractvalue { ptr, ptr } %i.f, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !293
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !6, !alias.scope !292, !noalias !294, !nonnull !6
  invoke void %i.l(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.i)
          to label %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit unwind label %bb.f, !noalias !293

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslLuZgPVt6hg_3ide(ptr nonnull %i.i, ptr nonnull readonly align 8 dereferenceable(32) %i.j) #34
          to label %bb.h unwind label %bb.g, !noalias !294

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33, !noalias !293
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.m

_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit: ; preds = %bb.e
  %i.o = load i128, ptr %i.b, align 16, !noalias !293, !noundef !6
  %i.p = icmp eq i128 %i.o, 166215278244808769718339722483714545572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !293
  br i1 %i.p, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.d
  ret void

bb.j:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtCscAsMj0W7j8b_3std5panic13resume_unwind(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j) #35
  unreachable

bb.k:                                             ; preds = %_RINvMsb_NtNtCsbSS6DM8SDEO_5alloc5boxed7convertINtB8_3BoxDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBX_6marker4SendEL_E8downcastNtNtCsd9Lm8bEdjjY_5salsa9cancelled9CancelledECslLuZgPVt6hg_3ide.exit
  %i.q = load i8, ptr %i.i, align 1, !range !7, !noundef !6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.q, ptr %i.r, align 8
  store i64 -2, ptr %0, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 1) #36
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsd9Lm8bEdjjY_5salsa9cancelledNtB3_9Cancelled5catchNCNCINvMs1_CslLuZgPVt6hg_3ideNtB15_8Analysis7with_dbNCNvB11_14signature_help0INtNtCshzWfHUSfYae_4core6option6OptionNtNtB15_14signature_help13SignatureHelpEE00B29_EB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i = load i32, ptr %1, align 4, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i = load i32, ptr %i.c, align 4, !noundef !6
  invoke void @_RNvNtCslLuZgPVt6hg_3ide14signature_help14signature_help(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull align 8 %2, i32 noundef %.val.i, i32 noundef %.val1.i)
          to label %bb.d unwind label %bb.b
end_hunk_1
