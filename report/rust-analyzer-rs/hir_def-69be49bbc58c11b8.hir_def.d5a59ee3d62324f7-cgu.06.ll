Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.06?download=true
inline.NumInlined: 3669
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB18_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2e_3ast9generated5nodes9MacroCallEENtB18_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def:bb.a
bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ar = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.as = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ar
  br label %bb.e

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2o_3ast9generated5nodes9MacroCallEERNtB1i_11MacroCallIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB45_7HashMapB1d_B3D_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0CsileJQcQObtj_7hir_def.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %.val5.i.i.i.i = load i32, ptr %i.at, align 4, !alias.scope !7914, !noalias !7897
  %i.au = getelementptr i8, ptr %i.aj, i64 -4
  %.val6.i.i.i.i = load i32, ptr %i.au, align 4, !alias.scope !7914, !noalias !7897, !noundef !31
  %i.av = icmp ne i32 %.val7.i, %.val6.i.i.i.i
  %i.aw = icmp ne i32 %.val6.i, %.val5.i.i.i.i
  %.sroa.0.0.i.i.i.i.not.i.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %.sroa.0.0.i.i.i.i.not.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB26_3ast9generated5nodes9MacroCallEENtB10_11MacroCallIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3E_3all5checkTRBV_RB3k_ENCNvXs4_B6_INtB6_7HashMapBV_B3k_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3M_3cmp9PartialEq2eq0E0INtNtNtB3M_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit, label %.split.i

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB26_3ast9generated5nodes9MacroCallEENtB10_11MacroCallIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3E_3all5checkTRBV_RB3k_ENCNvXs4_B6_INtB6_7HashMapBV_B3k_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3M_3cmp9PartialEq2eq0E0INtNtNtB3M_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit: ; preds = %.split.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2o_3ast9generated5nodes9MacroCallEERNtB1i_11MacroCallIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB45_7HashMapB1d_B3D_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0CsileJQcQObtj_7hir_def.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i, %bb.c
  %i.ax = phi i1 [ true, %.split.us.i ], [ false, %bb.c ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB2o_3ast9generated5nodes9MacroCallEERNtB1i_11MacroCallIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB45_7HashMapB1d_B3D_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0CsileJQcQObtj_7hir_def.exit.i ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB26_3ast9generated5nodes9MacroCallEENtB10_11MacroCallIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3E_3all5checkTRBV_RB3k_ENCNvXs4_B6_INtB6_7HashMapBV_B3k_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3M_3cmp9PartialEq2eq0E0INtNtNtB3M_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit
  %.sroa.0.0 = phi i1 [ %i.ax, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdINtNtCsjJXvCMGntp8_6syntax3ptr6AstPtrNtNtNtNtB26_3ast9generated5nodes9MacroCallEENtB10_11MacroCallIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3E_3all5checkTRBV_RB3k_ENCNvXs4_B6_INtB6_7HashMapBV_B3k_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3M_3cmp9PartialEq2eq0E0INtNtNtB3M_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB18_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2X_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !31 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBS_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB2G_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7952)
  %i.f = icmp eq i64 %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !7952 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !7952, !nonnull !31 ; 2 uses
  br i1 %i.f, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !7952
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %.not.us.not.i = icmp eq ptr %i.k, null
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7953)
  call void @llvm.experimental.noalias.scope.decl(metadata !7954)
  call void @llvm.experimental.noalias.scope.decl(metadata !7955)
  call void @llvm.experimental.noalias.scope.decl(metadata !7956)
  br label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdERNtCsileJQcQObtj_7hir_def7MacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3L_7HashMapB1d_B36_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B38_.exit.i
  %i.l = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBP_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !7952 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 5 uses
  %.not.not.not.i = icmp eq ptr %i.m, null        ; 5 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit, label %bb.d

