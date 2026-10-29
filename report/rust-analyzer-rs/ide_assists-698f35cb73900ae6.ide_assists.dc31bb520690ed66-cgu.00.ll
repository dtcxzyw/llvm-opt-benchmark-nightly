Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.00?download=true
inline.NumInlined: 10380
inline.NumDeleted: 5557
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtB6_9enumerate9EnumerateINtNtB6_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIBO_INtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB62_3api10SyntaxNodeNtNtB31_11syntax_node12RustLanguageEINtB6R_11SyntaxTokenB7d_EEEINtB6R_21SyntaxElementChildrenB7d_EENCB3O_s_0EINtNtB6_10take_while9TakeWhileINtNtB6_4skip4SkipB8e_ENCB3O_s0_0EENtNtNtB8_6traits8iterator8Iterator4nextB3W_:bb.a
bb.bt:                                            ; preds = %bb.br
  %i.gg = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fv)
          to label %.noexc.i.i.i unwind label %bb.cb

.noexc.i.i.i:                                     ; preds = %bb.bt, %bb.bs
  %.sroa.02.0.i.i.i.i.i.i.i = phi i32 [ %i.gf, %bb.bs ], [ %i.gg, %bb.bt ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8
  %.sroa.03.0.i.i.i.i.i.i.i = load ptr, ptr %i.gh, align 8, !nonnull !7, !noundef !7
  %i.gi = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 60
  %i.gj = load i8, ptr %i.gi, align 4, !range !11, !noundef !7
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.bv, label %bb.bu, !prof !12

bb.bu:                                            ; preds = %.noexc.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 56
  %i.gm = load i32, ptr %i.gl, align 8, !noundef !7
  br label %_RNvXsq_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i

bb.bv:                                            ; preds = %.noexc.i.i.i
  %i.gn = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val3.i.i.i.i)
          to label %_RNvXsq_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i unwind label %bb.cb

_RNvXsq_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %.sroa.04.0.i.i.i.i.i.i.i = phi i32 [ %i.gm, %bb.bu ], [ %i.gn, %bb.bv ]
  %i.go = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.03.0.i.i.i.i.i.i.i
  %i.gp = icmp eq i32 %.sroa.02.0.i.i.i.i.i.i.i, %.sroa.04.0.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = and i1 %i.go, %i.gp
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %bb.cd, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBN_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1C_11SyntaxTokenB1X_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB3u_5ChainINtNtB3w_7flatten7FlatMapINtNtB3w_9enumerate9EnumerateINtNtB3w_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtB21_3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIB3Y_INtB3_8IntoIterBI_EINtB1C_21SyntaxElementChildrenB1X_EENCB6L_s_0EINtNtB3w_10take_while9TakeWhileINtNtB3w_4skip4SkipB8Q_ENCB6L_s0_0EENtNtNtB3y_6traits8iterator8Iterator4next0EB6T_.exit

bb.bw:                                            ; preds = %bb.bq
  br i1 %i.gd, label %bb.by, label %bb.bx, !prof !12

bb.bx:                                            ; preds = %bb.bw
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.gr = load i32, ptr %i.gq, align 8, !noundef !7
  br label %.noexc15.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.gs = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.fv)
          to label %.noexc15.i.i.i unwind label %bb.cb

