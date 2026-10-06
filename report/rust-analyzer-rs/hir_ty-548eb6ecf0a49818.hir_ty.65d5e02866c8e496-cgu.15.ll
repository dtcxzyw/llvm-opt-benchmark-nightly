Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.15?download=true
inline.NumInlined: 5463
inline.NumDeleted: 1751
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB7_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBT_10filter_map9FilterMapINtNtBT_9enumerate9EnumerateINtNtNtBX_5slice4iter4IterINtNtBX_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB47_8ArenaMapINtB49_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB3k_E4iter0ENCNCNvXs3_NtNtB3o_11next_solver8internerNtB6a_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB6a_10DbInternerE13all_field_tys00EINtNtBT_7flatten7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtB55_13EnumVariantIdNtNtB55_9item_tree11FieldsShapeEEBO_NCB64_s_0EENtNtNtBV_6traits8iterator8Iterator4nextB3o_:bb.a
  %.not.i3.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i3.i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB5F_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !9450)
  call void @llvm.experimental.noalias.scope.decl(metadata !9451)
  call void @llvm.experimental.noalias.scope.decl(metadata !9452)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !9453)
  call void @llvm.experimental.noalias.scope.decl(metadata !9454)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !9455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9456
  store ptr %i.au, ptr %i.b, align 8, !noalias !9457
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !noalias !9457
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !9458, !noalias !9459, !nonnull !9, !noundef !9
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.az = phi ptr [ %i.bb, %bb.n ], [ %i.at, %bb.l ] ; 3 uses
  %i.ba = icmp eq ptr %i.az, %i.ay
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  store ptr %i.bb, ptr %i.i, align 8, !alias.scope !9458, !noalias !9459
  call void @llvm.experimental.noalias.scope.decl(metadata !9460)
  %i.bc = load ptr, ptr %i.aw, align 8, !alias.scope !9460, !noalias !9461, !nonnull !9, !align !13, !noundef !9
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !9462, !noundef !9
  %i.be = call { i32, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtBT_8ArenaMapINtBV_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeE4iter0INtB7_5FnMutTTjRINtNtBb_6option6OptionB2y_EEEE8call_mutB2C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.az), !noalias !9455
  %i.bf = extractvalue { i32, ptr } %i.be, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i4.i.i = icmp eq ptr %i.bf, null
  %i.bg = load ptr, ptr %i.aw, align 8, !alias.scope !9460, !noalias !9461, !nonnull !9, !align !13, !noundef !9 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !9455, !noundef !9
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bg, align 8, !noalias !9455
  br i1 %.not.i.i.i.i.i.i.i.i.i4.i.i, label %bb.m, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_10filter_map9FilterMapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3o_8ArenaMapINtB3q_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2B_E4iter0ENCNCNvXs3_NtNtB2F_11next_solver8internerNtB5r_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB5r_10DbInternerE13all_field_tys00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2F_.exit.i5.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_10filter_map9FilterMapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3o_8ArenaMapINtB3q_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2B_E4iter0ENCNCNvXs3_NtNtB2F_11next_solver8internerNtB5r_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB5r_10DbInternerE13all_field_tys00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2F_.exit.i5.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9456
  %.val.i.i.i6.i.i = load ptr, ptr %i.bf, align 8, !nonnull !9, !noundef !9
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i6.i.i, i64 8
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB5F_.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9456
  store ptr null, ptr %i.i, align 8, !alias.scope !9449
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB5F_.exit

