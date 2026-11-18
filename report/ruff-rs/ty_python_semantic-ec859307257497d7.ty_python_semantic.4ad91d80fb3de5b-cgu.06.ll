Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.06?download=true
inline.NumInlined: 11176
inline.NumDeleted: 4455
loop-unroll.NumRuntimeUnrolled: 159
loop-unroll.NumUnrolled: 159
begin_hunk_0_@_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet8overlaps:bb.a
  %.sroa.0.0.shrunk = phi i1 [ %i.df, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB2C_12EnumValueSet8overlapss0_0ENtNtNtB9_6traits8iterator8Iterator5countB2I_.exit ], [ true, %bb.a ], [ %i.an, %bb.j ], [ %i.av, %bb.k ], [ true, %bb.h ], [ false, %bb.m ], [ true, %bb.b ], [ false, %bb.g ], [ %i.al, %bb.i ], [ false, %bb.l ], [ %.not.i, %.lr.ph ], [ %i.bi, %.lr.ph42 ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val20 = load ptr, ptr %i.n, align 8, !nonnull !73, !align !79, !noundef !73 ; 4 uses
  %.val21 = load ptr, ptr %i.o, align 8, !nonnull !73, !align !79, !noundef !73 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22947)
  %i.p = getelementptr inbounds nuw i8, ptr %.val20, i64 15
  %i.q = load i8, ptr %i.p, align 1, !range !80, !alias.scope !22948, !noundef !73 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val20, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !22948, !noundef !73
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = icmp ult i8 %i.q, -48
  %i.v = zext i8 %i.q to i64
  %i.w = add nsw i64 %i.v, -192
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.u, i64 %spec.store.select.i.i.i.i, i64 %i.t ; 2 uses
  %i.x = icmp ugt i8 %i.q, -49
  %i.y = load ptr, ptr %.val20, align 8, !alias.scope !22948
  %.sroa.01.0.i.i.i.i = select i1 %i.x, ptr %i.y, ptr %.val20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val21, i64 15
  %i.aa = load i8, ptr %i.z, align 1, !range !80, !alias.scope !22949, !noundef !73 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !22949, !noundef !73
  %i.ad = and i64 %i.ac, 72057594037927935
  %i.ae = icmp ult i8 %i.aa, -48
  %i.af = zext i8 %i.aa to i64
  %i.ag = add nsw i64 %i.af, -192
  %spec.store.select.i4.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 16)
  %.sroa.0.0.i5.i.i.i = select i1 %i.ae, i64 %spec.store.select.i4.i.i.i, i64 %i.ad
  %i.ah = icmp ugt i8 %i.aa, -49
  %i.ai = load ptr, ptr %.val21, align 8, !alias.scope !22949
  %.sroa.01.0.i6.i.i.i = select i1 %i.ah, ptr %i.ai, ptr %.val21 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i5.i.i.i
  br i1 %i.aj, label %bb.h, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp eq ptr %.sroa.01.0.i.i.i.i, %.sroa.01.0.i6.i.i.i
  br i1 %i.ak, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.i.i.i.i, ptr %.sroa.01.0.i6.i.i.i, i64 %.sroa.0.0.i.i.i.i)
  %i.al = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit

bb.j:                                             ; preds = %bb.e, %bb.d
  %.sroa.02.0 = phi ptr [ %0, %bb.d ], [ %1, %bb.e ]
  %.pn15 = phi ptr [ %1, %bb.d ], [ %0, %bb.e ]
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %.pn15, i64 8
  %i.am = tail call fastcc i64 @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.02.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0)
  %i.an = icmp eq i64 %i.am, 1
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit

bb.k:                                             ; preds = %bb.f, %bb.d
  %.pn13 = phi ptr [ %0, %bb.d ], [ %1, %bb.f ]   ; 2 uses
  %.pn14 = phi ptr [ %1, %bb.d ], [ %0, %bb.f ]
  %.sroa.05.0 = getelementptr inbounds nuw i8, ptr %.pn14, i64 8
  %.sroa.06.0 = getelementptr inbounds nuw i8, ptr %.pn13, i64 8
  %i.ao = load i32, ptr %.sroa.06.0, align 8, !range !84, !noundef !73
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn13, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !73
  %i.ar = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss4_1__NtB8_18EnumComplementType14excluded_namesDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  %i.as = load ptr, ptr %.sroa.05.0, align 8, !nonnull !73, !align !79, !noundef !73
  %i.at = tail call { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
  %i.au = extractvalue { i64, i64 } %i.at, 0
  %i.av = icmp ne i64 %i.au, 1
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit

bb.l:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !73
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !noundef !73
  %i.ba = icmp ult i64 %i.ax, %i.az               ; 2 uses
  %. = select i1 %i.ba, ptr %0, ptr %1            ; 2 uses
  %.16 = select i1 %i.ba, ptr %1, ptr %0
  %i.bb = getelementptr inbounds nuw i8, ptr %., i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !73, !noundef !73 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noundef !73 ; 2 uses
  %.idx47 = mul nuw nsw i64 %i.be, 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx47
  %.not.not.not.i.not.not41 = icmp eq i64 %i.be, 0
  br i1 %.not.not.not.i.not.not41, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42, %bb.l
  %i.bg = phi ptr [ %i.bj, %.lr.ph42 ], [ %i.bc, %bb.l ] ; 2 uses
  %i.bh = tail call fastcc i64 @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg)
  %i.bi = icmp eq i64 %i.bh, 1                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.bj, %i.bf
  %or.cond = select i1 %i.bi, i1 true, i1 %.not.not.not.i.not.not
  br i1 %or.cond, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph42

bb.m:                                             ; preds = %bb.f, %bb.e
  %.pn = phi ptr [ %0, %bb.e ], [ %1, %bb.f ]     ; 2 uses
  %.sroa.07.0 = phi ptr [ %1, %bb.e ], [ %0, %bb.f ] ; 2 uses
  %.sroa.09.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !73, !noundef !73 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !73 ; 2 uses
  %.idx46 = mul nuw nsw i64 %i.bn, 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx46
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn, i64 12
  %.not11.not.not.i.not.not38 = icmp eq i64 %i.bn, 0
  br i1 %.not11.not.not.i.not.not38, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.bq = load i32, ptr %.sroa.09.0, align 8, !range !84, !noalias !22950, !noundef !73
  %i.br = load i32, ptr %i.bp, align 4, !noalias !22950, !noundef !73
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %i.bs = phi ptr [ %i.bw, %.lr.ph ], [ %i.bl, %.lr.ph.preheader ] ; 2 uses
  %.val.i = load ptr, ptr %i.bs, align 8, !noalias !22951 ; 2 uses
  %i.bt = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss4_1__NtB8_18EnumComplementType14excluded_namesDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.bq, i32 noundef %i.br, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3), !noalias !22950
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.bu = tail call { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i), !noalias !22950
  %i.bv = extractvalue { i64, i64 } %i.bu, 0
  %.not.i = icmp ne i64 %i.bv, 1                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %.not11.not.not.i.not.not = icmp eq ptr %i.bw, %i.bo
  %or.cond51 = select i1 %.not.i, i1 true, i1 %.not11.not.not.i.not.not
  br i1 %or.cond51, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph

bb.n:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !range !84, !noundef !73
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !73
  %i.cb = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss4_1__NtB8_18EnumComplementType14excluded_namesDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.by, i32 noundef %i.ca, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !range !84, !noundef !73
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !noundef !73
  %i.cg = tail call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumss4_1__NtB8_18EnumComplementType14excluded_namesDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.cd, i32 noundef %i.cf, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !73, !noundef !73 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !73 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cm, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx ; 2 uses
  store ptr %i.ck, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.cb, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22952
  call void @_RNvXs1_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22952
  %i.cq = icmp eq i64 %i.cm, 0
  br i1 %i.cq, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB2C_12EnumValueSet8overlapss0_0ENtNtNtB9_6traits8iterator8Iterator5countB2I_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ %i.cx, %.lr.ph.i.i ], [ 0, %bb.n ]
  %.sroa.0.0711.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0711.i.i, i64 24 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0711.i.i, i64 8
  %i.ct = call { i64, i64 } @_RINvMs3_NtCs5e9M2GLoJMY_8indexmap3mapINtB6_8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameuINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE12get_index_ofBO_ECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cs)
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = icmp ne i64 %i.cu, 1
  %i.cw = zext i1 %i.cv to i64
  %i.cx = add i64 %.sroa.0.012.i.i, %i.cw         ; 2 uses
  %i.cy = icmp eq ptr %i.cr, %i.cn
  br i1 %i.cy, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB2C_12EnumValueSet8overlapss0_0ENtNtNtB9_6traits8iterator8Iterator5countB2I_.exit, label %.lr.ph.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB2C_12EnumValueSet8overlapss0_0ENtNtNtB9_6traits8iterator8Iterator5countB2I_.exit: ; preds = %.lr.ph.i.i, %bb.n
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.n ], [ %i.cx, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cz = add i64 %.sroa.0.0.lcssa.i.i, %i.ci
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load i32, ptr %i.da, align 8, !range !84, !noundef !73
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dd = load i32, ptr %i.dc, align 4, !noundef !73
  %i.de = call noundef i64 @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumsNtB5_16EnumClassLiteral12member_count(i32 noundef %i.db, i32 noundef %i.dd, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %3)
  %i.df = icmp ult i64 %i.cz, %i.de
  br label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_9PartialEq2eqCsoTR8nlGN3X_18ty_python_semantic.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet9from_type(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(16) %4, ptr noalias noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23070 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 8                ; 17 uses
  %i.k = alloca [56 x i8], align 8                ; 15 uses
  %i.l = alloca [64 x i8], align 8                ; 10 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 4                ; 6 uses
  %i.o = alloca [64 x i8], align 8                ; 12 uses
  %i.p = alloca [64 x i8], align 8                ; 8 uses
  %i.q = alloca [64 x i8], align 8                ; 6 uses
  %i.r = alloca [12 x i8], align 4                ; 4 uses
  %i.s = alloca [12 x i8], align 4                ; 5 uses
  %i.t = alloca [16 x i8], align 4                ; 16 uses
  %i.u = alloca [64 x i8], align 8                ; 28 uses
  %i.v = alloca [16 x i8], align 4                ; 4 uses
  %i.w = alloca [16 x i8], align 4                ; 4 uses
  %i.x = alloca [64 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  %i.y = call noundef zeroext i1 @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeuNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias noundef nonnull align 8 dereferenceable(32) %5, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !23071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !23072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !23072
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type18resolve_type_alias(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.t, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.v, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !23073, !inline_history !22958
  %i.z = load i32, ptr %i.t, align 4, !range !116, !noalias !23072, !noundef !73 ; 3 uses
  %i.aa = icmp ne i32 %i.z, 17
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i32 %i.z, -4
  %i.ac = icmp samesign ugt i32 %i.z, 3
  %narrow.i = select i1 %i.ac, i32 %i.ab, i32 13
  switch i32 %narrow.i, label %bb.d [
    i32 14, label %bb.e
    i32 19, label %bb.f
    i32 20, label %bb.ae
    i32 21, label %bb.au
    i32 24, label %bb.av
  ]

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.x, align 8, !alias.scope !23071
  br label %bb.ay

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !23072
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i64 12, i1 false), !noalias !23072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !23072
  call void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType13class_literal(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.r, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.s, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !23074, !inline_history !22958
  %i.ae = call { i32, i32 } @_RNvMs4_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumsNtNtB7_5class12ClassLiteral15into_enum_class(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.r, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !23074, !inline_history !22958 ; 2 uses
  %i.af = extractvalue { i32, i32 } %i.ae, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23072
  %.not22.i = icmp eq i32 %i.af, 0
  br i1 %.not22.i, label %bb.ax, label %bb.aw

bb.f:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !84, !noalias !23072, !noundef !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !noalias !23072, !noundef !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !23072
  %i.ak = call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !23074, !inline_history !22958 ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !23075
  store i64 0, ptr %i.k, align 8, !noalias !23075
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.462.0..sroa_idx, align 8, !noalias !23075
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.563.0..sroa_idx, align 8, !noalias !23075
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.664.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @194, i64 32, i1 false), !noalias !23075
  %.idx173 = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx173
  %.not167 = icmp eq i64 %i.am, 0
  br i1 %.not167, label %bb.aa, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph171, %bb.q
  %.sroa.0.0.i8170 = phi ptr [ %i.al, %.lr.ph171 ], [ %i.aq, %bb.q ] ; 2 uses
  %.sroa.03.0.i169 = phi i32 [ 0, %.lr.ph171 ], [ %i.av, %bb.q ] ; 3 uses
  %.sroa.6.0.i168 = phi i32 [ undef, %.lr.ph171 ], [ %i.au, %bb.q ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8170, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !23075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i8170, i64 16, i1 false), !noalias !23076
  invoke fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet9from_type(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %.thread90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23077, !inline_history !22964

.thread90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.thread, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i
  %lpad.loopexit.split-lp261 = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23075
  %i.ar = load i64, ptr %i.i, align 8, !range !107, !noalias !23075, !noundef !73
  %.not.i11 = icmp eq i64 %i.ar, -1
  br i1 %.not.i11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !23075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23075
  %.not16.i = icmp eq i32 %.sroa.03.0.i169, 0
  %.pre199 = load i32, ptr %i.ap, align 4, !noalias !23075 ; 2 uses
  %.pre = load i32, ptr %i.ao, align 8, !noalias !23075 ; 2 uses
  br i1 %.not16.i, label %._crit_edge198, label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !23075
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i, %split, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23075
  br label %bb.aa

bb.k:                                             ; preds = %bb.i
  %i.as = icmp eq i32 %.sroa.6.0.i168, %.pre199
  %i.at = icmp eq i32 %.sroa.03.0.i169, %.pre
  %.sroa.0.0.i.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %.sroa.0.0.i.i, label %._crit_edge198, label %._crit_edge200

._crit_edge200:                                   ; preds = %bb.k
  %.pre201 = load i64, ptr %i.j, align 8, !range !114, !noalias !23075
  br label %split

._crit_edge198:                                   ; preds = %bb.i, %bb.k
  %i.au = phi i32 [ %.sroa.6.0.i168, %bb.k ], [ %.pre199, %bb.i ] ; 2 uses
  %i.av = phi i32 [ %.sroa.03.0.i169, %bb.k ], [ %.pre, %bb.i ] ; 2 uses
  %i.aw = load i64, ptr %i.j, align 8, !range !114, !noalias !23075, !noundef !73 ; 6 uses
  %i.ax = icmp ne i64 %i.aw, -9223372036854775806
  call void @llvm.assume(i1 %i.ax), !noalias !23078
  %i.ay = xor i64 %i.aw, -9223372036854775808
  %i.az = icmp slt i64 %i.aw, 0
  %i.ba = select i1 %i.az, i64 %i.ay, i64 2
  switch i64 %i.ba, label %bb.m [
    i64 0, label %split
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %split
  ]

bb.l:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.j, align 8, !range !114, !noalias !23075, !noundef !73 ; 2 uses
  %i.bd = icmp ne i64 %i.bc, -9223372036854775806
  call void @llvm.assume(i1 %i.bd), !noalias !23078
  %i.be = icmp sgt i64 %i.bc, -1
  br i1 %i.be, label %bb.v, label %.thread87

split:                                            ; preds = %._crit_edge198, %._crit_edge198, %._crit_edge200
  %i.bf = phi i64 [ %.pre201, %._crit_edge200 ], [ %i.aw, %._crit_edge198 ], [ %i.aw, %._crit_edge198 ] ; 2 uses
  %i.bg = icmp ne i64 %i.bf, -9223372036854775806
  call void @llvm.assume(i1 %i.bg), !noalias !23078
  %i.bh = icmp sgt i64 %i.bf, -1
  br i1 %i.bh, label %bb.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.m:                                             ; preds = %._crit_edge198
  unreachable

bb.n:                                             ; preds = %._crit_edge198
  %i.bi = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !noalias !23075, !nonnull !73, !align !79, !noundef !73
  %i.bj = load i8, ptr %.sroa.571.0..sroa_idx, align 8, !range !87, !noalias !23075, !noundef !73
  %i.bk = trunc nuw i8 %i.bj to i1
  invoke fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet13insert_member(ptr noalias noundef align 8 dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bi, i1 noundef zeroext %i.bk)
          to label %bb.q unwind label %bb.l, !noalias !23077, !inline_history !22964

bb.o:                                             ; preds = %._crit_edge198
  %.sroa.470.0.copyload = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !noalias !23075 ; 4 uses
  %.sroa.571.0.copyload = load i64, ptr %.sroa.571.0..sroa_idx, align 8, !noalias !23075 ; 2 uses
  %.sroa.672.0.copyload = load ptr, ptr %.sroa.672.0..sroa_idx, align 8, !noalias !23075 ; 2 uses
  %.sroa.773.0.copyload = load i64, ptr %.sroa.773.0..sroa_idx, align 8, !noalias !23075 ; 3 uses
  %i.bl = icmp eq i64 %.sroa.773.0.copyload, 0
  br i1 %i.bl, label %_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB1K_4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bm = shl i64 %.sroa.773.0.copyload, 3        ; 2 uses
  %i.bn = add i64 %i.bm, 8
  %i.bo = add i64 %i.bm, 23                       ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.bn
  call void @llvm.assume(i1 %i.bp), !noalias !23078
  %i.bq = and i64 %i.bo, -16                      ; 3 uses
  %i.br = add i64 %.sroa.773.0.copyload, 17
  %i.bs = add i64 %i.br, %i.bq                    ; 4 uses
  %i.bt = icmp uge i64 %i.bs, %i.bq
  %i.bu = icmp ult i64 %i.bs, 9223372036854775793
  call void @llvm.assume(i1 %i.bt), !noalias !23078
  call void @llvm.assume(i1 %i.bu), !noalias !23078
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB1K_4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.672.0.copyload) ], !noalias !23078
  %i.bw = sub nsw i64 0, %i.bq
  %i.bx = getelementptr inbounds i8, ptr %.sroa.672.0.copyload, i64 %i.bw
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !23079, !inline_history !22964
  br label %_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB1K_4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB1K_4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.p, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i, %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.470.0.copyload) ], !noalias !23078
  %i.by = icmp ult i64 %.sroa.571.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.by), !noalias !23078
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.470.0.copyload, i64 %.sroa.571.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23075
  store ptr %.sroa.470.0.copyload, ptr %i.g, align 8, !noalias !23075
  store ptr %.sroa.470.0.copyload, ptr %.sroa.458.0..sroa_idx, align 8, !noalias !23075
  store i64 %i.aw, ptr %.sroa.559.0..sroa_idx, align 8, !noalias !23075
  store ptr %i.bz, ptr %.sroa.660.0..sroa_idx, align 8, !noalias !23075
  br label %bb.r

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEECsoTR8nlGN3X_18ty_python_semantic.exit26.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !23075
  %.not = icmp eq ptr %i.aq, %i.an
  br i1 %.not, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet10from_union.exit, label %bb.g

