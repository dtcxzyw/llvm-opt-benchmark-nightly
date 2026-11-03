Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.15?download=true
inline.NumInlined: 3071
inline.NumDeleted: 1597
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBP_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBP_:bb.a

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 592
  %i.gd = load i32, ptr %i.gc, align 4, !range !11, !alias.scope !3992, !noalias !3965, !noundef !5
  %i.ge = load i32, ptr %i.gb, align 4, !range !11, !alias.scope !3993, !noalias !3963, !noundef !5
  %i.gf = icmp eq i32 %i.gd, %i.ge
  br i1 %i.gf, label %.split16.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split16.i.i.i.i.i.i:                             ; preds = %bb.ak
  %i.gg = getelementptr inbounds nuw i8, ptr %i.p, i64 589
  %i.gh = load i8, ptr %i.gg, align 1, !range !8, !alias.scope !3992, !noalias !3965, !noundef !5
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ae, i64 589
  %i.gj = load i8, ptr %i.gi, align 1, !range !8, !alias.scope !3993, !noalias !3963, !noundef !5
  %i.gk = icmp eq i8 %i.gh, %i.gj
  br i1 %i.gk, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread14.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.al:                                            ; preds = %bb.ai
  %i.gl = getelementptr inbounds nuw i8, ptr %i.p, i64 596
  %i.gm = load i32, ptr %i.gl, align 4, !alias.scope !3992, !noalias !3965, !noundef !5
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ae, i64 596
  %i.go = load i32, ptr %i.gn, align 4, !alias.scope !3993, !noalias !3963, !noundef !5
  %i.gp = icmp eq i32 %i.gm, %i.go
  br i1 %i.gp, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i: ; preds = %bb.al
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %i.gr = getelementptr inbounds nuw i8, ptr %i.p, i64 592
  %i.gs = load i32, ptr %i.gr, align 4, !range !11, !alias.scope !3992, !noalias !3965, !noundef !5
  %i.gt = load i32, ptr %i.gq, align 4, !range !11, !alias.scope !3993, !noalias !3963, !noundef !5
  %i.gu = icmp eq i32 %i.gs, %i.gt
  br i1 %i.gu, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread14.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread14.i.i.i.i.i.i: ; preds = %bb.ai, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %.split16.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.p, i64 544
  %i.gw = load i32, ptr %i.gv, align 8, !alias.scope !3994, !noalias !3965, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gw, 0
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ae, i64 544
  %i.gy = load i32, ptr %i.gx, align 8, !alias.scope !3995, !noalias !3963, !noundef !5 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread14.i.i.i.i.i.i
  br i1 %i.gz, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit, label %.split17.i.i.i.i.i.i

bb.an:                                            ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread14.i.i.i.i.i.i
  br i1 %i.gz, label %bb.ao, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split17.i.i.i.i.i.i:                             ; preds = %bb.am
  %i.ha = getelementptr inbounds nuw i8, ptr %i.p, i64 548
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ha, align 4, !alias.scope !3994, !noalias !3965, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ae, i64 548
  %.val5.i.i.i.i.i.i = load i32, ptr %i.hb, align 4, !alias.scope !3995, !noalias !3963, !noundef !5
  %i.hc = icmp eq i32 %.val3.i.i.i.i.i.i, %.val5.i.i.i.i.i.i
  %i.hd = icmp eq i32 %i.gw, %i.gy
  %.sroa.0.0.i6.i.i.i.i.i.i = and i1 %i.hd, %i.hc
  br i1 %.sroa.0.0.i6.i.i.i.i.i.i, label %bb.ao, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ao:                                            ; preds = %.split17.i.i.i.i.i.i, %bb.an
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3997)
  %i.he = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !3998, !noalias !3965, !noundef !5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !3999, !noalias !3963, !noundef !5
  %.not.i7.i.i.i.i.i.i = icmp eq i64 %i.hf, %i.hh
  br i1 %.not.i7.i.i.i.i.i.i, label %bb.ap, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !3998, !noalias !3965, !nonnull !5, !noundef !5 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !3998, !noalias !3965, !noundef !5 ; 4 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.hl, 24
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4000)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !4001, !noalias !3963
  %.fr.i.i.i.i.i.i.i.i = freeze i64 %i.ho         ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !4001, !noalias !3963 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  switch i64 %.fr.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.preheader [
    i64 0, label %.split.us.i.i.i.i.i.i.i.i
    i64 1, label %.split.us19.i.i.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.ap
  %.not32.not.i.i.i.i.i.i.i.i230 = icmp eq i64 %i.hl, 0
  br i1 %.not32.not.i.i.i.i.i.i.i.i230, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.i.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %bb.ap
  %.not31.i.i.i.i.i.i.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not31.i.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.split.us.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4005)
  br label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split.us19.i.i.i.i.i.i.i.i:                      ; preds = %bb.ap
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = getelementptr i8, ptr %i.hq, i64 12
  %.not.not.i.i.i.i.i.i.i.i229 = icmp eq i64 %i.hl, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i229, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i.preheader

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.split.us19.i.i.i.i.i.i.i.i
  %.val2.i.i.i.i.us.i.i.i.i.i.i.i.i = load ptr, ptr %i.hq, align 8, !noalias !4006, !nonnull !5, !noundef !5
  br label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2B_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1U_.exit.us22.i.i.i.i.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hu, %i.hm
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i.preheader, %bb.ar
  %i.hv = phi ptr [ %i.hu, %bb.ar ], [ %i.hj, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.val6.us20.i.i.i.i.i.i.i.i = load i32, ptr %i.hw, align 4, !noalias !4007
  %i.hx = getelementptr i8, ptr %i.hv, i64 12
  %.val7.us21.i.i.i.i.i.i.i.i = load i32, ptr %i.hx, align 4, !noalias !4007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4005)
  %.val.i.i.i.i.us.i.i.i.i.i.i.i.i = load ptr, ptr %i.hv, align 8, !alias.scope !4008, !noalias !4007, !nonnull !5, !noundef !5
  %i.hy = icmp eq ptr %.val.i.i.i.i.us.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.us.i.i.i.i.i.i.i.i
  br i1 %i.hy, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2B_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1U_.exit.us22.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2B_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1U_.exit.us22.i.i.i.i.i.i.i.i: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i
  %.val5.i.i.i.us24.i.i.i.i.i.i.i.i = load i32, ptr %i.hs, align 8, !alias.scope !4009, !noalias !4007
  %.val6.i.i.i.us25.i.i.i.i.i.i.i.i = load i32, ptr %i.ht, align 4, !alias.scope !4009, !noalias !4007, !noundef !5
  %i.hz = icmp ne i32 %.val7.us21.i.i.i.i.i.i.i.i, %.val6.i.i.i.us25.i.i.i.i.i.i.i.i
  %i.ia = icmp ne i32 %.val6.us20.i.i.i.i.i.i.i.i, %.val5.i.i.i.us24.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.not.i.us26.i.i.i.i.i.i.i.i = select i1 %i.hz, i1 true, i1 %i.ia
  br i1 %.sroa.0.0.i.i.i.i.not.i.us26.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit, label %bb.ar

.split.i.i.i.i.i.i.i.i:                           ; preds = %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.not32.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ic, %i.hm
  br i1 %.not32.not.i.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.preheader, %.split.i.i.i.i.i.i.i.i
  %i.ib = phi ptr [ %i.ic, %.split.i.i.i.i.i.i.i.i ], [ %i.hj, %.split.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %.val6.i.i.i.i.i.i.i.i = load i32, ptr %i.id, align 4, !noalias !4010
  %i.ie = getelementptr i8, ptr %i.ib, i64 12
  %.val7.i.i.i.i.i.i.i.i = load i32, ptr %i.ie, align 4, !noalias !4010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4005)
  %i.if = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ib), !noalias !4010
  %i.ig = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtE12get_index_ofBL_EB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) dereferenceable_or_null(600) %i.ae, i64 noundef %i.if, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ib), !noalias !4010 ; 2 uses
  %i.ih = extractvalue { i64, i64 } %i.ig, 0
  %i.ii = extractvalue { i64, i64 } %i.ig, 1      ; 3 uses
  %i.ij = trunc nuw i64 %i.ih to i1
  br i1 %i.ij, label %bb.as, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.as:                                            ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ik = icmp ult i64 %i.ii, %.fr.i.i.i.i.i.i.i.i
  br i1 %i.ik, label %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.at

