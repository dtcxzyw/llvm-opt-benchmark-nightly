Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_dtype-1a69546bcdb44d93.polars_dtype.5d47620fe5dcef62-cgu.03?download=true
inline.NumInlined: 175
inline.NumDeleted: 86
begin_hunk_0_@_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCs80wj1cxFixi_12polars_dtype:bb.a
  store ptr %i.cg, ptr %i.ad, align 8, !dbg !1162, !alias.scope !1047, !noalias !1020
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !1162, !alias.scope !1047, !noalias !1020
  br label %._crit_edge.i.i.i10, !dbg !1163

._crit_edge.i.i.i10:                              ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i7, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i19
  %i.ch = phi i64 [ %i.cf, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i19 ], [ %i.ba, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i7 ]
  %i.ci = phi i64 [ %i.cd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i19 ], [ %i.bb, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i7 ]
  %i.cj = phi i64 [ %.sroa.0.0.i.i.i.i20, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i19 ], [ %i.bc, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i7 ], !dbg !1164
  %i.ck = phi i64 [ %.sroa.02.0.copyload.i.i.i21, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i19 ], [ %.pre.i.i.i1263, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i7 ], !dbg !1165 ; 2 uses
  %i.cl = trunc i64 %i.ck to i8, !dbg !1165
  %i.cm = lshr i64 %i.ck, 1, !dbg !1166           ; 2 uses
  store i64 %i.cm, ptr %.phi.trans.insert.i.i.i11, align 8, !dbg !1166, !alias.scope !1047, !noalias !1020
  %i.cn = add i64 %i.cj, -1, !dbg !1164           ; 2 uses
  store i64 %i.cn, ptr %i.ae, align 8, !dbg !1164, !alias.scope !1047, !noalias !1020
  %i.co = and i8 %i.cl, 1, !dbg !1167
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i13, !dbg !1168

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i13: ; preds = %._crit_edge.i.i.i10, %bb.g
  %i.cp = phi i64 [ %i.ch, %._crit_edge.i.i.i10 ], [ %i.ba, %bb.g ]
  %i.cq = phi i64 [ %i.ci, %._crit_edge.i.i.i10 ], [ 0, %bb.g ]
  %.pre.i.i.i1262 = phi i64 [ %i.cm, %._crit_edge.i.i.i10 ], [ %.pre.i.i.i1263, %bb.g ]
  %i.cr = phi i64 [ %i.cn, %._crit_edge.i.i.i10 ], [ 0, %bb.g ]
  %.sroa.0.0.i3.i.i14 = phi i8 [ %i.co, %._crit_edge.i.i.i10 ], [ 2, %bb.g ], !dbg !1169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1170, !noalias !1061
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i8 noundef %.sroa.0.0.i3.i.i14, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i9, i64 %.sroa.3.0.i.i.i8), !dbg !1171, !noalias !1061
  %i.cs = load i8, ptr %i.a, align 8, !dbg !1172, !range !1062, !noalias !1061, !noundef !107 ; 2 uses
  %.not.i.i15 = icmp eq i8 %i.cs, 2, !dbg !1172
  br i1 %.not.i.i15, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43, !dbg !1173

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i13
  %i.ct = trunc nuw i8 %i.cs to i1, !dbg !1174
  %i.cu = load i64, ptr %i.ah, align 8, !dbg !1174, !noalias !1061, !noundef !107
  %i.cv = load ptr, ptr %i.ai, align 8, !dbg !1175, !noalias !1061, !nonnull !107
  %.sroa.01.0.i.i16 = select i1 %i.ct, ptr %i.cv, ptr null, !dbg !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1176, !noalias !1061
  br label %bb.j, !dbg !1177

bb.h:                                             ; preds = %.backedge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1065), !dbg !1178, !noalias !1020
  %i.cw = load i64, ptr %i.ad, align 8, !dbg !1179, !alias.scope !1066, !noalias !1020, !noundef !107
  %i.cx = icmp eq i64 %i.bd, %i.cw, !dbg !1180
  br i1 %i.cx, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, label %bb.i, !dbg !1180

