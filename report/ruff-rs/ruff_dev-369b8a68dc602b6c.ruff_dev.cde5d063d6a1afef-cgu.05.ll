Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.05?download=true
inline.NumInlined: 687
inline.NumDeleted: 245
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1x_5codes4RuleEENCINvMNtB2Q_5sliceSB15_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0EB4d_:bb.a
  %i.my = load ptr, ptr %i.kw, align 8, !noalias !736, !nonnull !4, !noundef !4
  %i.mz = load i64, ptr %i.kx, align 8, !noalias !736, !noundef !4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit42.i
  %.sroa.3.0.i.i.i45.i = phi i64 [ %i.mz, %bb.cc ], [ 0, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit42.i ] ; 2 uses
  %.sroa.0.0.i.i.i46.i = phi ptr [ %i.my, %bb.cc ], [ inttoptr (i64 1 to ptr), %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit42.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i95) ]
  %i.na = load ptr, ptr %.val16.i95, align 8, !noalias !736, !noundef !4
  %.not14.i.i.i47.i = icmp eq ptr %i.na, null
  br i1 %.not14.i.i.i47.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit52.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.nb = getelementptr inbounds nuw i8, ptr %.val16.i95, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !noalias !736, !nonnull !4, !noundef !4
  %i.nd = getelementptr inbounds nuw i8, ptr %.val16.i95, i64 24
  %i.ne = load i64, ptr %i.nd, align 8, !noalias !736, !noundef !4
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit52.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit52.i: ; preds = %bb.ce, %bb.cd
  %.sroa.34.0.i.i.i48.i = phi i64 [ %i.ne, %bb.ce ], [ 0, %bb.cd ] ; 2 uses
  %.sroa.03.0.i.i.i49.i = phi ptr [ %i.nc, %bb.ce ], [ inttoptr (i64 1 to ptr), %bb.cd ]
  %spec.store.select.i.i.i50.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i45.i, i64 %.sroa.34.0.i.i.i48.i)
  %i.nf = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i46.i, ptr nonnull %.sroa.03.0.i.i.i49.i, i64 %spec.store.select.i.i.i50.i), !noalias !736 ; 2 uses
  %i.ng = sext i32 %i.nf to i64
  %i.nh = icmp eq i32 %i.nf, 0
  %i.ni = sub i64 %.sroa.3.0.i.i.i45.i, %.sroa.34.0.i.i.i48.i
  %spec.select.i.i.i51.i = select i1 %i.nh, i64 %i.ni, i64 %i.ng
  %i.nj = icmp sgt i64 %spec.select.i.i.i51.i, -1 ; 2 uses
  %i.nk = getelementptr inbounds i8, ptr %.sroa.43.129.i80, i64 -64 ; 3 uses
  %.sroa.01.0.i53.i96 = select i1 %i.nj, ptr %2, ptr %i.nk
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i53.i96, i64 %i.mw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, ptr noundef nonnull align 8 dereferenceable(16) %i.mx, i64 16, i1 false), !alias.scope !736, !noalias !746
  %i.nm = zext i1 %i.nj to i64
  %i.nn = add i64 %i.mw, %i.nm                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i78, i64 64 ; 3 uses
  %i.np = icmp ult ptr %i.no, %i.ku
  br i1 %i.np, label %bb.bs, label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit52.i, %bb.br
  %.sroa.43.1.lcssa.i58 = phi ptr [ %.sroa.43.0.i53, %bb.br ], [ %i.nk, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit52.i ] ; 2 uses
  %.sroa.27.1.lcssa.i59 = phi i64 [ %.sroa.27.0.i54, %bb.br ], [ %i.nn, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit52.i ] ; 2 uses
  %.sroa.9.1.lcssa.i60 = phi ptr [ %.sroa.9.0.i55, %bb.br ], [ %i.no, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit52.i ] ; 3 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph139, i64 %.sroa.0.0.i56 ; 2 uses
  %i.nr = icmp ult ptr %.sroa.9.1.lcssa.i60, %i.nq
  br i1 %i.nr, label %.lr.ph38.i69, label %._crit_edge39.i61

