Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cfg-be3bb60c55bf578b.cfg.327ef00847a80928-cgu.4?download=true
inline.NumInlined: 149
inline.NumDeleted: 68
begin_hunk_0_@_RNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_expr:bb.a
bb.cd:                                            ; preds = %.thread, %bb.ce, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.ce:                                            ; preds = %bb.cc
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val94 = load ptr, ptr %i.eo, align 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.ag, ptr %.val94)
  br label %bb.cd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit() unnamed_addr #2 {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token(ptr %.0.val, i16 noundef range(i16 149, 154) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #23
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit: ; preds = %bb.a
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 4
  %i.g = tail call { i64, ptr } @_RNvMsk_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_21SyntaxElementChildren3new(ptr noundef nonnull %.0.val) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  store i64 %i.h, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode20children_with_tokens.exit
  %i.k = invoke { i64, ptr } @_RNvXs8_NtCs9GitHPCrz2Q_5rowan3apiINtB5_21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.l, 2
  br i1 %.not.i, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs4kMRW8zVVbM_3cfg.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 10 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs4kMRW8zVVbM_3cfg.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !115, !noundef !5
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !noalias !115
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #22
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i unwind label %bb.m

_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs4kMRW8zVVbM_3cfg.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i, label %bb.f

bb.f:                                             ; preds = %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs4kMRW8zVVbM_3cfg.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  store ptr %i.m, ptr %i.a, align 8, !noalias !118
  %i.s = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.g, !noalias !115

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !115, !noundef !5
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4, !noalias !115
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #22
          to label %.body unwind label %bb.l, !noalias !115

bb.i:                                             ; preds = %bb.f
  %i.y = icmp eq i16 %i.s, %0
  br i1 %i.y, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs4kMRW8zVVbM_3cfg.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !noalias !115, !noundef !5
  %i.ab = add i32 %i.aa, -1                       ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !noalias !115
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs4kMRW8zVVbM_3cfg.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.m) #22
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs4kMRW8zVVbM_3cfg.exit.i.i unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19, !noalias !115
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs4kMRW8zVVbM_3cfg.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.i ], [ null, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs4kMRW8zVVbM_3cfg.exit.i.i, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs4kMRW8zVVbM_3cfg.exit.i.i, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB1W_3ast7support5tokens_0E0Cs4kMRW8zVVbM_3cfg.exit.i.i ], [ null, %_RNCNvNtNtCsjJXvCMGntp8_6syntax3ast7support5token0Cs4kMRW8zVVbM_3cfg.exit.i.i ], [ null, %bb.e ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i ] ; 2 uses
  %.not7.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not7.i, label %bb.c, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs4kMRW8zVVbM_3cfg.exit

bb.m:                                             ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i, %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.h, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.t, %bb.h ], [ %i.t, %bb.g ]
  %.val5 = load i64, ptr %i.b, align 8, !range !120, !noundef !5
  %.val6 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.af = icmp eq i64 %.val5, 2
  br i1 %i.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit, label %bb.n

bb.n:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !5
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i.i: ; preds = %bb.n
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit unwind label %bb.p

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs4kMRW8zVVbM_3cfg.exit: ; preds = %.noexc, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i
  %.sroa.0.0.i5 = phi ptr [ %.sroa.0.0.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB1j_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB28_11SyntaxTokenB2u_EEB3l_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvNtNtB2y_3ast7support5token0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3l_NCB4C_s_0E0E0Cs4kMRW8zVVbM_3cfg.exit.i ], [ null, %.noexc ]
  %.val3 = load i64, ptr %i.b, align 8, !range !120, !noundef !5
  %.val4 = load ptr, ptr %i.j, align 8            ; 3 uses
  %i.ak = icmp eq i64 %.val3, 2
  br i1 %i.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit12, label %bb.o

bb.o:                                             ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs4kMRW8zVVbM_3cfg.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !5
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i.i11: ; preds = %bb.o
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #22
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit12: ; preds = %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters10filter_map19filter_map_try_foldINtNtB8_13utility_types11NodeOrTokenINtB6_10SyntaxNodeBT_EINtB6_11SyntaxTokenBT_EEB4E_uINtNtNtB1S_3ops12control_flow11ControlFlowB4E_ENCNvNtNtBX_3ast7support5token0NCINvNvB1K_4find5checkB4E_NCB5U_s_0E0E0B57_ECs4kMRW8zVVbM_3cfg.exit, %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i5

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtB2h_3ast7support5token0EECs4kMRW8zVVbM_3cfg.exit: ; preds = %bb.n, %.body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs9GitHPCrz2Q_5rowan6cursor10SyntaxNodeECs4kMRW8zVVbM_3cfg.exit.sink.split.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !5  ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %2, align 8              ; 3 uses
  %.val2 = load ptr, ptr %1, align 8, !noundef !5 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %3, align 8              ; 3 uses
  %4 = icmp ne ptr %.val, null                    ; 2 uses
  %5 = icmp eq ptr %.val2, null                   ; 2 uses
  %i.a = xor i1 %4, %5
  br i1 %i.a, label %6, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