..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.as
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %i.ii ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %.val5.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.im, align 4, !alias.scope !4009, !noalias !4010
  %i.in = getelementptr i8, ptr %i.il, i64 12
  %.val6.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.in, align 4, !alias.scope !4009, !noalias !4010, !noundef !5
  %i.io = icmp ne i32 %.val7.i.i.i.i.i.i.i.i, %.val6.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = icmp ne i32 %.val6.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.not.i.i.i.i.i.i.i.i.i = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %.sroa.0.0.i.i.i.i.not.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit, label %.split.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef %.fr.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !4010
  unreachable

_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i: ; preds = %bb.ar, %.split.i.i.i.i.i.i.i.i, %.split.us19.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.preheader, %.split.us.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4014)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !4015, !noalias !3965, !noundef !5
  %i.is = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !4016, !noalias !3963, !noundef !5
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ir, %i.it
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.au, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.au:                                            ; preds = %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !4015, !noalias !3965, !nonnull !5, !noundef !5 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !4015, !noalias !3965, !noundef !5 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ix, 6
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i.i.i.i.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ja = load i64, ptr %i.iz, align 8, !alias.scope !4017, !noalias !3963 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !4017, !noalias !3963 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %.not.not.not.i.not6.i.i.i.i.i.i.i.i = icmp eq i64 %i.ix, 0
  br i1 %.not.not.not.i.not6.i.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.au, %.backedge.i.i.i.i.i.i.i.i.i
  %i.je = phi ptr [ %i.jf, %.backedge.i.i.i.i.i.i.i.i.i ], [ %i.iv, %bb.au ] ; 18 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 64 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4023)
  switch i64 %i.ja, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.jh = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.je), !noalias !4024
  %i.ji = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope19ImportOrExternCrateEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %i.hr, i64 noundef %i.jh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.je), !noalias !4024 ; 2 uses
  %i.jj = extractvalue { i64, i64 } %i.ji, 0
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.av, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.je, align 8, !alias.scope !4025, !noalias !4026, !nonnull !5, !noundef !5
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jc, align 8, !noalias !4027, !nonnull !5, !noundef !5
  %i.jl = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.jl, label %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.av:                                            ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jm = extractvalue { i64, i64 } %i.ji, 1      ; 3 uses
  %i.jn = icmp ult i64 %i.jm, %i.ja
  br i1 %i.jn, label %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jm, i64 noundef %i.ja, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !4024
  unreachable

..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.av, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.i911.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jm, %bb.av ]
  %i.jo = getelementptr inbounds nuw [64 x i8], ptr %i.jc, i64 %.sroa.5.0.i911.i.i.i.i.i.i.i.i.i.i.i.i ; 14 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4033)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 44
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 44
  %i.js = tail call fastcc noundef zeroext i1 @_RNvXs7P_CsileJQcQObtj_7hir_defNtB6_11ModuleDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.jq, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.jr) #40, !noalias !4026
  br i1 %i.js, label %bb.ax, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ax:                                            ; preds = %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4035)
  %i.jv = load i8, ptr %i.jt, align 4, !range !23, !alias.scope !4036, !noalias !4026, !noundef !5 ; 2 uses
  %i.jw = load i8, ptr %i.ju, align 4, !range !23, !alias.scope !4037, !noalias !4024, !noundef !5
  %i.jx = icmp eq i8 %i.jv, %i.jw
  br i1 %i.jx, label %bb.ay, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ay:                                            ; preds = %bb.ax
  switch i8 %i.jv, label %default.unreachable [
    i8 0, label %bb.az
    i8 1, label %bb.bb
    i8 2, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.az:                                            ; preds = %bb.ay
  %i.jy = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jz = load i32, ptr %i.jy, align 4, !alias.scope !4036, !noalias !4026, !noundef !5
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.kb = load i32, ptr %i.ka, align 4, !alias.scope !4037, !noalias !4024, !noundef !5
  %i.kc = icmp eq i32 %i.jz, %i.kb
  br i1 %i.kc, label %bb.ba, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ba:                                            ; preds = %bb.az
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jo, i64 36
  %i.ke = getelementptr inbounds nuw i8, ptr %i.je, i64 36
  %i.kf = load i32, ptr %i.ke, align 4, !range !11, !alias.scope !4036, !noalias !4026, !noundef !5
  %i.kg = load i32, ptr %i.kd, align 4, !range !11, !alias.scope !4037, !noalias !4024, !noundef !5
  %i.kh = icmp eq i32 %i.kf, %i.kg
  br i1 %i.kh, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ba
  %i.ki = getelementptr inbounds nuw i8, ptr %i.je, i64 33
  %i.kj = load i8, ptr %i.ki, align 1, !range !8, !alias.scope !4036, !noalias !4026, !noundef !5
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jo, i64 33
  %i.kl = load i8, ptr %i.kk, align 1, !range !8, !alias.scope !4037, !noalias !4024, !noundef !5
  %i.km = icmp eq i8 %i.kj, %i.kl
  br i1 %i.km, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bb:                                            ; preds = %bb.ay
  %i.kn = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.ko = load i32, ptr %i.kn, align 4, !alias.scope !4036, !noalias !4026, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  %i.kq = load i32, ptr %i.kp, align 4, !alias.scope !4037, !noalias !4024, !noundef !5
  %i.kr = icmp eq i32 %i.ko, %i.kq
  br i1 %i.kr, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jo, i64 36
  %i.kt = getelementptr inbounds nuw i8, ptr %i.je, i64 36
  %i.ku = load i32, ptr %i.kt, align 4, !range !11, !alias.scope !4036, !noalias !4026, !noundef !5
  %i.kv = load i32, ptr %i.ks, align 4, !range !11, !alias.scope !4037, !noalias !4024, !noundef !5
  %i.kw = icmp eq i32 %i.ku, %i.kv
  br i1 %i.kw, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ay
  %i.kx = load i32, ptr %i.jg, align 4, !range !10, !alias.scope !4038, !noalias !4026, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kx, -1
  %i.ky = load i32, ptr %i.jp, align 4, !range !10, !alias.scope !4039, !noalias !4024, !noundef !5 ; 3 uses
  %i.kz = icmp eq i32 %i.ky, -1
  %brmerge.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.kz
  br i1 %brmerge.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3D_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4041)
  %i.la = icmp eq i32 %i.kx, %i.ky
  br i1 %i.la, label %bb.bd, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bd:                                            ; preds = %bb.bc
  %i.lb = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.lc = load i32, ptr %i.lb, align 4, !alias.scope !4042, !noalias !4026, !noundef !5
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.le = load i32, ptr %i.ld, align 4, !alias.scope !4043, !noalias !4024, !noundef !5
  %i.lf = icmp eq i32 %i.lc, %i.le                ; 3 uses
  switch i32 %i.kx, label %default.unreachable [
    i32 0, label %bb.be
    i32 1, label %bb.bf
    i32 2, label %bb.bg
  ]