._crit_edge39.i61:                                ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i, %._crit_edge.i57
  %.sroa.43.2.lcssa.i62 = phi ptr [ %.sroa.43.1.lcssa.i58, %._crit_edge.i57 ], [ %i.oi, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i ]
  %.sroa.27.2.lcssa.i63 = phi i64 [ %.sroa.27.1.lcssa.i59, %._crit_edge.i57 ], [ %i.ol, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i ] ; 10 uses
  %.sroa.9.2.lcssa.i64 = phi ptr [ %.sroa.9.1.lcssa.i60, %._crit_edge.i57 ], [ %i.om, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i ] ; 2 uses
  %i.ns = icmp eq i64 %.sroa.0.0.i56, %.sroa.16.0132318
  br i1 %i.ns, label %bb.cj, label %bb.ci

.lr.ph38.i69:                                     ; preds = %._crit_edge.i57, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i
  %.sroa.9.236.i70 = phi ptr [ %i.om, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i ], [ %.sroa.9.1.lcssa.i60, %._crit_edge.i57 ] ; 3 uses
  %.sroa.27.235.i71 = phi i64 [ %i.ol, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i ], [ %.sroa.27.1.lcssa.i59, %._crit_edge.i57 ] ; 2 uses
  %.sroa.43.234.i72 = phi ptr [ %i.oi, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i ], [ %.sroa.43.1.lcssa.i58, %._crit_edge.i57 ]
  %.val.i73 = load ptr, ptr %.sroa.9.236.i70, align 8, !alias.scope !731, !noalias !734 ; 4 uses
  %.val15.i74 = load ptr, ptr %i.fo, align 8, !alias.scope !731, !noalias !734, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.nt = load ptr, ptr %.val15.i74, align 8, !noalias !736, !noundef !4
  %.not.i.i.i54.i = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i54.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph38.i69
  %i.nu = getelementptr inbounds nuw i8, ptr %.val15.i74, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !noalias !736, !nonnull !4, !noundef !4
  %i.nw = getelementptr inbounds nuw i8, ptr %.val15.i74, i64 24
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !736, !noundef !4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.lr.ph38.i69
  %.sroa.3.0.i.i.i55.i = phi i64 [ %i.nx, %bb.cf ], [ 0, %.lr.ph38.i69 ] ; 2 uses
  %.sroa.0.0.i.i.i56.i = phi ptr [ %i.nv, %bb.cf ], [ inttoptr (i64 1 to ptr), %.lr.ph38.i69 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i73) ]
  %i.ny = load ptr, ptr %.val.i73, align 8, !noalias !736, !noundef !4
  %.not14.i.i.i57.i = icmp eq ptr %i.ny, null
  br i1 %.not14.i.i.i57.i, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nz = getelementptr inbounds nuw i8, ptr %.val.i73, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !noalias !736, !nonnull !4, !noundef !4
  %i.ob = getelementptr inbounds nuw i8, ptr %.val.i73, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !noalias !736, !noundef !4
  br label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTRINtNtBc_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1z_5codes4RuleEENCINvMNtB2S_5sliceSB17_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0B4f_.exit62.i: ; preds = %bb.ch, %bb.cg
  %.sroa.34.0.i.i.i58.i = phi i64 [ %i.oc, %bb.ch ], [ 0, %bb.cg ] ; 2 uses
  %.sroa.03.0.i.i.i59.i = phi ptr [ %i.oa, %bb.ch ], [ inttoptr (i64 1 to ptr), %bb.cg ]
  %spec.store.select.i.i.i60.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i55.i, i64 %.sroa.34.0.i.i.i58.i)
  %i.od = call i32 @memcmp(ptr nonnull %.sroa.0.0.i.i.i56.i, ptr nonnull %.sroa.03.0.i.i.i59.i, i64 %spec.store.select.i.i.i60.i), !noalias !736 ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %i.of = icmp eq i32 %i.od, 0
  %i.og = sub i64 %.sroa.3.0.i.i.i55.i, %.sroa.34.0.i.i.i58.i
  %spec.select.i.i.i61.i = select i1 %i.of, i64 %i.og, i64 %i.oe
  %i.oh = icmp sgt i64 %spec.select.i.i.i61.i, -1 ; 2 uses
  %i.oi = getelementptr inbounds i8, ptr %.sroa.43.234.i72, i64 -16 ; 3 uses
  %.sroa.01.0.i63.i75 = select i1 %i.oh, ptr %2, ptr %i.oi
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i63.i75, i64 %.sroa.27.235.i71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i70, i64 16, i1 false), !alias.scope !736, !noalias !749
  %i.ok = zext i1 %i.oh to i64
  %i.ol = add i64 %.sroa.27.235.i71, %i.ok        ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i70, i64 16 ; 3 uses
  %i.on = icmp ult ptr %i.om, %i.nq
  br i1 %i.on, label %.lr.ph38.i69, label %._crit_edge39.i61

