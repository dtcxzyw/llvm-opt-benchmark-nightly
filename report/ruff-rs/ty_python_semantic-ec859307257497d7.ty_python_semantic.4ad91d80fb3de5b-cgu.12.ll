Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.12?download=true
inline.NumInlined: 9136
inline.NumDeleted: 3144
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15infer_statement:bb.a
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_delete_statement.exit

bb.y:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13615)
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !13615, !nonnull !16, !noundef !16 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !noalias !13615, !noundef !16 ; 2 uses
  %.idx.i10 = mul nuw nsw i64 %i.jz, 72
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %.idx.i10
  %i.kb = icmp eq i64 %i.jz, 0
  br i1 %i.kb, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_delete_statement.exit, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.y
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.ae, %.lr.ph.i11
  %.sroa.0.06.i = phi ptr [ %i.jx, %.lr.ph.i11 ], [ %i.kh, %bb.ae ] ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i, i64 72 ; 2 uses
  %i.ki = load ptr, ptr %i.kc, align 8, !alias.scope !13615, !nonnull !16, !align !17, !noundef !16
  %i.kj = call { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex10try_unpackRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.ki, ptr noundef nonnull align 8 %.sroa.0.06.i) ; 2 uses
  %i.kk = extractvalue { i32, i32 } %i.kj, 0      ; 2 uses
  %.not.i12 = icmp eq i32 %i.kk, 0
  br i1 %.not.i12, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kl = extractvalue { i32, i32 } %i.kj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !13615
  %i.km = load ptr, ptr %i.kd, align 8, !noalias !13615, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !13615
  store i32 -1, ptr %i.fr, align 4, !alias.scope !13616, !noalias !13615
  call void @llvm.experimental.noalias.scope.decl(metadata !13617)
  %i.kn = load ptr, ptr %i.kc, align 8, !alias.scope !13618, !noalias !13619, !nonnull !16, !align !17, !noundef !16
  %i.ko = call { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex10expressionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.kn, ptr noundef nonnull align 8 %i.km, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @952), !noalias !13620 ; 2 uses
  %i.kp = extractvalue { i32, i32 } %i.ko, 0
  %i.kq = extractvalue { i32, i32 } %i.ko, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !13621)
  %.val.i.i.i = load ptr, ptr %i.ke, align 8, !alias.scope !13622, !noalias !13623, !nonnull !16, !noundef !16
  %.val1.i.i.i = load ptr, ptr %i.kf, align 8, !alias.scope !13622, !noalias !13623, !nonnull !16, !align !17, !noundef !16
  %i.kr = call noundef nonnull align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer22infer_expression_types(ptr noundef nonnull %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1.i.i.i, i32 noundef range(i32 1, 0) %i.kp, i32 noundef %i.kq, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.fr), !noalias !13624 ; 2 uses
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27extend_expression_unchecked(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr), !noalias !13625
  call void @_RINvMsa_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5inferNtB6_19ExpressionInference15expression_typeRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.fs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kr, ptr noundef nonnull align 8 %i.km), !noalias !13626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !13615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !13615
  %.val.i13 = load ptr, ptr %i.ke, align 8, !alias.scope !13615, !nonnull !16, !noundef !16
  %.val5.i = load ptr, ptr %i.kf, align 8, !alias.scope !13615, !nonnull !16, !align !17, !noundef !16
  %i.ks = call noundef nonnull align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer18infer_unpack_types(ptr noundef nonnull %.val.i13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val5.i, i32 noundef %i.kk, i32 noundef %i.kl) ; 2 uses
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext6extend(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ks)
  %i.kt = load ptr, ptr %i.kd, align 8, !noalias !13615, !nonnull !16, !noundef !16
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32infer_unpacked_assignment_target(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.0.06.i, ptr noundef nonnull align 8 %i.kt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ks)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.ku = load ptr, ptr %i.kd, align 8, !noalias !13615, !nonnull !16, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !13615
  store ptr %i.ku, ptr %i.fq, align 8, !noalias !13615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !13615
  store ptr %i.fq, ptr %i.fp, align 8, !noalias !13627
  store ptr @953, ptr %i.kg, align 8, !noalias !13627
  %i.kv = load i32, ptr %.sroa.0.06.i, align 8, !range !45, !noalias !13628, !noundef !16
  %i.kw = icmp eq i32 %i.kv, 28
  br i1 %i.kw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder17infer_target_impl(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.0.06.i, ptr noundef nonnull align 8 %i.ku, ptr noundef null, ptr undef)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder12infer_target.exit.i

bb.ad:                                            ; preds = %bb.ab
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder17infer_target_impl(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.0.06.i, ptr noundef nonnull align 8 %i.ku, ptr noundef nonnull %i.fp, ptr nonnull @807)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder12infer_target.exit.i

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder12infer_target.exit.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !13615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !13615
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder12infer_target.exit.i, %bb.aa
  %i.kx = icmp eq ptr %i.kh, %i.ka
  br i1 %i.kx, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_delete_statement.exit, label %bb.z