bb.be:                                            ; preds = %bb.bd
  br i1 %i.lf, label %bb.bh, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.lf, label %bb.bi, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bg:                                            ; preds = %bb.bd
  br i1 %i.lf, label %.split.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bh:                                            ; preds = %bb.be
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %i.lh = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.li = load i32, ptr %i.lh, align 4, !range !11, !alias.scope !4042, !noalias !4026, !noundef !5
  %i.lj = load i32, ptr %i.lg, align 4, !range !11, !alias.scope !4043, !noalias !4024, !noundef !5
  %i.lk = icmp eq i32 %i.li, %i.lj
  br i1 %i.lk, label %.split28.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split28.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bh
  %i.ll = getelementptr inbounds nuw i8, ptr %i.je, i64 28
  %i.lm = load i32, ptr %i.ll, align 4, !alias.scope !4042, !noalias !4026, !noundef !5
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jo, i64 28
  %i.lo = load i32, ptr %i.ln, align 4, !alias.scope !4043, !noalias !4024, !noundef !5
  %i.lp = icmp eq i32 %i.lm, %i.lo
  br i1 %i.lp, label %.backedge.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bi:                                            ; preds = %bb.bf
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %i.lr = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.ls = load i32, ptr %i.lr, align 4, !range !11, !alias.scope !4042, !noalias !4026, !noundef !5
  %i.lt = load i32, ptr %i.lq, align 4, !range !11, !alias.scope !4043, !noalias !4024, !noundef !5
  %i.lu = icmp eq i32 %i.ls, %i.lt
  br i1 %i.lu, label %.split29.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split29.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.bi
  %i.lv = getelementptr inbounds nuw i8, ptr %i.je, i64 28
  %i.lw = load i32, ptr %i.lv, align 4, !alias.scope !4042, !noalias !4026, !noundef !5
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jo, i64 28
  %i.ly = load i32, ptr %i.lx, align 4, !alias.scope !4043, !noalias !4024, !noundef !5
  %i.lz = icmp eq i32 %i.lw, %i.ly
  br i1 %i.lz, label %.backedge.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.bg
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %i.mb = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %i.mc = load i32, ptr %i.mb, align 4, !range !11, !alias.scope !4042, !noalias !4026, !noundef !5
  %i.md = load i32, ptr %i.ma, align 4, !range !11, !alias.scope !4043, !noalias !4024, !noundef !5
  %i.me = icmp eq i32 %i.mc, %i.md
  br i1 %i.me, label %.backedge.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3D_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mf = and i32 %i.ky, %i.kx
  %.mux.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.mf, -1
  br i1 %.mux.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.backedge.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3D_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i, %.split28.i.i.i.i.i.i.i.i.i
  %.not.not.not.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.jf, %i.iy
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i.i.i, %bb.au
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4045)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.mh = load i64, ptr %i.mg, align 8, !alias.scope !4046, !noalias !3965, !noundef !5
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.mj = load i64, ptr %i.mi, align 8, !alias.scope !4047, !noalias !3963, !noundef !5
  %.not.i1.i.i.i.i.i.i.i = icmp eq i64 %i.mh, %i.mj
  br i1 %.not.i1.i.i.i.i.i.i.i, label %bb.bj, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bj:                                            ; preds = %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.ml = load ptr, ptr %i.mk, align 8, !alias.scope !4046, !noalias !3965, !nonnull !5, !noundef !5 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.mn = load i64, ptr %i.mm, align 8, !alias.scope !4046, !noalias !3965, !noundef !5 ; 2 uses
  %.idx.i3.i.i.i.i.i.i.i = shl nuw nsw i64 %i.mn, 6
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.idx.i3.i.i.i.i.i.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !4048, !noalias !3963 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !4048, !noalias !3963 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ae, i64 168 ; 2 uses
  %.not.not.not.i.not6.i4.i.i.i.i.i.i.i = icmp eq i64 %i.mn, 0
  br i1 %.not.not.not.i.not6.i4.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, label %.lr.ph.i5.i.i.i.i.i.i.i

.lr.ph.i5.i.i.i.i.i.i.i:                          ; preds = %bb.bj, %.backedge.i.i12.i.i.i.i.i.i.i
  %i.mu = phi ptr [ %i.mv, %.backedge.i.i12.i.i.i.i.i.i.i ], [ %i.ml, %bb.bj ] ; 16 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 64 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  switch i64 %i.mq, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i5.i.i.i.i.i.i.i
  %i.mx = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mu), !noalias !4055
  %i.my = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_11ModuleDefIdNtNtB1u_10item_scope12ImportOrGlobEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jd, i64 noundef %i.mx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mu), !noalias !4055 ; 2 uses
  %i.mz = extractvalue { i64, i64 } %i.my, 0
  %i.na = trunc nuw i64 %i.mz to i1
  br i1 %i.na, label %bb.bk, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i5.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i6.i.i.i.i.i.i.i = load ptr, ptr %i.mu, align 8, !alias.scope !4056, !noalias !4057, !nonnull !5, !noundef !5
  %.val2.i.i.i.i.i.i7.i.i.i.i.i.i.i = load ptr, ptr %i.ms, align 8, !noalias !4058, !nonnull !5, !noundef !5
  %i.nb = icmp eq ptr %.val.i.i.i.i.i.i6.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i7.i.i.i.i.i.i.i
  br i1 %i.nb, label %..thread_crit_edge.i.i.i.i.i8.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bk:                                            ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nc = extractvalue { i64, i64 } %i.my, 1      ; 3 uses
  %i.nd = icmp ult i64 %i.nc, %i.mq
  br i1 %i.nd, label %..thread_crit_edge.i.i.i.i.i8.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.nc, i64 noundef %i.mq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !4055
  unreachable