bb.r:                                             ; preds = %bb.t, %_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB1K_4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23080), !noalias !23078
  %i.ca = load ptr, ptr %.sroa.660.0..sroa_idx, align 8, !alias.scope !23080, !noalias !23075, !nonnull !73, !noundef !73
  %i.cb = load ptr, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !23080, !noalias !23075, !nonnull !73, !noundef !73 ; 4 uses
  %i.cc = icmp eq ptr %i.cb, %i.ca
  br i1 %i.cc, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.thread, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cd, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !23080, !noalias !23075
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %.sroa.567.0.copyload = load i8, ptr %.sroa.567.0..sroa_idx, align 8, !noalias !23081 ; 2 uses
  %.not17.i = icmp eq i8 %.sroa.567.0.copyload, 2
  br i1 %.not17.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.thread, label %bb.t

bb.s:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.thread87 unwind label %bb.u, !noalias !23077, !inline_history !22964

bb.t:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.065.0.copyload = load ptr, ptr %i.cb, align 8, !noalias !23081, !nonnull !73, !noundef !73
  %i.cf = trunc nuw i8 %.sroa.567.0.copyload to i1
  invoke fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet13insert_member(ptr noalias noundef align 8 dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.065.0.copyload, i1 noundef zeroext %i.cf)
          to label %bb.r unwind label %bb.s, !noalias !23077, !inline_history !22964

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.thread: ; preds = %bb.r, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEECsoTR8nlGN3X_18ty_python_semantic.exit26.i unwind label %.thread90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23077, !inline_history !22964

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter8IntoIterRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEECsoTR8nlGN3X_18ty_python_semantic.exit26.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23075
  br label %bb.q