bb.d:                                             ; preds = %.split.i
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7953)
  call void @llvm.experimental.noalias.scope.decl(metadata !7954)
  call void @llvm.experimental.noalias.scope.decl(metadata !7955)
  call void @llvm.experimental.noalias.scope.decl(metadata !7956)
  %i.o = load i32, ptr %i.m, align 4, !range !55, !alias.scope !7957, !noalias !7958, !noundef !31
  %i.p = zext nneg i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, -1065810590584100411
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.s = load i64, ptr %i.r, align 4, !alias.scope !7957, !noalias !7958
  %storemerge.in.i.i.i.i.i.i.i.i = add i64 %i.q, %i.s
  %storemerge.i.i.i.i.i.i.i.i = mul i64 %storemerge.in.i.i.i.i.i.i.i.i, -1065810590584100411
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.t, align 4, !alias.scope !7959, !noalias !7958, !noundef !31
  %i.u = zext i32 %.val.i.i.i.i.i.i.i to i64
  %i.v = add i64 %storemerge.i.i.i.i.i.i.i.i, %i.u
  %i.w = mul i64 %i.v, -1065810590584100411       ; 2 uses
  %i.x = call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 26) ; 2 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.as, %bb.g ]
  %.pn.i.i.i.i.i = phi i64 [ %i.x, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.h ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !7960 ; 2 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.ab
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ar, %bb.f ], [ %i.ae, %bb.e ] ; 3 uses
  %i.af = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.h
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [28 x i8], ptr %i.i, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -28
  %i.am = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBv_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(28) %i.al), !noalias !7961
  br i1 %i.am, label %bb.h, label %bb.f, !prof !40

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit, !prof !44

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.as = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.at = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.as
  br label %bb.e

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds i8, ptr %i.ak, i64 -12
  call void @llvm.experimental.noalias.scope.decl(metadata !7962)
  call void @llvm.experimental.noalias.scope.decl(metadata !7963)
  call void @llvm.experimental.noalias.scope.decl(metadata !7964)
  call void @llvm.experimental.noalias.scope.decl(metadata !7965)
  call void @llvm.experimental.noalias.scope.decl(metadata !7966)
  call void @llvm.experimental.noalias.scope.decl(metadata !7967)
  %i.av = load i32, ptr %i.n, align 4, !range !52, !alias.scope !7968, !noalias !7952, !noundef !31
  %i.aw = load i32, ptr %i.au, align 4, !range !52, !alias.scope !7969, !noalias !7970, !noundef !31
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !7968, !noalias !7952, !noundef !31
  %i.ba = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !alias.scope !7969, !noalias !7970, !noundef !31
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdERNtCsileJQcQObtj_7hir_def7MacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3L_7HashMapB1d_B36_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B38_.exit.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdERNtCsileJQcQObtj_7hir_def7MacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3L_7HashMapB1d_B36_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B38_.exit.i: ; preds = %bb.i
  %i.bd = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !range !34, !alias.scope !7968, !noalias !7952, !noundef !31
  %i.bg = load i32, ptr %i.bd, align 4, !range !34, !alias.scope !7969, !noalias !7970, !noundef !31
  %.not7.i = icmp eq i32 %i.bf, %i.bg
  br i1 %.not7.i, label %.split.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit: ; preds = %.split.i, %bb.h, %bb.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdERNtCsileJQcQObtj_7hir_def7MacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3L_7HashMapB1d_B36_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B38_.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i, %bb.c
  %i.bh = phi i1 [ true, %.split.us.i ], [ false, %bb.c ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1i_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdERNtCsileJQcQObtj_7hir_def7MacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3L_7HashMapB1d_B36_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B38_.exit.i ], [ %.not.not.not.i, %bb.i ], [ %.not.not.not.i, %bb.h ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit
  %.sroa.0.0 = phi i1 [ %i.bh, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB10_9HirFileIdNtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdENtCsileJQcQObtj_7hir_def7MacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3k_3all5checkTRBV_RB2N_ENCNvXs4_B6_INtB6_7HashMapBV_B2N_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3s_3cmp9PartialEq2eq0E0INtNtNtB3s_3ops12control_flow11ControlFlowuEEB2P_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !31
  %.not = icmp eq i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB2p_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8015)
  %i.h = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !8015 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not14.not.i = icmp eq ptr %i.i, null
  br i1 %.not14.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = icmp eq i64 %i.e, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !8015 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !alias.scope !8015, !nonnull !31 ; 2 uses
  br i1 %i.j, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.critedge.backedge.i
  %i.n = phi ptr [ %i.ei, %.critedge.backedge.i ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.o = phi { ptr, ptr } [ %i.eh, %.critedge.backedge.i ], [ %i.h, %.lr.ph.i ]
  %i.p = extractvalue { ptr, ptr } %i.o, 1        ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8016)
  call void @llvm.experimental.noalias.scope.decl(metadata !8017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8018
  store i64 0, ptr %i.a, align 8, !noalias !8018
  call void @_RINvXs4_NtCsdovh4xi6v3I_4span6ast_idINtB6_9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !8019
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !8018, !noundef !31 ; 2 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i, i64 %.val.i.i.i.i.i, i64 26) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8018
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.al, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.split.i ], [ %i.am, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.l ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !8020 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.d ], [ %i.x, %bb.c ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.l
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.ac ; 18 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -48
  %i.af = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae), !noalias !8021
  br i1 %i.af, label %bb.f, label %bb.d, !prof !40

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, !prof !44

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.ad, i64 -40
  call void @llvm.experimental.noalias.scope.decl(metadata !8022)
  call void @llvm.experimental.noalias.scope.decl(metadata !8023)
  call void @llvm.experimental.noalias.scope.decl(metadata !8024)
  call void @llvm.experimental.noalias.scope.decl(metadata !8025)
  call void @llvm.experimental.noalias.scope.decl(metadata !8026)
  call void @llvm.experimental.noalias.scope.decl(metadata !8027)
  %i.ao = load i64, ptr %i.p, align 8, !range !50, !alias.scope !8028, !noalias !8015, !noundef !31 ; 4 uses
  %i.ap = add nsw i64 %i.ao, -3
  %i.aq = icmp samesign ugt i64 %i.ao, 2
  %i.ar = select i1 %i.aq, i64 %i.ap, i64 2       ; 2 uses
  %i.as = load i64, ptr %i.an, align 8, !range !50, !alias.scope !8029, !noalias !8030, !noundef !31 ; 3 uses
  %i.at = add nsw i64 %i.as, -3
  %i.au = icmp samesign ugt i64 %i.as, 2
  %i.av = select i1 %i.au, i64 %i.at, i64 2
  %i.aw = icmp eq i64 %i.ar, %i.av
  br i1 %i.aw, label %bb.g, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.g:                                             ; preds = %bb.f
  switch i64 %i.ar, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.o
    i64 2, label %bb.t
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !8031)
  call void @llvm.experimental.noalias.scope.decl(metadata !8032)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !8033, !noalias !8015, !nonnull !31, !noundef !31
  %i.az = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !8034, !noalias !8030, !nonnull !31, !noundef !31
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.j, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !46, !alias.scope !8033, !noalias !8015, !noundef !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bg = trunc nuw i64 %i.be to i1
  %i.bh = load i64, ptr %i.bc, align 8, !range !46, !alias.scope !8034, !noalias !8030, !noundef !31
  %i.bi = trunc nuw i64 %i.bh to i1               ; 2 uses
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.bi, label %bb.m, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.l:                                             ; preds = %bb.j
  br i1 %i.bi, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.split66.i