bb.i:                                             ; preds = %bb.h
  %i.cy = add nuw i64 %i.bd, 1, !dbg !1181        ; 2 uses
  store i64 %i.cy, ptr %i.y, align 8, !dbg !1181, !alias.scope !1066, !noalias !1020
  %i.cz = load ptr, ptr %i.x, align 8, !dbg !1182, !alias.scope !1066, !noalias !1020, !nonnull !107, !align !1067, !noundef !107 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40, !dbg !1183
  %i.db = load ptr, ptr %i.da, align 8, !dbg !1183, !noalias !1068, !noundef !107
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 48, !dbg !1184
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !1184, !noalias !1068, !noundef !107
  %i.de = icmp ult i64 %i.bd, %i.dd, !dbg !1185
  tail call void @llvm.assume(i1 %i.de), !dbg !1186, !noalias !1020
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.bd, !dbg !1187 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 64, !dbg !1188
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !1188, !noalias !1068, !noundef !107
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 72, !dbg !1189
  %i.dj = load i64, ptr %i.di, align 8, !dbg !1189, !noalias !1068, !noundef !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069), !dbg !1190, !noalias !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070), !dbg !1190, !noalias !1020
  %i.dk = load i32, ptr %i.df, align 4, !dbg !1191, !alias.scope !1069, !noalias !1068, !noundef !107 ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 13, !dbg !1191
  br i1 %i.dl, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i28, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i22, !dbg !1191

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i28: ; preds = %bb.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 4, !dbg !1192
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37, !dbg !1193

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i22: ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !1194
  %i.do = load i32, ptr %i.dn, align 4, !dbg !1194, !alias.scope !1069, !noalias !1068, !noundef !107
  %i.dp = zext i32 %i.do to i64, !dbg !1194       ; 2 uses
  %i.dq = icmp samesign ugt i64 %i.dj, %i.dp, !dbg !1195
  tail call void @llvm.assume(i1 %i.dq), !dbg !1196, !noalias !1020
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.dp, !dbg !1197
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 12, !dbg !1198
  %i.dt = load i32, ptr %i.ds, align 4, !dbg !1198, !alias.scope !1069, !noalias !1068, !noundef !107
  %i.du = zext i32 %i.dt to i64, !dbg !1198
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8, !dbg !1199
  %i.dw = load ptr, ptr %i.dv, align 8, !dbg !1199, !alias.scope !1071, !noalias !1068, !noundef !107 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.du, !dbg !1200
  %.not3.i23 = icmp eq ptr %i.dw, null, !dbg !1201
  br i1 %.not3.i23, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37, !dbg !1193

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37: ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i28, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i22
  %.sroa.0.0.i.i.i.i11.i24 = phi ptr [ %i.dm, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i28 ], [ %i.dx, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i22 ]
  %.sroa.3.0.i.i.i.i12.i25 = zext i32 %i.dk to i64, !dbg !1202
  br label %bb.j, !dbg !1177

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1176, !noalias !1061
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1177

bb.j:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37
  %i.dy = phi i64 [ %i.ba, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37 ], [ %i.cp, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43 ]
  %i.dz = phi i64 [ %i.bb, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37 ], [ %i.cq, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43 ]
  %.pre.i.i.i1261 = phi i64 [ %.pre.i.i.i1263, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37 ], [ %.pre.i.i.i1262, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43 ]
  %i.ea = phi i64 [ %i.bc, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37 ], [ %i.cr, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43 ]
  %i.eb = phi i64 [ %i.cy, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37 ], [ %i.bd, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43 ]
  %.sroa.6.242 = phi ptr [ %.sroa.0.0.i.i.i.i11.i24, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37 ], [ %.sroa.01.0.i.i16, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43 ] ; 2 uses
  %.sroa.9.241 = phi i64 [ %.sroa.3.0.i.i.i.i12.i25, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread37 ], [ %i.cu, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29.thread43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072), !dbg !1203
  br i1 %.not.i, label %bb.p, label %bb.k, !dbg !1204

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073), !dbg !1205, !noalias !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074), !dbg !1206, !noalias !1020
  %i.ec = load i64, ptr %i.ak, align 8, !dbg !1207, !alias.scope !1075, !noalias !1020, !noundef !107 ; 4 uses
  %i.ed = icmp eq i64 %i.ec, %i.az, !dbg !1207
  br i1 %i.ed, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i, label %bb.l, !dbg !1207