.noexc15.i.i.i:                                   ; preds = %bb.by, %bb.bx
  %.sroa.02.0.i.i6.i.i.i.i.i = phi i32 [ %i.gr, %bb.bx ], [ %i.gs, %bb.by ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8
  %.sroa.03.0.i.i7.i.i.i.i.i = load ptr, ptr %i.gt, align 8, !nonnull !7, !noundef !7
  %i.gu = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 60
  %i.gv = load i8, ptr %i.gu, align 4, !range !11, !noundef !7
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.ca, label %bb.bz, !prof !12

bb.bz:                                            ; preds = %.noexc15.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 56
  %i.gy = load i32, ptr %i.gx, align 8, !noundef !7
  br label %bb.cc

bb.ca:                                            ; preds = %.noexc15.i.i.i
  %i.gz = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %.val3.i.i.i.i)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by, %bb.bv, %bb.bt
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fv, i64 48 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !noundef !7
  %i.hd = add i32 %i.hc, -1                       ; 2 uses
  store i32 %i.hd, ptr %i.hb, align 8
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i: ; preds = %bb.cb
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fv) #31
          to label %common.resume unwind label %bb.ce

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.04.0.i.i8.i.i.i.i.i = phi i32 [ %i.gy, %bb.bz ], [ %i.gz, %bb.ca ]
  %i.hf = icmp eq ptr %.sroa.01.0.i.i.i.i.i.i.i, %.sroa.03.0.i.i7.i.i.i.i.i
  %i.hg = icmp eq i32 %.sroa.02.0.i.i6.i.i.i.i.i, %.sroa.04.0.i.i8.i.i.i.i.i
  %.sroa.0.0.i.i9.i.i.i.i.i = and i1 %i.hf, %i.hg
  br i1 %.sroa.0.0.i.i9.i.i.i.i.i, label %bb.cd, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBN_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1C_11SyntaxTokenB1X_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB3u_5ChainINtNtB3w_7flatten7FlatMapINtNtB3w_9enumerate9EnumerateINtNtB3w_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtB21_3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIB3Y_INtB3_8IntoIterBI_EINtB1C_21SyntaxElementChildrenB1X_EENCB6L_s_0EINtNtB3w_10take_while9TakeWhileINtNtB3w_4skip4SkipB8Q_ENCB6L_s0_0EENtNtNtB3y_6traits8iterator8Iterator4next0EB6T_.exit

bb.cd:                                            ; preds = %bb.cc, %_RNvXsq_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i
  store i8 1, ptr %i.fn, align 8, !alias.scope !15238
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fv, i64 48 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8, !noundef !7
  %i.hj = add i32 %i.hi, -1                       ; 2 uses
  store i32 %i.hj, ptr %i.hh, align 8
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i18.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBN_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1C_11SyntaxTokenB1X_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB3u_5ChainINtNtB3w_7flatten7FlatMapINtNtB3w_9enumerate9EnumerateINtNtB3w_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtB21_3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIB3Y_INtB3_8IntoIterBI_EINtB1C_21SyntaxElementChildrenB1X_EENCB6L_s_0EINtNtB3w_10take_while9TakeWhileINtNtB3w_4skip4SkipB8Q_ENCB6L_s0_0EENtNtNtB3y_6traits8iterator8Iterator4next0EB6T_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i18.i.i.i: ; preds = %bb.cd
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.fv) #31
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBN_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1C_11SyntaxTokenB1X_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB3u_5ChainINtNtB3w_7flatten7FlatMapINtNtB3w_9enumerate9EnumerateINtNtB3w_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtB21_3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIB3Y_INtB3_8IntoIterBI_EINtB1C_21SyntaxElementChildrenB1X_EENCB6L_s_0EINtNtB3w_10take_while9TakeWhileINtNtB3w_4skip4SkipB8Q_ENCB6L_s0_0EENtNtNtB3y_6traits8iterator8Iterator4next0EB6T_.exit

