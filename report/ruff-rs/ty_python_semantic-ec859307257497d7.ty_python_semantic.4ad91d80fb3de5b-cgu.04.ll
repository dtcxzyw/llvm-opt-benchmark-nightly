Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.04?download=true
inline.NumInlined: 10536
inline.NumDeleted: 4602
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugSet7entriesRNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterB13_EEB17_:bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.07, ptr %i.a, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq ptr %i.c, %2
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_9Signature28add_implicit_self_annotationNCNvMsN_NtB8_8functionNtB1Q_15OverloadLiteral13raw_signatures_0EBa_(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %4) unnamed_addr #2 personality ptr @rust_eh_personality !guid !1452 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [12 x i8], align 4                ; 9 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 5 uses
  %i.f = alloca [16 x i8], align 4                ; 6 uses
  %i.g = alloca [12 x i8], align 4                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 4                ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !45, !noundef !45 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !45, !noundef !45 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !45
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %i.n, align 8, !range !66, !noundef !45
  %switch = icmp samesign ult i64 %i.q, 2
  br i1 %switch, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.s = load i32, ptr %i.r, align 8, !range !69, !noundef !45 ; 2 uses
  %i.t = icmp ne i32 %i.s, 17
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i32 %i.s, 4
  br i1 %i.u, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.w = load i32, ptr %i.v, align 4, !range !70, !noundef !45
  switch i32 %i.w, label %bb.ar [
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 5, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 68
  %i.y = load i8, ptr %i.x, align 4, !range !50, !noundef !45
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = load ptr, ptr %4, align 8, !alias.scope !1454, !nonnull !45, !align !49, !noundef !45 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !range !53, !noalias !1455, !noundef !45 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !1455, !noundef !45 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1454, !nonnull !45, !noundef !45 ; 20 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1454, !nonnull !45, !align !46, !noundef !45 ; 20 uses
  %i.ai = tail call noundef zeroext i1 @_RNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB5_15OverloadLiteral15is_staticmethod(i32 noundef %i.ab, i32 noundef %i.ad, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455
  %i.aj = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions1_1__NtB8_15OverloadLiteral4nameDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.ab, i32 noundef %i.ad, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 15
  %i.al = load i8, ptr %i.ak, align 1, !range !57, !alias.scope !1456, !noalias !1455, !noundef !45 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1456, !noalias !1455, !noundef !45
  %i.ao = and i64 %i.an, 72057594037927935
  %i.ap = icmp ult i8 %i.al, -48
  %i.aq = zext i8 %i.al to i64
  %i.ar = add nsw i64 %i.aq, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 16)
  %.sroa.0.0.i.i = select i1 %i.ap, i64 %spec.store.select.i.i, i64 %i.ao
  %i.as = icmp eq i64 %.sroa.0.0.i.i, 7
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = icmp ugt i8 %i.al, -49
  %i.au = load ptr, ptr %i.aj, align 8, !alias.scope !1456, !noalias !1455
  %.sroa.01.0.i.i = select i1 %i.at, ptr %i.au, ptr %i.aj ; 2 uses
  %i.av = load i32, ptr %.sroa.01.0.i.i, align 1
  %i.aw = xor i32 %i.av, 1701732191
  %i.ax = getelementptr i8, ptr %.sroa.01.0.i.i, i64 3
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = xor i32 %i.ay, 1600092005
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i1 [ %i.bd, %bb.g ], [ false, %bb.f ] ; 3 uses
  %.not.i = xor i1 %i.ai, true
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.sroa.0.0.i
  br i1 %or.cond.i, label %bb.i, label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !1454, !nonnull !45, !align !49, !noundef !45 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !noalias !1455, !noundef !45 ; 2 uses
  %.not39.i = icmp eq i32 %i.bg, 0
  br i1 %.not39.i, label %_RNCNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB9_15OverloadLiteral13raw_signatures_00Bd_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !1455
  %i.bj = tail call { ptr, ptr } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext9variables(i32 noundef range(i32 1, 0) %i.bg, i32 noundef %i.bi, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455 ; 2 uses
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bm = phi ptr [ %i.bn, %bb.l ], [ %i.bk, %bb.j ] ; 4 uses
  %.not.not.not.i.not.not.not.i.not.not.i.not.not = icmp ne ptr %i.bm, %i.bl ; 3 uses
  br i1 %.not.not.not.i.not.not.not.i.not.not.i.not.not, label %bb.l, label %_RNCNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB9_15OverloadLiteral13raw_signatures_00Bd_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %.val7.i.i.i = load i32, ptr %i.bm, align 4, !range !53, !noalias !1457, !noundef !45
  %i.bo = getelementptr i8, ptr %i.bm, i64 4
  %.val8.i.i.i = load i32, ptr %i.bo, align 4, !noalias !1457, !noundef !45
  %i.bp = tail call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %.val7.i.i.i, i32 noundef %.val8.i.i.i, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1457 ; 2 uses
  %i.bq = extractvalue { i32, i32 } %i.bp, 0
  %i.br = extractvalue { i32, i32 } %i.bp, 1
  %i.bs = tail call noundef zeroext i1 @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance7is_self(i32 noundef %i.bq, i32 noundef %i.br, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1457
  br i1 %i.bs, label %_RNCNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB9_15OverloadLiteral13raw_signatures_00Bd_.exit.i, label %bb.k

_RNCNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB9_15OverloadLiteral13raw_signatures_00Bd_.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %.sroa.014.0.i = phi i1 [ false, %bb.i ], [ %.not.not.not.i.not.not.not.i.not.not.i.not.not, %bb.k ], [ %.not.not.not.i.not.not.not.i.not.not.i.not.not, %bb.l ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !1454, !nonnull !45, !align !49, !noundef !45 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !range !53, !noalias !1455, !noundef !45 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !1455, !noundef !45 ; 3 uses
  %i.by = tail call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition5scope(i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ah), !noalias !1455 ; 2 uses
  %i.bz = extractvalue { i32, i32 } %i.by, 0
  %i.ca = extractvalue { i32, i32 } %i.by, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !1454, !nonnull !45, !align !46, !noundef !45 ; 3 uses
  %i.cd = tail call noundef i32 @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId13file_scope_idDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1k_(i32 noundef %i.bz, i32 noundef %i.ca, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !1455, !noundef !45 ; 2 uses
  %i.cg = add i32 %i.cd, -1
  %i.ch = zext i32 %i.cg to i64                   ; 3 uses
  %i.ci = icmp ugt i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNCNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB9_15OverloadLiteral13raw_signatures_00Bd_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !1455, !nonnull !45, !noundef !45
  %i.cl = getelementptr inbounds nuw [20 x i8], ptr %i.ck, i64 %i.ch ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !range !71, !noalias !1455, !noundef !45
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.o, label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread

bb.n:                                             ; preds = %_RNCNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB9_15OverloadLiteral13raw_signatures_00Bd_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #64, !noalias !1455
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cp = tail call { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRINtNtB6_12ast_node_ref10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.cc, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96), !noalias !1455 ; 2 uses
  %i.cq = extractvalue { i32, i32 } %i.cp, 0
  %i.cr = extractvalue { i32, i32 } %i.cp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1455
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer19original_class_type(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah, i32 noundef %i.cq, i32 noundef %i.cr), !noalias !1455
  %i.cs = load i32, ptr %i.h, align 4, !range !72, !noalias !1455, !noundef !45
  %.not40.i = icmp eq i32 %i.cs, -1
  br i1 %.not40.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !1455
  %i.ct = call { i32, i32 } @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral15generic_context(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1455
  %i.cu = extractvalue { i32, i32 } %i.ct, 0
  %i.cv = icmp ne i32 %i.cu, 0                    ; 2 uses
  %i.cw = call noundef i8 @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral5known(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455
  switch i8 %i.cw, label %default.unreachable [
    i8 -1, label %bb.r
    i8 0, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 1, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 2, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 3, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 4, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 5, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 6, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 7, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 8, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 9, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 10, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 11, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 12, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 13, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 14, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 15, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 16, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 17, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 18, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 19, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 20, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 21, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 22, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 23, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 24, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 25, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 26, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 27, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 28, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 29, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 30, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 31, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 32, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 33, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 34, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 35, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 36, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 37, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 38, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 39, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 40, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 41, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 42, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 43, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 44, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 45, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 46, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 47, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 48, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 49, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 50, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 51, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 52, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 53, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 54, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 55, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 56, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 57, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 58, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 59, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 60, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 61, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 62, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 63, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 64, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 65, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 66, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 67, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 68, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 69, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 70, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 71, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 72, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 73, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 74, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 75, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 76, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 77, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 78, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 79, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i
    i8 80, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 81, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 82, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 83, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 84, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 85, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 86, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 87, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 88, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 89, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i
    i8 90, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 91, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i
    i8 92, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 93, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 94, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 95, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 96, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 97, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 98, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 99, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 100, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 101, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 102, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 103, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 104, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 105, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 106, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
    i8 107, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
  ]

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1455
  br label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread

default.unreachable:                              ; preds = %bb.p
  unreachable

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i: ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %or.cond7.i = or i1 %.sroa.014.0.i, %i.cv
  br i1 %or.cond7.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i, label %bb.s

bb.r:                                             ; preds = %bb.p
  %or.cond3.i = or i1 %.sroa.014.0.i, %i.cv
  br i1 %or.cond3.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i, label %bb.s

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i: ; preds = %bb.r, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i, %bb.p, %bb.p, %bb.p
  %i.cx = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition5scope(i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ah), !noalias !1455 ; 2 uses
  %i.cy = extractvalue { i32, i32 } %i.cx, 0      ; 3 uses
  %i.cz = extractvalue { i32, i32 } %i.cx, 1      ; 3 uses
  %i.da = call { i32, i32 } @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId12program_fileDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1j_(i32 noundef %i.cy, i32 noundef %i.cz, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455 ; 2 uses
  %i.db = extractvalue { i32, i32 } %i.da, 0
  %i.dc = extractvalue { i32, i32 } %i.da, 1
  %i.dd = call noundef nonnull align 8 ptr @_RNvCs2O29vuvTAEJ_14ty_python_core14semantic_index(ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ah, i32 noundef %i.db, i32 noundef %i.dc), !noalias !1455
  %i.de = call { i32, i32 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer23nearest_enclosing_class(ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.dd, i32 noundef %i.cy, i32 noundef %i.cz), !noalias !1455 ; 2 uses
  %i.df = extractvalue { i32, i32 } %i.de, 0      ; 2 uses
  %.not42.i = icmp eq i32 %i.df, 0
  br i1 %.not42.i, label %bb.w, label %bb.v, !prof !61

bb.s:                                             ; preds = %bb.r, %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.i
  %i.dg = call noundef zeroext i1 @_RNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB5_15OverloadLiteral14is_classmethod(i32 noundef %i.ab, i32 noundef %i.ad, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455
  %or.cond9.i = select i1 %i.dg, i1 true, i1 %.sroa.0.0.i
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !1454, !nonnull !45, !align !49, !noundef !45 ; 2 uses
  br i1 %or.cond9.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1455
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dj, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !1455
  store i32 0, ptr %i.e, align 4, !noalias !1455
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB3_14SubclassOfType4fromNtB3_15SubclassOfInnerEB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah, ptr noundef nonnull align 4 %i.di, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.e), !noalias !1454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1455
  br label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit

bb.u:                                             ; preds = %bb.s
  call void @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral23to_non_generic_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.j, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah, ptr noundef nonnull align 4 %i.di), !noalias !1454
  br label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit

bb.v:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i
  %i.dk = extractvalue { i32, i32 } %i.de, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1455
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.df, ptr %i.dl, align 4, !alias.scope !1458, !noalias !1455
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.dk, ptr %i.dm, align 4, !alias.scope !1458, !noalias !1455
  store i32 0, ptr %i.g, align 4, !alias.scope !1458, !noalias !1455
  %i.dn = call { i32, i32 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics11typing_self(ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah, i32 noundef %i.cy, i32 noundef %i.cz, i32 noundef %i.bv, i32 %i.bx, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.g), !noalias !1455 ; 2 uses
  %i.do = extractvalue { i32, i32 } %i.dn, 0      ; 4 uses
  %i.dp = extractvalue { i32, i32 } %i.dn, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1455
  %.not43.i = icmp eq i32 %i.do, 0
  br i1 %.not43.i, label %bb.y, label %bb.x, !prof !61

bb.w:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass17is_fallback_class.exit.thread.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #64, !noalias !1455
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dq = call noundef zeroext i1 @_RNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB5_15OverloadLiteral14is_classmethod(i32 noundef %i.ab, i32 noundef %i.ad, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah), !noalias !1455
  %or.cond11.i = select i1 %i.dq, i1 true, i1 %.sroa.0.0.i
  br i1 %or.cond11.i, label %bb.z, label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread32

bb.y:                                             ; preds = %bb.v
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #64, !noalias !1455
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !1454, !nonnull !45, !align !49, !noundef !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1455
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.do, ptr %i.dt, align 4, !noalias !1455
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.dp, ptr %i.du, align 4, !noalias !1455
  store i32 3, ptr %i.f, align 4, !noalias !1455
  call void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types11subclass_ofNtB3_14SubclassOfType4fromNtB3_15SubclassOfInnerEB7_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.j, ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ah, ptr noundef nonnull align 4 %i.ds, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.f), !noalias !1454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1455
  br label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit

_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread32: ; preds = %bb.x
  store i32 29, ptr %i.j, align 4, !alias.scope !1453
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.do, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !1453
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.dp, ptr %.sroa.535.0..sroa_idx.i, align 4, !alias.scope !1453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aa

_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread: ; preds = %bb.m, %bb.h, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.sink.split43

_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit: ; preds = %bb.t, %bb.u, %bb.z
  %.pr = load i32, ptr %i.j, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not26 = icmp eq i32 %.pr, -1
  br i1 %.not26, label %.sink.split43, label %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit._crit_edge

_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit._crit_edge: ; preds = %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit
  %.sroa.7.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.7.0.copyload.pre = load i32, ptr %.sroa.7.0..sroa_idx.phi.trans.insert, align 4
  %.sroa.8.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8.0.copyload.pre = load i32, ptr %.sroa.8.0..sroa_idx.phi.trans.insert, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit._crit_edge, %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread32
  %.sroa.8.0.copyload = phi i32 [ %i.dp, %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread32 ], [ %.sroa.8.0.copyload.pre, %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit._crit_edge ] ; 4 uses
  %.sroa.7.0.copyload = phi i32 [ %i.do, %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread32 ], [ %.sroa.7.0.copyload.pre, %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit._crit_edge ] ; 6 uses
  %i.dv = phi i32 [ 29, %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit.thread32 ], [ %.pr, %_RNCNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB7_15OverloadLiteral13raw_signatures_0Bb_.exit._crit_edge ] ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.dw = cmpxchg ptr %i.l, i64 1, i64 0 acquire monotonic, align 8, !noalias !1459
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  %i.dy = load ptr, ptr %i.k, align 8, !alias.scope !1459, !nonnull !45, !noundef !45 ; 7 uses
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load atomic i64, ptr %i.dz monotonic, align 8, !noalias !1459
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.ae, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ed = call noundef nonnull ptr @_RNvMsk_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE17clone_from_ref_inBL_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ec), !noalias !1459 ; 3 uses
  %i.ee = atomicrmw add ptr %i.dy, i64 -1 release, align 8, !noalias !1460
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1e_.exit.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1e_.exit.i unwind label %bb.ak

bb.ae:                                            ; preds = %bb.ab
  store atomic i64 1, ptr %i.dy release, align 8, !noalias !1459
  br label %_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE8make_mutBL_.exit

bb.af:                                            ; preds = %bb.ah, %bb.ag
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1f_.exit.i unwind label %bb.aj, !noalias !1459

bb.ag:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1459
  store ptr %i.dy, ptr %i.b, align 8, !noalias !1459
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1459
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  invoke void @_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtNtB8_5alloc6GlobalE3newBZ_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eh)
          to label %bb.ah unwind label %bb.af, !noalias !1459

bb.ah:                                            ; preds = %bb.ag
  %i.ei = load i64, ptr %i.a, align 8, !range !1461, !noalias !1459, !noundef !45 ; 2 uses
  %i.ej = add nuw i64 %i.ei, 15
  %i.ek = sub i64 0, %i.ei
  %i.el = and i64 %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !noalias !1459, !nonnull !45, !noundef !45
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i64 32, i1 false), !noalias !1459
  %i.ep = invoke noundef nonnull ptr @_RNvMs1l_NtCscdodAO9FK5_5alloc4syncINtB6_15UniqueArcUninitNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataNtNtB8_5alloc6GlobalE8into_arcBZ_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.ai unwind label %bb.af, !noalias !1459 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.ep, ptr %i.k, align 8, !alias.scope !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1459
  call void @_RNvXsN_NtCscdodAO9FK5_5alloc4syncINtB5_4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1459
  br label %_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE8make_mutBL_.exit

bb.aj:                                            ; preds = %bb.af
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #63, !noalias !1459
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1f_.exit.i: ; preds = %bb.ak, %bb.af
  %.pn.i = phi { ptr, i32 } [ %i.er, %bb.ak ], [ %i.eg, %bb.af ]
  resume { ptr, i32 } %.pn.i

bb.ak:                                            ; preds = %bb.ad
  %i.er = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ed, ptr %i.k, align 8, !alias.scope !1459
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync4WeakNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1f_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1e_.exit.i: ; preds = %bb.ad, %bb.ac
  store ptr %i.ed, ptr %i.k, align 8, !alias.scope !1459
  br label %_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE8make_mutBL_.exit

_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE8make_mutBL_.exit: ; preds = %bb.ae, %bb.ai, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1e_.exit.i
  %i.es = phi ptr [ %i.dy, %bb.ae ], [ %i.ep, %bb.ai ], [ %i.ed, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataEEB1e_.exit.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load i64, ptr %i.et, align 8, !noundef !45
  %.not27 = icmp eq i64 %i.eu, 0
  br i1 %.not27, label %.sink.split43, label %bb.al

bb.al:                                            ; preds = %_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures14ParametersDataE8make_mutBL_.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !45, !noundef !45 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i32 %i.dv, ptr %i.ex, align 8
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ew, i64 44
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx4, align 4
end_hunk_0