bb.l:                                             ; preds = %bb.k
  %i.ee = add nuw i64 %i.ec, 1, !dbg !1208
  store i64 %i.ee, ptr %i.ak, align 8, !dbg !1208, !alias.scope !1075, !noalias !1020
  %i.ef = load ptr, ptr %i.am, align 8, !dbg !1209, !noalias !1076, !noundef !107
  %i.eg = load i64, ptr %i.an, align 8, !dbg !1210, !noalias !1076, !noundef !107
  %i.eh = icmp ult i64 %i.ec, %i.eg, !dbg !1211
  tail call void @llvm.assume(i1 %i.eh), !dbg !1212, !noalias !1020
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.ec, !dbg !1213 ; 4 uses
  %i.ej = load ptr, ptr %i.ao, align 8, !dbg !1214, !noalias !1076, !noundef !107
  %i.ek = load i64, ptr %i.ap, align 8, !dbg !1215, !noalias !1076, !noundef !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077), !dbg !1216, !noalias !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078), !dbg !1216, !noalias !1020
  %i.el = load i32, ptr %i.ei, align 4, !dbg !1217, !alias.scope !1077, !noalias !1076, !noundef !107 ; 2 uses
  %i.em = icmp ult i32 %i.el, 13, !dbg !1217
  br i1 %i.em, label %bb.n, label %bb.m, !dbg !1217

bb.m:                                             ; preds = %bb.l
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8, !dbg !1218
  %i.eo = load i32, ptr %i.en, align 4, !dbg !1218, !alias.scope !1077, !noalias !1076, !noundef !107
  %i.ep = zext i32 %i.eo to i64, !dbg !1218       ; 2 uses
  %i.eq = icmp samesign ugt i64 %i.ek, %i.ep, !dbg !1219
  tail call void @llvm.assume(i1 %i.eq), !dbg !1220, !noalias !1020
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %i.ep, !dbg !1221
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 12, !dbg !1222
  %i.et = load i32, ptr %i.es, align 4, !dbg !1222, !alias.scope !1077, !noalias !1076, !noundef !107
  %i.eu = zext i32 %i.et to i64, !dbg !1222
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !1223
  %i.ew = load ptr, ptr %i.ev, align 8, !dbg !1223, !alias.scope !1079, !noalias !1076, !noundef !107
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu, !dbg !1224
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs80wj1cxFixi_12polars_dtype.exit.i.i.i, !dbg !1225

bb.n:                                             ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 4, !dbg !1226
  br label %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs80wj1cxFixi_12polars_dtype.exit.i.i.i, !dbg !1225

_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs80wj1cxFixi_12polars_dtype.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ey, %bb.n ], [ %i.ex, %bb.m ], !dbg !1227
  %.sroa.3.0.i.i.i.i.i.i = zext i32 %i.el to i64, !dbg !1227
  br label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i, !dbg !1228

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i: ; preds = %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs80wj1cxFixi_12polars_dtype.exit.i.i.i, %bb.k
  %.sroa.3.0.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs80wj1cxFixi_12polars_dtype.exit.i.i.i ], [ undef, %bb.k ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview8iteratorINtB4_22BinaryViewArrayGenericeENtNtB6_8iterator13ArrayAccessor15value_uncheckedCs80wj1cxFixi_12polars_dtype.exit.i.i.i ], [ null, %bb.k ], !dbg !1229
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080), !dbg !1230, !noalias !1020
  %i.ez = icmp eq i64 %i.ay, 0, !dbg !1231
  br i1 %i.ez, label %bb.o, label %._crit_edge.i.i.i, !dbg !1231

bb.o:                                             ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i
  %i.fa = icmp eq i64 %i.ax, 0, !dbg !1232
  br i1 %i.fa, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i, !dbg !1232

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i: ; preds = %bb.o
  %.sroa.0.0.i.i.i.i = tail call noundef range(i64 1, 65) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.ax, i64 64), !dbg !1233 ; 2 uses
  %i.fb = sub nuw i64 %i.ax, %.sroa.0.0.i.i.i.i, !dbg !1234 ; 2 uses
  store i64 %i.fb, ptr %i.as, align 8, !dbg !1234, !alias.scope !1081, !noalias !1020
  %i.fc = load ptr, ptr %i.aq, align 8, !dbg !1235, !alias.scope !1081, !noalias !1020, !nonnull !107, !noundef !107 ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fc, align 1, !dbg !1236, !noalias !1082
  %i.fd = add i64 %i.aw, -8, !dbg !1237           ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !1238
  store ptr %i.fe, ptr %i.aq, align 8, !dbg !1239, !alias.scope !1081, !noalias !1020
  store i64 %i.fd, ptr %i.at, align 8, !dbg !1239, !alias.scope !1081, !noalias !1020
  br label %._crit_edge.i.i.i, !dbg !1240