bb.m:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %i.bk = load ptr, ptr %i.bf, align 8, !alias.scope !8033, !noalias !8015, !noundef !31 ; 2 uses
  %i.bl = icmp ne ptr %i.bk, null                 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !alias.scope !8034, !noalias !8030, !noundef !31 ; 2 uses
  %i.bn = icmp ne ptr %i.bm, null                 ; 2 uses
  %i.bo = xor i1 %i.bl, %i.bn
  br i1 %i.bo, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = icmp ne ptr %i.bk, %i.bm
  %i.bq = and i1 %i.bn, %i.bp
  %or.cond.not.i.i.i.i.i.i.i = and i1 %i.bl, %i.bq
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.split66.i

.split66.i:                                       ; preds = %bb.n, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bs = load i32, ptr %i.br, align 8, !alias.scope !8033, !noalias !8015, !noundef !31
  %i.bt = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !8034, !noalias !8030, !noundef !31
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.o:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bx = getelementptr inbounds i8, ptr %i.ad, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !8035)
  call void @llvm.experimental.noalias.scope.decl(metadata !8036)
  %i.by = load ptr, ptr %i.bw, align 8, !alias.scope !8037, !noalias !8015, !nonnull !31, !noundef !31
  %i.bz = load ptr, ptr %i.bx, align 8, !alias.scope !8038, !noalias !8030, !nonnull !31, !noundef !31
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.p, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !8037, !noalias !8015, !noundef !31
  %i.cd = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !8038, !noalias !8030, !noundef !31
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.q, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ch = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !8037, !noalias !8015, !align !33, !noundef !31 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !8037, !noalias !8015 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !8038, !noalias !8030, !align !33, !noundef !31 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.cj, align 8, !alias.scope !8038, !noalias !8030
  %i.ck = icmp eq ptr %.val.i.i.i.i.i.i.i, null   ; 2 uses
  %i.cl = icmp eq ptr %.val2.i.i.i.i.i.i.i, null  ; 2 uses
  %i.cm = xor i1 %i.ck, %i.cl
  br i1 %i.cm, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %brmerge.i.i.i.i.i.i.i.i = or i1 %i.ck, %i.cl
  br i1 %brmerge.i.i.i.i.i.i.i.i, label %.critedge.backedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = icmp eq i64 %.val1.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i
  br i1 %i.cn, label %.split65.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