bb.af:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13629)
  %i.ky = load ptr, ptr %1, align 8, !noalias !13629, !nonnull !16, !noundef !16
  %i.kz = load i32, ptr %i.ky, align 8, !range !45, !noalias !13629, !noundef !16
  %i.la = icmp eq i32 %i.kz, 28
  br i1 %i.la, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13630)
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.lc = load ptr, ptr %i.lb, align 8, !alias.scope !13631, !nonnull !16, !align !17, !noundef !16
  %i.ld = tail call { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13StmtAugAssignECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.lc, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !13631 ; 2 uses
  %i.le = extractvalue { i32, i32 } %i.ld, 0      ; 2 uses
  %i.lf = extractvalue { i32, i32 } %i.ld, 1      ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i14 = load ptr, ptr %i.lg, align 8, !alias.scope !13631, !nonnull !16, !noundef !16
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val1.i.i15 = load ptr, ptr %i.lh, align 8, !alias.scope !13631, !nonnull !16, !align !17, !noundef !16
  %i.li = tail call noundef nonnull align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer22infer_definition_types(ptr noundef nonnull %.val.i.i14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val1.i.i15, i32 noundef %i.le, i32 noundef %i.lf), !noalias !13631
  tail call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder17extend_definition(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %i.le, i32 noundef %i.lf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.li)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_delete_statement.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !13629
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder24infer_augment_assignment(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.fo, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !13629
  %i.lj = load ptr, ptr %1, align 8, !noalias !13629, !nonnull !16, !noundef !16 ; 6 uses
  %i.lk = load i32, ptr %i.lj, align 8, !range !45, !noundef !16
  %i.ll = icmp eq i32 %i.lk, 25
  br i1 %i.ll, label %bb.ai, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_delete_statement.exit

bb.ai:                                            ; preds = %bb.ah
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !13629
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.lo = load ptr, ptr %i.ln, align 8, !nonnull !16, !noundef !16
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.lo)
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder36report_undeclared_protocol_attribute(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.lm)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 31
  %i.lr = load i8, ptr %i.lq, align 1, !range !53, !alias.scope !13632, !noundef !16 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.lt = load i64, ptr %i.ls, align 8, !alias.scope !13632, !noundef !16
  %i.lu = and i64 %i.lt, 72057594037927935
  %i.lv = icmp ult i8 %i.lr, -48
  %i.lw = zext i8 %i.lr to i64
  %i.lx = add nsw i64 %i.lw, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.lx, i64 16)
  %.sroa.0.0.i.i = select i1 %i.lv, i64 %spec.store.select.i.i, i64 %i.lu
  %i.ly = icmp ugt i8 %i.lr, -49
  %i.lz = load ptr, ptr %i.lp, align 8, !alias.scope !13632
  %.sroa.01.0.i.i = select i1 %i.ly, ptr %i.lz, ptr %i.lp
  call void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder15final_attributeNtB4_20TypeInferenceBuilder35validate_final_attribute_assignment(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.lm, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.fn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i, i64 noundef %.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !13629
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22infer_delete_statement.exit

bb.aj:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13633)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 16 uses
  %.val85.i = load ptr, ptr %i.ma, align 8, !alias.scope !13633, !nonnull !16, !noundef !16 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 9 uses
  %.val86.i = load ptr, ptr %i.mb, align 8, !alias.scope !13633, !nonnull !16, !align !17, !noundef !16 ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val87.i = load ptr, ptr %i.mc, align 8, !alias.scope !13633, !nonnull !16, !align !18, !noundef !16 ; 4 uses
  %i.md = load ptr, ptr %1, align 8, !noalias !13633, !nonnull !16, !noundef !16
  %i.me = load i32, ptr %i.md, align 8, !range !45, !noalias !13633, !noundef !16
  %i.mf = icmp eq i32 %i.me, 28
  br i1 %i.mf, label %bb.ak, label %_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder21annotation_expressionNtB6_20TypeInferenceBuilder27infer_annotation_expression.exit.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13634)
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.mh = load ptr, ptr %i.mg, align 8, !alias.scope !13635, !nonnull !16, !align !17, !noundef !16
  %i.mi = tail call { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13StmtAnnAssignECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.mh, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5), !noalias !13634 ; 2 uses
  %i.mj = extractvalue { i32, i32 } %i.mi, 0      ; 2 uses
  %i.mk = extractvalue { i32, i32 } %i.mi, 1      ; 2 uses
  %i.ml = tail call noundef nonnull align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer22infer_definition_types(ptr noundef nonnull %.val85.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val86.i, i32 noundef %i.mj, i32 noundef %i.mk), !noalias !13634
  tail call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder17extend_definition(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, i32 noundef %i.mj, i32 noundef %i.mk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ml)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder36infer_annotated_assignment_statement.exit