bb.p:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9464)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9466)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9468
  store ptr %i.bk, ptr %i.a, align 8, !noalias !9469
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8, !noalias !9469
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !9470, !noalias !9471, !nonnull !9, !noundef !9
  %.promoted.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9470, !noalias !9471
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.bp = phi ptr [ %i.br, %bb.r ], [ %.promoted.i.i.i.i.i, %bb.p ] ; 3 uses
  %i.bq = icmp eq ptr %i.bp, %i.bo
  br i1 %i.bq, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3b_8ArenaMapINtB3d_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.thread.i, label %bb.r

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3b_8ArenaMapINtB3d_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.thread.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9468
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB5F_.exit

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.g, align 8, !alias.scope !9470, !noalias !9471
  call void @llvm.experimental.noalias.scope.decl(metadata !9472)
  %i.bs = load ptr, ptr %i.bm, align 8, !alias.scope !9472, !noalias !9473, !nonnull !9, !align !13, !noundef !9
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !9474, !noundef !9
  %i.bu = call { i32, ptr } @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtBT_8ArenaMapINtBV_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataENtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeE4iter0INtB7_5FnMutTTjRINtNtBb_6option6OptionB2y_EEEE8call_mutB2C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bp), !noalias !9467
  %i.bv = extractvalue { i32, ptr } %i.bu, 1      ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %i.bm, align 8, !alias.scope !9472, !noalias !9473, !nonnull !9, !align !13, !noundef !9 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !9467, !noundef !9
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8, !noalias !9467
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9468
  %.val.i = load ptr, ptr %i.bv, align 8, !nonnull !9, !noundef !9
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB5F_.exit

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB5F_.exit: ; preds = %bb.s, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3b_8ArenaMapINtB3d_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.thread.i, %bb.o, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_10filter_map9FilterMapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3o_8ArenaMapINtB3q_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2B_E4iter0ENCNCNvXs3_NtNtB2F_11next_solver8internerNtB5r_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB5r_10DbInternerE13all_field_tys00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2F_.exit.i5.i.i, %bb.k, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_10filter_map9FilterMapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtB8_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3R_8ArenaMapINtB3T_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB34_E4iter0ENCNCNvXs3_NtNtB38_11next_solver8internerNtB5U_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB5U_10DbInternerE13all_field_tys00ENtNtB5W_2ty2TyNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB38_.exit.i.i
  %.sroa.0.0 = phi ptr [ %i.bj, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_10filter_map9FilterMapINtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3o_8ArenaMapINtB3q_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2B_E4iter0ENCNCNvXs3_NtNtB2F_11next_solver8internerNtB5r_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB5r_10DbInternerE13all_field_tys00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2F_.exit.i5.i.i ], [ %i.ae, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_10filter_map9FilterMapINtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterINtNtB8_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3R_8ArenaMapINtB3T_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB34_E4iter0ENCNCNvXs3_NtNtB38_11next_solver8internerNtB5U_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB5U_10DbInternerE13all_field_tys00ENtNtB5W_2ty2TyNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB38_.exit.i.i ], [ null, %bb.k ], [ null, %bb.o ], [ %i.bz, %bb.s ], [ null, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB3b_8ArenaMapINtB3d_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB2o_E4iter0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.thread.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCs83ee1IJTiSq_6either8iteratorINtB7_6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBT_10filter_map9FilterMapINtNtBT_9enumerate9EnumerateINtNtNtBX_5slice4iter4IterINtNtBX_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB47_8ArenaMapINtB49_3IdxNtNtCsileJQcQObtj_7hir_def10signatures9FieldDataEB3k_E4iter0ENCNCNvXs3_NtNtB3o_11next_solver8internerNtB6a_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB6a_10DbInternerE13all_field_tys00EINtNtBT_7flatten7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtB55_13EnumVariantIdNtNtB55_9item_tree11FieldsShapeEEBO_NCB64_s_0EENtNtNtBV_6traits8iterator8Iterator9size_hintB3o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !30, !noundef !9
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9488)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9489, !noalias !9490, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9489, !noalias !9490, !nonnull !9
  %i.h = ptrtoint ptr %.val3.i.i.i to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !9489, !noalias !9490, !noundef !9 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val3.i62.i.i = load ptr, ptr %i.n, align 8, !alias.scope !9489, !noalias !9490, !nonnull !9
  %i.o = ptrtoint ptr %.val3.i62.i.i to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4
  %.sroa.8.0.i.i = select i1 %.not53.i.i, i64 0, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9491
  %i.s = load ptr, ptr %i.d, align 8, !alias.scope !9489, !noalias !9490, !noundef !9
  %.not54.i.i = icmp eq ptr %i.s, null
  br i1 %.not54.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvXsS_NtNtCs3gqD4ldeioo_8indexmap3map4iterINtB5_6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB1z_9item_tree11FieldsShapeEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator9size_hintCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.d), !noalias !9490
  %i.t = load i64, ptr %i.a, align 8, !noalias !9491, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !30, !noalias !9491, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !9491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9491
  %i.y = icmp eq i64 %i.t, 0
  %i.z = trunc nuw i64 %i.v to i1
  %or.cond57.i.i = and i1 %i.y, %i.z
  %i.aa = icmp eq i64 %i.x, 0
  %or.cond60.i.i = select i1 %or.cond57.i.i, i1 %i.aa, i1 false
  br i1 %or.cond60.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9491
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false), !alias.scope !9490, !noalias !9489
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5F_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ab = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  store i64 0, ptr %0, align 8, !alias.scope !9490, !noalias !9489
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ac, align 8, !alias.scope !9490, !noalias !9489
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %i.ad, align 8, !alias.scope !9490, !noalias !9489
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5F_.exit