bb.u:                                             ; preds = %.thread87, %bb.v, %bb.s
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !23077, !inline_history !22964
  unreachable

bb.v:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(56) %i.j) #50
          to label %.thread87 unwind label %bb.u, !noalias !23077, !inline_history !22964

bb.w:                                             ; preds = %split
  call void @llvm.experimental.noalias.scope.decl(metadata !23082), !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23083), !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23084), !noalias !23078
  %.val.i.i.i.i = load ptr, ptr %.sroa.672.0..sroa_idx, align 8, !alias.scope !23085, !noalias !23075 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.773.0..sroa_idx, align 8, !alias.scope !23086, !noalias !23075, !noundef !73 ; 3 uses
  %i.ch = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.ch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.ci = shl i64 %.val1.i.i.i.i, 3               ; 2 uses
  %i.cj = add i64 %i.ci, 8
  %i.ck = add i64 %i.ci, 23                       ; 2 uses
  %i.cl = icmp uge i64 %i.ck, %i.cj
  call void @llvm.assume(i1 %i.cl), !noalias !23078
  %i.cm = and i64 %i.ck, -16                      ; 3 uses
  %i.cn = add i64 %.val1.i.i.i.i, 17
  %i.co = add i64 %i.cn, %i.cm                    ; 4 uses
  %i.cp = icmp uge i64 %i.co, %i.cm
  %i.cq = icmp ult i64 %i.co, 9223372036854775793
  call void @llvm.assume(i1 %i.cp), !noalias !23078
  call void @llvm.assume(i1 %i.cq), !noalias !23078
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ], !noalias !23078
  %i.cs = sub nsw i64 0, %i.cm
  %i.ct = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.cs
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !23087, !inline_history !22964
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i: ; preds = %bb.x, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i, %bb.w
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i unwind label %bb.y, !noalias !23077, !inline_history !22964

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %.thread87 unwind label %bb.z, !noalias !23077, !inline_history !22964