_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder21annotation_expressionNtB6_20TypeInferenceBuilder27infer_annotation_expression.exit.i: ; preds = %bb.aj
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !noalias !13633, !nonnull !16, !noundef !16
  %i.mo = tail call fastcc noundef zeroext i1 @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder17defer_annotations(ptr noundef nonnull align 8 dereferenceable(608) %0)
  %i.mp = tail call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext7in_stub(ptr noundef nonnull align 8 %i.ma), !noalias !13636, !inline_history !13279
  %narrow.i = or i1 %i.mo, %i.mp
  %spec.select3.i.i.i = zext i1 %narrow.i to i32
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.ms = load i16, ptr %i.mr, align 8, !alias.scope !13637, !noalias !13636, !noundef !16 ; 2 uses
  %i.mt = or i16 %i.ms, 2
  store i16 %i.mt, ptr %i.mr, align 8, !alias.scope !13637, !noalias !13636
  %i.mu = and i16 %i.ms, 2
  %i.mv = load <2 x i32>, ptr %i.mq, align 8, !alias.scope !13638, !noalias !13636
  store i32 %spec.select3.i.i.i, ptr %i.mq, align 8, !alias.scope !13638, !noalias !13636
  call void @_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder21annotation_expressionNtB6_20TypeInferenceBuilder32infer_annotation_expression_impl(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.dq, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.mn, i1 noundef zeroext true), !inline_history !13284
  %i.mw = load i16, ptr %i.mr, align 8, !alias.scope !13639, !noalias !13636, !noundef !16
  %i.mx = and i16 %i.mw, -3
  %storemerge.i.i.i.i = or disjoint i16 %i.mx, %i.mu
  store i16 %storemerge.i.i.i.i, ptr %i.mr, align 8, !alias.scope !13639, !noalias !13636
  store <2 x i32> %i.mv, ptr %i.mq, align 8, !alias.scope !13638, !noalias !13636
  %i.my = getelementptr inbounds nuw i8, ptr %i.dq, i64 29
  %.val92.i = load i8, ptr %i.my, align 1, !noalias !13633, !noundef !16 ; 4 uses
  %i.mz = icmp eq i8 %.val92.i, 0
  br i1 %i.mz, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder21annotation_expressionNtB6_20TypeInferenceBuilder27infer_annotation_expression.exit.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  br label %bb.al

bb.al:                                            ; preds = %.backedge, %.preheader.i
  %.sroa.0.0.i = phi i64 [ 0, %.preheader.i ], [ %.sink.i.i, %.backedge ] ; 3 uses
  %i.nb = icmp ugt i64 %.sroa.0.0.i, 5
  %switch.idx.cast.i.i.i = trunc nuw nsw i64 %.sroa.0.0.i to i8
  %i.nc = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i, i64 5)
  %.sink.i.i = add nuw nsw i64 %i.nc, 1
  %.sroa.0.0.i.i94.i = select i1 %i.nb, i8 -1, i8 %switch.idx.cast.i.i.i ; 3 uses
  switch i8 %.sroa.0.0.i.i94.i, label %default.unreachable1.i.i [
    i8 -1, label %.loopexit.i
    i8 1, label %.backedge
    i8 0, label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i
    i8 5, label %bb.ap
    i8 2, label %bb.am
    i8 3, label %bb.an
    i8 4, label %bb.ao
  ]

.loopexit.i:                                      ; preds = %bb.al, %_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder21annotation_expressionNtB6_20TypeInferenceBuilder27infer_annotation_expression.exit.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 6 uses
  %.sroa.0109.0.copyload.i = load i32, ptr %i.nd, align 4, !noalias !13633 ; 2 uses
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %.sroa.5110.0.copyload.i = load i32, ptr %.sroa.5110.0..sroa_idx.i, align 4, !noalias !13633 ; 3 uses
  %.sroa.6111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %.sroa.6111.0.copyload.i = load i32, ptr %.sroa.6111.0..sroa_idx.i, align 4, !noalias !13633 ; 3 uses
  %i.ne = icmp ne i32 %.sroa.0109.0.copyload.i, 17
  call void @llvm.assume(i1 %i.ne)
  %i.nf = icmp eq i32 %.sroa.0109.0.copyload.i, 29
  br i1 %i.nf, label %bb.as, label %bb.at

default.unreachable1.i.i:                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

bb.an:                                            ; preds = %bb.al
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

bb.ao:                                            ; preds = %bb.al
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

bb.ap:                                            ; preds = %bb.al
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %i.ng = phi i8 [ -5, %bb.ap ], [ -33, %bb.al ], [ -2, %bb.am ], [ -9, %bb.an ], [ -17, %bb.ao ]
  %i.nh = or i8 %i.ng, %.val92.i
  %i.ni = icmp eq i8 %i.nh, -1
  br i1 %i.ni, label %bb.aq, label %.backedge

.sink.split.i:                                    ; preds = %switch.lookup168, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !13633
  br label %.backedge

.backedge:                                        ; preds = %.sink.split.i, %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i, %bb.al
  br label %bb.al

bb.aq:                                            ; preds = %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !13633
  %i.nj = load ptr, ptr %i.mm, align 8, !noalias !13633, !nonnull !16, !noundef !16
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.fm, ptr noundef nonnull align 8 %i.ma, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_TYPE_FORM, ptr noundef nonnull align 8 %i.nj)
  %i.nk = load i64, ptr %i.fm, align 8, !range !28, !noalias !13633, !noundef !16
  %.not56.i = icmp eq i64 %i.nk, -2
  br i1 %.not56.i, label %.sink.split.i, label %switch.lookup168