bb.ce:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBN_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1C_11SyntaxTokenB1X_EEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB3u_5ChainINtNtB3w_7flatten7FlatMapINtNtB3w_9enumerate9EnumerateINtNtB3w_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtB21_3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIB3Y_INtB3_8IntoIterBI_EINtB1C_21SyntaxElementChildrenB1X_EENCB6L_s_0EINtNtB3w_10take_while9TakeWhileINtNtB3w_4skip4SkipB8Q_ENCB6L_s0_0EENtNtNtB3y_6traits8iterator8Iterator4next0EB6T_.exit: ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1q_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2f_11SyntaxTokenB2B_EEEINtB2f_21SyntaxElementChildrenB2B_EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsiU5vK8fN4ZC_11ide_assists.exit.i7.i.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1x_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2m_11SyntaxTokenB2I_EEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i13.i.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_5chain5ChainINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2I_11SyntaxTokenB34_EEEINtB2I_21SyntaxElementChildrenB34_EEB1O_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit16.loopexit.split.loop.exit.i.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1x_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2m_11SyntaxTokenB2I_EEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i, %bb.bk, %bb.bl, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i, %bb.bp, %_RNvXsq_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i, %bb.cc, %bb.cd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i18.i.i.i
  %.pn14.i = phi i64 [ 2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i18.i.i.i ], [ 2, %bb.bk ], [ 2, %bb.bl ], [ 2, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ], [ 1, %_RNvXsq_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i ], [ 2, %bb.cd ], [ 0, %bb.cc ], [ %i.fu, %bb.bp ], [ %i.fb, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1q_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2f_11SyntaxTokenB2B_EEEINtB2f_21SyntaxElementChildrenB2B_EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsiU5vK8fN4ZC_11ide_assists.exit.i7.i.i.i.i ], [ %i.ev, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1x_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2m_11SyntaxTokenB2I_EEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i13.i.i.i.i ], [ %i.t, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_5chain5ChainINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2I_11SyntaxTokenB34_EEEINtB2I_21SyntaxElementChildrenB34_EEB1O_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit16.loopexit.split.loop.exit.i.i.i.i ], [ %i.q, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1x_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2m_11SyntaxTokenB2I_EEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i ]
  %.pn12.i = phi ptr [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i18.i.i.i ], [ undef, %bb.bk ], [ undef, %bb.bl ], [ undef, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i ], [ %i.fv, %_RNvXsq_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i ], [ undef, %bb.cd ], [ %i.fv, %bb.cc ], [ %i.fv, %bb.bp ], [ %i.fc, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1q_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2f_11SyntaxTokenB2B_EEEINtB2f_21SyntaxElementChildrenB2B_EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsiU5vK8fN4ZC_11ide_assists.exit.i7.i.i.i.i ], [ %i.ex, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1x_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2m_11SyntaxTokenB2I_EEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i13.i.i.i.i ], [ %i.et, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_5chain5ChainINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1T_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2I_11SyntaxTokenB34_EEEINtB2I_21SyntaxElementChildrenB34_EEB1O_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit16.loopexit.split.loop.exit.i.i.i.i ], [ %i.p, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1x_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2m_11SyntaxTokenB2I_EEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i.i.i.i ]
  %.pn.i = insertvalue { i64, ptr } poison, i64 %.pn14.i, 0
  %.merged.i = insertvalue { i64, ptr } %.pn.i, ptr %.pn12.i, 1
  ret { i64, ptr } %.merged.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtB6_9enumerate9EnumerateINtNtB6_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIBO_INtNtBa_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB62_3api10SyntaxNodeNtNtB31_11syntax_node12RustLanguageEINtB6R_11SyntaxTokenB7d_EEEINtB6R_21SyntaxElementChildrenB7d_EENCB3O_s_0EINtNtB6_10take_while9TakeWhileINtNtB6_4skip4SkipB8e_ENCB3O_s0_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca i64, align 8                  ; 6 uses
  %.sroa.8 = alloca i64, align 8                  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !range !40, !noundef !7 ; 7 uses
  %.not = icmp eq i64 %i.b, -3
  %i.c = load i64, ptr %1, align 8, !range !21, !noundef !7
  %.not7 = icmp eq i64 %i.c, -1                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.o, label %bb.g

bb.c:                                             ; preds = %bb.a
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val12 = load i8, ptr %i.d, align 8, !range !11, !noundef !7
  %i.e = trunc nuw i8 %.val12 to i1
  br i1 %i.e, label %bb.e, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_0s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !15262
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_0s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_0s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit: ; preds = %bb.d, %bb.e
  %.sink.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  store i64 0, ptr %0, align 8, !alias.scope !15262
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit38