._crit_edge.i.i.i:                                ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i
  %i.ff = phi i64 [ %i.fd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i ], [ %i.aw, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i ]
  %i.fg = phi i64 [ %i.fb, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i ], [ %i.ax, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i ]
  %i.fh = phi i64 [ %.sroa.0.0.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i ], [ %i.ay, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i ], !dbg !1241
  %i.fi = phi i64 [ %.sroa.02.0.copyload.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs80wj1cxFixi_12polars_dtype.exit.i.i.i ], [ %.pre.i.i.i70, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i.i ], !dbg !1242 ; 2 uses
  %i.fj = trunc i64 %i.fi to i8, !dbg !1242
  %i.fk = lshr i64 %i.fi, 1, !dbg !1243           ; 2 uses
  store i64 %i.fk, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !1243, !alias.scope !1081, !noalias !1020
  %i.fl = add i64 %i.fh, -1, !dbg !1241           ; 2 uses
  store i64 %i.fl, ptr %i.ar, align 8, !dbg !1241, !alias.scope !1081, !noalias !1020
  %i.fm = and i8 %i.fj, 1, !dbg !1244
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i, !dbg !1245

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.o
  %i.fn = phi i64 [ %i.ff, %._crit_edge.i.i.i ], [ %i.aw, %bb.o ]
  %i.fo = phi i64 [ %i.fg, %._crit_edge.i.i.i ], [ 0, %bb.o ]
  %.pre.i.i.i69 = phi i64 [ %i.fk, %._crit_edge.i.i.i ], [ %.pre.i.i.i70, %bb.o ]
  %i.fp = phi i64 [ %i.fl, %._crit_edge.i.i.i ], [ 0, %bb.o ]
  %.sroa.0.0.i3.i.i = phi i8 [ %i.fm, %._crit_edge.i.i.i ], [ 2, %bb.o ], !dbg !1246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1247, !noalias !1083
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipReECs80wj1cxFixi_12polars_dtype(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef %.sroa.0.0.i3.i.i, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 %.sroa.3.0.i.i.i), !dbg !1248, !noalias !1083
  %i.fq = load i8, ptr %i.b, align 8, !dbg !1249, !range !1062, !noalias !1083, !noundef !107 ; 2 uses
  %.not.i.i2 = icmp eq i8 %i.fq, 2, !dbg !1249
  br i1 %.not.i.i2, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56, !dbg !1250

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  %i.fr = trunc nuw i8 %i.fq to i1, !dbg !1251
  %i.fs = load i64, ptr %i.au, align 8, !dbg !1251, !noalias !1083, !noundef !107
  %i.ft = load ptr, ptr %i.av, align 8, !dbg !1252, !noalias !1083, !nonnull !107
  %.sroa.01.0.i.i = select i1 %i.fr, ptr %i.ft, ptr null, !dbg !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1253, !noalias !1083
  br label %bb.r, !dbg !1254

bb.p:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084), !dbg !1255, !noalias !1020
  %i.fu = load i64, ptr %i.aq, align 8, !dbg !1256, !alias.scope !1085, !noalias !1020, !noundef !107
  %i.fv = icmp eq i64 %i.az, %i.fu, !dbg !1257
  br i1 %i.fv, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, label %bb.q, !dbg !1257