6:                                                ; preds = %bb.a
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %7 = icmp eq ptr %.val, %.val2
  %8 = icmp eq ptr %.val1, %.val3
  %spec.select.i = select i1 %7, i1 %8, i1 false
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %6
  tail call void @llvm.assume(i1 %5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %9 = icmp eq ptr %.val1, %.val3
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.shrunk.i = phi i1 [ %spec.select.i, %bb.b ], [ false, %bb.a ], [ %9, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXNtCs4kMRW8zVVbM_3cfg8cfg_exprNtB2_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef i8 @_RNvXs_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB4_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB6_7Display3fmtCs4kMRW8zVVbM_3cfg, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB6_5Debug3fmtCs4kMRW8zVVbM_3cfg, ptr %.sroa.47.0..sroa_idx, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !121, !noundef !5
  %i.j = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = tail call noundef zeroext i1 @_RNvXs5_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.b ], [ %i.l, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !19, !noundef !5
  switch i64 %i.f, label %default.unreachable147 [
    i64 0, label %bb.f
    i64 1, label %bb.b
    i64 2, label %bb.g
    i64 3, label %bb.k
    i64 4, label %bb.e
  ]

default.unreachable147:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !122, !noalias !125, !noundef !5
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !127
  store ptr %i.g, ptr %i.c, align 8, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !127
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.b, align 8, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  store ptr %i.c, ptr %i.a, align 8, !noalias !127
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB6_7Display3fmtCs4kMRW8zVVbM_3cfg, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !127
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8, !noalias !127
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB6_5Debug3fmtCs4kMRW8zVVbM_3cfg, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !127
  %i.k = load ptr, ptr %1, align 8, !alias.scope !125, !noalias !122, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !125, !noalias !122, !nonnull !5, !align !121, !noundef !5
  %i.n = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @2, ptr noundef nonnull %i.a), !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !127
  br label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noundef zeroext i1 @_RNvXs5_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtB6_7Display3fmtB19_, ptr %.sroa.418.0..sroa_idx, align 8
  %i.r = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !align !121, !noundef !5
  %i.u = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noundef nonnull @8, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !121, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !5, !nonnull !5
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 7) #24
  br label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.i, %bb.l, %bb.h, %bb.d, %bb.c, %bb.k, %bb.g, %.loopexit, %.loopexit140, %bb.f, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.aa, %bb.f ], [ %i.u, %bb.e ], [ true, %bb.k ], [ true, %bb.h ], [ %i.p, %bb.d ], [ %i.au, %.loopexit140 ], [ %i.bu, %.loopexit ], [ true, %bb.g ], [ %i.n, %bb.c ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.i ], [ true, %bb.m ], [ true, %bb.n ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !121, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !invariant.load !5, !nonnull !5
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 4) #24
  br i1 %i.ag, label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit, label %.peel.begin136

.peel.begin136:                                   ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5 ; 3 uses
  %.idx148 = mul nuw nsw i64 %i.ak, 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx148
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %.loopexit140, label %bb.h

bb.h:                                             ; preds = %.peel.begin136
  %i.an = tail call noundef zeroext i1 @_RNvXs1_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.an, label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit, label %.peel.next137.preheader

.peel.next137.preheader:                          ; preds = %bb.h
  %i.ao = icmp eq i64 %i.ak, 1
  br i1 %i.ao, label %.loopexit140, label %.lr.ph156

.lr.ph156:                                        ; preds = %.peel.next137.preheader
  %.sroa.0.0154 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  br label %bb.j

.peel.next137:                                    ; preds = %bb.i
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.0155, i64 24 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.0.0, %i.al
  br i1 %i.ap, label %.loopexit140, label %bb.j, !llvm.loop !128

.loopexit140:                                     ; preds = %.peel.next137, %.peel.next137.preheader, %.peel.begin136
  %i.aq = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ar = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !121, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !invariant.load !5, !nonnull !5
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 1) #24
  br label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

bb.i:                                             ; preds = %bb.j
  %i.av = tail call noundef zeroext i1 @_RNvXs1_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0155, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.av, label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit, label %.peel.next137, !llvm.loop !128

bb.j:                                             ; preds = %.lr.ph156, %.peel.next137
  %.sroa.0.0155 = phi ptr [ %.sroa.0.0154, %.lr.ph156 ], [ %.sroa.0.0, %.peel.next137 ] ; 2 uses
  %i.aw = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ax = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !121, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !invariant.load !5, !nonnull !5
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull %i.aw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2) #24
  br i1 %i.ba, label %_RNvXs0_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit, label %bb.i

bb.k:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !align !121, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
end_hunk_0
