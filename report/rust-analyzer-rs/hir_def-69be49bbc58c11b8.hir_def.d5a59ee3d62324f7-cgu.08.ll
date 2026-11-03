Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.08?download=true
inline.NumInlined: 3532
inline.NumDeleted: 1667
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9TokenTreeECsileJQcQObtj_7hir_def:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #42
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.a
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 4
  %i.g = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.0.val)
  store ptr %i.g, ptr %i.b, align 8
  %i.h = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %.not12.i = icmp eq ptr %i.h, null
  br i1 %.not12.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc7
  %i.i = phi ptr [ %i.v, %.noexc7 ], [ %i.h, %.noexc ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1059
  store ptr %i.i, ptr %i.a, align 8, !noalias !1059
  %i.j = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !5
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #45
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i16 %i.j, 294
  br i1 %i.p, label %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsileJQcQObtj_7hir_def.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !noundef !5
  %i.s = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.s, ptr %i.q, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0CsileJQcQObtj_7hir_def.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #45
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0CsileJQcQObtj_7hir_def.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0CsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1059
  %i.v = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc7:                                          ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0CsileJQcQObtj_7hir_def.exit.i
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes9TokenTreeNvYB2M_NtB2S_7AstNode4castE0CsileJQcQObtj_7hir_def.exit.i, %bb.g, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val3 = load ptr, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.w = icmp eq ptr %.val3, null
  br i1 %i.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !noundef !5
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #45
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit unwind label %bb.m

_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsileJQcQObtj_7hir_def.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1059
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEECsileJQcQObtj_7hir_def.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEECsileJQcQObtj_7hir_def.exit: ; preds = %.noexc7, %.noexc, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsileJQcQObtj_7hir_def.exit
  %i.ab = phi ptr [ %i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes9TokenTreeNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECsileJQcQObtj_7hir_def.exit ], [ null, %.noexc ], [ null, %.noexc7 ]
  %.val = load ptr, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.ac = icmp eq ptr %.val, null
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEECsileJQcQObtj_7hir_def.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !5
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #45
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit9: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeEECsileJQcQObtj_7hir_def.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.ab

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #46
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsileJQcQObtj_7hir_def.exit: ; preds = %bb.i, %.body, %bb.j
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsmEEENCNvNtB2I_10import_map11search_maps0ENCB3v_s_0ENCB3v_s0_0ENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4y_7HashSetTB2E_NtB2I_8CompleteENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendB5h_E6extendBX_E0ENtNtB6p_8iterator8Iterator4folduNCINvNvB78_8for_each4callTB5h_uENCINvXs1i_NtB4A_3mapINtB8k_7HashMapB5h_uB5C_EIB6l_B83_E6extendBN_E0E0EB2I_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1072, !nonnull !5, !align !18, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1074, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1074, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1075
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !alias.scope !1074
  store <2 x ptr> %i.h, ptr %i.a, align 16, !noalias !1075
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.i, align 16, !noalias !1075
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.j, align 8, !noalias !1075
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsmEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_10filter_map15filter_map_foldB1s_TB1t_RNtNtB1x_10import_map10ImportInfoEuNCNvB3L_11search_maps0NCINvNtB7_6filter11filter_foldB3D_uNCB4j_s_0NCINvNtB7_3map8map_foldB3D_TB1t_NtB1x_8CompleteEuNCB4j_s0_0NCIB5o_B5M_TB5M_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6K_7HashSetB5M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2m_7collect6ExtendB5M_E6extendINtB5q_3MapINtB4I_6FilterINtB31_9FilterMapBP_B4h_EB5c_EB68_EE0NCINvNvB2i_8for_each4callB6t_NCINvXs1i_NtB6M_3mapINtBas_7HashMapB5M_uB7x_EIB8g_B6t_E6extendIB8Q_B8P_B6B_EE0E0E0E0E0E0EB1x_(ptr noundef nonnull %i.d, ptr noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !1074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1075
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3str4iter5SplitcENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1y_6Symbol6internENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB2w_7HashSetB22_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBa_6traits7collect6ExtendB22_E6extendBX_E0ENtNtB46_8iterator8Iterator4folduNCINvNvB4P_8for_each4callTB22_uENCINvXs1i_NtB2y_3mapINtB61_7HashMapB22_uB3j_EIB42_B5K_E6extendBN_E0E0ECsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65
  %.promoted.i.i = load i8, ptr %i.a, align 1, !alias.scope !1093
  %.promoted9.i.i = load i64, ptr %0, align 8, !alias.scope !1094 ; 5 uses
  %i.b = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.b, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1Y_TB1Y_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3z_7HashSetB1Y_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2n_7collect6ExtendB1Y_E6extendBN_E0NCINvNvB2j_8for_each4callB3i_NCINvXs1i_NtB3B_3mapINtB6m_7HashMapB1Y_uB4m_EIB55_B3i_E6extendIBO_BN_B3q_EE0E0E0ECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1093, !nonnull !5, !noundef !5 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !1093, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1095, !noundef !5 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.f, %.val1.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i8, ptr %i.h, align 8, !alias.scope !1094 ; 2 uses
  %i.j = zext nneg i8 %i.i to i64                 ; 4 uses
  %i.k = icmp ult i8 %i.i, 5
  %i.l = getelementptr i8, ptr %i.g, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !range !13, !alias.scope !1094
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !1094 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.promoted13.i.i = load i64, ptr %i.q, align 8, !alias.scope !1095 ; 2 uses
  %i.r = icmp ult i64 %i.f, %.promoted13.i.i
  br i1 %i.r, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.lr.ph.i

.lr.ph.split.preheader.i.i.i.i.lr.ph.i:           ; preds = %.lr.ph.split.preheader.i.i
  tail call void @llvm.assume(i1 %i.k)
  %.pre.i.i.i.i.i = load i8, ptr %i.m, align 1, !alias.scope !1095 ; 2 uses
  br label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted9.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.us.i.i
  br i1 %or.cond.not.i.i.i.us.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.us.us.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1Y_TB1Y_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3z_7HashSetB1Y_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2n_7collect6ExtendB1Y_E6extendBN_E0NCINvNvB2j_8for_each4callB3i_NCINvXs1i_NtB3B_3mapINtB6m_7HashMapB1Y_uB4m_EIB55_B3i_E6extendIBO_BN_B3q_EE0E0E0ECsileJQcQObtj_7hir_def.exit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.us.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted9.i.i
  %i.s = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted9.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.t = tail call noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i, i64 noundef %i.s), !noalias !1099
  br label %._crit_edge.sink.split.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %select.unfold.i.i, %.lr.ph.split.preheader.i.i.i.i.lr.ph.i
  %.lcssa71112.i5.i = phi i64 [ %.promoted9.i.i, %.lr.ph.split.preheader.i.i.i.i.lr.ph.i ], [ %i.ak, %select.unfold.i.i ] ; 4 uses
  %i.u = phi i64 [ %.promoted13.i.i, %.lr.ph.split.preheader.i.i.i.i.lr.ph.i ], [ %i.ak, %select.unfold.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i
  %i.v = phi i64 [ %i.ak, %bb.e ], [ %i.u, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.w = sub nuw i64 %i.f, %i.v                   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.v ; 2 uses
  %i.y = icmp samesign ult i64 %i.w, 16
  br i1 %i.y, label %.preheader.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.z = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef range(i64 0, -9223372036854775808) %i.w), !noalias !1100
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !1101, !noalias !1100, !noundef !5
  %i.ae = icmp eq i8 %i.ad, %.pre.i.i.i.i.i
  br i1 %i.ae, label %._crit_edge.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.af, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ab, %._crit_edge.i.i.i.i.i.i ], [ %i.z, %bb.b ] ; 2 uses
  %i.ag = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.i.i

bb.d:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ai = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.aj = add i64 %i.v, 1
  %i.ak = add i64 %i.aj, %i.ai                    ; 9 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.ak, %i.j
  %.not12.i.i.i.i.i = icmp ugt i64 %i.ak, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.al = icmp ult i64 %i.f, %i.ak
  br i1 %i.al, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.am = sub nuw i64 %i.ak, %i.j                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.am
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.an, ptr nonnull readonly %i.g, i64 %i.j), !noalias !1102
  %i.ao = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ao, label %select.unfold.i.i, label %bb.e

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.i.i: ; preds = %select.unfold.i.i, %bb.e, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i, %.lr.ph.split.preheader.i.i
  %.lcssa71112.i4.i = phi i64 [ %.promoted9.i.i, %.lr.ph.split.preheader.i.i ], [ %.lcssa71112.i5.i, %bb.e ], [ %.lcssa71112.i5.i, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.ak, %select.unfold.i.i ] ; 3 uses
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa71112.i4.i
  %or.cond.not.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %._crit_edge.loopexit.critedge.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1Y_TB1Y_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3z_7HashSetB1Y_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2n_7collect6ExtendB1Y_E6extendBN_E0NCINvNvB2j_8for_each4callB3i_NCINvXs1i_NtB3B_3mapINtB6m_7HashMapB1Y_uB4m_EIB55_B3i_E6extendIBO_BN_B3q_EE0E0E0ECsileJQcQObtj_7hir_def.exit