bb.q:                                             ; preds = %bb.p
  %i.fw = add nuw i64 %i.az, 1, !dbg !1258        ; 2 uses
  store i64 %i.fw, ptr %i.al, align 8, !dbg !1258, !alias.scope !1085, !noalias !1020
  %i.fx = load ptr, ptr %i.ak, align 8, !dbg !1259, !alias.scope !1085, !noalias !1020, !nonnull !107, !align !1067, !noundef !107 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40, !dbg !1260
  %i.fz = load ptr, ptr %i.fy, align 8, !dbg !1260, !noalias !1086, !noundef !107
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 48, !dbg !1261
  %i.gb = load i64, ptr %i.ga, align 8, !dbg !1261, !noalias !1086, !noundef !107
  %i.gc = icmp ult i64 %i.az, %i.gb, !dbg !1262
  tail call void @llvm.assume(i1 %i.gc), !dbg !1263, !noalias !1020
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.az, !dbg !1264 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 64, !dbg !1265
  %i.gf = load ptr, ptr %i.ge, align 8, !dbg !1265, !noalias !1086, !noundef !107
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 72, !dbg !1266
  %i.gh = load i64, ptr %i.gg, align 8, !dbg !1266, !noalias !1086, !noundef !107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087), !dbg !1267, !noalias !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088), !dbg !1267, !noalias !1020
  %i.gi = load i32, ptr %i.gd, align 4, !dbg !1268, !alias.scope !1087, !noalias !1086, !noundef !107 ; 2 uses
  %i.gj = icmp ult i32 %i.gi, 13, !dbg !1268
  br i1 %i.gj, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i, !dbg !1268

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i: ; preds = %bb.q
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 4, !dbg !1269
  br label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50, !dbg !1270

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %bb.q
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 8, !dbg !1271
  %i.gm = load i32, ptr %i.gl, align 4, !dbg !1271, !alias.scope !1087, !noalias !1086, !noundef !107
  %i.gn = zext i32 %i.gm to i64, !dbg !1271       ; 2 uses
  %i.go = icmp samesign ugt i64 %i.gh, %i.gn, !dbg !1272
  tail call void @llvm.assume(i1 %i.go), !dbg !1273, !noalias !1020
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.gn, !dbg !1274
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 12, !dbg !1275
  %i.gr = load i32, ptr %i.gq, align 4, !dbg !1275, !alias.scope !1087, !noalias !1086, !noundef !107
  %i.gs = zext i32 %i.gr to i64, !dbg !1275
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8, !dbg !1276
  %i.gu = load ptr, ptr %i.gt, align 8, !dbg !1276, !alias.scope !1089, !noalias !1086, !noundef !107 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gs, !dbg !1277
  %.not3.i = icmp eq ptr %i.gu, null, !dbg !1278
  br i1 %.not3.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, label %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50, !dbg !1270

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50: ; preds = %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i
  %.sroa.0.0.i.i.i.i11.i = phi ptr [ %i.gk, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread7.i ], [ %i.gv, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i ]
  %.sroa.3.0.i.i.i.i12.i = zext i32 %i.gi to i64, !dbg !1279
  br label %bb.r, !dbg !1254

_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1253, !noalias !1083
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1254

bb.r:                                             ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50
  %i.gw = phi i64 [ %i.aw, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50 ], [ %i.fn, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56 ]
  %i.gx = phi i64 [ %i.ax, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50 ], [ %i.fo, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56 ]
  %.pre.i.i.i68 = phi i64 [ %.pre.i.i.i70, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50 ], [ %.pre.i.i.i69, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56 ]
  %i.gy = phi i64 [ %i.ay, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50 ], [ %i.fp, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56 ]
  %i.gz = phi i64 [ %i.fw, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50 ], [ %i.az, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56 ]
  %.sroa.632.255.a = phi ptr [ %.sroa.0.0.i.i.i.i11.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50 ], [ %.sroa.01.0.i.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56 ] ; 3 uses
  %.sroa.933.254 = phi i64 [ %.sroa.3.0.i.i.i.i12.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread50 ], [ %i.fs, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.thread56 ]
  %.not.i.i.i = icmp eq ptr %.sroa.6.242, null, !dbg !1280
  br i1 %.not.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTINtNtBe_6option6OptionReEB1c_ENCNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB1O_22BinaryViewArrayGenericeENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i, label %bb.s, !dbg !1281

bb.s:                                             ; preds = %bb.r
  %.not9.i.i.i = icmp ne ptr %.sroa.632.255.a, null, !dbg !1280
  %i.ha = icmp eq i64 %.sroa.9.241, %.sroa.933.254
  %or.cond.i.i.i = and i1 %.not9.i.i.i, %i.ha, !dbg !1281
  br i1 %or.cond.i.i.i, label %.split.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1281

.split.i:                                         ; preds = %bb.s
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.6.242, ptr nonnull readonly %.sroa.632.255.a, i64 %.sroa.9.241), !dbg !1282, !alias.scope !1094, !noalias !1095
  %i.hb = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !1282
  br i1 %i.hb, label %.backedge.i.backedge, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1283

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTINtNtBe_6option6OptionReEB1c_ENCNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB1O_22BinaryViewArrayGenericeENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i: ; preds = %bb.r
  %i.hc = icmp eq ptr %.sroa.632.255.a, null, !dbg !1280
  br i1 %i.hc, label %.backedge.i.backedge, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit, !dbg !1283

