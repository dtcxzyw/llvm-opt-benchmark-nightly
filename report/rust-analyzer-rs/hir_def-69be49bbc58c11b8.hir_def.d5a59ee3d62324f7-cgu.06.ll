Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.06?download=true
inline.NumInlined: 3669
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2F_:bb.a
  %.val25.i.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !8993, !noalias !8994, !nonnull !10, !noundef !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val26.i.i.i.i.i.i = load i32, ptr %i.cs, align 8, !alias.scope !8993, !noalias !8994
  %.val27.i.i.i.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !8995, !noalias !8996, !nonnull !10, !noundef !10
  %i.ct = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val28.i.i.i.i.i.i = load i32, ptr %i.ct, align 8, !alias.scope !8995, !noalias !8996
  %i.cu = icmp eq ptr %.val25.i.i.i.i.i.i, %.val27.i.i.i.i.i.i
  %i.cv = icmp eq i32 %.val26.i.i.i.i.i.i, %.val28.i.i.i.i.i.i
  %.sroa.0.0.i45.i.i.i.i.i.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %.sroa.0.0.i45.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.o:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cx = getelementptr inbounds i8, ptr %i.ad, i64 -16
  call void @llvm.experimental.noalias.scope.decl(metadata !9007)
  call void @llvm.experimental.noalias.scope.decl(metadata !9010)
  %i.cy = load ptr, ptr %i.cw, align 8, !alias.scope !9012, !noalias !9013, !nonnull !10, !noundef !10
  %i.cz = load ptr, ptr %i.cx, align 8, !alias.scope !9014, !noalias !9015, !nonnull !10, !noundef !10
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.p, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !alias.scope !9012, !noalias !9013, !noundef !10
  %i.dd = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.de = load i32, ptr %i.dd, align 8, !alias.scope !9014, !noalias !9015, !noundef !10
  %i.df = icmp eq i32 %i.dc, %i.de
  br i1 %i.df, label %.split29.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split29.i:                                       ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.dh = load i8, ptr %i.dg, align 4, !range !53, !alias.scope !9012, !noalias !9013, !noundef !10
  %i.di = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.dj = load i8, ptr %i.di, align 4, !range !53, !alias.scope !9014, !noalias !9015, !noundef !10
  %i.dk = icmp eq i8 %i.dh, %i.dj
  br i1 %i.dk, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split21.i:                                       ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dm = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val29.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !8993, !noalias !8994, !nonnull !10, !noundef !10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val30.i.i.i.i.i.i = load i32, ptr %i.dn, align 8, !alias.scope !8993, !noalias !8994
  %.val31.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !8995, !noalias !8996, !nonnull !10, !noundef !10
  %i.do = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val32.i.i.i.i.i.i = load i32, ptr %i.do, align 8, !alias.scope !8995, !noalias !8996
  %i.dp = icmp eq ptr %.val29.i.i.i.i.i.i, %.val31.i.i.i.i.i.i
  %i.dq = icmp eq i32 %.val30.i.i.i.i.i.i, %.val32.i.i.i.i.i.i
  %.sroa.0.0.i47.i.i.i.i.i.i = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %.sroa.0.0.i47.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split20.i:                                       ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ds = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val33.i.i.i.i.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !8993, !noalias !8994, !nonnull !10, !noundef !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val34.i.i.i.i.i.i = load i32, ptr %i.dt, align 8, !alias.scope !8993, !noalias !8994
  %.val35.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !8995, !noalias !8996, !nonnull !10, !noundef !10
  %i.du = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val36.i.i.i.i.i.i = load i32, ptr %i.du, align 8, !alias.scope !8995, !noalias !8996
  %i.dv = icmp eq ptr %.val33.i.i.i.i.i.i, %.val35.i.i.i.i.i.i
  %i.dw = icmp eq i32 %.val34.i.i.i.i.i.i, %.val36.i.i.i.i.i.i
  %.sroa.0.0.i48.i.i.i.i.i.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %.sroa.0.0.i48.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split19.i:                                       ; preds = %bb.h
  %i.dx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dy = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.val37.i.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !8993, !noalias !8994, !nonnull !10, !noundef !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val38.i.i.i.i.i.i = load i32, ptr %i.dz, align 8, !alias.scope !8993, !noalias !8994
  %.val39.i.i.i.i.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !8995, !noalias !8996, !nonnull !10, !noundef !10
  %i.ea = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %.val40.i.i.i.i.i.i = load i32, ptr %i.ea, align 8, !alias.scope !8995, !noalias !8996
  %i.eb = icmp eq ptr %.val37.i.i.i.i.i.i, %.val39.i.i.i.i.i.i
  %i.ec = icmp eq i32 %.val38.i.i.i.i.i.i, %.val40.i.i.i.i.i.i
  %.sroa.0.0.i49.i.i.i.i.i.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %.sroa.0.0.i49.i.i.i.i.i.i, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit

.split.backedge.i:                                ; preds = %.split19.i, %.split20.i, %.split21.i, %.split29.i, %.split23.i, %.split24.i, %.split22.i, %.split26.i, %.split27.i, %.split28.i, %.split25.i, %.split30.i, %bb.k, %bb.j
  %i.ed = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !8946 ; 2 uses
  %i.ee = extractvalue { ptr, ptr } %i.ed, 0      ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.ee, null
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit, label %.lr.ph

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit: ; preds = %.split19.i, %.split20.i, %.split21.i, %.split29.i, %bb.p, %bb.o, %.split23.i, %.split24.i, %.split22.i, %bb.n, %bb.m, %.split26.i, %.split27.i, %.split28.i, %.split25.i, %bb.l, %.split30.i, %bb.k, %bb.j, %bb.g, %.split.backedge.i, %._crit_edge.i.i.i.i.i, %.split.i.preheader, %.split.us.i, %bb.c
  %i.ef = phi i1 [ true, %.split.us.i ], [ false, %bb.c ], [ false, %._crit_edge.i.i.i.i.i ], [ true, %.split.i.preheader ], [ false, %.split21.i ], [ false, %.split27.i ], [ false, %.split26.i ], [ false, %bb.m ], [ false, %.split28.i ], [ false, %.split23.i ], [ false, %bb.o ], [ false, %.split24.i ], [ false, %.split20.i ], [ false, %.split19.i ], [ false, %.split29.i ], [ false, %.split22.i ], [ false, %bb.k ], [ false, %bb.n ], [ false, %.split25.i ], [ false, %.split30.i ], [ false, %bb.j ], [ false, %bb.p ], [ false, %bb.g ], [ false, %bb.l ], [ true, %.split.backedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit
  %.sroa.0.0 = phi i1 [ %i.ef, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCsileJQcQObtj_7hir_def9item_tree12SmallModItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3i_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3q_3cmp9PartialEq2eq0E0INtNtNtB3q_3ops12control_flow11ControlFlowuEEB2x_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB2H_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  %.not = icmp eq i64 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterB2r_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9016)
  %i.g = icmp eq i64 %i.d, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !9016, !noalias !9019 ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !alias.scope !9016, !noalias !9019, !nonnull !10 ; 2 uses
  %i.k = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !9016 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %.not.us.not.i = icmp eq ptr %i.l, null         ; 2 uses
  br i1 %i.g, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit, label %.lr.ph

.split.us.i:                                      ; preds = %bb.b
  br i1 %.not.us.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9021)
  call void @llvm.experimental.noalias.scope.decl(metadata !9024)
  br label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