.split65.i:                                       ; preds = %bb.s
  %i.co = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %.val.i.i.i.i.i.i.i, ptr noundef nonnull %.val2.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i), !noalias !8039
  br i1 %i.co, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.t:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !8040)
  call void @llvm.experimental.noalias.scope.decl(metadata !8041)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !alias.scope !8042, !noalias !8015, !noundef !31
  %i.cr = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.cs = load i32, ptr %i.cr, align 8, !alias.scope !8043, !noalias !8030, !noundef !31
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.u, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !8044)
  call void @llvm.experimental.noalias.scope.decl(metadata !8045)
  %i.cu = icmp eq i64 %i.ao, %i.as
  br i1 %i.cu, label %bb.v, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !8046, !noalias !8015, !noundef !31 ; 5 uses
  switch i64 %i.ao, label %default.unreachable.i.i.i.i.i.i.i [
    i64 0, label %bb.w
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

default.unreachable.i.i.i.i.i.i.i:                ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !8047, !noalias !8030, !nonnull !31, !noundef !31
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %bb.z, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.x:                                             ; preds = %bb.v
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  %i.da = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !8047, !noalias !8030, !noundef !31 ; 2 uses
  br i1 %.not7.i.i.i.i.i.i.i.i, label %.split67.i, label %.split.i

bb.y:                                             ; preds = %bb.v
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  %i.dc = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !8047, !noalias !8030, !noundef !31 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !46, !alias.scope !8046, !noalias !8015, !noundef !31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.dh = trunc nuw i64 %i.df to i1
  %i.di = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %i.dj = load i64, ptr %i.di, align 8, !range !46, !alias.scope !8047, !noalias !8030, !noundef !31
  %i.dk = trunc nuw i64 %i.dj to i1               ; 2 uses
  br i1 %i.dh, label %bb.aa, label %.split64.i

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dk, label %bb.ab, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

.split64.i:                                       ; preds = %bb.z
  br i1 %i.dk, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.critedge.backedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.dl = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.dm = load ptr, ptr %i.dg, align 8, !alias.scope !8046, !noalias !8015, !noundef !31 ; 2 uses
  %i.dn = icmp ne ptr %i.dm, null                 ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !alias.scope !8047, !noalias !8030, !noundef !31 ; 2 uses
  %i.dp = icmp ne ptr %i.do, null                 ; 2 uses
  %i.dq = xor i1 %i.dn, %i.dp
  br i1 %i.dq, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.split68.i

.split68.i:                                       ; preds = %bb.ab
  %i.dr = icmp ne ptr %i.dm, %i.do
  %i.ds = and i1 %i.dp, %i.dr
  %spec.select.i.i.i.i.i.i.i.not.i = and i1 %i.dn, %i.ds
  br i1 %spec.select.i.i.i.i.i.i.i.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.critedge.backedge.i

.split.i:                                         ; preds = %bb.x
  %i.dt = icmp eq ptr %i.cw, %i.db
  br i1 %i.dt, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

.split67.i:                                       ; preds = %bb.x
  %i.du = icmp eq ptr %i.db, null
  br i1 %i.du, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.ac:                                            ; preds = %bb.y
  %i.dv = icmp eq ptr %i.cw, %i.dd
  br i1 %i.dv, label %bb.ae, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.ad:                                            ; preds = %bb.y
  %i.dw = icmp eq ptr %i.dd, null
  br i1 %i.dw, label %bb.ae, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !8046, !noalias !8015, !noundef !31 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !8047, !noalias !8030, !noundef !31
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3H_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2Q_.exit.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3H_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2Q_.exit.i: ; preds = %bb.ae
  %i.ec = getelementptr inbounds i8, ptr %i.ad, i64 -24
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !8047, !noalias !8030, !nonnull !31, !noundef !31
  %i.ee = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !8046, !noalias !8015, !nonnull !31, !noundef !31
  %i.eg = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree7UseTreeINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy), !noalias !8048
  br i1 %i.eg, label %.critedge.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit

.critedge.backedge.i:                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3H_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2Q_.exit.i, %.split67.i, %.split.i, %.split68.i, %.split64.i, %.split65.i, %bb.r, %.split66.i
  %i.eh = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !8015 ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eh, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.lr.ph.split.i

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit: ; preds = %bb.f, %bb.i, %bb.k, %bb.l, %bb.m, %bb.n, %.split66.i, %bb.o, %bb.p, %bb.q, %bb.s, %.split65.i, %bb.t, %bb.u, %bb.w, %bb.aa, %.split64.i, %bb.ab, %.split68.i, %.split.i, %.split67.i, %bb.ac, %bb.ad, %bb.ae, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3H_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2Q_.exit.i, %.critedge.backedge.i, %._crit_edge.i.i.i.i.i, %bb.b, %.lr.ph.i
  %i.ej = phi i1 [ false, %.lr.ph.i ], [ true, %bb.b ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %bb.ac ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.ae ], [ false, %bb.t ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.i ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.s ], [ false, %bb.n ], [ false, %bb.f ], [ false, %bb.ad ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3H_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2Q_.exit.i ], [ true, %.critedge.backedge.i ], [ false, %.split.i ], [ false, %.split64.i ], [ false, %.split65.i ], [ false, %.split66.i ], [ false, %.split67.i ], [ false, %.split68.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit
  %.sroa.0.0 = phi i1 [ %i.ej, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree10BigModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3g_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3o_3cmp9PartialEq2eq0E0INtNtNtB3o_3ops12control_flow11ControlFlowuEEB2x_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2F_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !31
  %.not = icmp eq i64 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB2p_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8087)
  %i.h = icmp eq i64 %i.e, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !8087 ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !alias.scope !8087, !nonnull !31 ; 2 uses
  %i.l = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !8087 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %.not.us.not.i = icmp eq ptr %i.m, null         ; 2 uses
  br i1 %i.h, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.lr.ph

.split.us.i:                                      ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8088)
  call void @llvm.experimental.noalias.scope.decl(metadata !8089)
  br label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.lr.ph:                                           ; preds = %.split.i.preheader, %.split.backedge.i
  %i.n = phi ptr [ %i.ee, %.split.backedge.i ], [ %i.m, %.split.i.preheader ] ; 2 uses
  %i.o = phi { ptr, ptr } [ %i.ed, %.split.backedge.i ], [ %i.l, %.split.i.preheader ]
  %i.p = extractvalue { ptr, ptr } %i.o, 1        ; 28 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8088)
  call void @llvm.experimental.noalias.scope.decl(metadata !8089)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8090
  store i64 0, ptr %i.a, align 8, !noalias !8090
  call void @_RINvXs4_NtCsdovh4xi6v3I_4span6ast_idINtB6_9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !8091
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !8090, !noundef !31 ; 2 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i, i64 %.val.i.i.i.i.i, i64 26) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8090
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph ], [ %i.am, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.j ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !8092 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.j
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.ac ; 28 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.af = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae), !noalias !8093
  br i1 %i.af, label %bb.g, label %bb.e, !prof !40

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit, !prof !44

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.d

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.ad, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !8094)
  call void @llvm.experimental.noalias.scope.decl(metadata !8095)
  call void @llvm.experimental.noalias.scope.decl(metadata !8096)
  call void @llvm.experimental.noalias.scope.decl(metadata !8097)
  call void @llvm.experimental.noalias.scope.decl(metadata !8098)
  call void @llvm.experimental.noalias.scope.decl(metadata !8099)
  %i.ao = load i8, ptr %i.p, align 8, !range !71, !alias.scope !8100, !noalias !8087, !noundef !31 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 8, !range !71, !alias.scope !8101, !noalias !8102, !noundef !31
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.h:                                             ; preds = %bb.g
  switch i8 %i.ao, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %.split30.i
    i8 2, label %bb.l
    i8 3, label %.split28.i
    i8 4, label %.split27.i
    i8 5, label %.split26.i
    i8 6, label %bb.m
    i8 7, label %.split24.i
    i8 8, label %.split23.i
    i8 9, label %bb.o
    i8 10, label %.split21.i
    i8 11, label %.split20.i
    i8 12, label %.split19.i
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.as = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !8100, !noalias !8087, !noundef !31 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val2.i.i.i.i.i.i = load i32, ptr %i.at, align 8, !alias.scope !8100, !noalias !8087
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !8101, !noalias !8102 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val4.i.i.i.i.i.i = load i32, ptr %i.au, align 8, !alias.scope !8101, !noalias !8102
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  %.old.i = icmp eq i32 %.val2.i.i.i.i.i.i, %.val4.i.i.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = icmp eq ptr %.val.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %or.cond.i = select i1 %i.av, i1 %.old.i, i1 false
  br i1 %or.cond.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %.val3.i.i.i.i.i.i, null
  %or.cond33.i = select i1 %i.aw, i1 %.old.i, i1 false
  br i1 %or.cond33.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split30.i:                                       ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ay = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !8100, !noalias !8087, !nonnull !31, !noundef !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val6.i.i.i.i.i.i = load i32, ptr %i.az, align 8, !alias.scope !8100, !noalias !8087
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !8101, !noalias !8102, !nonnull !31, !noundef !31
  %i.ba = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val8.i.i.i.i.i.i = load i32, ptr %i.ba, align 8, !alias.scope !8101, !noalias !8102
  %i.bb = icmp eq ptr %.val5.i.i.i.i.i.i, %.val7.i.i.i.i.i.i
  %i.bc = icmp eq i32 %.val6.i.i.i.i.i.i, %.val8.i.i.i.i.i.i
  %.sroa.0.0.i41.i.i.i.i.i.i = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %.sroa.0.0.i41.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.l:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val10.i.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !8100, !noalias !8087, !noundef !31 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val12.i.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !8101, !noalias !8102, !noundef !31
  %i.bf = icmp eq i64 %.val10.i.i.i.i.i.i, %.val12.i.i.i.i.i.i
  br i1 %i.bf, label %.split25.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split25.i:                                       ; preds = %bb.l
  %i.bg = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !8101, !noalias !8102, !nonnull !31, !noundef !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !8100, !noalias !8087, !nonnull !31, !noundef !31
  %i.bi = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def9item_tree9ModItemIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef nonnull readonly align 4 %.val9.i.i.i.i.i.i, ptr noundef nonnull readonly align 4 %.val11.i.i.i.i.i.i, i64 noundef range(i64 0, 1152921504606846976) %.val10.i.i.i.i.i.i), !noalias !8103
  br i1 %i.bi, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split28.i:                                       ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bk = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val13.i.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !8100, !noalias !8087, !nonnull !31, !noundef !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val14.i.i.i.i.i.i = load i32, ptr %i.bl, align 8, !alias.scope !8100, !noalias !8087
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !8101, !noalias !8102, !nonnull !31, !noundef !31
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB15_:bb.a
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.az = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ba = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.az
  br label %bb.d