bb.g:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load ptr, ptr %i.ae, align 8, !nonnull !9, !noundef !9
  %i.af = ptrtoint ptr %.val1 to i64
  %i.ag = ptrtoint ptr %.val to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 4
  store i64 0, ptr %0, align 8, !alias.scope !9492
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8, !alias.scope !9492
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.ak, align 8, !alias.scope !9492
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5F_.exit

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesNtNtCs33K2ylI4knu_10hir_expand4name4NameTNtCsileJQcQObtj_7hir_def13EnumVariantIdNtNtB2v_9item_tree11FieldsShapeEEINtNtB7_3map3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty5lower9FieldTypeEEENCNvMNtCsbq3eHDLgq0Z_8la_arena3mapINtB6o_8ArenaMapINtB6q_3IdxNtNtB2v_10signatures9FieldDataEB5B_E4iter0ENCNCNvXs3_NtNtB5F_11next_solver8internerNtB89_6AdtDefINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6AdtDefNtB89_10DbInternerE13all_field_tys00ENCB83_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB5F_.exit: ; preds = %bb.f, %bb.e, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtCsd9Lm8bEdjjY_5salsa6updateINtCsbdtVtHYmo6x_8thin_vec7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdENtB5_6Update12maybe_updateB1a_(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !9 ; 3 uses
  %.cast = inttoptr i64 %1 to ptr                 ; 6 uses
  %i.f = load i64, ptr %.cast, align 8, !noundef !9 ; 2 uses
  %.not = icmp eq i64 %i.e, %i.f
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.d, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.g, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE5clearBK_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !noalias !9522
  %.pr27 = load i64, ptr %.cast, align 8, !noalias !9523
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE5clearBK_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 %1, ptr %.sroa.3.0..sroa_idx, align 8
  %i.j = icmp eq i64 %i.e, 0
  br i1 %i.j, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit
  %.sroa.03.037 = phi i1 [ false, %.lr.ph ], [ %.sroa.0.0.i, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit ] ; 2 uses
  %i.l = phi ptr [ %i.h, %.lr.ph ], [ %i.n, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit ] ; 4 uses
  %i.m = phi i64 [ 0, %.lr.ph ], [ %i.p, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %2 = load i64, ptr %.cast, align 8, !noalias !9524, !noundef !9
  %i.o = icmp eq i64 %i.m, %2
  br i1 %i.o, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i64 %i.m, 1                          ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !range !12, !noalias !9524, !noundef !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !noalias !9524, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !9
  %i.w = icmp eq i32 %i.v, %i.t
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.l, align 4, !range !12, !noundef !9
  %.not.i = icmp eq i32 %i.x, %i.r
  br i1 %.not.i, label %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.r, ptr %i.l, align 4
  store i32 %i.t, ptr %i.u, align 4
  br label %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit

thread-pre-split:                                 ; preds = %bb.e, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit, %bb.d
  %storemerge63 = phi ptr [ %i.h, %bb.d ], [ %i.n, %bb.e ], [ %i.i, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %i.m, %bb.e ], [ %i.p, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit ]
  %.sroa.03.029 = phi i1 [ false, %bb.d ], [ %.sroa.03.037, %bb.e ], [ %.sroa.0.0.i, %_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit ]
  store ptr %storemerge63, ptr %i.c, align 8
  store i64 %storemerge, ptr %.sroa.4.0..sroa_idx, align 8
  %i.y = icmp eq i64 %1, ptrtoint (ptr @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER to i64)
  br i1 %i.y, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEINtCsbdtVtHYmo6x_8thin_vec8IntoIterB1C_EEEB1G_.exit, label %bb.i, !prof !11

bb.i:                                             ; preds = %thread-pre-split
  invoke void @_RINvNvXsG_CsbdtVtHYmo6x_8thin_vecINtB8_8IntoIterpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1S_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.3.0..sroa_idx) #57
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1R_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.3.0..sroa_idx) #57
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1R_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.3.0..sroa_idx) #57
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEINtCsbdtVtHYmo6x_8thin_vec8IntoIterB1C_EEEB1G_.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !9525
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEINtCsbdtVtHYmo6x_8thin_vec8IntoIterB1C_EEEB1G_.exit: ; preds = %bb.k, %thread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEINtCsbdtVtHYmo6x_8thin_vec8IntoIterB1C_EEEB1G_.exit
  %.sroa.03.1 = phi i1 [ true, %bb.aj ], [ %.sroa.03.029, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter7IterMutNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEINtCsbdtVtHYmo6x_8thin_vec8IntoIterB1C_EEEB1G_.exit ]
  ret i1 %.sroa.03.1