.lr.ph:                                           ; preds = %.split.i.preheader, %.split.backedge.i
  %i.m = phi ptr [ %i.cz, %.split.backedge.i ], [ %i.l, %.split.i.preheader ] ; 2 uses
  %i.n = phi { ptr, ptr } [ %i.cy, %.split.backedge.i ], [ %i.k, %.split.i.preheader ]
  %i.o = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9021)
  call void @llvm.experimental.noalias.scope.decl(metadata !9024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9027
  store i64 0, ptr %i.a, align 8, !noalias !9027
  call void @_RINvXs4_NtCsdovh4xi6v3I_4span6ast_idINtB6_9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !9035
  %.val.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !9027, !noundef !10 ; 2 uses
  %i.p = call noundef i64 @llvm.fshl.i64(i64 %.val.i.i.i.i.i, i64 %.val.i.i.i.i.i, i64 26) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9027
  %i.q = lshr i64 %i.p, 57
  %i.r = trunc nuw nsw i64 %i.q to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.p, %.lr.ph ], [ %i.al, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !9036 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.t
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %i.x = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.y
  %i.aa = and i64 %i.z, %i.i
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ae = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemEINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad), !noalias !9044
  br i1 %i.ae, label %bb.g, label %bb.e, !prof !843

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit, !prof !875

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ak = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.al = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ak
  br label %bb.d

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 -16
  call void @llvm.experimental.noalias.scope.decl(metadata !9047)
  call void @llvm.experimental.noalias.scope.decl(metadata !9050)
  call void @llvm.experimental.noalias.scope.decl(metadata !9052)
  call void @llvm.experimental.noalias.scope.decl(metadata !9055)
  call void @llvm.experimental.noalias.scope.decl(metadata !9057)
  call void @llvm.experimental.noalias.scope.decl(metadata !9060)
  %i.an = load ptr, ptr %i.o, align 8, !alias.scope !9062, !noalias !9063, !noundef !10 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null                 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !alias.scope !9064, !noalias !9065, !noundef !10 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null                 ; 3 uses
  %i.ar = xor i1 %i.ao, %i.aq
  br i1 %i.ar, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ao, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !9062, !noalias !9063, !nonnull !10, !noundef !10 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !9064, !noalias !9065, !nonnull !10, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9066)
  call void @llvm.experimental.noalias.scope.decl(metadata !9069)
  %i.aw = load i64, ptr %i.at, align 8, !range !2720, !alias.scope !9066, !noalias !9071, !noundef !10 ; 2 uses
  %i.ax = load i64, ptr %i.av, align 8, !range !2720, !alias.scope !9069, !noalias !9072, !noundef !10
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %tailrecurse.i.i.i.i.i.i.i
  %i.az = phi i64 [ %i.be, %tailrecurse.i.i.i.i.i.i.i ], [ %i.aw, %bb.i ]
  %.tr717.i.i.i.i.i.i.i = phi ptr [ %i.bd, %tailrecurse.i.i.i.i.i.i.i ], [ %i.av, %bb.i ] ; 7 uses
  %.tr16.i.i.i.i.i.i.i = phi ptr [ %i.bb, %tailrecurse.i.i.i.i.i.i.i ], [ %i.at, %bb.i ] ; 7 uses
  switch i64 %i.az, label %default.unreachable [
    i64 1, label %bb.j
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %tailrecurse.i.i.i.i.i.i.i
    i64 0, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i
  ]

default.unreachable:                              ; preds = %.lr.ph.i.i.i.i.i.i.i
  unreachable

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i.i.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !9071, !nonnull !10, !noundef !10 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !9072, !nonnull !10, !noundef !10 ; 2 uses
  %i.be = load i64, ptr %i.bb, align 8, !range !2720, !noalias !9073, !noundef !10 ; 2 uses
  %i.bf = load i64, ptr %i.bd, align 8, !range !2720, !noalias !9073, !noundef !10
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i.i.i, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !noalias !9071, !noundef !10 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i.i.i, i64 16
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !9071 ; 3 uses
  %.val.i.i.i.i.i.i.i.a = load ptr, ptr %i.bi, align 8, !noalias !9072, !noundef !10 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i.i.i, i64 16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %3, align 8, !noalias !9072 ; 3 uses
  %i.bj = icmp ne ptr %.val.i.i.i.i.i.i.i, null   ; 2 uses
  %i.bk = icmp eq ptr %.val.i.i.i.i.i.i.i.a, null ; 3 uses
  %not..i.i.i.i.i.i.i.i = xor i1 %i.bk, true
  %i.bl = xor i1 %i.bj, %i.bk
  br i1 %i.bl, label %bb.k, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.bj, label %.split7.i.i.i.i.i.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i

.split7.i.i.i.i.i.i:                              ; preds = %bb.k
  call void @llvm.assume(i1 %not..i.i.i.i.i.i.i.i)
  %4 = icmp eq ptr %.val.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.a
  %i.bm = icmp eq ptr %.val4.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = select i1 %4, i1 %i.bm, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i.i.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !9071, !noundef !10 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !9072, !noundef !10
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %.split8.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

.split8.i.i.i.i.i.i:                              ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !9072, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !9071, !nonnull !10, !noundef !10
  %i.bw = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bt, i64 noundef %i.bo), !noalias !9073, !inline_history !9074
  br i1 %i.bw, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i.i.i, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noalias !9071, !noundef !10 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !9072, !noundef !10
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %.split.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

.split.i.i.i.i.i.i:                               ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr717.i.i.i.i.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !9072, !nonnull !10, !noundef !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr16.i.i.i.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !9071, !nonnull !10, !noundef !10
  %i.cg = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cd, i64 noundef %i.by), !noalias !9073, !inline_history !9074
  br i1 %i.cg, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i.i.i.i.i) ]
  %5 = icmp eq ptr %.val4.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i
  br i1 %5, label %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