bb.f:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit38

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit38: ; preds = %bb.w, %bb.v, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit, %bb.f, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_0s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit
  %.sink43 = phi i64 [ 16, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit ], [ 8, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_0s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit ], [ 16, %bb.f ], [ 16, %bb.w ], [ 8, %bb.v ]
  %.sroa.46.0.sink = phi i64 [ %.sroa.46.0, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit ], [ %.sink.i, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_4skip4SkipINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_0s0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3k_.exit ], [ 0, %bb.f ], [ %i.ai, %bb.w ], [ 0, %bb.v ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink43
  store i64 %.sroa.46.0.sink, ptr %i.h, align 8
  ret void

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15266)
  %.not.i.i = icmp eq i64 %i.b, -2
  br i1 %.not.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !15267
  %.not.i.i.i.i.i = icmp eq i64 %i.b, -1
  %.not7.i.i.i.i.i = icmp eq i64 %.val3.i.i.i, -1 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = icmp ne i64 %i.b, 2
  %i.k = zext i1 %i.j to i64
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.7.0.shrunk.i.i = phi i1 [ %.not7.i.i.i.i.i, %bb.i ], [ true, %bb.g ], [ %.not7.i.i.i.i.i, %bb.h ] ; 2 uses
  %.sroa.11.0.i.i = phi i64 [ %i.k, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i64, ptr %i.l, align 8, !range !26, !alias.scope !15268, !noundef !7 ; 3 uses
  %.not53.i.i = icmp eq i64 %i.m, -2
  br i1 %.not53.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i = load i64, ptr %i.n, align 8, !alias.scope !15269
  %.not.i.i.i64.i.i = icmp eq i64 %i.m, -1
  %.not7.i.i.i65.i.i = icmp eq i64 %.val3.i63.i.i, -1 ; 2 uses
  br i1 %.not.i.i.i64.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = icmp ne i64 %i.m, 2
  %i.p = zext i1 %i.o to i64
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i: ; preds = %bb.k, %bb.j, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  %.sroa.12.0.i.i = phi i64 [ %i.p, %bb.k ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ 0, %bb.j ]
  %.sroa.774.0.shrunk.i.i = phi i1 [ %.not7.i.i.i65.i.i, %bb.k ], [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i ], [ %.not7.i.i.i65.i.i, %bb.j ] ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.12.0.i.i, %.sroa.11.0.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !15268, !noundef !7
  %.not54.i.i = icmp eq ptr %i.s, null
  br i1 %.not54.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !15268, !nonnull !7, !noundef !7
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val61.i.i = load ptr, ptr %i.u, align 8, !alias.scope !15268, !nonnull !7, !noundef !7
  %i.v = icmp eq ptr %.val61.i.i, %.val.i.i
  %op.rdx45 = select i1 %i.v, i1 %.sroa.7.0.shrunk.i.i, i1 false
  %op.rdx46 = select i1 %op.rdx45, i1 %.sroa.774.0.shrunk.i.i, i1 false
  br i1 %op.rdx46, label %bb.n, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit

bb.m:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i
  %or.cond55.i.i = select i1 %.sroa.7.0.shrunk.i.i, i1 %.sroa.774.0.shrunk.i.i, i1 false
  br i1 %or.cond55.i.i, label %bb.n, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  store i64 1, ptr %.sroa.5, align 8, !alias.scope !15270
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sink88.i.i.sroa.phi = phi ptr [ %.sroa.8, %bb.n ], [ %.sroa.5, %bb.m ], [ %.sroa.5, %bb.l ]
  %.sink.i.i = phi i64 [ %i.q, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ]
  store i64 %.sink.i.i, ptr %.sink88.i.i.sroa.phi, align 8, !alias.scope !15270
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !10, !noundef !7
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load i64, ptr %.sroa.8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val10 = load i8, ptr %i.w, align 8, !range !11, !noundef !7
  %i.x = trunc nuw i8 %.val10 to i1
  %i.y = trunc nuw i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. to i1
  %or.cond = and i1 %i.y, %i.x                    ; 2 uses
  %.sroa.46.0 = select i1 %or.cond, i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., i64 undef
  %.sroa.05.0 = zext i1 %or.cond to i64
  store i64 %i.q, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0, ptr %i.z, align 8
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit38

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15274)
  %.not.i.i15 = icmp eq i64 %i.b, -2
  br i1 %.not.i.i15, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i16 = load i64, ptr %i.aa, align 8, !alias.scope !15275
  %.not.i.i.i.i.i17 = icmp eq i64 %i.b, -1
  %.not7.i.i.i.i.i18 = icmp eq i64 %.val3.i.i.i16, -1 ; 2 uses
  br i1 %.not.i.i.i.i.i17, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = icmp ne i64 %i.b, 2
  %i.ac = zext i1 %i.ab to i64
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19: ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.7.0.shrunk.i.i20 = phi i1 [ %.not7.i.i.i.i.i18, %bb.q ], [ true, %bb.o ], [ %.not7.i.i.i.i.i18, %bb.p ] ; 2 uses
  %.sroa.11.0.i.i21 = phi i64 [ %i.ac, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !range !26, !alias.scope !15276, !noundef !7 ; 3 uses
  %.not53.i.i22 = icmp eq i64 %i.ae, -2
  br i1 %.not53.i.i22, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i26, label %bb.r

bb.r:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i63.i.i23 = load i64, ptr %i.af, align 8, !alias.scope !15277
  %.not.i.i.i64.i.i24 = icmp eq i64 %i.ae, -1
  %.not7.i.i.i65.i.i25 = icmp eq i64 %.val3.i63.i.i23, -1 ; 2 uses
  br i1 %.not.i.i.i64.i.i24, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i26, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = icmp ne i64 %i.ae, 2
  %i.ah = zext i1 %i.ag to i64
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i26

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i26: ; preds = %bb.s, %bb.r, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19
  %.sroa.12.0.i.i27 = phi i64 [ %i.ah, %bb.s ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19 ], [ 0, %bb.r ]
  %.sroa.774.0.shrunk.i.i28 = phi i1 [ %.not7.i.i.i65.i.i25, %bb.s ], [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit.i.i19 ], [ %.not7.i.i.i65.i.i25, %bb.r ] ; 2 uses
  %i.ai = add nuw nsw i64 %.sroa.12.0.i.i27, %.sroa.11.0.i.i21 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !15276, !noundef !7
  %.not54.i.i29 = icmp eq ptr %i.ak, null
  br i1 %.not54.i.i29, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i26
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val.i.i30 = load ptr, ptr %i.al, align 8, !alias.scope !15276, !nonnull !7, !noundef !7
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val61.i.i31 = load ptr, ptr %i.am, align 8, !alias.scope !15276, !nonnull !7, !noundef !7
  %i.an = icmp eq ptr %.val61.i.i31, %.val.i.i30
  %op.rdx = select i1 %i.an, i1 %.sroa.7.0.shrunk.i.i20, i1 false
  %op.rdx44 = select i1 %op.rdx, i1 %.sroa.774.0.shrunk.i.i28, i1 false
  br i1 %op.rdx44, label %bb.w, label %bb.v

bb.u:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtB3_8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1F_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB2u_11SyntaxTokenB2Q_EEEINtB2u_21SyntaxElementChildrenB2Q_EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECsiU5vK8fN4ZC_11ide_assists.exit66.i.i26
  %or.cond55.i.i37 = select i1 %.sroa.7.0.shrunk.i.i20, i1 %.sroa.774.0.shrunk.i.i28, i1 false
  br i1 %or.cond55.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 %i.ai, ptr %0, align 8, !alias.scope !15278
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit38

bb.w:                                             ; preds = %bb.u, %bb.t
  store i64 %i.ai, ptr %0, align 8, !alias.scope !15278
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ao, align 8, !alias.scope !15278
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEINtNtB7_5chain5ChainINtNtBb_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB5Z_3api10SyntaxNodeNtNtB2I_11syntax_node12RustLanguageEINtB6O_11SyntaxTokenB7a_EEEINtB6O_21SyntaxElementChildrenB7a_EENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3D_.exit38
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEINtB1N_11AstChildrenNtB1J_9WherePredENCINvYNtB1J_2FnNtNtNtB1P_13syntax_editor5edits22GetOrCreateWhereClause26get_or_create_where_clauseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB32_EE0EB4T_ENtNtNtB8_6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !alias.scope !15308, !noundef !7 ; 2 uses
  %.not.i = icmp eq i64 %i.a, 2
  br i1 %.not.i, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !10, !alias.scope !15309
  %i.e = trunc nuw i64 %.pre.i.i.i.i to i1
  br i1 %i.e, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9WherePredENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not.i.i.peel.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.peel.i.i.i, label %bb.d, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1V_5ChainINtNtB1X_7flatten7FlatMapINtB3_4IterNtBK_11WhereClauseEINtBO_11AstChildrenBI_ENCINvYNtBK_2FnNtNtNtBQ_13syntax_editor5edits22GetOrCreateWhereClause26get_or_create_where_clauseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EE0EB5p_ENtNtNtB1Z_6traits8iterator8Iterator4next0ECsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %bb.c
  %.val.i.i.peel.i.i.i = load i64, ptr %i.b, align 8, !range !10, !alias.scope !15309, !noundef !7
  %.val4.i.i.peel.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15309 ; 3 uses
  %i.g = icmp eq i64 %.val.i.i.peel.i.i.i, 0
  %i.h = icmp eq ptr %.val4.i.i.peel.i.i.i, null
  %or.cond.i.i.i.peel.i.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i.i.peel.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.peel.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val4.i.i.peel.i.i.i, i64 48 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !noundef !7
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 4
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.peel.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.peel.i.i.i) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.peel.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.peel.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  store i64 0, ptr %i.b, align 8, !alias.scope !15309
  %.pre.i = load i64, ptr %0, align 8, !range !10, !alias.scope !15310
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.peel.i.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.peel.i.i.i ], [ %i.a, %bb.b ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15311)
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %.loopexit6.i.i.i

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15312)
  %i.o = load ptr, ptr %i.d, align 8, !alias.scope !15313, !align !22, !noundef !7 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !15313
  %.not.i.i.i.peel.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.peel.i.i.i, label %.loopexit6.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.peel.i.i.i = load ptr, ptr %i.o, align 8, !noalias !15314, !nonnull !7, !noundef !7 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i.peel.i.i.i, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !15314, !noundef !7 ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %.loopexit7.i.i.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %i.p, align 4, !noalias !15314
  %i.t = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val.i.i.i.peel.i.i.i), !noalias !15314 ; 2 uses
  %.val.i.peel.i.i.i = load i64, ptr %i.b, align 8, !range !10, !alias.scope !15315, !noundef !7
  %.val4.i.peel.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15315 ; 3 uses
  %i.u = icmp eq i64 %.val.i.peel.i.i.i, 0
  %i.v = icmp eq ptr %.val4.i.peel.i.i.i, null
  %or.cond.i.i.peel.i.i.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i.i.peel.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val4.i.peel.i.i.i, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noundef !7
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.peel.i.i.i) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i unwind label %.loopexit.split-lp9.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  store i64 1, ptr %i.b, align 8, !alias.scope !15315
  store ptr %i.t, ptr %i.c, align 8, !alias.scope !15315
  %i.aa = tail call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9WherePredENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.not.i.i.i6.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i6.i.i, label %.lr.ph.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1V_5ChainINtNtB1X_7flatten7FlatMapINtB3_4IterNtBK_11WhereClauseEINtBO_11AstChildrenBI_ENCINvYNtBK_2FnNtNtNtBQ_13syntax_editor5edits22GetOrCreateWhereClause26get_or_create_where_clauseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EE0EB5p_ENtNtNtB1Z_6traits8iterator8Iterator4next0ECsiU5vK8fN4ZC_11ide_assists.exit

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i
  %.val.i.i.i.i.i = load i64, ptr %i.b, align 8, !range !10, !alias.scope !15309, !noundef !7
  %.val4.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15309 ; 3 uses
  %i.ab = icmp eq i64 %.val.i.i.i.i.i, 0
  %i.ac = icmp eq ptr %.val4.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i.i, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !7
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i.i.i) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