..thread_crit_edge.i.i.i.i.i8.i.i.i.i.i.i.i:      ; preds = %bb.bk, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.0.i911.i.i.i.i.i9.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nc, %bb.bk ]
  %i.ne = getelementptr inbounds nuw [64 x i8], ptr %i.ms, i64 %.sroa.5.0.i911.i.i.i.i.i9.i.i.i.i.i.i.i ; 12 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4063)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4064)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 44
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 44
  %i.ni = tail call fastcc noundef zeroext i1 @_RNvXs7P_CsileJQcQObtj_7hir_defNtB6_11ModuleDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ng, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.nh) #40, !noalias !4057
  br i1 %i.ni, label %bb.bm, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bm:                                            ; preds = %..thread_crit_edge.i.i.i.i.i8.i.i.i.i.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4066)
  %i.nl = load i8, ptr %i.nj, align 4, !range !23, !alias.scope !4067, !noalias !4057, !noundef !5 ; 2 uses
  %i.nm = load i8, ptr %i.nk, align 4, !range !23, !alias.scope !4068, !noalias !4055, !noundef !5
  %i.nn = icmp eq i8 %i.nl, %i.nm
  br i1 %i.nn, label %bb.bn, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bn:                                            ; preds = %bb.bm
  switch i8 %i.nl, label %default.unreachable [
    i8 0, label %bb.bo
    i8 1, label %bb.bq
    i8 2, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.no = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %i.np = load i32, ptr %i.no, align 4, !alias.scope !4067, !noalias !4057, !noundef !5
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.nr = load i32, ptr %i.nq, align 4, !alias.scope !4068, !noalias !4055, !noundef !5
  %i.ns = icmp eq i32 %i.np, %i.nr
  br i1 %i.ns, label %bb.bp, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bp:                                            ; preds = %bb.bo
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ne, i64 36
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mu, i64 36
  %i.nv = load i32, ptr %i.nu, align 4, !range !11, !alias.scope !4067, !noalias !4057, !noundef !5
  %i.nw = load i32, ptr %i.nt, align 4, !range !11, !alias.scope !4068, !noalias !4055, !noundef !5
  %i.nx = icmp eq i32 %i.nv, %i.nw
  br i1 %i.nx, label %.split.i.i.i.i.i.i.i16.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split.i.i.i.i.i.i.i16.i.i.i.i.i.i.i:             ; preds = %bb.bp
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mu, i64 33
  %i.nz = load i8, ptr %i.ny, align 1, !range !8, !alias.scope !4067, !noalias !4057, !noundef !5
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ne, i64 33
  %i.ob = load i8, ptr %i.oa, align 1, !range !8, !alias.scope !4068, !noalias !4055, !noundef !5
  %i.oc = icmp eq i8 %i.nz, %i.ob
  br i1 %i.oc, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bq:                                            ; preds = %bb.bn
  %i.od = getelementptr inbounds nuw i8, ptr %i.mu, i64 40
  %i.oe = load i32, ptr %i.od, align 4, !alias.scope !4067, !noalias !4057, !noundef !5
  %i.of = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.og = load i32, ptr %i.of, align 4, !alias.scope !4068, !noalias !4055, !noundef !5
  %i.oh = icmp eq i32 %i.oe, %i.og
  br i1 %i.oh, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i15.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i15.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ne, i64 36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.mu, i64 36
  %i.ok = load i32, ptr %i.oj, align 4, !range !11, !alias.scope !4067, !noalias !4057, !noundef !5
  %i.ol = load i32, ptr %i.oi, align 4, !range !11, !alias.scope !4068, !noalias !4055, !noundef !5
  %i.om = icmp eq i32 %i.ok, %i.ol
  br i1 %i.om, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i15.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i16.i.i.i.i.i.i.i, %bb.bn
  %i.on = load i32, ptr %i.mw, align 4, !range !9, !alias.scope !4069, !noalias !4057, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i.i.i10.i.i.i.i.i.i.i = icmp eq i32 %i.on, 2 ; 2 uses
  %i.oo = load i32, ptr %i.nf, align 4, !range !9, !alias.scope !4070, !noalias !4055, !noundef !5 ; 2 uses
  %i.op = icmp eq i32 %i.oo, 2                    ; 2 uses
  %brmerge.i.i.i.i.i.i.i11.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i10.i.i.i.i.i.i.i, %i.op
  br i1 %brmerge.i.i.i.i.i.i.i11.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope12ImportOrGlobEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3w_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  %i.oq = icmp eq i32 %i.on, %i.oo
  br i1 %i.oq, label %bb.bs, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bs:                                            ; preds = %bb.br
  %i.or = trunc nuw i32 %i.on to i1
  %i.os = getelementptr inbounds nuw i8, ptr %i.mu, i64 24
  %i.ot = load i32, ptr %i.os, align 4, !alias.scope !4073, !noalias !4057, !noundef !5
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ov = load i32, ptr %i.ou, align 4, !alias.scope !4074, !noalias !4055, !noundef !5
  %i.ow = icmp eq i32 %i.ot, %i.ov                ; 2 uses
  br i1 %i.or, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.ow, label %bb.bw, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bu:                                            ; preds = %bb.bs
  br i1 %i.ow, label %bb.bv, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bv:                                            ; preds = %bb.bu
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ne, i64 20
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mu, i64 20
  %i.oz = load i32, ptr %i.oy, align 4, !range !11, !alias.scope !4073, !noalias !4057, !noundef !5
  %i.pa = load i32, ptr %i.ox, align 4, !range !11, !alias.scope !4074, !noalias !4055, !noundef !5
  %i.pb = icmp eq i32 %i.oz, %i.pa
  br i1 %i.pb, label %_RNCNCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB9_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1A_11ModuleDefIdNtNtB1A_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq00B1A_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bw:                                            ; preds = %bb.bt
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ne, i64 20
  %i.pd = getelementptr inbounds nuw i8, ptr %i.mu, i64 20
  %i.pe = load i32, ptr %i.pd, align 4, !range !11, !alias.scope !4073, !noalias !4057, !noundef !5
  %i.pf = load i32, ptr %i.pc, align 4, !range !11, !alias.scope !4074, !noalias !4055, !noundef !5
  %i.pg = icmp eq i32 %i.pe, %i.pf
  br i1 %i.pg, label %_RNCNCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB9_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1A_11ModuleDefIdNtNtB1A_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq00B1A_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNCNCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB9_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1A_11ModuleDefIdNtNtB1A_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq00B1A_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mu, i64 28
  %i.pi = load i32, ptr %i.ph, align 4, !alias.scope !4073, !noalias !4057, !noundef !5
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ne, i64 28
  %i.pk = load i32, ptr %i.pj, align 4, !alias.scope !4074, !noalias !4055, !noundef !5
  %i.pl = icmp eq i32 %i.pi, %i.pk
  br i1 %i.pl, label %.backedge.i.i12.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope12ImportOrGlobEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3w_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.mux.i.i.i.i.i.i.i14.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i10.i.i.i.i.i.i.i, %i.op
  br i1 %.mux.i.i.i.i.i.i.i14.i.i.i.i.i.i.i, label %.backedge.i.i12.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.backedge.i.i12.i.i.i.i.i.i.i:                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope12ImportOrGlobEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3w_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, %_RNCNCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB9_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1A_11ModuleDefIdNtNtB1A_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq00B1A_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.not.not.i.not.i13.i.i.i.i.i.i.i = icmp eq ptr %i.mv, %i.mo
  br i1 %.not.not.not.i.not.i13.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, label %.lr.ph.i5.i.i.i.i.i.i.i

_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i: ; preds = %.backedge.i.i12.i.i.i.i.i.i.i, %bb.bj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4076)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.p, i64 216
  %i.pn = load i64, ptr %i.pm, align 8, !alias.scope !4077, !noalias !3965, !noundef !5
  %i.po = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.pp = load i64, ptr %i.po, align 8, !alias.scope !4078, !noalias !3963, !noundef !5
  %.not.i18.i.i.i.i.i.i.i = icmp eq i64 %i.pn, %i.pp
  br i1 %.not.i18.i.i.i.i.i.i.i, label %bb.bx, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.bx:                                            ; preds = %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !4077, !noalias !3965, !nonnull !5, !noundef !5 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !4077, !noalias !3965, !noundef !5 ; 2 uses
  %.idx.i20.i.i.i.i.i.i.i = mul nuw nsw i64 %i.pt, 56
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.idx.i20.i.i.i.i.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.pw = load i64, ptr %i.pv, align 8, !alias.scope !4079, !noalias !3963 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ae, i64 176
  %i.py = load ptr, ptr %i.px, align 8, !alias.scope !4079, !noalias !3963 ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 40
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ae, i64 224 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.py, null
  %.not.not.not.i.not6.i21.i.i.i.i.i.i.i = icmp eq i64 %i.pt, 0
  br i1 %.not.not.not.i.not6.i21.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_7MacroIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, label %.lr.ph.i22.i.i.i.i.i.i.i