bb.z:                                             ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !23077, !inline_history !22964
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %.thread90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23077, !inline_history !22964

bb.aa:                                            ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23088), !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23089), !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23090), !noalias !23078
  %.val.i.i.i27.i = load ptr, ptr %.sroa.664.0..sroa_idx, align 8, !alias.scope !23091, !noalias !23075 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.val1.i.i.i28.i = load i64, ptr %i.cw, align 8, !alias.scope !23092, !noalias !23075, !noundef !73 ; 3 uses
  %i.cx = icmp eq i64 %.val1.i.i.i28.i, 0
  br i1 %i.cx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i30.i, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i29.i

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i29.i: ; preds = %bb.aa
  %i.cy = shl i64 %.val1.i.i.i28.i, 3             ; 2 uses
  %i.cz = add i64 %i.cy, 8
  %i.da = add i64 %i.cy, 23                       ; 2 uses
  %i.db = icmp uge i64 %i.da, %i.cz
  call void @llvm.assume(i1 %i.db), !noalias !23078
  %i.dc = and i64 %i.da, -16                      ; 3 uses
  %i.dd = add i64 %.val1.i.i.i28.i, 17
  %i.de = add i64 %i.dd, %i.dc                    ; 4 uses
  %i.df = icmp uge i64 %i.de, %i.dc
  %i.dg = icmp ult i64 %i.de, 9223372036854775793
  call void @llvm.assume(i1 %i.df), !noalias !23078
  call void @llvm.assume(i1 %i.dg), !noalias !23078
  %i.dh = icmp eq i64 %i.de, 0
  br i1 %i.dh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i30.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i29.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i27.i) ], !noalias !23078
  %i.di = sub nsw i64 0, %i.dc
  %i.dj = getelementptr inbounds i8, ptr %.val.i.i.i27.i, i64 %i.di
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dj, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !23093, !inline_history !22964
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i30.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i30.i: ; preds = %bb.ab, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i29.i, %bb.aa
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet10from_union.exit.thread unwind label %bb.ac, !noalias !23077, !inline_history !22964

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i30.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %common.resume unwind label %bb.ad, !noalias !23077, !inline_history !22964

bb.ad:                                            ; preds = %bb.ac
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !23077, !inline_history !22964
  unreachable

common.resume:                                    ; preds = %bb.bt, %bb.bq, %bb.bn, %.body.i.thread, %bb.ar, %.thread87, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.iw, %bb.bn ], [ %i.dk, %bb.ac ], [ %i.ja, %bb.bt ], [ %i.gg, %bb.ar ], [ %.pn20.i86, %.thread87 ], [ %eh.lpad-body.i125, %.body.i.thread ], [ %lpad.thr_comm141, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet10from_union.exit.thread: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i30.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k), !noalias !23077, !inline_history !22964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23075
  br label %bb.bf

.thread87:                                        ; preds = %bb.s, %.thread90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.l, %bb.v, %bb.y
  %.pn20.i86 = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.ce, %bb.s ], [ %lpad.loopexit.split-lp261, %.thread90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bb, %bb.l ], [ %i.bb, %bb.v ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(56) %i.k) #50
          to label %common.resume unwind label %bb.u, !noalias !23077, !inline_history !22964

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet10from_union.exit: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !23075
  call fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet13from_included(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(64) %i.q, i32 noundef %i.av, i32 noundef %i.au, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.f), !noalias !23094, !inline_history !22964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !23075
  %.pre202 = load i64, ptr %i.q, align 8, !range !107, !noalias !23072
  %i.dm = icmp eq i64 %.pre202, -1
  br i1 %i.dm, label %bb.bf, label %bb.be