switch.lookup168:                                 ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !13633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fk, ptr noundef nonnull align 8 dereferenceable(80) %i.fm, i64 80, i1 false), !noalias !13633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !noalias !13633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !13633
  %i.nl = zext nneg i8 %.sroa.0.0.i.i94.i to i64
  %switch.gep169 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_form13TypeQualifierNtB6_5Debug3fmtBC_, i64 %i.nl
  %switch.load170 = load i8, ptr %switch.gep169, align 1
  %switch.ext171 = zext i8 %switch.load170 to i64
  %i.nm = zext nneg i8 %.sroa.0.0.i.i94.i to i64
  %switch.gep172 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_form13TypeQualifierNtB6_5Debug3fmtBC_.1064, i64 %i.nm
  %switch.load173 = load ptr, ptr %switch.gep172, align 8
  store ptr %switch.load173, ptr %i.fj, align 8, !noalias !13633
  store i64 %switch.ext171, ptr %i.na, align 8, !noalias !13633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !noalias !13633
  store ptr %i.fj, ptr %i.fi, align 8, !noalias !13633
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !13633
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.fk, ptr noundef nonnull @1033, ptr noundef nonnull %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !13633
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !noalias !13633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !13633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !13633
  br label %.sink.split.i

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit.i, %bb.cz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit104.i, %bb.cs, %bb.cq, %bb.co, %bb.cm
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.as:                                            ; preds = %.loopexit.i
  %.val83.i = load ptr, ptr %i.ma, align 8, !alias.scope !13633, !nonnull !16, !noundef !16
  %.val84.i = load ptr, ptr %i.mb, align 8, !alias.scope !13633, !nonnull !16, !align !17, !noundef !16
  %i.no = call noundef zeroext i1 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance12is_paramspec(i32 noundef %.sroa.5110.0.copyload.i, i32 noundef %.sroa.6111.0.copyload.i, ptr noundef nonnull %.val83.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val84.i)
  br i1 %i.no, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as, %.loopexit.i
  %i.np = load ptr, ptr %i.mm, align 8, !noalias !13633, !nonnull !16, !noundef !16 ; 6 uses
  %i.nq = load i32, ptr %i.np, align 8, !range !45, !noundef !16
  %i.nr = icmp eq i32 %i.nq, 25
  br i1 %i.nr, label %bb.bb, label %bb.ay

bb.au:                                            ; preds = %bb.as
  %.val81.i = load ptr, ptr %i.ma, align 8, !alias.scope !13633, !nonnull !16, !noundef !16
  %.val82.i = load ptr, ptr %i.mb, align 8, !alias.scope !13633, !nonnull !16, !align !17, !noundef !16
  %i.ns = call noundef i8 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance14paramspec_attr(i32 noundef %.sroa.5110.0.copyload.i, i32 noundef %.sroa.6111.0.copyload.i, ptr noundef nonnull %.val81.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val82.i) ; 2 uses
  %.not57.i = icmp eq i8 %i.ns, 2
  br i1 %.not57.i, label %bb.at, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nt = trunc nuw i8 %i.ns to i1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh), !noalias !13633
  %.val79.i = load ptr, ptr %i.ma, align 8, !alias.scope !13633, !nonnull !16, !noundef !16
  %.val80.i = load ptr, ptr %i.mb, align 8, !alias.scope !13633, !nonnull !16, !align !17, !noundef !16
  %i.nu = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance4name(i32 noundef %.sroa.5110.0.copyload.i, i32 noundef %.sroa.6111.0.copyload.i, ptr noundef nonnull %.val79.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val80.i)
  store ptr %i.nu, ptr %i.fh, align 8, !noalias !13633
  %..i = select i1 %i.nt, ptr @668, ptr @288
  %.73.i = select i1 %i.nt, i64 6, i64 4
  %.74.i = select i1 %i.nt, ptr @669, ptr @667
  %.75.i = select i1 %i.nt, i64 8, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg), !noalias !13633
  store ptr %..i, ptr %i.fg, align 8, !noalias !13633
  %i.nv = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %.73.i, ptr %i.nv, align 8, !noalias !13633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff), !noalias !13633
  store ptr %.74.i, ptr %i.ff, align 8, !noalias !13633
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i64 %.75.i, ptr %i.nw, align 8, !noalias !13633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe), !noalias !13633
  %i.nx = load ptr, ptr %i.mm, align 8, !noalias !13633, !nonnull !16, !noundef !16
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.fe, ptr noundef nonnull align 8 %i.ma, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_PARAMSPEC, ptr noundef nonnull align 8 %i.nx)
  %i.ny = load i64, ptr %i.fe, align 8, !range !28, !noalias !13633, !noundef !16
  %.not60.i = icmp eq i64 %i.ny, -2
  br i1 %.not60.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !13633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fd, ptr noundef nonnull align 8 dereferenceable(80) %i.fe, i64 80, i1 false), !noalias !13633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !13633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb), !noalias !13633
  store ptr %i.fh, ptr %i.fb, align 8, !noalias !13633
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !13633
  %i.nz = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store ptr %i.fg, ptr %i.nz, align 8, !noalias !13633
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !13633
  %i.oa = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store ptr %i.ff, ptr %i.oa, align 8, !noalias !13633
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !13633
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.fd, ptr noundef nonnull @1034, ptr noundef nonnull %i.fb)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.fc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !13633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !13633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !13633
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !noalias !13633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !noalias !13633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !noalias !13633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh), !noalias !13633
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bg, %bb.bd, %bb.bc, %bb.bb, %bb.ax, %bb.at
  %i.ob = load ptr, ptr %1, align 8, !noalias !13633, !nonnull !16, !noundef !16 ; 3 uses
  %i.oc = load i32, ptr %i.ob, align 8, !range !45, !noundef !16
  %i.od = icmp eq i32 %i.oc, 25
  br i1 %i.od, label %bb.az, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread.i