.lr.ph.i22.i.i.i.i.i.i.i:                         ; preds = %bb.bx, %.backedge.i.i28.i.i.i.i.i.i.i
  %i.qb = phi ptr [ %i.qc, %.backedge.i.i28.i.i.i.i.i.i.i ], [ %i.pr, %bb.bx ] ; 20 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 56 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 40 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4085)
  switch i64 %i.pw, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i22.i.i.i.i.i.i.i
  %i.qe = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qd), !noalias !4086
  %i.qf = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1u_7MacroIdNtNtB1u_10item_scope19ImportOrExternCrateEE12get_index_ofBL_EB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.mt, i64 noundef %i.qe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.qd), !noalias !4086 ; 2 uses
  %i.qg = extractvalue { i64, i64 } %i.qf, 0
  %i.qh = extractvalue { i64, i64 } %i.qf, 1      ; 3 uses
  %i.qi = trunc nuw i64 %i.qg to i1
  br i1 %i.qi, label %bb.by, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i22.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i23.i.i.i.i.i.i.i = load ptr, ptr %i.qd, align 8, !alias.scope !4087, !noalias !4088, !nonnull !5, !noundef !5
  %.val2.i.i.i.i.i.i24.i.i.i.i.i.i.i = load ptr, ptr %i.pz, align 8, !noalias !4089, !nonnull !5, !noundef !5
  %i.qj = icmp eq ptr %.val.i.i.i.i.i.i23.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i24.i.i.i.i.i.i.i
  br i1 %i.qj, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.by:                                            ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qk = icmp ult i64 %i.qh, %i.pw
  br i1 %i.qk, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.qh, i64 noundef %i.pw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !4086
  unreachable

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.by
  %i.ql = getelementptr inbounds nuw [56 x i8], ptr %i.py, i64 %i.qh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qm = phi ptr [ %i.ql, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.py, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4097)
  %i.qn = load i32, ptr %i.qb, align 4, !range !9, !alias.scope !4098, !noalias !4088, !noundef !5 ; 2 uses
  %i.qo = load i32, ptr %i.qm, align 4, !range !9, !alias.scope !4099, !noalias !4086, !noundef !5
  %i.qp = icmp eq i32 %i.qn, %i.qo
  br i1 %i.qp, label %bb.ca, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ca:                                            ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qr = load i32, ptr %i.qq, align 4, !alias.scope !4098, !noalias !4088, !noundef !5
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qt = load i32, ptr %i.qs, align 4, !alias.scope !4099, !noalias !4086, !noundef !5
  %i.qu = icmp eq i32 %i.qr, %i.qt                ; 3 uses
  switch i32 %i.qn, label %default.unreachable [
    i32 0, label %bb.cb
    i32 1, label %bb.cc
    i32 2, label %bb.cd
  ]

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.qu, label %.split.i.i.i.i.i.i.i34.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.qu, label %.split7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cd:                                            ; preds = %bb.ca
  br i1 %i.qu, label %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split.i.i.i.i.i.i.i34.i.i.i.i.i.i.i:             ; preds = %bb.cb
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !range !11, !alias.scope !4098, !noalias !4088, !noundef !5
  %i.qy = load i32, ptr %i.qv, align 4, !range !11, !alias.scope !4099, !noalias !4086, !noundef !5
  %i.qz = icmp eq i32 %i.qx, %i.qy
  br i1 %i.qz, label %bb.ce, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split7.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.cc
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.rc = load i32, ptr %i.rb, align 4, !range !11, !alias.scope !4098, !noalias !4088, !noundef !5
  %i.rd = load i32, ptr %i.ra, align 4, !range !11, !alias.scope !4099, !noalias !4086, !noundef !5
  %i.re = icmp eq i32 %i.rc, %i.rd
  br i1 %i.re, label %bb.ce, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !range !11, !alias.scope !4098, !noalias !4088, !noundef !5
  %i.ri = load i32, ptr %i.rf, align 4, !range !11, !alias.scope !4099, !noalias !4086, !noundef !5
  %i.rj = icmp eq i32 %i.rh, %i.ri
  br i1 %i.rj, label %bb.ce, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ce:                                            ; preds = %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i34.i.i.i.i.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qm, i64 28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  %i.rm = load i8, ptr %i.rk, align 4, !range !23, !alias.scope !4102, !noalias !4088, !noundef !5 ; 2 uses
  %i.rn = load i8, ptr %i.rl, align 4, !range !23, !alias.scope !4103, !noalias !4086, !noundef !5
  %i.ro = icmp eq i8 %i.rm, %i.rn
  br i1 %i.ro, label %bb.cf, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cf:                                            ; preds = %bb.ce
  switch i8 %i.rm, label %default.unreachable [
    i8 0, label %bb.cg
    i8 1, label %bb.ci
    i8 2, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread9.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qb, i64 36
  %i.rq = load i32, ptr %i.rp, align 4, !alias.scope !4102, !noalias !4088, !noundef !5
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qm, i64 36
  %i.rs = load i32, ptr %i.rr, align 4, !alias.scope !4103, !noalias !4086, !noundef !5
  %i.rt = icmp eq i32 %i.rq, %i.rs
  br i1 %i.rt, label %bb.ch, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ch:                                            ; preds = %bb.cg
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.rw = load i32, ptr %i.rv, align 4, !range !11, !alias.scope !4102, !noalias !4088, !noundef !5
  %i.rx = load i32, ptr %i.ru, align 4, !range !11, !alias.scope !4103, !noalias !4086, !noundef !5
  %i.ry = icmp eq i32 %i.rw, %i.rx
  br i1 %i.ry, label %.split11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split11.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ch
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qb, i64 29
  %i.sa = load i8, ptr %i.rz, align 1, !range !8, !alias.scope !4102, !noalias !4088, !noundef !5
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qm, i64 29
  %i.sc = load i8, ptr %i.sb, align 1, !range !8, !alias.scope !4103, !noalias !4086, !noundef !5
  %i.sd = icmp eq i8 %i.sa, %i.sc
  br i1 %i.sd, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ci:                                            ; preds = %bb.cf
  %i.se = getelementptr inbounds nuw i8, ptr %i.qb, i64 36
  %i.sf = load i32, ptr %i.se, align 4, !alias.scope !4102, !noalias !4088, !noundef !5
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qm, i64 36
  %i.sh = load i32, ptr %i.sg, align 4, !alias.scope !4103, !noalias !4086, !noundef !5
  %i.si = icmp eq i32 %i.sf, %i.sh
  br i1 %i.si, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i33.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i33.i.i.i.i.i.i.i: ; preds = %bb.ci
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.sk = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  %i.sl = load i32, ptr %i.sk, align 4, !range !11, !alias.scope !4102, !noalias !4088, !noundef !5
  %i.sm = load i32, ptr %i.sj, align 4, !range !11, !alias.scope !4103, !noalias !4086, !noundef !5
  %i.sn = icmp eq i32 %i.sl, %i.sm
  br i1 %i.sn, label %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread9.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i33.i.i.i.i.i.i.i, %.split11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cf
  %i.so = getelementptr inbounds nuw i8, ptr %i.qb, i64 12
  %i.sp = load i32, ptr %i.so, align 4, !range !10, !alias.scope !4104, !noalias !4088, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.i = icmp eq i32 %i.sp, -1
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  %i.sr = load i32, ptr %i.sq, align 4, !range !10, !alias.scope !4105, !noalias !4086, !noundef !5 ; 3 uses
  %i.ss = icmp eq i32 %i.sr, -1
  %brmerge.i.i.i.i.i.i.i26.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i25.i.i.i.i.i.i.i, %i.ss
  br i1 %brmerge.i.i.i.i.i.i.i26.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_7MacroIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3y_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread9.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4107)
  %i.st = icmp eq i32 %i.sp, %i.sr
  br i1 %i.st, label %bb.ck, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ck:                                            ; preds = %bb.cj
  %i.su = getelementptr inbounds nuw i8, ptr %i.qb, i64 20
  %i.sv = load i32, ptr %i.su, align 4, !alias.scope !4108, !noalias !4088, !noundef !5
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qm, i64 20
  %i.sx = load i32, ptr %i.sw, align 4, !alias.scope !4109, !noalias !4086, !noundef !5
  %i.sy = icmp eq i32 %i.sv, %i.sx                ; 3 uses
  switch i32 %i.sp, label %default.unreachable [
    i32 0, label %bb.cl
    i32 1, label %bb.cm
    i32 2, label %bb.cn
  ]

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.sy, label %bb.co, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.sy, label %bb.cp, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cn:                                            ; preds = %bb.ck
  br i1 %i.sy, label %.split.i.i27.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.co:                                            ; preds = %bb.cl
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.tb = load i32, ptr %i.ta, align 4, !range !11, !alias.scope !4108, !noalias !4088, !noundef !5
  %i.tc = load i32, ptr %i.sz, align 4, !range !11, !alias.scope !4109, !noalias !4086, !noundef !5
  %i.td = icmp eq i32 %i.tb, %i.tc
  br i1 %i.td, label %.split27.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split27.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.co
  %i.te = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.tf = load i32, ptr %i.te, align 4, !alias.scope !4108, !noalias !4088, !noundef !5
  %i.tg = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.th = load i32, ptr %i.tg, align 4, !alias.scope !4109, !noalias !4086, !noundef !5
  %i.ti = icmp eq i32 %i.tf, %i.th
  br i1 %i.ti, label %.backedge.i.i28.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cp:                                            ; preds = %bb.cm
  %i.tj = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.tk = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.tl = load i32, ptr %i.tk, align 4, !range !11, !alias.scope !4108, !noalias !4088, !noundef !5
  %i.tm = load i32, ptr %i.tj, align 4, !range !11, !alias.scope !4109, !noalias !4086, !noundef !5
  %i.tn = icmp eq i32 %i.tl, %i.tm
  br i1 %i.tn, label %.split28.i.i30.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split28.i.i30.i.i.i.i.i.i.i:                     ; preds = %bb.cp
  %i.to = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.tp = load i32, ptr %i.to, align 4, !alias.scope !4108, !noalias !4088, !noundef !5
  %i.tq = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.tr = load i32, ptr %i.tq, align 4, !alias.scope !4109, !noalias !4086, !noundef !5
  %i.ts = icmp eq i32 %i.tp, %i.tr
  br i1 %i.ts, label %.backedge.i.i28.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.split.i.i27.i.i.i.i.i.i.i:                       ; preds = %bb.cn
  %i.tt = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.tu = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.tv = load i32, ptr %i.tu, align 4, !range !11, !alias.scope !4108, !noalias !4088, !noundef !5
  %i.tw = load i32, ptr %i.tt, align 4, !range !11, !alias.scope !4109, !noalias !4086, !noundef !5
  %i.tx = icmp eq i32 %i.tv, %i.tw
  br i1 %i.tx, label %.backedge.i.i28.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_7MacroIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3y_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread9.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ty = and i32 %i.sr, %i.sp
  %.mux.i.i.i.i.i.i.i32.i.i.i.i.i.i.i = icmp eq i32 %i.ty, -1
  br i1 %.mux.i.i.i.i.i.i.i32.i.i.i.i.i.i.i, label %.backedge.i.i28.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

