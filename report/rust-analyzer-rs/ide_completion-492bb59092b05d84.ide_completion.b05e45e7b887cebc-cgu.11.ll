Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.11?download=true
inline.NumInlined: 1358
inline.NumDeleted: 631
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB2R_5LocalEEEECsf8NQSppxkmK_14ide_completion:bb.a
bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1284, !noalias !1285, !noundef !5
  %i.x = add i64 %i.w, %i.n
  %i.y = mul i64 %i.x, -1065810590584100411
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !range !17, !alias.scope !1284, !noalias !1285, !noundef !5
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = add i64 %i.y, %i.ab
  br label %.sink.split.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1284, !noalias !1285, !noundef !5
  %i.af = add i64 %i.ae, %i.n
  %i.ag = mul i64 %i.af, -1065810590584100411
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1284, !noalias !1285, !noundef !5
  %i.aj = add i64 %i.ag, %i.ai
  br label %.sink.split.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !range !12, !alias.scope !1286, !noalias !1287, !noundef !5
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %i.n, %i.am
  %i.ao = mul i64 %i.an, -1065810590584100411
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1286, !noalias !1287
  %i.ar = add i64 %i.ao, %i.aq
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink2.i.i.i.i.i = phi i64 [ %i.ar, %bb.f ], [ %i.aj, %bb.e ], [ %i.ac, %bb.d ], [ %i.u, %bb.c ], [ %i.r, %bb.b ]
  %i.as = mul i64 %.sink2.i.i.i.i.i, -1065810590584100411
  br label %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i

_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.at = phi i64 [ %i.n, %.lr.ph.i.i.i.i ], [ %i.as, %.sink.split.i.i.i.i.i ] ; 2 uses
  %i.au = icmp eq ptr %i.j, %i.g
  br i1 %i.au, label %_RINvXsh_NtCs50pZefIA5Ye_8triomphe6headerINtB6_11HeaderSliceINtB6_16HeaderWithLengthRuERSINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1r_5LocalEEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit, label %.lr.ph.i.i.i.i