bb.az:                                            ; preds = %bb.ay
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.of = call fastcc noundef zeroext i1 @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder15final_attributeNtB4_20TypeInferenceBuilder32is_instance_attribute_assignment(ptr noundef nonnull readonly align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.oe)
  br i1 %i.of, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread114.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.oh = load ptr, ptr %i.og, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8, !range !45, !noundef !16
  %i.oj = icmp eq i32 %i.oi, 28
  br i1 %i.oj, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread.i

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.i: ; preds = %bb.ba
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.val5.i.i.i.i = load i32, ptr %i.ol, align 8, !range !19, !alias.scope !13633, !noundef !16
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 524
  %.val6.i.i.i.i = load i32, ptr %i.om, align 4, !alias.scope !13633, !noundef !16
  %.val.i.i.i.i = load ptr, ptr %i.ma, align 8, !alias.scope !13633, !nonnull !16, !noundef !16
  %.val4.i.i.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !13633, !nonnull !16, !align !17, !noundef !16
  %i.on = call noundef i32 @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId13file_scope_idDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1k_(i32 noundef %.val5.i.i.i.i, i32 noundef %.val6.i.i.i.i, ptr noundef nonnull %.val.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val4.i.i.i.i)
  %i.oo = call fastcc noundef i32 @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder15final_attributeNtB4_20TypeInferenceBuilder21receiver_method_scope(ptr noundef nonnull readonly align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.ok) ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.oo, 0
  %i.op = icmp ne i32 %i.oo, %i.on
  %spec.select.i.i.i.i = and i1 %.not.i.i.i.i, %i.op
  br i1 %spec.select.i.i.i.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread114.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread.i
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder23infer_region_definition:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !16527
  store ptr %..i, ptr %i.fk, align 8, !noalias !16527
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %.137.i, ptr %i.bqr, align 8, !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !noalias !16527
  store ptr %.138.i, ptr %i.fj, align 8, !noalias !16527
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %.139.i, ptr %i.bqs, align 8, !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !noalias !16527
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.fi, ptr noundef nonnull align 8 %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_PARAMSPEC, ptr noundef nonnull align 8 %i.bop)
  %i.bqt = load i64, ptr %i.fi, align 8, !range !28, !noalias !16527, !noundef !16
  %.not108.i179 = icmp eq i64 %i.bqt, -2
  br i1 %.not108.i179, label %bb.ve, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh), !noalias !16527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fh, ptr noundef nonnull align 8 dereferenceable(80) %i.fi, i64 80, i1 false), !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg), !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff), !noalias !16527
  store ptr %i.fl, ptr %i.ff, align 8, !noalias !16527
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.442.0..sroa_idx.i, align 8, !noalias !16527
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store ptr %i.fk, ptr %i.bqu, align 8, !noalias !16527
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !16527
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  store ptr %i.fj, ptr %i.bqv, align 8, !noalias !16527
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !16527
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.fh, ptr noundef nonnull @1034, ptr noundef nonnull %i.ff)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh), !noalias !16527
  br label %bb.ve

bb.ve:                                            ; preds = %bb.vd, %bb.vc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !16527
  br label %bb.vf

bb.vf:                                            ; preds = %bb.vl, %bb.vi, %bb.vh, %bb.vg, %bb.ve, %bb.va
  %i.bqw = icmp eq i32 %.sroa.0266.0.copyload.i, 20
  %i.bqx = and i32 %.sroa.5267.0.copyload.i, 255
  %i.bqy = icmp eq i32 %i.bqx, 30
  %.sroa.0.0.i212.i = select i1 %i.bqw, i1 %i.bqy, i1 false ; 4 uses
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.cu, i64 29
  %.val203.i = load i8, ptr %i.bqz, align 1, !noalias !16527, !noundef !16 ; 3 uses
  %i.bra = icmp eq i8 %.val203.i, 0
  br i1 %i.bra, label %.loopexit.i147, label %.preheader.i

.preheader.i:                                     ; preds = %bb.vf
  %i.brb = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bre = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.brf = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.brg = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.brh = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.bri = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.brj = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.brk = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.brl = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  br label %.backedge.i

bb.vg:                                            ; preds = %bb.va
  %i.brm = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bop, i64 16 ; 3 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %i.bop, i64 31
  %i.brp = load i8, ptr %i.bro, align 1, !range !53, !alias.scope !16541, !noundef !16 ; 3 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %i.bop, i64 24
  %i.brr = load i64, ptr %i.brq, align 8, !alias.scope !16541, !noundef !16
  %i.brs = and i64 %i.brr, 72057594037927935
  %i.brt = icmp ult i8 %i.brp, -48
  %i.bru = zext i8 %i.brp to i64
  %i.brv = add nsw i64 %i.bru, -192
  %spec.store.select.i.i174 = tail call i64 @llvm.umin.i64(i64 %i.brv, i64 16)
  %.sroa.0.0.i213.i = select i1 %i.brt, i64 %spec.store.select.i.i174, i64 %i.brs
  %i.brw = icmp ugt i8 %i.brp, -49
  %i.brx = load ptr, ptr %i.brn, align 8, !alias.scope !16541
  %.sroa.01.0.i.i175 = select i1 %i.brw, ptr %i.brx, ptr %i.brn ; 3 uses
  switch i64 %.sroa.0.0.i213.i, label %bb.vf [
    i64 4, label %bb.vh
    i64 6, label %bb.vi
  ]