select.unfold.i.i:                                ; preds = %bb.f
  %.sroa.4.1.i.i.i.i = sub nuw i64 %i.am, %.lcssa71112.i5.i
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa71112.i5.i
  %i.ap = tail call noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i), !noalias !1094
  %i.aq = tail call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs39E2wp1vf7X_6intern6symbol6SymboluNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.ap), !noalias !1094 ; 0 uses
  %i.ar = icmp ult i64 %i.f, %i.ak
  br i1 %i.ar, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

._crit_edge.loopexit.critedge.i.i:                ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.i.i
  %.sroa.4.1.i.i.c.i.i = sub nuw i64 %.pre2.i.i.i.i.i, %.lcssa71112.i4.i
  %.sroa.0.1.i.i.c.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa71112.i4.i
  %i.as = tail call noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.c.i.i, i64 noundef %.sroa.4.1.i.i.c.i.i), !noalias !1094
  br label %._crit_edge.sink.split.i.i

._crit_edge.sink.split.i.i:                       ; preds = %._crit_edge.loopexit.critedge.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.us.us.i.i
  %.sink.i.i = phi ptr [ %i.as, %._crit_edge.loopexit.critedge.i.i ], [ %i.t, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.us.us.i.i ]
  %2 = tail call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs39E2wp1vf7X_6intern6symbol6SymboluNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.sink.i.i), !noalias !1094 ; 0 uses
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1Y_TB1Y_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3z_7HashSetB1Y_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2n_7collect6ExtendB1Y_E6extendBN_E0NCINvNvB2j_8for_each4callB3i_NCINvXs1i_NtB3B_3mapINtB6m_7HashMapB1Y_uB4m_EIB55_B3i_E6extendIBO_BN_B3q_EE0E0E0ECsileJQcQObtj_7hir_def.exit

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldB1Y_TB1Y_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB3z_7HashSetB1Y_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2n_7collect6ExtendB1Y_E6extendBN_E0NCINvNvB2j_8for_each4callB3i_NCINvXs1i_NtB3B_3mapINtB6m_7HashMapB1Y_uB4m_EIB55_B3i_E6extendIBO_BN_B3q_EE0E0E0ECsileJQcQObtj_7hir_def.exit: ; preds = %bb.a, %.lr.ph.split.us.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsileJQcQObtj_7hir_def.exit.i.i.i.i, %._crit_edge.sink.split.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB14_22DedupPred2CoalescePredNtB14_7DedupEqENtB14_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4B_9ItemScope7entries0ENCNvB4x_11resolutions0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvB6_12map_try_foldTINtNtBc_6option6OptionB2P_ENtNtB4D_6per_ns5PerNsEB73_uINtNtNtBc_3ops12control_flow11ControlFlowB73_ENCNvMs0_NtNtB4D_7nameres9collectorNtB8O_12DefCollector22record_resolved_imports1_0NCINvNvB5Y_4find5checkB73_QNCB8I_s2_0E0E0B7W_EB4D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 3 uses
  %i.c = alloca [136 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.e = tail call noundef align 8 ptr @_RNvXs0_NtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1128 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports1_0NCINvNvB5x_4find5checkB72_QNCB93_s2_0E0E0E0B7A_EB4z_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1129
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1126, !noalias !1130, !nonnull !5, !align !18, !noundef !5
  call void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope3get(ptr noalias nofree noundef nonnull sret([128 x i8]) align 4 captures(none) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false), !noalias !1133
  %i.i = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h), !noalias !1134
  store ptr %i.i, ptr %i.a, align 8, !noalias !1132
  call fastcc void @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTINtNtBa_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCNvMs0_NtNtB25_7nameres9collectorNtB3A_12DefCollector22record_resolved_imports1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_QNCB3u_s2_0E0E0B25_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.a) #47, !noalias !1135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.j = load i32, ptr %i.g, align 8, !range !33, !alias.scope !1137, !noalias !1129, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.j, -2
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.c, align 8, !alias.scope !1138, !noalias !1129
  %.sroa.7.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(124) %.sroa.7.0..sroa_idx4.i.i, i64 124, i1 false), !noalias !1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1129
  store i64 %.sroa.0.0.copyload1.i.i, ptr %0, align 8, !alias.scope !1140
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports1_0NCINvNvB5x_4find5checkB72_QNCB93_s2_0E0E0E0B7A_EB4z_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1129
  %i.k = tail call noundef align 8 ptr @_RNvXs0_NtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1141 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports1_0NCINvNvB5x_4find5checkB72_QNCB93_s2_0E0E0E0B7A_EB4z_.exit, label %bb.b

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports1_0NCINvNvB5x_4find5checkB72_QNCB93_s2_0E0E0E0B7A_EB4z_.exit: ; preds = %bb.d, %bb.a, %bb.c
  %.sink.i = phi i32 [ %i.j, %bb.c ], [ -2, %bb.a ], [ -2, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i, ptr %i.l, align 8, !alias.scope !1141
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB14_22DedupPred2CoalescePredNtB14_7DedupEqENtB14_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4B_9ItemScope7entries0ENCNvB4x_11resolutions0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvB6_12map_try_foldTINtNtBc_6option6OptionB2P_ENtNtB4D_6per_ns5PerNsEB73_uINtNtNtBc_3ops12control_flow11ControlFlowB73_ENCNvMs0_NtNtB4D_7nameres9collectorNtB8O_12DefCollector22record_resolved_imports_0NCINvNvB5Y_4find5checkB73_QNCB8I_s0_0E0E0B7W_EB4D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 3 uses
  %i.c = alloca [136 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.e = tail call noundef align 8 ptr @_RNvXs0_NtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1167 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports_0NCINvNvB5x_4find5checkB72_QNCB93_s0_0E0E0E0B7A_EB4z_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.h = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1168
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1165, !noalias !1169, !nonnull !5, !align !18, !noundef !5
  call void @_RNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB5_9ItemScope3get(ptr noalias nofree noundef nonnull sret([128 x i8]) align 4 captures(none) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h), !noalias !1170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false), !noalias !1172
  %i.i = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h), !noalias !1173
  store ptr %i.i, ptr %i.a, align 8, !noalias !1171
  call fastcc void @_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTINtNtBa_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def6per_ns5PerNsEBZ_uINtNtNtBa_3ops12control_flow11ControlFlowBZ_ENCNvMs0_NtNtB25_7nameres9collectorNtB3A_12DefCollector22record_resolved_imports_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkBZ_QNCB3u_s0_0E0E0B25_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(136) %i.a) #47, !noalias !1174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.j = load i32, ptr %i.g, align 8, !range !33, !alias.scope !1176, !noalias !1168, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.j, -2
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.c, align 8, !alias.scope !1177, !noalias !1168
  %.sroa.7.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(124) %.sroa.7.0..sroa_idx4.i.i, i64 124, i1 false), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1168
  store i64 %.sroa.0.0.copyload1.i.i, ptr %0, align 8, !alias.scope !1179
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports_0NCINvNvB5x_4find5checkB72_QNCB93_s0_0E0E0E0B7A_EB4z_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1168
  %i.k = tail call noundef align 8 ptr @_RNvXs0_NtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !1180 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports_0NCINvNvB5x_4find5checkB72_QNCB93_s0_0E0E0E0B7A_EB4z_.exit, label %bb.b

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCscFGNKo4Sl5v_9itertools8adaptors8coalesce10CoalesceByINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtCs33K2ylI4knu_10hir_expand4name4NameEINtB10_22DedupPred2CoalescePredNtB10_7DedupEqENtB10_7NoCountENCNvMs1_NtCsileJQcQObtj_7hir_def10item_scopeNtB4x_9ItemScope7entries0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTB2K_NtNtB4z_6per_ns5PerNsETINtNtBc_6option6OptionB2L_EB6G_EuINtNtNtBc_3ops12control_flow11ControlFlowB72_ENCNvB4t_11resolutions0QNCIB6i_B72_B72_uB7A_NCNvMs0_NtNtB4z_7nameres9collectorNtB99_12DefCollector22record_resolved_imports_0NCINvNvB5x_4find5checkB72_QNCB93_s0_0E0E0E0B7A_EB4z_.exit: ; preds = %bb.d, %bb.a, %bb.c
  %.sink.i = phi i32 [ %i.j, %bb.c ], [ -2, %bb.a ], [ -2, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i, ptr %i.l, align 8, !alias.scope !1180
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB31_9AttrQuery5attrs0ENCNvB2X_9tt_values0ENCNvMs1_NtNtB35_7nameres9collectorNtB4x_12ModCollector19collect_macro_ruless_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB6z_13FlattenCompatppE13iter_try_fold7flattenNtNtCs4dcH4YgJDq_2tt4iter6TtIteruINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvXsi_B6z_B6M_B5G_8try_fold7flattenB7y_uB85_NCINvNvB5G_3any5checkNtB7A_9TtElementNCB4r_s0_0E0E0E0B85_EB35_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1208, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.promoted.i.i.i, %i.f
  br i1 %.not.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2L_9AttrQuery5attrs0ENCNvB2H_9tt_values0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtB5o_4iter6TtIteruINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs1_NtNtB2P_7nameres9collectorNtB78_12ModCollector19collect_macro_ruless_0NCINvNvMsg_NtB8_7flattenINtB8r_13FlattenCompatppE13iter_try_fold7flattenB5Y_uB6j_NCINvNvXsi_B8r_B8E_B49_8try_fold7flattenB5Y_uB6j_NCINvNvB49_3any5checkNtB60_9TtElementNCB72_s0_0E0E0E0E0B6j_EB2P_.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1209, !noalias !1210 ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.backedge.i.i.i, %.lr.ph.i.preheader.i.i
  %i.h = phi ptr [ %i.i, %.backedge.i.i.i ], [ %.promoted.i.i.i, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !1208
  call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !1211, !noalias !1212, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = call noundef align 8 ptr @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8as_ident(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k), !noalias !1213 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %.backedge.i.i.i, label %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery5attrs0Bb_.exit.i.i.i.i

_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery5attrs0Bb_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1213, !nonnull !5, !noundef !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %i.n = icmp eq ptr %i.m, %.val.i.i.i.i
  br i1 %i.n, label %bb.b, label %.backedge.i.i.i

bb.b:                                             ; preds = %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery5attrs0Bb_.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1211, !noalias !1212, !align !18, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val6.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.backedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.val6.i.i.i.i, align 8, !range !30, !noalias !1213, !noundef !5
  %.not1.i.i.i.i.i.i = icmp eq i64 %i.p, -1
  br i1 %.not1.i.i.i.i.i.i, label %.backedge.i.i.i, label %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery9tt_values0Bb_.exit.i.i.i.i.i

_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery9tt_values0Bb_.exit.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1213
  call void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree4iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val6.i.i.i.i), !noalias !1213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1215
  store ptr %1, ptr %i.c, align 8, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1216
  call void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2), !noalias !1217
  %i.q = load i64, ptr %i.b, align 8, !range !1218, !noalias !1216, !noundef !5
  %.not5.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.q, -2
  br i1 %.not5.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtB14_4iter6TtIteruINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB2O_12ModCollector19collect_macro_ruless_0NCINvNvMsg_NtB6_7flattenINtB4p_13FlattenCompatppE13iter_try_fold7flattenB1E_uB1Z_NCINvNvXsi_B4p_B4C_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1E_uB1Z_NCINvNvB5Q_3any5checkNtB1G_9TtElementNCB2I_s0_0E0E0E0E0B2S_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RNCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB7_9AttrQuery9tt_values0Bb_.exit.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !1216
  %i.r = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkNtNtCs4dcH4YgJDq_2tt4iter9TtElementNCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB2r_12ModCollector19collect_macro_ruless0_0E0INtB7_5FnMutTuB1K_EE8call_mutB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !noalias !1217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1216
  br i1 %i.r, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtB14_4iter6TtIteruINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB2O_12ModCollector19collect_macro_ruless_0NCINvNvMsg_NtB6_7flattenINtB4p_13FlattenCompatppE13iter_try_fold7flattenB1E_uB1Z_NCINvNvXsi_B4p_B4C_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1E_uB1Z_NCINvNvB5Q_3any5checkNtB1G_9TtElementNCB2I_s0_0E0E0E0E0B2S_.exit.i.i.thread.i.i.i, label %bb.d

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtB14_4iter6TtIteruINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs1_NtNtCsileJQcQObtj_7hir_def7nameres9collectorNtB2O_12ModCollector19collect_macro_ruless_0NCINvNvMsg_NtB6_7flattenINtB4p_13FlattenCompatppE13iter_try_fold7flattenB1E_uB1Z_NCINvNvXsi_B4p_B4C_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1E_uB1Z_NCINvNvB5Q_3any5checkNtB1G_9TtElementNCB2I_s0_0E0E0E0E0B2S_.exit.i.i.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1213
  br label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrENCNvMs4_NtNtCsileJQcQObtj_7hir_def9item_tree5attrsNtB2L_9AttrQuery5attrs0ENCNvB2H_9tt_values0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldRNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeNtNtB5o_4iter6TtIteruINtNtNtBc_3ops12control_flow11ControlFlowuENCNvMs1_NtNtB2P_7nameres9collectorNtB78_12ModCollector19collect_macro_ruless_0NCINvNvMsg_NtB8_7flattenINtB8r_13FlattenCompatppE13iter_try_fold7flattenB5Y_uB6j_NCINvNvXsi_B8r_B8E_B49_8try_fold7flattenB5Y_uB6j_NCINvNvB49_3any5checkNtB60_9TtElementNCB72_s0_0E0E0E0E0B6j_EB2P_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1216
  call void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2), !noalias !1217
end_hunk_0