.backedge.i.backedge:                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTINtNtBe_6option6OptionReEB1c_ENCNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB1O_22BinaryViewArrayGenericeENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i, %.split.i
  br label %.backedge.i, !dbg !1126

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit: ; preds = %bb.p, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i, %bb.h, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i22, %bb.s, %.split.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTINtNtBe_6option6OptionReEB1c_ENCNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB1O_22BinaryViewArrayGenericeENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29
  %i.hd = phi i1 [ true, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit29 ], [ true, %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityReINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1u_7binview22BinaryViewArrayGenericeEENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit ], [ true, %bb.p ], [ true, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i ], [ true, %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericeEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCs80wj1cxFixi_12polars_dtype.exit.i22 ], [ false, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3all5checkTINtNtBe_6option6OptionReEB1c_ENCNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB1O_22BinaryViewArrayGenericeENtNtBe_3cmp9PartialEq2eq0E0Cs80wj1cxFixi_12polars_dtype.exit.i ], [ false, %.split.i ], [ false, %bb.s ], [ true, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1284
  br label %bb.t, !dbg !1106

bb.t:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit
  %.sroa.0.0 = phi i1 [ %i.hd, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityReINtNtNtB10_5array8iterator15ArrayValuesIterINtNtB2d_7binview22BinaryViewArrayGenericeEENtNtBW_8iterator10BitmapIterEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB44_3all5checkTINtNtBc_6option6OptionB26_EB58_ENCNvXs0_B2S_B2P_NtNtBc_3cmp9PartialEq2eq0E0INtNtNtBc_3ops12control_flow11ControlFlowuEECs80wj1cxFixi_12polars_dtype.exit ], [ false, %bb.a ], !dbg !1285
  ret i1 %.sroa.0.0, !dbg !1286
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1287 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i = alloca [23 x i8], align 8        ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.067 = alloca [79 x i8], align 8          ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.063 = alloca [56 x i8], align 8          ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.059 = alloca [56 x i8], align 8          ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.055 = alloca [56 x i8], align 8          ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.054 = alloca [56 x i8], align 8          ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = load i8, ptr %1, align 8, !dbg !1717, !range !121, !noundef !107
  switch i8 %i.u, label %default.unreachable74 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
    i8 28, label %bb.an
    i8 29, label %bb.ay
    i8 30, label %bb.bj
    i8 31, label %bb.bk
    i8 32, label %bb.bv
    i8 33, label %bb.bx
    i8 34, label %bb.by
    i8 35, label %bb.bz
    i8 36, label %bb.ca
    i8 37, label %bb.cb
    i8 38, label %bb.cq
    i8 39, label %bb.cr
    i8 40, label %bb.cs
    i8 41, label %bb.ct
  ], !dbg !1717

default.unreachable74:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.j:                                             ; preds = %bb.a
  store i8 8, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.k:                                             ; preds = %bb.a
  store i8 9, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.l:                                             ; preds = %bb.a
  store i8 10, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.m:                                             ; preds = %bb.a
  store i8 11, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.n:                                             ; preds = %bb.a
  store i8 12, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.o:                                             ; preds = %bb.a
  store i8 13, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.p:                                             ; preds = %bb.a
  store i8 14, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.q:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !1718
  %i.w = load i8, ptr %i.v, align 1, !dbg !1718, !range !1630, !noundef !107
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1719 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 31, !dbg !1719
  %i.z = load i8, ptr %i.y, align 1, !dbg !1719, !range !122, !noundef !107 ; 2 uses
  switch i8 %i.z, label %bb.dd [
    i8 -38, label %bb.db
    i8 -40, label %bb.dc
  ], !dbg !1720

bb.r:                                             ; preds = %bb.a
  store i8 16, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.s:                                             ; preds = %bb.a
  store i8 17, ptr %0, align 8, !dbg !1717
  br label %bb.da, !dbg !1717

bb.t:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !1721
  br label %bb.da, !dbg !1722

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !1723
  br label %bb.da, !dbg !1722

bb.v:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !1724
  br label %bb.da, !dbg !1722

bb.w:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !1725
  br label %bb.da, !dbg !1722

bb.x:                                             ; preds = %bb.a
  store i8 22, ptr %0, align 8, !dbg !1717
end_hunk_0