bb.ae:                                            ; preds = %bb.c
  %i.dn = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !range !84, !noalias !23072, !noundef !73 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !noalias !23072, !noundef !73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !23072
  call void @llvm.experimental.noalias.scope.decl(metadata !23095)
  %i.dr = call { i32, i32 } @_RNvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB5_16IntersectionType15enum_complement(i32 noundef range(i32 1, 0) %i.do, i32 noundef %i.dq, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3), !noalias !23096, !inline_history !22998 ; 2 uses
  %i.ds = extractvalue { i32, i32 } %i.dr, 0      ; 2 uses
  %.not.i4 = icmp eq i32 %i.ds, 0
  br i1 %.not.i4, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = extractvalue { i32, i32 } %i.dr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !23097
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.ds, ptr %i.du, align 4, !noalias !23097
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.dt, ptr %i.dv, align 4, !noalias !23097
  store i32 25, ptr %i.n, align 4, !noalias !23097
  call fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet9from_type(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(64) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %5), !noalias !23078, !inline_history !22998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !23097
  br label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet17from_intersection.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dw = call noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretics_1__NtB8_16IntersectionType8positiveDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0) %i.do, i32 noundef %i.dq, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !23098, !inline_history !22998 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !23098, !nonnull !73, !noundef !73 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !23098, !noundef !73 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ea, 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !23097
  %i.ec = icmp eq i64 %i.ea, 0
  br i1 %i.ec, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet17from_intersection.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.sroa.0.0164 = phi ptr [ %i.ed, %bb.ah ], [ %i.dy, %bb.ag ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0164, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.0.0164, i64 16, i1 false), !noalias !23101
  call fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet9from_type(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(64) %i.b, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(32) %5), !noalias !23102, !inline_history !23013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23100
  %i.ee = load i64, ptr %i.b, align 8, !range !107, !noalias !23099, !noundef !73 ; 2 uses
  %.not.i22 = icmp eq i64 %i.ee, -1
  br i1 %.not.i22, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23099
  %i.ef = icmp eq ptr %i.ed, %i.eb
  br i1 %i.ef, label %_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet17from_intersection.exit.thread, label %.lr.ph

_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet17from_intersection.exit.thread: ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23097
  br label %bb.bh

bb.ai:                                            ; preds = %.lr.ph
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4197.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.475.0..sroa_idx, i64 56, i1 false), !noalias !23098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23099
  store i64 %i.ee, ptr %i.m, align 8, !noalias !23097
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.eh = icmp eq ptr %i.ed, %i.eb
  br i1 %i.eh, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters10filter_map19filter_map_try_foldRBL_NtNtNtBN_8equality5enums12EnumValueSetuINtNtNtB1G_3ops12control_flow11ControlFlowuENCNvMs0_B3C_B3A_17from_intersection0NCINvNvB1y_3all5checkB3A_NCB4X_s_0E0E0B4d_EBP_.exit.i.thread, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.ai
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.ej = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.aj

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters10filter_map19filter_map_try_foldRBL_NtNtNtBN_8equality5enums12EnumValueSetuINtNtNtB1G_3ops12control_flow11ControlFlowuENCNvMs0_B3C_B3A_17from_intersection0NCINvNvB1y_3all5checkB3A_NCB4X_s_0E0E0B4d_EBP_.exit.i.thread: ; preds = %.backedge, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !23097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums12EnumValueSetEBJ_.exit.i

bb.aj:                                            ; preds = %.lr.ph166, %.backedge
  %.sroa.0.1165 = phi ptr [ %i.ed, %.lr.ph166 ], [ %i.en, %.backedge ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.1165, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(16) %.sroa.0.1165, i64 16, i1 false), !noalias !23105
  invoke fastcc void @_RNvMs0_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enumsNtB5_12EnumValueSet9from_type(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(64) %i.e, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(32) %5)
          to label %.noexc16 unwind label %.body.i.thread131, !inline_history !23021

.noexc16:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23104
  %i.eo = load i64, ptr %i.e, align 8, !range !107, !noalias !23103, !noundef !73
  %.not.i13 = icmp eq i64 %i.eo, -1
  br i1 %.not.i13, label %.noexc.i, label %bb.ak