_RNvXs8_NvNtCs8K4cjrcxBsw_6hir_ty2dbs2_1__NtB7_11AnonConstIdNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = phi i1 [ true, %bb.h ], [ %.sroa.03.037, %bb.g ] ; 2 uses
  %i.ab = icmp eq ptr %i.n, %i.i
  br i1 %i.ab, label %thread-pre-split, label %bb.e

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE5clearBK_.exit: ; preds = %bb.c, %bb.b
  %i.ac = phi i64 [ %.pr27, %bb.c ], [ %i.f, %bb.b ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9526)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9526
  store i64 %1, ptr %i.b, align 8, !alias.scope !9527, !noalias !9526
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !9527, !noalias !9526
  %.not.i17 = icmp eq i64 %i.ac, 0
  br i1 %.not.i17, label %.thread40.i, label %bb.n

.thread40.loopexit.i:                             ; preds = %bb.v, %bb.u
  %.lcssa50.i = phi i64 [ %i.ac, %bb.v ], [ %i.au, %bb.u ]
  store i64 %.lcssa50.i, ptr %i.ad, align 8, !noalias !9526
  br label %.thread40.i

.thread40.i:                                      ; preds = %.thread40.loopexit.i, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE5clearBK_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !9526
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.af = load ptr, ptr %i.a, align 8, !alias.scope !9528, !noalias !9526, !nonnull !9, !noundef !9 ; 4 uses
  %.promoted52.i = load i64, ptr %i.ae, align 8, !alias.scope !9528, !noalias !9526 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noalias !9529, !noundef !9
  %i.ah = icmp eq i64 %.promoted52.i, %i.ag
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread40.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !9530 ; 2 uses
  %.pre60.i = load i64, ptr %.pre.i, align 8, !noalias !9530
  br label %bb.x

bb.n:                                             ; preds = %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE5clearBK_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9531)
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !9532, !nonnull !9, !noundef !9 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !9532, !noundef !9 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !9532, !noundef !9 ; 4 uses
  %i.an = add i64 %i.ak, %i.ac                    ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %bb.p, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  %.not.i.i = icmp ugt i64 %i.an, %i.am
  br i1 %.not.i.i, label %bb.q, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit.i

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #51
          to label %.noexc.i unwind label %bb.ai, !noalias !9526

.noexc.i:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = shl nuw i64 %i.am, 1
  %i.ar = icmp slt i64 %i.am, 0
  br i1 %i.ar, label %bb.t, label %bb.s, !prof !8

bb.s:                                             ; preds = %bb.t, %bb.r, %bb.q
  %.sroa.01.0.i.i = phi i64 [ %i.aq, %bb.r ], [ -1, %bb.t ], [ 4, %bb.q ]
  %..i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i.i, i64 %i.an)
  invoke fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE10reallocateBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i.i)
          to label %._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit_crit_edge.i unwind label %bb.ai

._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit_crit_edge.i: ; preds = %bb.s
  %.val.pre.i = load ptr, ptr %0, align 8, !alias.scope !9526
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit.i