.backedge.i.i28.i.i.i.i.i.i.i:                    ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_7MacroIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3y_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, %.split.i.i27.i.i.i.i.i.i.i, %.split28.i.i30.i.i.i.i.i.i.i, %.split27.i.i.i.i.i.i.i.i.i
  %.not.not.not.i.not.i29.i.i.i.i.i.i.i = icmp eq ptr %i.qc, %i.pu
  br i1 %.not.not.not.i.not.i29.i.i.i.i.i.i.i, label %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_7MacroIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, label %.lr.ph.i22.i.i.i.i.i.i.i

_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_7MacroIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i: ; preds = %.backedge.i.i28.i.i.i.i.i.i.i, %bb.bx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.p, i64 224
  %i.ua = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.tz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.qa), !noalias !3965
  br i1 %i.ua, label %bb.cq, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cq:                                            ; preds = %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_7MacroIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.p, i64 256 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ae, i64 256 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  %i.ud = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE8data_rawBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ub), !noalias !4112
  %i.ue = load ptr, ptr %i.ub, align 8, !alias.scope !4113, !noalias !3965, !nonnull !5, !noundef !5
  %i.uf = load i64, ptr %i.ue, align 8, !noalias !4112, !noundef !5 ; 2 uses
  %i.ug = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdE8data_rawBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uc), !noalias !3965
  %i.uh = load ptr, ptr %i.uc, align 8, !alias.scope !4114, !noalias !3965, !nonnull !5, !noundef !5
  %i.ui = load i64, ptr %i.uh, align 8, !noalias !3965, !noundef !5
  %i.uj = icmp eq i64 %i.uf, %i.ui
  br i1 %i.uj, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_.exit.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_.exit.i.i.i.i.i.i.i: ; preds = %bb.cq
  %i.uk = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCsileJQcQObtj_7hir_def11ModuleDefIdINtB5_14SlicePartialEqBC_E17equal_same_lengthBE_(ptr noundef %i.ud, ptr noundef %i.ug, i64 noundef %i.uf), !noalias !3965
  br i1 %i.uk, label %bb.cr, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cr:                                            ; preds = %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_.exit.i.i.i.i.i.i.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.p, i64 264 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ae, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  %i.un = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE8data_rawBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ul), !noalias !4117
  %i.uo = load ptr, ptr %i.ul, align 8, !alias.scope !4118, !noalias !3965, !nonnull !5, !noundef !5
  %i.up = load i64, ptr %i.uo, align 8, !noalias !4117, !noundef !5 ; 2 uses
  %i.uq = tail call noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEE8data_rawBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.um), !noalias !3965
  %i.ur = load ptr, ptr %i.um, align 8, !alias.scope !4119, !noalias !3965, !nonnull !5, !noundef !5
  %i.us = load i64, ptr %i.ur, align 8, !noalias !3965, !noundef !5
  %i.ut = icmp eq i64 %i.up, %i.us
  br i1 %i.ut, label %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBJ_.exit.i.i.i.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBJ_.exit.i.i.i.i.i.i.i: ; preds = %bb.cr
  %i.uu = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpTNtCsileJQcQObtj_7hir_def6ImplIdbEINtB5_14SlicePartialEqBC_E17equal_same_lengthBF_(ptr noundef %i.un, ptr noundef %i.uq, i64 noundef %i.up), !noalias !3965
  br i1 %i.uu, label %bb.cs, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cs:                                            ; preds = %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBJ_.exit.i.i.i.i.i.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ae, i64 272
  %i.ux = tail call fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uw) #40, !noalias !3965
  br i1 %i.ux, label %bb.ct, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.ct:                                            ; preds = %bb.cs
  %i.uy = getelementptr inbounds nuw i8, ptr %i.p, i64 280
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ae, i64 280
  %i.va = tail call fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternBlockIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.uz) #40, !noalias !3965
  br i1 %i.va, label %bb.cu, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cu:                                            ; preds = %bb.ct
  %i.vb = getelementptr inbounds nuw i8, ptr %i.p, i64 288
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  %i.vd = tail call fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def7ConstIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vc) #40, !noalias !3965
  br i1 %i.vd, label %bb.cv, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cv:                                            ; preds = %bb.cu
  %i.ve = getelementptr inbounds nuw i8, ptr %i.p, i64 296
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  %i.vg = tail call fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def7TraitIdINtNtBJ_6per_ns4ItemuEEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBJ_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ve, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vf) #40, !noalias !3965
  br i1 %i.vg, label %bb.cw, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cw:                                            ; preds = %bb.cv
  %i.vh = getelementptr inbounds nuw i8, ptr %i.p, i64 304
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.vj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtB15_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB17_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vi), !noalias !3965
  br i1 %i.vj, label %bb.cx, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cx:                                            ; preds = %bb.cw
  %i.vk = getelementptr inbounds nuw i8, ptr %i.p, i64 336
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ae, i64 336
  %i.vm = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope12ImportOrGlobNtB15_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB17_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vl), !noalias !3965
  br i1 %i.vm, label %bb.cy, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cy:                                            ; preds = %bb.cx
  %i.vn = getelementptr inbounds nuw i8, ptr %i.p, i64 368
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ae, i64 368
  %i.vp = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCsileJQcQObtj_7hir_def10item_scope19ImportOrExternCrateNtB15_11ImportOrDefNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB17_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vo), !noalias !3965
  br i1 %i.vp, label %bb.cz, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.cz:                                            ; preds = %bb.cy
  %i.vq = getelementptr inbounds nuw i8, ptr %i.p, i64 400
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ae, i64 400
  %i.vs = tail call fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def5UseIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vr) #40, !noalias !3965
  br i1 %i.vs, label %bb.da, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.da:                                            ; preds = %bb.cz
  %i.vt = getelementptr inbounds nuw i8, ptr %i.p, i64 408
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ae, i64 408
  %i.vv = tail call fastcc noundef zeroext i1 @_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def13ExternCrateIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.vu) #40, !noalias !3965
  br i1 %i.vv, label %bb.db, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.db:                                            ; preds = %bb.da
  %i.vw = getelementptr inbounds nuw i8, ptr %i.p, i64 416
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ae, i64 416
  %i.vy = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtCsjpcu9PwIgok_8smallvec8SmallVecANtCsileJQcQObtj_7hir_def7MacroIdj2_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2j_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vx), !noalias !3965
  br i1 %i.vy, label %bb.dc, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.dc:                                            ; preds = %bb.db
  %i.vz = getelementptr inbounds nuw i8, ptr %i.p, i64 448
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  %i.wb = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEENtB18_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.vz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wa), !noalias !3965
  br i1 %i.wb, label %bb.dd, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