bb.ak:                                            ; preds = %.noexc16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !23103
  call void @llvm.experimental.noalias.scope.decl(metadata !23107), !noalias !23098
  %i.ep = load i32, ptr %i.ei, align 4, !alias.scope !23107, !noalias !23106, !noundef !73
  %i.eq = load i32, ptr %i.ej, align 4, !noalias !23108, !noundef !73
  %i.er = icmp ne i32 %i.ep, %i.eq
  %i.es = load i32, ptr %i.ek, align 8, !range !84
  %i.et = load i32, ptr %i.eg, align 8, !range !84
  %i.eu = icmp ne i32 %i.es, %i.et
  %.sroa.0.0.i.i.i = select i1 %i.er, i1 true, i1 %i.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !23109), !noalias !23098
  call void @llvm.experimental.noalias.scope.decl(metadata !23110), !noalias !23098
  %i.ev = load i64, ptr %i.c, align 8, !range !114, !alias.scope !23111, !noalias !23106, !noundef !73 ; 2 uses
  %i.ew = icmp ne i64 %i.ev, -9223372036854775806
  call void @llvm.assume(i1 %i.ew), !noalias !23098
  %i.ex = icmp sgt i64 %i.ev, -1
  br i1 %i.ex, label %bb.al, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums12EnumValueSetNCNvMs0_B1d_B1b_17from_intersections_0E0B1j_.exit.i

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !23112), !noalias !23098
  call void @llvm.experimental.noalias.scope.decl(metadata !23113), !noalias !23098
  call void @llvm.experimental.noalias.scope.decl(metadata !23114), !noalias !23098
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.el, align 8, !alias.scope !23115, !noalias !23106 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.em, align 8, !alias.scope !23116, !noalias !23106, !noundef !73 ; 3 uses
  %i.ey = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.ey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.ez = shl i64 %.val1.i.i.i.i.i.i.i.i, 3       ; 2 uses
  %i.fa = add i64 %i.ez, 8
  %i.fb = add i64 %i.ez, 23                       ; 2 uses
  %i.fc = icmp uge i64 %i.fb, %i.fa
  call void @llvm.assume(i1 %i.fc), !noalias !23098
  %i.fd = and i64 %i.fb, -16                      ; 3 uses
  %i.fe = add i64 %.val1.i.i.i.i.i.i.i.i, 17
  %i.ff = add i64 %i.fe, %i.fd                    ; 4 uses
  %i.fg = icmp uge i64 %i.ff, %i.fd
  %i.fh = icmp ult i64 %i.ff, 9223372036854775793
  call void @llvm.assume(i1 %i.fg), !noalias !23098
  call void @llvm.assume(i1 %i.fh), !noalias !23098
  %i.fi = icmp eq i64 %i.ff, 0
  br i1 %i.fi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i) ], !noalias !23098
  %i.fj = sub nsw i64 0, %i.fd
  %i.fk = getelementptr inbounds i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.fj
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !23117, !inline_history !23021
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i unwind label %bb.an, !noalias !23106, !inline_history !23021

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %.body.i.thread unwind label %bb.ao, !noalias !23106, !inline_history !23021

bb.ao:                                            ; preds = %bb.an
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !23106, !inline_history !23021
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums12EnumValueSetNCNvMs0_B1d_B1b_17from_intersections_0E0B1j_.exit.i unwind label %.body.i.thread131, !inline_history !23021

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums12EnumValueSetNCNvMs0_B1d_B1b_17from_intersections_0E0B1j_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsh7jLiOpeRCu_8ordermap3map8OrderMapRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NamebINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsoTR8nlGN3X_18ty_python_semantic.exit.i.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23103
  br i1 %.sroa.0.0.i.i.i, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters10filter_map19filter_map_try_foldRBL_NtNtNtBN_8equality5enums12EnumValueSetuINtNtNtB1G_3ops12control_flow11ControlFlowuENCNvMs0_B3C_B3A_17from_intersection0NCINvNvB1y_3all5checkB3A_NCB4X_s_0E0E0B4d_EBP_.exit.i, label %.backedge

.backedge:                                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums12EnumValueSetNCNvMs0_B1d_B1b_17from_intersections_0E0B1j_.exit.i, %.noexc.i
  %i.fn = icmp eq ptr %i.en, %i.eb
  br i1 %i.fn, label %_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters10filter_map19filter_map_try_foldRBL_NtNtNtBN_8equality5enums12EnumValueSetuINtNtNtB1G_3ops12control_flow11ControlFlowuENCNvMs0_B3C_B3A_17from_intersection0NCINvNvB1y_3all5checkB3A_NCB4X_s_0E0E0B4d_EBP_.exit.i.thread, label %bb.aj

.noexc.i:                                         ; preds = %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23103
  br label %.backedge

_RINvYINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters10filter_map19filter_map_try_foldRBL_NtNtNtBN_8equality5enums12EnumValueSetuINtNtNtB1G_3ops12control_flow11ControlFlowuENCNvMs0_B3C_B3A_17from_intersection0NCINvNvB1y_3all5checkB3A_NCB4X_s_0E0E0B4d_EBP_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8equality5enums12EnumValueSetNCNvMs0_B1d_B1b_17from_intersections_0E0B1j_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !23097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !noalias !23097
  store i64 -1, ptr %i.p, align 8, !alias.scope !23095, !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23118), !noalias !23078
  call void @llvm.experimental.noalias.scope.decl(metadata !23119), !noalias !23078
  %i.fo = load i64, ptr %i.l, align 8, !range !114, !alias.scope !23120, !noalias !23097, !noundef !73 ; 2 uses
  %i.fp = icmp ne i64 %i.fo, -9223372036854775806
end_hunk_0