bb.ci:                                            ; preds = %._crit_edge39.i61
  %i.oo = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i62, i64 -16
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.op, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i64, i64 16, i1 false), !alias.scope !736, !noalias !752
  %i.oq = add i64 %.sroa.27.2.lcssa.i63, 1
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i64, i64 16
  br label %bb.br

bb.cj:                                            ; preds = %._crit_edge39.i61
  %i.os = shl i64 %.sroa.27.2.lcssa.i63, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph139, ptr nonnull align 8 %2, i64 %i.os, i1 false), !alias.scope !736
  %i.ot = sub i64 %.sroa.16.0132318, %.sroa.27.2.lcssa.i63 ; 6 uses
  %.not47.i65 = icmp eq i64 %.sroa.16.0132318, %.sroa.27.2.lcssa.i63
  br i1 %.not47.i65, label %.outer._crit_edge.thread, label %.lr.ph45.i66

.lr.ph45.i66:                                     ; preds = %bb.cj
  %i.ou = getelementptr [16 x i8], ptr %.sroa.0.0.ph139, i64 %.sroa.27.2.lcssa.i63 ; 3 uses
  %.neg422 = add i64 %.sroa.27.2.lcssa.i63, 1
  %xtraiter417 = and i64 %i.ot, 1
  %i.ov = icmp eq i64 %.sroa.16.0132318, %.neg422
  br i1 %i.ov, label %.epil.preheader410, label %.lr.ph45.i66.new

.lr.ph45.i66.new:                                 ; preds = %.lr.ph45.i66
  %unroll_iter420 = and i64 %i.ot, -2
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph45.i66.new
  %.sroa.07.043.i67 = phi i64 [ 0, %.lr.ph45.i66.new ], [ %i.oz, %bb.ck ] ; 5 uses
  %niter421 = phi i64 [ 0, %.lr.ph45.i66.new ], [ %niter421.next.1, %bb.ck ]
  %i.ow = xor i64 %.sroa.07.043.i67, -1
  %i.ox = getelementptr [16 x i8], ptr %i.ks, i64 %i.ow
  %i.oy = getelementptr [16 x i8], ptr %i.ou, i64 %.sroa.07.043.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, ptr noundef nonnull align 8 dereferenceable(16) %i.ox, i64 16, i1 false), !alias.scope !736
  %i.oz = add nuw i64 %.sroa.07.043.i67, 2        ; 2 uses
  %i.pa = xor i64 %.sroa.07.043.i67, -2
  %i.pb = getelementptr [16 x i8], ptr %i.ks, i64 %i.pa
  %i.pc = getelementptr [16 x i8], ptr %i.ou, i64 %.sroa.07.043.i67
  %i.pd = getelementptr i8, ptr %i.pc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i64 16, i1 false), !alias.scope !736
  %niter421.next.1 = add i64 %niter421, 2         ; 2 uses
  %niter421.ncmp.1 = icmp eq i64 %niter421.next.1, %unroll_iter420
  br i1 %niter421.ncmp.1, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit.unr-lcssa, label %bb.ck

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit.unr-lcssa: ; preds = %bb.ck
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  br i1 %lcmp.mod418.not, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit, label %.epil.preheader410