_RINvXsh_NtCs50pZefIA5Ye_8triomphe6headerINtB6_11HeaderSliceINtB6_16HeaderWithLengthRuERSINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1r_5LocalEEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i, %bb.a
  %.sroa.0.0 = phi i64 [ %i.f, %bb.a ], [ %i.at, %_RINvXsT_NtCs8K4cjrcxBsw_6hir_ty3mirINtB6_14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_5LocalEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit.i.i.i.i ] ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 26)
  ret i64 %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1300, !noalias !1301, !noundef !5
  %i.c = mul i64 %.val.i, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1300, !noalias !1301, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1300, !noalias !1301, !noundef !5 ; 2 uses
  %i.f = add i64 %.val2.i, %i.c
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1302, !noalias !1303
  call void @_RINvYNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceNtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val1.i, i64 noundef range(i64 0, -9223372036854775808) %.val2.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1300
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.h = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1316, !noalias !1317, !noundef !5
  %i.c = mul i64 %.val.i, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1316, !noalias !1317, !nonnull !5, !align !26, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1316, !noalias !1317, !noundef !5 ; 2 uses
  %i.f = add i64 %.val2.i, %i.c
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1318, !noalias !1319
  call void @_RINvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val1.i, i64 noundef range(i64 0, 1152921504606846976) %.val2.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1316
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.h = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1332, !noalias !1333, !noundef !5
  %i.c = mul i64 %.val.i, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1332, !noalias !1333, !nonnull !5, !align !26, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1332, !noalias !1333, !noundef !5 ; 2 uses
  %i.f = add i64 %.val2.i, %i.c
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1334, !noalias !1335
  call void @_RINvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyNtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val1.i, i64 noundef range(i64 0, 1152921504606846976) %.val2.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1332
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.h = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1348, !noalias !1349, !noundef !5
  %i.c = mul i64 %.val.i, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1348, !noalias !1349, !nonnull !5, !align !26, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1348, !noalias !1349, !noundef !5 ; 2 uses
  %i.f = add i64 %.val2.i, %i.c
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1350, !noalias !1351
  call void @_RINvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstNtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val1.i, i64 noundef range(i64 0, 1152921504606846976) %.val2.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1348
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.h = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1364, !noalias !1365, !noundef !5
  %i.c = mul i64 %.val.i, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1364, !noalias !1365, !nonnull !5, !align !27, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1364, !noalias !1365, !noundef !5 ; 2 uses
  %i.f = add i64 %.val2.i, %i.c
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1366, !noalias !1367
  call void @_RINvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdNtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val1.i, i64 noundef range(i64 0, 576460752303423488) %.val2.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1364
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.h = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1380, !noalias !1381, !noundef !5
  %i.c = mul i64 %.val.i, -1065810590584100411
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1380, !noalias !1381, !nonnull !5, !align !26, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !1380, !noalias !1381, !noundef !5 ; 2 uses
  %i.f = add i64 %.val2.i, %i.c
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !1382, !noalias !1383
  call void @_RINvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternNtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val1.i, i64 noundef range(i64 0, 1152921504606846976) %.val2.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1380
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.h = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneINtNtCs50pZefIA5Ye_8triomphe6header11HeaderSliceINtB1B_16HeaderWithLengthRuERSTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB3W_2ty2TyEEECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !1401, !noalias !1402, !noundef !5
  %i.b = mul i64 %.val.i, -1065810590584100411
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !1401, !noalias !1402, !nonnull !5, !align !26, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i = load i64, ptr %i.d, align 8, !alias.scope !1401, !noalias !1402, !noundef !5 ; 3 uses
  %i.e = add i64 %.val2.i, %i.b
  %i.f = mul i64 %i.e, -1065810590584100411       ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.val2.i, 24
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 %.idx.i.i.i.i
  %i.h = icmp eq i64 %.val2.i, 0
  br i1 %i.h, label %_RINvXsh_NtCs50pZefIA5Ye_8triomphe6headerINtB6_11HeaderSliceINtB6_16HeaderWithLengthRuERSTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2w_2ty2TyEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %.val1.i, %bb.a ] ; 4 uses
  %i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.1 = load i64, ptr %.sroa.0.03.i.i.i.i, align 4, !alias.scope !1403, !noalias !1404
  %i.m = add i64 %.val1.i.i.i.i.i.i.1, %i.i
  %i.n = mul i64 %i.m, -1065810590584100411
  %.val.i.i.i.i.i.i.1 = load ptr, ptr %i.l, align 8, !alias.scope !1403, !noalias !1404, !nonnull !5, !noundef !5
  %i.o = ptrtoint ptr %.val.i.i.i.i.i.i.1 to i64
  %i.p = add i64 %i.n, %i.o
  %i.q = mul i64 %i.p, -1065810590584100411
  %.val.i.i.i.i.i.1 = load ptr, ptr %i.k, align 8, !alias.scope !1405, !noalias !1406, !nonnull !5, !noundef !5
  %i.r = ptrtoint ptr %.val.i.i.i.i.i.1 to i64
  %i.s = add i64 %i.q, %i.r
  %i.t = mul i64 %i.s, -1065810590584100411       ; 2 uses
  %i.u = icmp eq ptr %i.j, %i.g
  br i1 %i.u, label %_RINvXsh_NtCs50pZefIA5Ye_8triomphe6headerINtB6_11HeaderSliceINtB6_16HeaderWithLengthRuERSTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2w_2ty2TyEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit, label %.lr.ph.i.i.i.i