bb.n:                                             ; preds = %bb.h
  %i.ch = xor i1 %i.aq, true
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !9062, !noalias !9063, !noundef !10 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !9064, !noalias !9065, !noundef !10
  %i.cm = icmp eq i64 %i.cj, %i.cl
  br i1 %i.cm, label %.split48.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

.split48.i:                                       ; preds = %bb.n
  %i.cn = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.an, ptr noundef nonnull %i.ap, i64 noundef %i.cj), !noalias !9075
  br i1 %i.cn, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %.split8.i.i.i.i.i.i, %.split7.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !noalias !9075, !noundef !10 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !9075, !noundef !10
  %i.cs = icmp eq i64 %i.cp, %i.cr
  br i1 %i.cs, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3P_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2S_.exit.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3P_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2S_.exit.i: ; preds = %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !9075, !nonnull !10, !noundef !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !9075, !nonnull !10, !noundef !10
  %i.cx = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand5attrs4AttrINtB5_14SlicePartialEqBC_E17equal_same_lengthCsileJQcQObtj_7hir_def(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cu, i64 noundef %i.cp), !noalias !9075
  br i1 %i.cx, label %.split.backedge.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit

.split.backedge.i:                                ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3P_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2S_.exit.i, %.split48.i
  %i.cy = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !9016 ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0      ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit, label %.lr.ph

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3P_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2S_.exit.i, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i, %.split48.i, %bb.n, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.m, %.split8.i.i.i.i.i.i, %bb.l, %.split7.i.i.i.i.i.i, %bb.j, %bb.i, %bb.g, %.split.backedge.i, %._crit_edge.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i, %.split.i.preheader, %.split.us.i, %bb.c
  %i.da = phi i1 [ false, %._crit_edge.i.i.i.i.i ], [ true, %.split.us.i ], [ false, %tailrecurse.i.i.i.i.i.i.i ], [ false, %bb.c ], [ true, %.split.i.preheader ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread5.i.i.i.i.i.i ], [ false, %bb.j ], [ false, %.split8.i.i.i.i.i.i ], [ false, %.split7.i.i.i.i.i.i ], [ false, %.split.i.i.i.i.i.i ], [ false, %bb.l ], [ false, %_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i.i.i ], [ false, %bb.m ], [ false, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemERNtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB3P_7HashMapB1d_B2M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B2S_.exit.i ], [ false, %bb.i ], [ false, %.split48.i ], [ false, %bb.n ], [ false, %bb.g ], [ true, %.split.backedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit
  %.sroa.0.0 = phi i1 [ %i.da, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemENtNtNtCsileJQcQObtj_7hir_def9item_tree5attrs10AttrsOrCfgENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB3o_3all5checkTRBV_RB2t_ENCNvXs4_B6_INtB6_7HashMapBV_B2t_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB3w_3cmp9PartialEq2eq0E0INtNtNtB3w_3ops12control_flow11ControlFlowuEEB2z_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def10FunctionIdNtB15_11ProcMacroIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB15_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def10FunctionIdNtBP_11ProcMacroIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterBP_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9076)
  %i.f = icmp eq i64 %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !9076, !noalias !9079 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !9076, !noalias !9079, !nonnull !10 ; 2 uses
  br i1 %i.f, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBM_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9076
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %.not.us.not.i.not = icmp eq ptr %i.k, null
  br label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBX_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1v_ENCNvXs4_B6_INtB6_7HashMapBV_B1v_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10FunctionIdRNtB1f_11ProcMacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB2g_7HashMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i
  %i.l = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBM_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9076 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.m, null        ; 3 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBX_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1v_ENCNvXs4_B6_INtB6_7HashMapBV_B1v_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %.val6.i = load i64, ptr %i.m, align 4, !noalias !9076 ; 3 uses
  %.val7.i = load i32, ptr %i.n, align 4, !noalias !9076
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val8.i = load i32, ptr %i.o, align 4, !noalias !9076
  %i.p = mul i64 %.val6.i, -1065810590584100411   ; 2 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 26) ; 2 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.v = trunc i64 %.val6.i to i32
  %i.w = lshr i64 %.val6.i, 32
  %i.x = trunc nuw i64 %i.w to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.aq, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.q, %bb.c ], [ %i.ar, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.h ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !9081 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.u
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.ap, %bb.e ], [ %i.aa, %bb.d ] ; 3 uses
  %i.ab = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.h
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %.val2.i.i.i.i.i.i = load i32, ptr %i.ah, align 4, !alias.scope !9093, !noalias !9096
  %i.ai = getelementptr i8, ptr %i.ag, i64 -12
  %.val3.i.i.i.i.i.i = load i32, ptr %i.ai, align 4, !alias.scope !9093, !noalias !9096, !noundef !10
  %i.aj = icmp eq i32 %.val3.i.i.i.i.i.i, %i.x
  %i.ak = icmp eq i32 %.val2.i.i.i.i.i.i, %i.v
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10FunctionIdRNtB1f_11ProcMacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB2g_7HashMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i, label %bb.e, !prof !843

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d
  %i.al = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.f, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBX_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1v_ENCNvXs4_B6_INtB6_7HashMapBV_B1v_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit, !prof !875

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.aq = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ar = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.aq
  br label %bb.d

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10FunctionIdRNtB1f_11ProcMacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB2g_7HashMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.val5.i.i.i.i = load i32, ptr %i.as, align 4, !alias.scope !9100, !noalias !9076
  %i.at = getelementptr i8, ptr %i.ag, i64 -4
  %.val6.i.i.i.i = load i32, ptr %i.at, align 4, !alias.scope !9100, !noalias !9076, !noundef !10
  %i.au = icmp ne i32 %.val8.i, %.val6.i.i.i.i
  %i.av = icmp ne i32 %.val7.i, %.val5.i.i.i.i
  %.sroa.0.0.i.i.i.i.not.i.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %.sroa.0.0.i.i.i.i.not.i.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBX_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1v_ENCNvXs4_B6_INtB6_7HashMapBV_B1v_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit, label %.split.i

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBX_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1v_ENCNvXs4_B6_INtB6_7HashMapBV_B1v_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit: ; preds = %.split.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10FunctionIdRNtB1f_11ProcMacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB2g_7HashMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i, %._crit_edge.i.i.i.i.i, %.split.us.i
  %.not13.i = phi i1 [ %.not.us.not.i.not, %.split.us.i ], [ false, %._crit_edge.i.i.i.i.i ], [ %.not.not.not.i, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def10FunctionIdRNtB1f_11ProcMacroIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB2g_7HashMapB1d_B1O_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i ], [ %.not.not.not.i, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBX_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1v_ENCNvXs4_B6_INtB6_7HashMapBV_B1v_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit
  %.sroa.0.0 = phi i1 [ %.not13.i, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def10FunctionIdNtBX_11ProcMacroIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1v_ENCNvXs4_B6_INtB6_7HashMapBV_B1v_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def11ProcMacroIdNtB15_10FunctionIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB15_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %.not = icmp eq i64 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def11ProcMacroIdNtBP_10FunctionIdNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterBP_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9103)
  %i.f = icmp eq i64 %i.c, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !9103, !noalias !9106 ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !alias.scope !9103, !noalias !9106, !nonnull !10 ; 2 uses
  br i1 %i.f, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCsileJQcQObtj_7hir_def11ProcMacroIdNtBM_10FunctionIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9103
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %.not.us.not.i.not = icmp eq ptr %i.k, null
  br label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def11ProcMacroIdNtBX_10FunctionIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1w_ENCNvXs4_B6_INtB6_7HashMapBV_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit

.split.i:                                         ; preds = %bb.b, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtCsileJQcQObtj_7hir_def11ProcMacroIdRNtB1f_10FunctionIdENCNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB2g_7HashMapB1d_B1P_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtBe_3cmp9PartialEq2eq0E0B1f_.exit.i
  %i.l = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtCsileJQcQObtj_7hir_def11ProcMacroIdNtBM_10FunctionIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !9103 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %.not.not.not.i = icmp eq ptr %i.m, null        ; 3 uses
  br i1 %.not.not.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map4IterNtCsileJQcQObtj_7hir_def11ProcMacroIdNtBX_10FunctionIdENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1O_3all5checkTRBV_RB1w_ENCNvXs4_B6_INtB6_7HashMapBV_B1w_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1W_3cmp9PartialEq2eq0E0INtNtNtB1W_3ops12control_flow11ControlFlowuEEBX_.exit, label %bb.c

bb.c:                                             ; preds = %.split.i
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %.val6.i = load i64, ptr %i.m, align 4, !noalias !9103 ; 3 uses
  %.val7.i = load i32, ptr %i.n, align 4, !noalias !9103
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val8.i = load i32, ptr %i.o, align 4, !noalias !9103
  %i.p = mul i64 %.val6.i, -1065810590584100411   ; 2 uses
  %i.q = call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 26) ; 2 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
end_hunk_0