bb.dd:                                            ; preds = %bb.dc
  %i.wc = getelementptr inbounds nuw i8, ptr %i.p, i64 480
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  %i.we = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallEENtB18_11MacroCallIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wd), !noalias !3965
  br i1 %i.we, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10ModuleIdLtRNtNtB1f_7nameres10ModuleDataENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2p_8IndexMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10ModuleIdLtRNtNtB1f_7nameres10ModuleDataENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2p_8IndexMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i: ; preds = %bb.dd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ae, i64 512
  %i.wh = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB18_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtEEINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10item_scope21DeriveMacroInvocationj1_ENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB4l_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.wg), !noalias !3965
  br i1 %i.wh, label %bb.c, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit

_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBN_7nameres10ModuleDataENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1N_3all5checkTRBL_RB1l_ENCNvXse_B8_INtB8_8IndexMapBL_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1V_3cmp9PartialEq2eq0E0INtNtNtB1V_3ops12control_flow11ControlFlowuEEBN_.exit: ; preds = %bb.c, %.lr.ph, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_.exit.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_.exit.thread6.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.thread.i.i.i, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %.split.i.i.i.i.i.i.i, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i, %bb.n, %.split.i.i.i.i.i.i, %bb.o, %bb.p, %bb.r, %bb.s, %.split14.i.i.i.i.i.i.i, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit9.i.i.i.i.i.i.i, %bb.u, %bb.v, %bb.w, %bb.x, %.split12.i.i.i.i.i.i, %bb.z, %bb.aa, %bb.ab, %.split11.i.i.i.i.i.i, %bb.ac, %bb.ad, %bb.af, %bb.ag, %.split18.i.i.i.i.i.i.i, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit11.i.i.i.i.i.i.i, %_RNvXsB_NtCsileJQcQObtj_7hir_def7nameresNtB5_12ModuleOriginNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %bb.ah, %bb.aj, %bb.ak, %.split16.i.i.i.i.i.i, %bb.al, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %bb.am, %bb.an, %.split17.i.i.i.i.i.i, %bb.ao, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_7MacroIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i, %bb.cq, %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_.exit.i.i.i.i.i.i.i, %bb.cr, %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBJ_.exit.i.i.i.i.i.i.i, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10ModuleIdLtRNtNtB1f_7nameres10ModuleDataENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2p_8IndexMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2B_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1U_.exit.us22.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i, %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3D_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i, %.split29.i.i.i.i.i.i.i.i.i, %bb.bi, %.split28.i.i.i.i.i.i.i.i.i, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bc, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bb, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba, %bb.az, %bb.ax, %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope12ImportOrGlobEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3w_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, %_RNCNCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB9_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1A_11ModuleDefIdNtNtB1A_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq00B1A_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.br, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i15.i.i.i.i.i.i.i, %bb.bq, %.split.i.i.i.i.i.i.i16.i.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bm, %..thread_crit_edge.i.i.i.i.i8.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i5.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_7MacroIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3y_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i, %.split.i.i27.i.i.i.i.i.i.i, %.split28.i.i30.i.i.i.i.i.i.i, %bb.cp, %.split27.i.i.i.i.i.i.i.i.i, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.cj, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i33.i.i.i.i.i.i.i, %bb.ci, %.split11.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ch, %bb.cg, %bb.ce, %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split7.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i34.i.i.i.i.i.i.i, %bb.cd, %bb.cc, %bb.cb, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i22.i.i.i.i.i.i.i, %bb.b, %bb.aq, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_7MacroIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3y_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope12ImportOrGlobEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3w_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCsileJQcQObtj_7hir_def10ModuleIdLtENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2B_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1U_.exit.us22.i.i.i.i.i.i.i.i ], [ false, %bb.aq ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1X_11ModuleDefIdNtNtB1X_10item_scope19ImportOrExternCrateEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3D_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1X_.exit.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i22.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_7MacroIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EB1x_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.cb ], [ false, %bb.cc ], [ false, %bb.cd ], [ false, %.split.i.i.i.i.i.i.i34.i.i.i.i.i.i.i ], [ false, %.split7.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RNvXs7s_CsileJQcQObtj_7hir_defNtB6_7MacroIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.ce ], [ false, %bb.cg ], [ false, %bb.ch ], [ false, %.split11.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.ci ], [ false, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i33.i.i.i.i.i.i.i ], [ false, %bb.cj ], [ false, %bb.cl ], [ false, %bb.cm ], [ false, %bb.cn ], [ false, %bb.co ], [ false, %.split27.i.i.i.i.i.i.i.i.i ], [ false, %bb.cp ], [ false, %.split28.i.i30.i.i.i.i.i.i.i ], [ false, %.split.i.i27.i.i.i.i.i.i.i ], [ false, %.lr.ph.i5.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %..thread_crit_edge.i.i.i.i.i8.i.i.i.i.i.i.i ], [ false, %bb.bm ], [ false, %bb.bo ], [ false, %bb.bp ], [ false, %.split.i.i.i.i.i.i.i16.i.i.i.i.i.i.i ], [ false, %bb.bq ], [ false, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i15.i.i.i.i.i.i.i ], [ false, %bb.br ], [ false, %bb.bt ], [ false, %bb.bu ], [ false, %bb.bv ], [ false, %bb.bw ], [ false, %_RNCNCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB9_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1A_11ModuleDefIdNtNtB1A_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq00B1A_.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1x_11ModuleDefIdNtNtB1x_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1x_.exit.thread6.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %..thread_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.ba ], [ false, %.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.bb ], [ false, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.bc ], [ false, %bb.be ], [ false, %bb.bf ], [ false, %bb.bg ], [ false, %bb.bh ], [ false, %.split28.i.i.i.i.i.i.i.i.i ], [ false, %bb.bi ], [ false, %.split29.i.i.i.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1u_.exit.thread6.i.i.i.us.i.i.i.i.i.i.i.i ], [ false, %bb.ah ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_.exit.i.i.i.i ], [ false, %.lr.ph ], [ true, %bb.c ], [ false, %bb.dd ], [ false, %bb.dc ], [ false, %bb.db ], [ false, %bb.da ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit9.i.i.i.i.i.i.i ], [ false, %.split14.i.i.i.i.i.i.i ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.o ], [ false, %.split.i.i.i.i.i.i ], [ false, %bb.n ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i.i ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ false, %.split16.i.i.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_EBQ_.exit.thread.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtCsileJQcQObtj_7hir_def10ModuleIdLtNtNtBQ_7nameres10ModuleDataNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EBQ_.exit.thread6.i.i.i.i ], [ false, %bb.x ], [ false, %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit11.i.i.i.i.i.i.i ], [ false, %.split18.i.i.i.i.i.i.i ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %.split11.i.i.i.i.i.i ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10ModuleIdLtRNtNtB1f_7nameres10ModuleDataENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB2p_8IndexMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i ], [ false, %_RNvXsB_NtCsileJQcQObtj_7hir_def7nameresNtB5_12ModuleOriginNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.cz ], [ false, %bb.cy ], [ false, %bb.cx ], [ false, %bb.cw ], [ false, %bb.cv ], [ false, %bb.cu ], [ false, %bb.ct ], [ false, %bb.cs ], [ false, %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecTNtCsileJQcQObtj_7hir_def6ImplIdbEENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBJ_.exit.i.i.i.i.i.i.i ], [ false, %bb.cr ], [ false, %_RNvXsh_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtCsileJQcQObtj_7hir_def11ModuleDefIdENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqBI_.exit.i.i.i.i.i.i.i ], [ false, %bb.cq ], [ false, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_7MacroIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i ], [ false, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope12ImportOrGlobENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i ], [ false, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameINtNtCsileJQcQObtj_7hir_def6per_ns4ItemNtB1w_11ModuleDefIdNtNtB1w_10item_scope19ImportOrExternCrateENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1w_.exit.i.i.i.i.i.i.i ], [ false, %_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def10ModuleIdLtNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1t_.exit.i.i.i.i.i.i ], [ false, %bb.ao ], [ false, %.split17.i.i.i.i.i.i ], [ false, %bb.an ], [ false, %bb.am ], [ false, %_RNvXs4_NtCsileJQcQObtj_7hir_def10visibilityNtB5_10VisibilityNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.h ], [ false, %bb.aj ], [ false, %.split12.i.i.i.i.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1u_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB27_3cmp9PartialEq2eqB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.h, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4144 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.not.not.not.i.not5 = icmp eq i64 %i.h, 0
  br i1 %.not.not.not.i.not5, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.backedge.i
  %i.o = phi ptr [ %i.p, %.backedge.i ], [ %i.f, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4150)
  switch i64 %i.k, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i [
    i64 0, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit
    i64 1, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.i
  ]

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.r = tail call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o), !noalias !4151
  %i.s = tail call { i64, i64 } @_RINvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB5_4CoreNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEE12get_index_ofBL_EB1s_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o), !noalias !4151 ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.c, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.i: ; preds = %.lr.ph
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !4152, !noalias !4153, !nonnull !5, !noundef !5
  %.val2.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !4154, !nonnull !5, !noundef !5
  %i.v = icmp eq ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %i.v, label %..thread_crit_edge.i.i.i.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit

bb.c:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i
  %i.w = extractvalue { i64, i64 } %i.s, 1        ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.k
  br i1 %i.x, label %..thread_crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #39, !noalias !4151
  unreachable

..thread_crit_edge.i.i.i.i:                       ; preds = %bb.c, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.i
  %.sroa.5.0.i911.i.i.i.i = phi i64 [ 0, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.i ], [ %i.w, %bb.c ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.5.0.i911.i.i.i.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  %i.aa = load <2 x i32>, ptr %i.q, align 4, !alias.scope !4161, !noalias !4153
  %i.ab = load <2 x i32>, ptr %i.z, align 4, !alias.scope !4162, !noalias !4151
  %i.ac = icmp eq <2 x i32> %i.aa, %i.ab          ; 2 uses
  %i.ad = extractelement <2 x i1> %i.ac, i64 0
  %i.ae = extractelement <2 x i1> %i.ac, i64 1
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.ae, i1 %i.ad, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %bb.e, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit

bb.e:                                             ; preds = %..thread_crit_edge.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val4.i.i.i.i.i.i = load i32, ptr %i.af, align 4, !alias.scope !4161, !noalias !4153, !noundef !5 ; 2 uses
  %.val6.i.i.i.i.i.i = load i32, ptr %i.ag, align 4, !alias.scope !4162, !noalias !4151 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val4.i.i.i.i.i.i, 0 ; 2 uses
  %i.ah = icmp eq i32 %.val6.i.i.i.i.i.i, 0       ; 2 uses
  %brmerge.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.ah
  br i1 %brmerge.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3l_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.val7.i.i.i.i.i.i = load i32, ptr %i.ai, align 4, !alias.scope !4162, !noalias !4151
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %.val5.i.i.i.i.i.i = load i32, ptr %i.aj, align 4, !alias.scope !4161, !noalias !4153
  %i.ak = icmp eq i32 %.val5.i.i.i.i.i.i, %.val7.i.i.i.i.i.i
  %i.al = icmp eq i32 %.val4.i.i.i.i.i.i, %.val6.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %.backedge.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3l_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i: ; preds = %bb.e
  %.mux.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %.mux.i.i.i.i.i.i.i, label %.backedge.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit

.backedge.i:                                      ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3l_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, %.split.i
  %.not.not.not.i.not = icmp eq ptr %i.p, %i.i
  br i1 %.not.not.not.i.not, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit, label %.lr.ph

_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1s_13ExternCrateIdEEENtNtNtNtB25_4iter6traits8iterator8Iterator8try_folduNCINvNvB30_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB25_3cmp9PartialEq2eq0E0INtNtNtB25_3ops12control_flow11ControlFlowuEEB1s_.exit: ; preds = %.backedge.i, %.lr.ph, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.i, %..thread_crit_edge.i.i.i.i, %.split.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3l_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %.backedge.i ], [ false, %.lr.ph ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i ], [ false, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtCshzWfHUSfYae_4core6option6OptionNtB1v_13ExternCrateIdEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.i ], [ false, %..thread_crit_edge.i.i.i.i ], [ false, %.split.i ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def10ModuleIdLtINtNtBe_6option6OptionNtB1V_13ExternCrateIdEEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3l_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1u_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %.idx = shl nuw nsw i64 %i.h, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4187
  %.fr.i = freeze i64 %i.k                        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4187 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  switch i64 %.fr.i, label %.split.i.preheader [
    i64 0, label %.split.us.i
    i64 1, label %.split.us17.i
  ]

.split.i.preheader:                               ; preds = %bb.b
  %.not34.not.i19 = icmp eq i64 %i.h, 0
  br i1 %.not34.not.i19, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.i.i.i.i

.split.us.i:                                      ; preds = %bb.b
  %.not33.i = icmp eq i64 %i.h, 0
  br i1 %.not33.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  br label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

.split.us17.i:                                    ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.not32.not.i14 = icmp eq i64 %i.h, 0
  br i1 %.not32.not.i14, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i.preheader

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i.preheader: ; preds = %.split.us17.i
  %.val2.i.i.i.i.us.i = load ptr, ptr %i.m, align 8, !noalias !4194, !nonnull !5, !noundef !5
  br label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i

bb.d:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1V_9item_tree11FieldsShapeEENCNvXse_NtCs3gqD4ldeioo_8indexmap3mapINtB3b_8IndexMapB1d_B1S_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1V_.exit.us24.i
  %.not32.not.i = icmp eq ptr %i.r, %i.i
  br i1 %.not32.not.i, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit, label %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i

_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i: ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i.preheader, %bb.d
  %i.q = phi ptr [ %i.r, %bb.d ], [ %i.f, %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  %.val.i.i.i.i.us.i = load ptr, ptr %i.q, align 8, !alias.scope !4195, !noalias !4196, !nonnull !5, !noundef !5
  %i.s = icmp eq ptr %.val.i.i.i.i.us.i, %.val2.i.i.i.i.us.i
  br i1 %i.s, label %bb.e, label %_RINvYINtNtNtCs3gqD4ldeioo_8indexmap3map4iter4IterNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1s_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2A_3all5checkTRBL_RB1p_ENCNvXse_B8_INtB8_8IndexMapBL_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB2I_3cmp9PartialEq2eq0E0INtNtNtB2I_3ops12control_flow11ControlFlowuEEB1s_.exit

bb.e:                                             ; preds = %_RINvMs3_NtCs3gqD4ldeioo_8indexmap3mapINtB6_8IndexMapNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1v_9item_tree11FieldsShapeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12get_index_ofBO_EB1v_.exit.thread6.i.i.i.us.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  %i.u = load <2 x i32>, ptr %i.t, align 8, !alias.scope !4203, !noalias !4196
  %i.v = load <2 x i32>, ptr %i.o, align 8, !alias.scope !4204, !noalias !4205
  %i.w = icmp eq <2 x i32> %i.u, %i.v             ; 2 uses
end_hunk_0