_RINvXsh_NtCs50pZefIA5Ye_8triomphe6headerINtB6_11HeaderSliceINtB6_16HeaderWithLengthRuERSTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtB2w_2ty2TyEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.sroa.0.0 = phi i64 [ %i.f, %bb.a ], [ %i.t, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.0, i64 %.sroa.0.0, i64 26)
  ret i64 %i.v
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs42xZ1oUXfIG_8smol_str7SmolStrECsf8NQSppxkmK_14ide_completion(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !29, !alias.scope !1420, !noalias !1421, !noundef !5 ; 2 uses
  %i.b = icmp samesign ugt i8 %i.a, 23
  %i.c = zext nneg i8 %i.a to i64                 ; 2 uses
  %i.d = add nsw i64 %i.c, -23
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1420, !noalias !1421, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1420, !noalias !1421, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1420, !noalias !1421, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1420, !noalias !1421, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.4.0.i.i = phi i64 [ %i.c, %bb.c ], [ %i.j, %bb.d ], [ %i.n, %bb.e ] ; 11 uses
  %.sroa.0.0.i.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.o, %bb.e ] ; 10 uses
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.i, 17
  br i1 %i.p, label %bb.g, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.q = icmp samesign ugt i64 %.sroa.4.0.i.i, 7
  br i1 %i.q, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, label %bb.h

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i: ; preds = %bb.f
  %i.r = add i64 %.sroa.4.0.i.i, -17              ; 2 uses
  %i.s = lshr i64 %i.r, 4                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i.new

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i
  %unroll_iter = and i64 %i.t, 2305843009213693950
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i.new
  %.sroa.0.090.i.i.i.i.i = phi i64 [ 2611923443488327891, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i.new ], [ %i.ae, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i ]
  %.sroa.06.089.i.i.i.i.i = phi i64 [ 1376283091369227076, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i.new ], [ %i.ao, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i ]
  %.sroa.018.088.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i.new ], [ %i.af, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 16
  %.sroa.037.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.018.088.i.i.i.i.i, align 1, !alias.scope !1422, !noalias !1423
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i = load i64, ptr %i.w, align 1, !alias.scope !1422, !noalias !1423
  %i.x = xor i64 %.sroa.037.0.copyload.i.i.i.i.i, %.sroa.0.090.i.i.i.i.i
  %i.y = xor i64 %.sroa.039.0.copyload.i.i.i.i.i, -6626703657320631856
  %i.z = zext i64 %i.x to i128
  %i.aa = zext i64 %i.y to i128
  %i.ab = mul nuw i128 %i.aa, %i.z                ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64                 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 32 ; 2 uses
  %.sroa.037.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.v, align 1, !alias.scope !1422, !noalias !1423
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i, i64 24
  %.sroa.039.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.ag, align 1, !alias.scope !1422, !noalias !1423
  %i.ah = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.1, %.sroa.06.089.i.i.i.i.i
  %i.ai = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.1, -6626703657320631856
  %i.aj = zext i64 %i.ah to i128
  %i.ak = zext i64 %i.ai to i128
  %i.al = mul nuw i128 %i.ak, %i.aj               ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64                 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i
  %i.ap = and i64 %i.r, 16
  %lcmp.mod.not.not = icmp eq i64 %i.ap, 0
  br i1 %lcmp.mod.not.not, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i
  %.sroa.0.090.i.i.i.i.i.epil.init = phi i64 [ 2611923443488327891, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i ], [ %i.ae, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.06.089.i.i.i.i.i.epil.init = phi i64 [ 1376283091369227076, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i ], [ %i.ao, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa ]
  %.sroa.018.088.i.i.i.i.i.epil.init = phi ptr [ %.sroa.0.0.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.preheader.i.i.i.i.i ], [ %i.af, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %.sroa.037.0.copyload.i.i.i.i.i.epil = load i64, ptr %.sroa.018.088.i.i.i.i.i.epil.init, align 1, !alias.scope !1422, !noalias !1423
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.018.088.i.i.i.i.i.epil.init, i64 8
  %.sroa.039.0.copyload.i.i.i.i.i.epil = load i64, ptr %i.aq, align 1, !alias.scope !1422, !noalias !1423
  %i.ar = xor i64 %.sroa.037.0.copyload.i.i.i.i.i.epil, %.sroa.0.090.i.i.i.i.i.epil.init
  %i.as = xor i64 %.sroa.039.0.copyload.i.i.i.i.i.epil, -6626703657320631856
  %i.at = zext i64 %i.ar to i128
  %i.au = zext i64 %i.as to i128
  %i.av = mul nuw i128 %i.au, %i.at               ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = xor i128 %i.aw, %i.av
  %i.ay = trunc i128 %i.ax to i64
  br label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i.epil.preheader
  %.sroa.06.089.i.i.i.i.i.lcssa = phi i64 [ %i.ae, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa ], [ %.sroa.06.089.i.i.i.i.i.epil.init, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i.epil.preheader ]
  %.lcssa = phi i64 [ %i.ao, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i.unr-lcssa ], [ %i.ay, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit74.i.i.i.i.i.epil.preheader ]
  %i.az = getelementptr i8, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -16
  %.sroa.041.0.copyload.i.i.i.i.i = load i64, ptr %i.ba, align 1, !alias.scope !1422, !noalias !1423
  %i.bb = xor i64 %.sroa.041.0.copyload.i.i.i.i.i, %.sroa.06.089.i.i.i.i.i.lcssa
  %i.bc = getelementptr i8, ptr %i.az, i64 -8
  %.sroa.043.0.copyload.i.i.i.i.i = load i64, ptr %i.bc, align 1, !alias.scope !1422, !noalias !1423
  %i.bd = xor i64 %.sroa.043.0.copyload.i.i.i.i.i, %.lcssa
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ugt i64 %.sroa.4.0.i.i, 3
  br i1 %i.be, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, label %bb.i

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i: ; preds = %bb.g
  %.sroa.028.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i, align 1, !alias.scope !1422, !noalias !1423
  %i.bf = xor i64 %.sroa.028.0.copyload.i.i.i.i.i, 2611923443488327891
  %i.bg = getelementptr i8, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %.sroa.030.0.copyload.i.i.i.i.i = load i64, ptr %i.bh, align 1, !alias.scope !1422, !noalias !1423
  %i.bi = xor i64 %.sroa.030.0.copyload.i.i.i.i.i, 1376283091369227076
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit, label %bb.j

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bj = getelementptr i8, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %.sroa.033.0.copyload.i.i.i.i.i = load i32, ptr %i.bk, align 1, !alias.scope !1422, !noalias !1423
  %.sroa.032.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i, align 1, !alias.scope !1422, !noalias !1423
  %i.bl = zext i32 %.sroa.032.0.copyload.i.i.i.i.i to i64
  %i.bm = xor i64 %i.bl, 2611923443488327891
  %i.bn = zext i32 %.sroa.033.0.copyload.i.i.i.i.i to i64
  %i.bo = xor i64 %i.bn, 1376283091369227076
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !1422, !noalias !1423, !noundef !5
  %i.bq = lshr i64 %.sroa.4.0.i.i, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !1422, !noalias !1423, !noundef !5
  %i.bt = getelementptr i8, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !1422, !noalias !1423, !noundef !5
  %i.bw = zext i8 %i.bp to i64
  %i.bx = xor i64 %i.bw, 2611923443488327891
  %i.by = zext i8 %i.bv to i64
  %i.bz = shl nuw nsw i64 %i.by, 8
  %i.ca = zext i8 %i.bs to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = xor i64 %i.cb, 1376283091369227076
  br label %_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit

_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtCs42xZ1oUXfIG_8smol_str7SmolStrNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, %bb.i, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i, %bb.j
  %.sroa.06.1.i.i.i.i.i = phi i64 [ %i.bi, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i ], [ %i.bo, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i ], [ %i.cc, %bb.j ], [ 1376283091369227076, %bb.i ], [ %i.bd, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.bf, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i ], [ %i.bm, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit.i.i.i.i.i ], [ %i.bx, %bb.j ], [ 2611923443488327891, %bb.i ], [ %i.bb, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsf8NQSppxkmK_14ide_completion.exit70.i.i.i.i.i ]
  %i.cd = zext i64 %.sroa.0.1.i.i.i.i.i to i128
  %i.ce = zext i64 %.sroa.06.1.i.i.i.i.i to i128
  %i.cf = mul nuw i128 %i.cd, %i.ce               ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = xor i128 %i.cg, %i.cf
  %i.ci = trunc i128 %i.ch to i64
  %i.cj = xor i64 %.sroa.4.0.i.i, %i.ci
  %i.ck = mul i64 %i.cj, 1452335207727870361
  %i.cl = add i64 %i.ck, 4919460506697669435      ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 26)
  ret i64 %i.cm
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs8Xq8PKFYOms_3hir4TypeECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  call void @_RINvXs1u_Cs8Xq8PKFYOms_3hirNtB7_4TypeNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = call noundef i64 @llvm.fshl.i64(i64 %.val, i64 %.val, i64 26)
end_hunk_0