bb.vh:                                            ; preds = %bb.vg
  %i.bry = load i32, ptr %.sroa.01.0.i.i175, align 1
  %i.brz = icmp ne i32 %i.bry, 1936159329
  %i.bsa = zext i1 %i.brz to i32
  %i.bsb = icmp eq i32 %i.bsa, 0
  br i1 %i.bsb, label %bb.vj, label %bb.vf

bb.vi:                                            ; preds = %bb.vg
  %i.bsc = load i32, ptr %.sroa.01.0.i.i175, align 1
  %i.bsd = xor i32 %i.bsc, 1918990187
  %i.bse = getelementptr i8, ptr %.sroa.01.0.i.i175, i64 4
  %i.bsf = load i16, ptr %i.bse, align 1
  %i.bsg = zext i16 %i.bsf to i32
  %i.bsh = xor i32 %i.bsg, 29543
  %i.bsi = or i32 %i.bsd, %i.bsh
  %i.bsj = icmp ne i32 %i.bsi, 0
  %i.bsk = zext i1 %i.bsj to i32
  %i.bsl = icmp eq i32 %i.bsk, 0
  br i1 %i.bsl, label %bb.vj, label %bb.vf

bb.vj:                                            ; preds = %bb.vi, %bb.vh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe), !noalias !16527
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bop, i64 40
  %i.bsn = load ptr, ptr %i.bsm, align 8, !nonnull !16, !noundef !16
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bsn)
  %i.bso = load i32, ptr %i.fe, align 4, !range !38, !noalias !16527, !noundef !16 ; 2 uses
  %i.bsp = icmp ne i32 %i.bso, 17
  tail call void @llvm.assume(i1 %i.bsp)
  %i.bsq = icmp eq i32 %i.bso, 21
  br i1 %i.bsq, label %bb.vk, label %bb.vl

bb.vk:                                            ; preds = %bb.vj
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.bss = load i32, ptr %i.bsr, align 4, !range !22, !noalias !16527, !noundef !16 ; 2 uses
  %i.bst = icmp ne i32 %i.bss, 5
  tail call void @llvm.assume(i1 %i.bst)
  %i.bsu = icmp eq i32 %i.bss, 4
  br i1 %i.bsu, label %bb.vm, label %bb.vl

bb.vl:                                            ; preds = %bb.vp, %bb.vm, %bb.vk, %bb.vj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !noalias !16527
  br label %bb.vf

bb.vm:                                            ; preds = %bb.vk
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.bsw = load i32, ptr %i.bsv, align 4, !range !19, !noalias !16527, !noundef !16 ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.bsy = load i32, ptr %i.bsx, align 4, !noalias !16527, !noundef !16 ; 2 uses
  %.val169.i = load ptr, ptr %i.mb, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !noundef !16
  %.val170.i = load ptr, ptr %i.mc, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16
  %i.bsz = tail call noundef zeroext i1 @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance12is_paramspec(i32 noundef %i.bsw, i32 noundef %i.bsy, ptr noundef nonnull %.val169.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val170.i)
  br i1 %i.bsz, label %bb.vn, label %bb.vl

bb.vn:                                            ; preds = %bb.vm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !noalias !16527
  %.val167.i = load ptr, ptr %i.mb, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !noundef !16
  %.val168.i = load ptr, ptr %i.mc, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16
  %i.bta = tail call noundef nonnull align 8 ptr @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance4name(i32 noundef %i.bsw, i32 noundef %i.bsy, ptr noundef nonnull %.val167.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val168.i)
  store ptr %i.bta, ptr %i.fd, align 8, !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !16527
  store ptr %i.brm, ptr %i.fc, align 8, !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb), !noalias !16527
  %i.btb = tail call fastcc noundef zeroext i1 @_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.brn, ptr nonnull @288, i64 4) ; 2 uses
  %spec.select379.i = select i1 %i.btb, ptr @667, ptr @669
  %spec.select380.i = select i1 %i.btb, i64 5, i64 8
  store ptr %spec.select379.i, ptr %i.fb, align 8, !noalias !16527
  %i.btc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %spec.select380.i, ptr %i.btc, align 8, !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !noalias !16527
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.fa, ptr noundef nonnull align 8 %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_PARAMSPEC, ptr noundef nonnull align 8 %i.bop)
  %i.btd = load i64, ptr %i.fa, align 8, !range !28, !noalias !16527, !noundef !16
  %.not107.i177 = icmp eq i64 %i.btd, -2
  br i1 %.not107.i177, label %bb.vp, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez), !noalias !16527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ez, ptr noundef nonnull align 8 dereferenceable(80) %i.fa, i64 80, i1 false), !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !16527
  store ptr %i.fd, ptr %i.ex, align 8, !noalias !16527
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.454.0..sroa_idx.i, align 8, !noalias !16527
  %i.bte = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.fc, ptr %i.bte, align 8, !noalias !16527
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !16527
  %i.btf = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store ptr %i.fb, ptr %i.btf, align 8, !noalias !16527
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.462.0..sroa_idx.i, align 8, !noalias !16527
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ey, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.ez, ptr noundef nonnull @1034, ptr noundef nonnull %i.ex)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !16527
  br label %bb.vp