common.resume.i:                                  ; preds = %bb.z, %bb.x, %bb.w, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op.i = phi { ptr, i32 } [ %i.bi, %bb.z ], [ %lpad.loopexit.split-lp23, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bg, %bb.w ], [ %lpad.phi12.i.i.i, %bb.x ]
  resume { ptr, i32 } %common.resume.op.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.f
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.b, align 8, !alias.scope !15309
  br label %common.resume.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i: ; preds = %bb.m, %bb.l, %.lr.ph.i.i
  store i64 0, ptr %i.b, align 8, !alias.scope !15309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15316)
  %i.ah = load i64, ptr %0, align 8, !range !10, !alias.scope !15317, !noundef !7
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.n, label %.loopexit6.i.i.i

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15318)
  %i.aj = load ptr, ptr %i.d, align 8, !alias.scope !15319, !align !22, !noundef !7 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !15319
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit6.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !noalias !15320, !nonnull !7, !noundef !7 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !noalias !15320, !noundef !7 ; 2 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %.loopexit7.i.i.i, label %bb.p, !prof !12

.loopexit7.i.i.i:                                 ; preds = %bb.o, %bb.h
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34, !noalias !15320
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.an = add nuw i32 %i.al, 1
  store i32 %i.an, ptr %i.ak, align 4, !noalias !15320
  %i.ao = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.val.i.i.i.i.i.i), !noalias !15320 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !range !10, !alias.scope !15315, !noundef !7
  %.val4.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !15315 ; 3 uses
  %i.ap = icmp eq i64 %.val.i.i.i.i, 0
  %i.aq = icmp eq ptr %.val4.i.i.i.i, null
  %or.cond.i.i.i.i.i = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 48 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !noundef !7
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4.i.i.i.i) #31
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes9WherePredEEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i unwind label %.loopexit8.i.i.i