.epil.preheader410:                               ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit.unr-lcssa, %.lr.ph45.i66
  %.sroa.07.043.i67.epil.init = phi i64 [ 0, %.lr.ph45.i66 ], [ %i.oz, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod419 = trunc i64 %i.ot to i1
  call void @llvm.assume(i1 %lcmp.mod419)
  %i.pe = xor i64 %.sroa.07.043.i67.epil.init, -1
  %i.pf = getelementptr [16 x i8], ptr %i.ks, i64 %i.pe
  %i.pg = getelementptr [16 x i8], ptr %i.ou, i64 %.sroa.07.043.i67.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, ptr noundef nonnull align 8 dereferenceable(16) %i.pf, i64 16, i1 false), !alias.scope !736
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit.unr-lcssa, %.epil.preheader410
  %i.ph = icmp ugt i64 %.sroa.27.2.lcssa.i63, %.sroa.16.0132318
  br i1 %i.ph, label %bb.cl, label %.outer, !prof !430

.outer._crit_edge.thread:                         ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1U_5codes4RuleEENCINvMNtB3d_5sliceSB1s_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0EB4A_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph139, i64 %.sroa.27.2.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.pj = icmp ult i64 %i.ot, 33
  br i1 %i.pj, label %.outer._crit_edge, label %.lr.ph

bb.cl:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTRINtNtBa_6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixERINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleEENCINvB2_9quicksortB1d_NCINvMNtB2Y_5sliceSB1d_7sort_byNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates0_0E0E0EB4H_.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i63, i64 noundef %.sroa.16.0132318, i64 noundef %.sroa.16.0132318, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #28
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB15_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 17, 64051194700380388) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3b_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3b_.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3b_.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3b_.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 %.val17)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val16, i64 %spec.store.select.i.i19) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val15, %.val17
  %spec.select.i.i20 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i20, 0
  br i1 %i.ai, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3b_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef 18)
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3b_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3b_.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB15_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 17, 64051194700380388) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3b_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3b_.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3b_.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3b_.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 %.val17)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val16, i64 %spec.store.select.i.i19) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val15, %.val17
  %spec.select.i.i20 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i20, 0
  br i1 %i.ai, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3b_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef 18)
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3b_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets_0E0EB3b_.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB15_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB37_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 33, 230584300921369396) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB38_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB38_.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB38_.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB38_.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 %.val17)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val16, i64 %spec.store.select.i.i19) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val15, %.val17
  %spec.select.i.i20 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i20, 0
  br i1 %i.ai, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB38_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef 5)
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB38_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets0_0E0EB38_.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB15_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB37_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 33, 230584300921369396) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB38_.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB38_.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB38_.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB38_.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 %.val17)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val16, i64 %spec.store.select.i.i19) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val15, %.val17
  %spec.select.i.i20 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i20, 0
  br i1 %i.ai, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB38_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef 5)
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB38_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort9sift_downTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata9OptionSetENCINvMB8_SB16_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev19generate_ty_options12generate_sets0_0E0EB38_.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB17_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3c_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(144) %2, i32 noundef range(i32 0, 127) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.023.i.i46 = alloca [24 x i8], align 8    ; 4 uses
  %.sroa.525.i.i47 = alloca [112 x i8], align 8   ; 4 uses
  %.sroa.023.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.525.i.i = alloca [112 x i8], align 8     ; 4 uses
  %.sroa.6.i.i = alloca [120 x i8], align 8       ; 4 uses
  %i.a = icmp samesign ult i64 %1, 17
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph13

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.z, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph13

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 6 uses
  %i.d = icmp samesign ugt i64 %.sroa.15.0.lcssa, 1
  br i1 %i.d, label %.lr.ph.preheader.i, label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3R_.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.15.0.lcssa
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 144
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB18_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3d_.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.y, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB18_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3d_.exit.i ], [ %i.f, %.lr.ph.preheader.i ] ; 11 uses
  %i.g = getelementptr i8, ptr %.sroa.0.05.i, i64 8
  %.val11.i.i = load ptr, ptr %i.g, align 8, !alias.scope !755, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr i8, ptr %.sroa.0.05.i, i64 16
  %.val12.i.i = load i64, ptr %i.h, align 8, !alias.scope !755, !noundef !4 ; 5 uses
  %i.i = getelementptr i8, ptr %.sroa.0.05.i, i64 -136
  %.val13.i.i = load ptr, ptr %i.i, align 8, !alias.scope !755, !nonnull !4, !noundef !4
  %i.j = getelementptr i8, ptr %.sroa.0.05.i, i64 -128
  %.val14.i.i = load i64, ptr %i.j, align 8, !alias.scope !755, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.k = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val13.i.i, i64 %spec.store.select.i.i.i.i), !noalias !755 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp eq i32 %i.k, 0
  %i.n = sub i64 %.val12.i.i, %.val14.i.i
  %spec.select.i.i.i.i = select i1 %i.m, i64 %i.n, i64 %i.l
  %i.o = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.o, label %bb.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB18_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3d_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.012.0.copyload.i.i = load i64, ptr %.sroa.0.05.i, align 8, !alias.scope !755
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.615.0..sroa_idx.i.i, i64 120, i1 false)
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -144 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0.05.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0.0.i.i15, i64 144, i1 false), !alias.scope !755
  %i.p = icmp eq ptr %.sroa.0.0.i.i15, %.sroa.0.0.lcssa
  br i1 %i.p, label %._crit_edge20, label %.lr.ph19