bb.vp:                                            ; preds = %bb.vo, %bb.vn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !noalias !16527
  br label %bb.vl

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.preheader.i
  %.sroa.0273.0.i = phi i64 [ 0, %.preheader.i ], [ %.sink.i.i, %.backedge.i.backedge ] ; 3 uses
  %i.btg = icmp ugt i64 %.sroa.0273.0.i, 5
  %switch.idx.cast.i.i.i = trunc nuw nsw i64 %.sroa.0273.0.i to i8
  %i.bth = call i64 @llvm.umin.i64(i64 %.sroa.0273.0.i, i64 5)
  %.sink.i.i = add nuw nsw i64 %i.bth, 1
  %.sroa.0.0.i.i.i143 = select i1 %i.btg, i8 -1, i8 %switch.idx.cast.i.i.i ; 12 uses
  switch i8 %.sroa.0.0.i.i.i143, label %default.unreachable1.i.i [
    i8 -1, label %.loopexit.i147
    i8 0, label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i
    i8 1, label %bb.vq
    i8 2, label %bb.vr
    i8 3, label %bb.vs
    i8 4, label %bb.vt
    i8 5, label %bb.vu
  ]

default.unreachable1.i.i:                         ; preds = %.backedge.i
  unreachable

bb.vq:                                            ; preds = %.backedge.i
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

bb.vr:                                            ; preds = %.backedge.i
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

bb.vs:                                            ; preds = %.backedge.i
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

bb.vt:                                            ; preds = %.backedge.i
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

bb.vu:                                            ; preds = %.backedge.i
  br label %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i

_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i: ; preds = %bb.vu, %bb.vt, %bb.vs, %bb.vr, %bb.vq, %.backedge.i
  %i.bti = phi i8 [ -5, %bb.vu ], [ -3, %bb.vq ], [ -2, %bb.vr ], [ -9, %bb.vs ], [ -17, %bb.vt ], [ -33, %.backedge.i ]
  %i.btj = or i8 %i.bti, %.val203.i
  %i.btk = icmp eq i8 %i.btj, -1
  br i1 %i.btk, label %bb.vv, label %.backedge.i.backedge

.loopexit.i147:                                   ; preds = %.backedge.i, %bb.vf
  %i.btl = load i32, ptr %i.bom, align 8, !range !45, !noundef !16
  %i.btm = icmp eq i32 %i.btl, 28
  br i1 %i.btm, label %bb.ww, label %.critedge.i

bb.vv:                                            ; preds = %_RNvXs6_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB7_14TypeQualifiersINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_13TypeQualifierE4from.exit.i
  %.val195.i = load i32, ptr %i.brb, align 8, !range !19, !alias.scope !16520, !noalias !16521, !noundef !16
  %.val196.i = load i32, ptr %i.brc, align 4, !alias.scope !16520, !noalias !16521, !noundef !16
  %.val165.i = load ptr, ptr %i.mb, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !noundef !16
  %.val166.i = load ptr, ptr %i.mc, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16
  %i.btn = call noundef i32 @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId13file_scope_idDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1k_(i32 noundef %.val195.i, i32 noundef %.val196.i, ptr noundef nonnull %.val165.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val166.i)
  %i.bto = load ptr, ptr %i.brd, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16 ; 3 uses
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bto, i64 48
  %i.btq = load i64, ptr %i.btp, align 8, !noundef !16 ; 2 uses
  %i.btr = add i32 %i.btn, -1
  %i.bts = zext i32 %i.btr to i64                 ; 3 uses
  %i.btt = icmp ugt i64 %i.btq, %i.bts
  br i1 %i.btt, label %bb.vw, label %bb.vx

bb.vw:                                            ; preds = %bb.vv
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bto, i64 40
  %i.btv = load ptr, ptr %i.btu, align 8, !nonnull !16, !noundef !16
  %i.btw = getelementptr inbounds nuw [20 x i8], ptr %i.btv, i64 %i.bts
  %i.btx = load i32, ptr %i.btw, align 4, !range !76, !noundef !16
  %i.bty = icmp eq i32 %i.btx, 1
  br i1 %i.bty, label %bb.vy, label %bb.vz

bb.vx:                                            ; preds = %bb.vv
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bts, i64 noundef %i.btq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1043) #51
  unreachable