bb.t:                                             ; preds = %bb.r
  br label %bb.s

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit.i: ; preds = %._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit_crit_edge.i, %bb.o
  %.val.i = phi ptr [ %.val.pre.i, %._RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit_crit_edge.i ], [ %i.aj, %bb.o ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit.i
  %.sroa.03.051.i = phi i64 [ %i.ac, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit.i ], [ %i.ax, %bb.v ]
  %i.au = phi i64 [ 0, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE7reserveBK_.exit.i ], [ %i.ay, %bb.v ] ; 4 uses
  %i.av = load i64, ptr %.cast, align 8, !noalias !9533, !noundef !9
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %.thread40.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = add i64 %.sroa.03.051.i, -1             ; 2 uses
  %i.ay = add i64 %i.au, 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %i.ba = load i64, ptr %.val.i, align 8, !noalias !9526, !noundef !9 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ba
  %i.bc = load <2 x i32>, ptr %i.az, align 4, !noalias !9533
  store <2 x i32> %i.bc, ptr %i.bb, align 4, !noalias !9526
  %i.bd = add i64 %i.ba, 1
  store i64 %i.bd, ptr %.val.i, align 8, !noalias !9526
  %i.be = icmp eq i64 %i.ax, 0
  br i1 %i.be, label %.thread40.loopexit.i, label %bb.u

.loopexit.i:                                      ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bi, ptr %i.ae, align 8, !noalias !9526
  br label %bb.w

.loopexit.split-lp.i:                             ; preds = %bb.z
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbdtVtHYmo6x_8thin_vec8IntoIterNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #52
          to label %.body unwind label %bb.ah, !noalias !9526

bb.x:                                             ; preds = %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i, %.lr.ph.i
  %i.bf = phi i64 [ %.pre60.i, %.lr.ph.i ], [ %i.bv, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i ] ; 6 uses
  %i.bg = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.br, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i ] ; 2 uses
  %i.bh = phi i64 [ %.promoted52.i, %.lr.ph.i ], [ %i.bi, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9528)
  %i.bi = add i64 %i.bh, 1                        ; 5 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bh
  %i.bk = load <2 x i32>, ptr %i.bj, align 4, !noalias !9534
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !9530, !noundef !9
  %i.bn = icmp eq i64 %i.bf, %i.bm
  br i1 %i.bn, label %bb.y, label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.bo = add nuw i64 %i.bf, 1
  switch i64 %i.bf, label %bb.aa [
    i64 -1, label %bb.z
    i64 0, label %bb.ab
  ], !prof !41

bb.z:                                             ; preds = %bb.y
  store i64 %i.bi, ptr %i.ae, align 8, !noalias !9526
  invoke void @_RNvCsbdtVtHYmo6x_8thin_vec17capacity_overflow() #51
          to label %.noexc27.i unwind label %.loopexit.split-lp.i, !noalias !9526

.noexc27.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bp = shl nuw i64 %i.bf, 1
  %i.bq = icmp slt i64 %i.bf, 0
  br i1 %i.bq, label %bb.ac, label %bb.ab, !prof !8

bb.ab:                                            ; preds = %bb.ac, %bb.aa, %bb.y
  %.sroa.01.0.i.i.i = phi i64 [ %i.bp, %bb.aa ], [ -1, %bb.ac ], [ 4, %bb.y ]
  %..i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.01.0.i.i.i, i64 %i.bo)
  invoke fastcc void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE10reallocateBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %..i.i.i.i)
          to label %.noexc28.i unwind label %.loopexit.i

.noexc28.i:                                       ; preds = %bb.ab
  %.val.pre.i.i = load ptr, ptr %0, align 8, !alias.scope !9530 ; 2 uses
  %.pre.i.i = load i64, ptr %.val.pre.i.i, align 8, !noalias !9530
  br label %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i

bb.ac:                                            ; preds = %bb.aa
  br label %bb.ab

_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i: ; preds = %.noexc28.i, %bb.x
  %i.br = phi ptr [ %.val.pre.i.i, %.noexc28.i ], [ %i.bg, %bb.x ] ; 3 uses
  %i.bs = phi i64 [ %.pre.i.i, %.noexc28.i ], [ %i.bf, %bb.x ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  store <2 x i32> %i.bk, ptr %i.bu, align 4, !noalias !9530
  %i.bv = add i64 %i.bs, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.br, align 8, !noalias !9530
  %i.bw = load i64, ptr %i.af, align 8, !noalias !9536, !noundef !9
  %i.bx = icmp eq i64 %i.bi, %i.bw
  br i1 %i.bx, label %._crit_edge.i, label %bb.x

._crit_edge.i:                                    ; preds = %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i, %.thread40.i
  %.lcssa53.i = phi i64 [ %.promoted52.i, %.thread40.i ], [ %i.bi, %_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdE4pushBK_.exit.i ]
  store i64 %.lcssa53.i, ptr %i.ae, align 8, !noalias !9526
  %i.by = icmp eq ptr %i.af, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.by, label %bb.aj, label %bb.ad, !prof !11

bb.ad:                                            ; preds = %._crit_edge.i
  invoke void @_RINvNvXsG_CsbdtVtHYmo6x_8thin_vecINtB8_8IntoIterpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1S_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a) #57
          to label %bb.af unwind label %bb.ae, !noalias !9526

bb.ae:                                            ; preds = %bb.ad
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1R_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a) #57
          to label %.body unwind label %bb.ag, !noalias !9526

bb.af:                                            ; preds = %bb.ad
  call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdEB1R_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a) #57
  br label %bb.aj

end_hunk_0