.loopexit6.i.i.i:                                 ; preds = %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, %bb.g, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredEECsiU5vK8fN4ZC_11ide_assists.exit.i.peel.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !10, !alias.scope !15321, !noundef !7
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.s, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtBe_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEINtB1r_11AstChildrenNtB1n_9WherePredENCINvYNtB1n_2FnNtNtNtB1t_13syntax_editor5edits22GetOrCreateWhereClause26get_or_create_where_clauseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterB2G_EE0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCsiU5vK8fN4ZC_11ide_assists.exit.i

bb.s:                                             ; preds = %.loopexit6.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.az = tail call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes9WherePredENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) ; 2 uses
  %.not.i8.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i8.i.i.i.i, label %bb.t, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9WherePredE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1V_5ChainINtNtB1X_7flatten7FlatMapINtB3_4IterNtBK_11WhereClauseEINtBO_11AstChildrenBI_ENCINvYNtBK_2FnNtNtNtBQ_13syntax_editor5edits22GetOrCreateWhereClause26get_or_create_where_clauseINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterBI_EE0EB5p_ENtNtNtB1Z_6traits8iterator8Iterator4next0ECsiU5vK8fN4ZC_11ide_assists.exit

bb.t:                                             ; preds = %bb.s
  %.val.i9.i.i.i.i = load i64, ptr %i.av, align 8, !range !10, !alias.scope !15321, !noundef !7
end_hunk_0