bb.g:                                             ; preds = %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1o_E0E0BU_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8245)
  %i.bb = getelementptr i8, ptr %i.ak, i64 -8
  %.val6.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !8245, !noalias !8241, !noundef !31
  %i.bc = icmp eq i64 %.val9.i, %.val6.i.i.i.i
  br i1 %i.bc, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def7MacroIdRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB38_7HashMapB1d_B1K_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2H_3all5checkTRBV_RB1r_ENCNvXs4_B6_INtB6_7HashMapBV_B1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2P_3cmp9PartialEq2eq0E0INtNtNtB2P_3ops12control_flow11ControlFlowuEEBX_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def7MacroIdRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB38_7HashMapB1d_B1K_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i: ; preds = %bb.g
  %i.bd = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %.val5.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !8245, !noalias !8241, !nonnull !31, !noundef !31
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.be = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull readonly align 8 %.val8.i, ptr noundef nonnull readonly align 8 %.val5.i.i.i.i, i64 noundef range(i64 0, 1152921504606846976) %.val9.i), !noalias !8246
  br i1 %i.be, label %.split.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2H_3all5checkTRBV_RB1r_ENCNvXs4_B6_INtB6_7HashMapBV_B1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2P_3cmp9PartialEq2eq0E0INtNtNtB2P_3ops12control_flow11ControlFlowuEEBX_.exit

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2H_3all5checkTRBV_RB1r_ENCNvXs4_B6_INtB6_7HashMapBV_B1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2P_3cmp9PartialEq2eq0E0INtNtNtB2P_3ops12control_flow11ControlFlowuEEBX_.exit: ; preds = %.split.i, %bb.g, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def7MacroIdRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB38_7HashMapB1d_B1K_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not14.i = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ %.not.us.not.i.not, %.split.us.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def7MacroIdRINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB38_7HashMapB1d_B1K_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i ], [ %.not.not.not.i, %bb.g ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2H_3all5checkTRBV_RB1r_ENCNvXs4_B6_INtB6_7HashMapBV_B1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2P_3cmp9PartialEq2eq0E0INtNtNtB2P_3ops12control_flow11ControlFlowuEEBX_.exit
  %.sroa.0.0 = phi i1 [ %.not14.i, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def7MacroIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2H_3all5checkTRBV_RB1r_ENCNvXs4_B6_INtB6_7HashMapBV_B1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2P_3cmp9PartialEq2eq0E0INtNtNtB2P_3ops12control_flow11ControlFlowuEEBX_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2j_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !31 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB23_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8283)
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8283 ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not14.not.i = icmp eq ptr %i.g, null
  br i1 %.not14.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = icmp eq i64 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !8283 ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !alias.scope !8283, !nonnull !31 ; 2 uses
  br i1 %i.h, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i
  %i.l = phi ptr [ %i.bw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %i.m = phi { ptr, ptr } [ %i.bv, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i ], [ %i.f, %.lr.ph.i ]
  %i.n = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8284, !noalias !8285, !nonnull !31, !noundef !31
  %i.o = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.p = mul i64 %i.o, -1065810590584100411       ; 2 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 26) ; 2 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.split.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.al, %bb.e ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph.split.i ], [ %i.am, %bb.e ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.j ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !8286 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.d ], [ %i.x, %bb.c ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.j
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [40 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -40
  %i.af = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae), !noalias !8287
  br i1 %i.af, label %bb.f, label %bb.d, !prof !40

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit, !prof !44

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.c

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.ao = call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1n_5range9RangeFullE5indexBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @468), !noalias !8288 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 1      ; 3 uses
  %i.aq = call { ptr, i64 } @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexNtNtB1n_5range9RangeFullE5indexBK_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) dereferenceable_or_null(32) %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469), !noalias !8283 ; 2 uses
  %i.ar = extractvalue { ptr, i64 } %i.aq, 1
  %.not.i = icmp eq i64 %i.ap, %i.ar              ; 3 uses
  br i1 %.not.i, label %bb.g, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