bb.vy:                                            ; preds = %bb.vw
  %.val193.i = load i32, ptr %i.brb, align 8, !range !19, !alias.scope !16520, !noalias !16521, !noundef !16
  %.val194.i = load i32, ptr %i.brc, align 4, !alias.scope !16520, !noalias !16521, !noundef !16
  %i.btz = call { i32, i32 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer23nearest_enclosing_class(ptr noundef nonnull %.val179.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val180.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.bto, i32 noundef %.val193.i, i32 noundef %.val194.i) ; 2 uses
  %i.bua = extractvalue { i32, i32 } %i.btz, 0    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !16527
  %.not110.i144 = icmp eq i32 %i.bua, 0
  br i1 %.not110.i144, label %bb.wb, label %bb.wa

bb.vz:                                            ; preds = %bb.vw
  switch i8 %.sroa.0.0.i.i.i143, label %bb.uq [
    i8 0, label %bb.wo
    i8 1, label %.backedge.i.backedge
    i8 2, label %bb.wp
    i8 3, label %bb.wo
    i8 4, label %bb.wo
    i8 5, label %bb.wq
  ]

bb.wa:                                            ; preds = %bb.vy
  %i.bub = extractvalue { i32, i32 } %i.btz, 1
  %.val206.i = load ptr, ptr %i.mb, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !noundef !16
  %.val207.i = load ptr, ptr %i.mc, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !16542
  store i32 %i.bua, ptr %i.brf, align 4, !noalias !16542
  store i32 %i.bub, ptr %i.brg, align 4, !noalias !16542
  store i32 0, ptr %i.cr, align 4, !noalias !16542
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind10from_class(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.el, ptr noundef nonnull %.val206.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val207.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !16542
  %i.buc = load i32, ptr %i.el, align 4, !range !88, !noalias !16527, !noundef !16 ; 2 uses
  switch i32 %i.buc, label %default.unreachable801 [
    i32 -1, label %bb.wb
    i32 0, label %bb.wc
    i32 1, label %bb.wc
    i32 2, label %bb.wb
    i32 3, label %bb.wd
  ]

bb.wb:                                            ; preds = %bb.wa, %bb.wa, %bb.vy
  switch i8 %.sroa.0.0.i.i.i143, label %bb.uq [
    i8 0, label %bb.wi
    i8 1, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
    i8 2, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
    i8 3, label %bb.wi
    i8 4, label %bb.wi
    i8 5, label %bb.wj
  ]

bb.wc:                                            ; preds = %bb.wa, %bb.wa
  switch i8 %.sroa.0.0.i.i.i143, label %bb.uq [
    i8 0, label %bb.we
    i8 1, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
    i8 2, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
    i8 3, label %bb.we
    i8 4, label %bb.we
    i8 5, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
  ]

bb.wd:                                            ; preds = %bb.wa
  switch i8 %.sroa.0.0.i.i.i143, label %default.unreachable1.i216.i [
    i8 0, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
    i8 1, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.i
    i8 2, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.i
    i8 3, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
    i8 4, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i
    i8 5, label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.i
  ]

default.unreachable1.i216.i:                      ; preds = %bb.wd
  unreachable

bb.we:                                            ; preds = %bb.wc, %bb.wc, %bb.wc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !16527
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ef, ptr noundef nonnull align 8 %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17INVALID_TYPE_FORM, ptr noundef nonnull align 8 %i.bop)
  %i.bud = load i64, ptr %i.ef, align 8, !range !28, !noalias !16527, !noundef !16
  %.not115.i = icmp eq i64 %i.bud, -2
  br i1 %.not115.i, label %bb.wf, label %switch.lookup1194

switch.lookup1194:                                ; preds = %bb.we
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !16527
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ec, ptr noundef nonnull align 8 dereferenceable(80) %i.ef, i64 80, i1 false), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !16527
  %i.bue = icmp eq i32 %i.buc, 0                  ; 2 uses
  %spec.select.i146 = select i1 %i.bue, i64 9, i64 14
  %spec.select313.i = select i1 %i.bue, ptr @798, ptr @799
  store ptr %spec.select313.i, ptr %i.ee, align 8, !noalias !16527
  store i64 %spec.select.i146, ptr %i.bri, align 8, !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !16527
  %i.buf = zext nneg i8 %.sroa.0.0.i.i.i143 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder23infer_region_definition.1056, i64 %i.buf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bug = zext nneg i8 %.sroa.0.0.i.i.i143 to i64
  %switch.gep1195 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder23infer_region_definition.1057, i64 %i.bug
  %switch.load1196 = load ptr, ptr %switch.gep1195, align 8
  store ptr %switch.load1196, ptr %i.eb, align 8, !noalias !16527
  store i64 %switch.ext, ptr %i.brj, align 8, !noalias !16527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !16527
  store ptr %i.eb, ptr %i.ea, align 8, !noalias !16527
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !16527
  store ptr %i.ee, ptr %i.brk, align 8, !noalias !16527
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.478.0..sroa_idx.i, align 8, !noalias !16527
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ed, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.ec, ptr noundef nonnull @1044, ptr noundef nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !16527
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !16527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !16527
  br label %_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i

bb.wf:                                            ; preds = %bb.we
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !16527
  br label %bb.wh

bb.wg:                                            ; preds = %bb.yv
  %i.buh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.wh:                                            ; preds = %bb.wm, %bb.wk, %bb.wf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !16527
  br label %.backedge.i.backedge

_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB5_13TypeQualifier27is_valid_in_typeddict_field.exit.thread.i: ; preds = %switch.lookup1203, %bb.wn, %bb.wl, %switch.lookup1197, %switch.lookup1194, %bb.wd, %bb.wd, %bb.wd, %bb.wc, %bb.wc, %bb.wc, %bb.wb, %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !16527
  br label %.backedge.i.backedge

end_hunk_1