bb.c:                                             ; preds = %.lr.ph19
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i17, i64 -144 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0.0.i.i17, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0.0.i.i, i64 144, i1 false), !alias.scope !755
  %i.q = icmp eq ptr %.sroa.0.0.i.i, %.sroa.0.0.lcssa
  br i1 %i.q, label %._crit_edge20, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i17 = phi ptr [ %.sroa.0.0.i.i, %bb.c ], [ %.sroa.0.0.i.i15, %bb.b ] ; 5 uses
  %.sroa.5.0.i.i16 = phi ptr [ %.sroa.0.0.i.i17, %bb.c ], [ %.sroa.0.05.i, %bb.b ] ; 3 uses
  %i.r = getelementptr i8, ptr %.sroa.5.0.i.i16, i64 -280
  %.val9.i.i = load ptr, ptr %i.r, align 8, !alias.scope !755, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %.sroa.5.0.i.i16, i64 -272
  %.val10.i.i = load i64, ptr %i.s, align 8, !alias.scope !755, !noundef !4 ; 2 uses
  %spec.store.select.i.i15.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val10.i.i)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val9.i.i, i64 %spec.store.select.i.i15.i.i), !noalias !755 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val12.i.i, %.val10.i.i
  %spec.select.i.i16.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %i.x = icmp slt i64 %spec.select.i.i16.i.i, 0
  br i1 %i.x, label %bb.c, label %._crit_edge20

._crit_edge20:                                    ; preds = %bb.c, %.lr.ph19, %bb.b
  %.sroa.5.0.i.i.lcssa = phi ptr [ %.sroa.0.05.i, %bb.b ], [ %.sroa.0.0.i.i17, %bb.c ], [ %.sroa.5.0.i.i16, %.lr.ph19 ] ; 3 uses
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.0.0.lcssa, %bb.c ], [ %.sroa.0.0.i.i17, %.lr.ph19 ]
  store i64 %.sroa.012.0.copyload.i.i, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !755, !noalias !758
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -136
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !755, !noalias !758
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -128
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !755, !noalias !758
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.i.i, i64 120, i1 false), !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB18_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3d_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB18_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3d_.exit.i: ; preds = %._crit_edge20, %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 144 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.e
  br i1 %.not.i, label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3R_.exit, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.091.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.090.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENCINvMB8_SB15_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3a_(ptr noalias noundef nonnull align 8 %.sroa.0.091.lcssa, i64 noundef %.sroa.15.090.lcssa)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortTNtNtCscdodAO9FK5_5alloc6string6StringNtCshSgCEy9XT4y_21ruff_options_metadata11OptionFieldENtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNvNtCshFZivb7RUAJ_8ruff_dev16generate_options12generate_sets_0E0EB3R_.exit

.lr.ph13:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.08812 = phi i32 [ %i.z, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.08911 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.09010 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.0919 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 23 uses
  %i.z = add nsw i32 %.sroa.026.08812, -1         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.aa = lshr i64 %.sroa.15.09010, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.aa, 576
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0919, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.aa, 1008
end_hunk_0