bb.g:                                             ; preds = %bb.f
  %i.as = extractvalue { ptr, i64 } %i.aq, 0
  %i.at = extractvalue { ptr, i64 } %i.ao, 0
  %i.au = icmp eq i64 %i.ap, 0
  br i1 %i.au, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_.exit.i.i.i.i.i.i.i, %.split19.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  %i.av = add nuw i64 %.sroa.01.07.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %bb.h
  %.sroa.01.07.i.i.i.i.i.i.i = phi i64 [ %i.av, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %.sroa.01.07.i.i.i.i.i.i.i ; 5 uses
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.as, i64 %.sroa.01.07.i.i.i.i.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8289)
  call void @llvm.experimental.noalias.scope.decl(metadata !8290)
  call void @llvm.experimental.noalias.scope.decl(metadata !8291)
  call void @llvm.experimental.noalias.scope.decl(metadata !8292)
  %i.ay = load i32, ptr %i.aw, align 4, !range !52, !alias.scope !8293, !noalias !8283, !noundef !31 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !range !52, !alias.scope !8294, !noalias !8283, !noundef !31
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !8293, !noalias !8283, !noundef !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !alias.scope !8294, !noalias !8283, !noundef !31
  %i.bf = icmp eq i32 %i.bc, %i.be                ; 3 uses
  switch i32 %i.ay, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  br i1 %i.bf, label %.split.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

bb.k:                                             ; preds = %bb.i
  br i1 %i.bf, label %.split19.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

bb.l:                                             ; preds = %bb.i
  br i1 %i.bf, label %_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_.exit.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

.split.i.i.i.i.i.i.i:                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !range !34, !alias.scope !8293, !noalias !8283, !noundef !31
  %i.bj = load i32, ptr %i.bg, align 4, !range !34, !alias.scope !8294, !noalias !8283, !noundef !31
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

.split19.i.i.i.i.i.i.i:                           ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !range !34, !alias.scope !8293, !noalias !8283, !noundef !31
  %i.bo = load i32, ptr %i.bl, align 4, !range !34, !alias.scope !8294, !noalias !8283, !noundef !31
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_.exit.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !range !34, !alias.scope !8293, !noalias !8283, !noundef !31
  %i.bt = load i32, ptr %i.bq, align 4, !range !34, !alias.scope !8294, !noalias !8283, !noundef !31
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.h, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i: ; preds = %bb.h, %bb.g
  %i.bv = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8283 ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0      ; 2 uses
  %.not.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit, label %.lr.ph.split.i

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit: ; preds = %bb.f, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i, %._crit_edge.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l, %.split.i.i.i.i.i.i.i, %.split19.i.i.i.i.i.i.i, %_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_.exit.i.i.i.i.i.i.i, %bb.b, %.lr.ph.i
  %i.bx = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ true, %bb.b ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i.i.i.i.i.i.i ], [ false, %_RNvYNtCsileJQcQObtj_7hir_def7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB4_.exit.i.i.i.i.i.i.i ], [ false, %.split19.i.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i.i ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ %.not.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3b_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2u_.exit.i ], [ %.not.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit
  %.sroa.0.0 = phi i1 [ %i.bx, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2K_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2S_3cmp9PartialEq2eq0E0INtNtNtB2S_3ops12control_flow11ControlFlowuEEB2b_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1K_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2j_3cmp9PartialEq2eqB1K_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !31 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB1u_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8331)
  %i.f = icmp eq i64 %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !8331 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !8331, !nonnull !31 ; 2 uses
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1r_13ExternCrateIdEEENtNtNtNtB20_4iter6traits8iterator8Iterator4nextB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8331 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.us.not.i = icmp eq ptr %i.k, null         ; 2 uses
  br i1 %i.f, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit, label %.lr.ph

.split.us.i:                                      ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8332)
  call void @llvm.experimental.noalias.scope.decl(metadata !8333)
  call void @llvm.experimental.noalias.scope.decl(metadata !8334)
  call void @llvm.experimental.noalias.scope.decl(metadata !8335)
  br label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

.lr.ph:                                           ; preds = %.split.i.preheader, %.split.backedge.i
  %i.l = phi ptr [ %i.bt, %.split.backedge.i ], [ %i.k, %.split.i.preheader ] ; 2 uses
  %i.m = phi { ptr, ptr } [ %i.bs, %.split.backedge.i ], [ %i.j, %.split.i.preheader ]
  %i.n = extractvalue { ptr, ptr } %i.m, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8332)
  call void @llvm.experimental.noalias.scope.decl(metadata !8333)
  call void @llvm.experimental.noalias.scope.decl(metadata !8334)
  call void @llvm.experimental.noalias.scope.decl(metadata !8335)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !8336, !noalias !8337, !nonnull !31, !noundef !31
  %i.o = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.p = mul i64 %i.o, -1065810590584100411       ; 2 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 26) ; 2 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph ], [ %i.al, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %.lr.ph ], [ %i.am, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.h ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.v, align 1, !noalias !8338 ; 2 uses
  %i.w = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ak, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.y = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.z
  %i.ab = and i64 %i.aa, %i.h
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.ac ; 8 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.af = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae), !noalias !8339
  br i1 %i.af, label %bb.g, label %bb.e, !prof !40

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit, !prof !44

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aj = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.am = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.al
  br label %bb.d

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds i8, ptr %i.ad, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !8340)
  call void @llvm.experimental.noalias.scope.decl(metadata !8341)
  call void @llvm.experimental.noalias.scope.decl(metadata !8342)
  call void @llvm.experimental.noalias.scope.decl(metadata !8343)
  call void @llvm.experimental.noalias.scope.decl(metadata !8344)
  call void @llvm.experimental.noalias.scope.decl(metadata !8345)
  call void @llvm.experimental.noalias.scope.decl(metadata !8346)
  call void @llvm.experimental.noalias.scope.decl(metadata !8347)
  %i.ao = load i32, ptr %i.n, align 4, !range !52, !alias.scope !8348, !noalias !8331, !noundef !31 ; 2 uses
  %i.ap = load i32, ptr %i.an, align 4, !range !52, !alias.scope !8349, !noalias !8350, !noundef !31
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !8348, !noalias !8331, !noundef !31
  %i.at = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !8349, !noalias !8350, !noundef !31
  %i.av = icmp eq i32 %i.as, %i.au                ; 3 uses
  switch i32 %i.ao, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  br i1 %i.av, label %.split.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.av, label %.split6.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

bb.k:                                             ; preds = %bb.h
  br i1 %i.av, label %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

.split.i.i.i.i.i.i:                               ; preds = %bb.i
  %i.aw = getelementptr inbounds i8, ptr %i.ad, i64 -20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !range !34, !alias.scope !8348, !noalias !8331, !noundef !31
  %i.az = load i32, ptr %i.aw, align 4, !range !34, !alias.scope !8349, !noalias !8350, !noundef !31
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.l, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

.split6.i.i.i.i.i.i:                              ; preds = %bb.j
  %i.bb = getelementptr inbounds i8, ptr %i.ad, i64 -20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !range !34, !alias.scope !8348, !noalias !8331, !noundef !31
  %i.be = load i32, ptr %i.bb, align 4, !range !34, !alias.scope !8349, !noalias !8350, !noundef !31
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bg = getelementptr inbounds i8, ptr %i.ad, i64 -20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !range !34, !alias.scope !8348, !noalias !8331, !noundef !31
  %i.bj = load i32, ptr %i.bg, align 4, !range !34, !alias.scope !8349, !noalias !8350, !noundef !31
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

bb.l:                                             ; preds = %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %.split6.i.i.i.i.i.i, %.split.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.bm = getelementptr inbounds i8, ptr %i.ad, i64 -12
  %.val.i.i.i2.i.i.i = load i32, ptr %i.bl, align 4, !alias.scope !8351, !noalias !8331, !noundef !31 ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %i.bm, align 4, !alias.scope !8352, !noalias !8350 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i2.i.i.i, 0 ; 2 uses
  %i.bn = icmp eq i32 %.val2.i.i.i.i.i.i, 0       ; 2 uses
  %brmerge.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.bn
  br i1 %brmerge.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3h_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, label %.split19.i

.split19.i:                                       ; preds = %bb.l
  %i.bo = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val3.i.i.i.i.i.i = load i32, ptr %i.bo, align 4, !alias.scope !8352, !noalias !8350
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i.i.i.i.i.i = load i32, ptr %i.bp, align 4, !alias.scope !8351, !noalias !8331
  %i.bq = icmp eq i32 %.val1.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  %i.br = icmp eq i32 %.val.i.i.i2.i.i.i, %.val2.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3h_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i: ; preds = %bb.l
  %.mux.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.bn, i1 false
  br i1 %.mux.i.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit

.split.backedge.i:                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3h_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, %.split19.i
  %i.bs = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1r_13ExternCrateIdEEENtNtNtNtB20_4iter6traits8iterator8Iterator4nextB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !8331 ; 2 uses
  %i.bt = extractvalue { ptr, ptr } %i.bs, 0      ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit, label %.lr.ph

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def7MacroIdINtNtCshzWfHUSfYae_4core6option6OptionNtB1C_13ExternCrateIdEEENtNtNtNtB2b_4iter6traits8iterator8Iterator8try_folduNCINvNvB36_3all5checkTRBV_RB1z_ENCNvXs4_B6_INtB6_7HashMapBV_B1z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2b_3cmp9PartialEq2eq0E0INtNtNtB2b_3ops12control_flow11ControlFlowuEEB1C_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3h_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, %.split19.i, %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %.split6.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.k, %bb.j, %bb.i, %bb.g, %.split.backedge.i, %._crit_edge.i.i.i.i.i, %.split.i.preheader, %.split.us.i, %bb.c
  %i.bu = phi i1 [ true, %.split.us.i ], [ false, %._crit_edge.i.i.i.i.i ], [ false, %bb.c ], [ true, %.split.i.preheader ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def7MacroIdINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3h_7HashMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %.split6.i.i.i.i.i.i ], [ false, %.split19.i ], [ false, %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i ], [ false, %bb.g ], [ true, %.split.backedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_1
