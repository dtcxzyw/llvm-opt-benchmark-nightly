Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !12080 ; 2 uses
  br i1 %i.dez, label %bb.uh, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i401, !dbg !12079, !prof !168

bb.uh:                                            ; preds = %.noexc143.i400
  %i.dfd = load i64, ptr %i.dfc, align 8, !dbg !12081, !noalias !12078
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dfb, i64 %i.dfd) #20
          to label %.noexc144.i877 unwind label %.thread.i368, !dbg !12082, !noalias !11762

.noexc144.i877:                                   ; preds = %bb.uh
  unreachable, !dbg !12082

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i401: ; preds = %.noexc143.i400
  %i.dfe = load ptr, ptr %i.dfc, align 8, !dbg !12083, !noalias !12078, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !12084, !noalias !12078
  store i64 %i.dfb, ptr %i.ar, align 8, !dbg !12085, !alias.scope !12069, !noalias !12068
  %i.dff = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !12085
  store ptr %i.dfe, ptr %i.dff, align 8, !dbg !12085, !alias.scope !12069, !noalias !12068
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !12085
  store i64 %.sroa.04.1, ptr %i.dfg, align 8, !dbg !12085, !alias.scope !12069, !noalias !12068
  %i.dfh = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ar)
          to label %bb.ui unwind label %.thread.i368, !dbg !12086, !noalias !11762 ; 2 uses

bb.ui:                                            ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !12089, !noalias !12068
  %i.dfi = extractvalue { ptr, i64 } %i.dfh, 0, !dbg !12090 ; 14 uses
  %i.dfj = extractvalue { ptr, i64 } %i.dfh, 1, !dbg !12090 ; 17 uses
  %i.dfk = add nuw nsw i64 %i.dae, 8, !dbg !12091
  %i.dfl = lshr i64 %i.dfk, 3, !dbg !12095        ; 2 uses
  %i.dfm = mul nuw nsw i64 %spec.store.select.i365, 544, !dbg !12096 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !12100, !noalias !12068
  call void @llvm.experimental.noalias.scope.decl(metadata !12104), !dbg !12107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !12109, !noalias !12113
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, i64 noundef %i.dfm, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc146.i406 unwind label %bb.uk, !dbg !12109, !noalias !11762

.noexc146.i406:                                   ; preds = %bb.ui
  %i.dfn = load i64, ptr %i.ao, align 8, !dbg !12109, !range !5797, !noalias !12113, !noundef !14
  %i.dfo = trunc nuw i64 %i.dfn to i1, !dbg !12114
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !12115
  %i.dfq = load i64, ptr %i.dfp, align 8, !dbg !12115, !range !5800, !noalias !12113, !noundef !14 ; 2 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !12115 ; 2 uses
  br i1 %i.dfo, label %bb.uj, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i407, !dbg !12114, !prof !168

bb.uj:                                            ; preds = %.noexc146.i406
  %i.dfs = load i64, ptr %i.dfr, align 8, !dbg !12116, !noalias !12113
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dfq, i64 %i.dfs) #20
          to label %.noexc147.i876 unwind label %bb.uk, !dbg !12117, !noalias !11762

.noexc147.i876:                                   ; preds = %bb.uj
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i407: ; preds = %.noexc146.i406
  %i.dft = load ptr, ptr %i.dfr, align 8, !dbg !12118, !noalias !12113, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !12119, !noalias !12113
  store i64 %i.dfq, ptr %i.ap, align 8, !dbg !12120, !alias.scope !12104, !noalias !12068
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !12120
  store ptr %i.dft, ptr %i.dfu, align 8, !dbg !12120, !alias.scope !12104, !noalias !12068
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !12120
  store i64 %i.dfm, ptr %i.dfv, align 8, !dbg !12120, !alias.scope !12104, !noalias !12068
  %i.dfw = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecfE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.ul unwind label %bb.uk, !dbg !12121, !noalias !11762 ; 2 uses

bb.uk:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i407, %bb.uj, %bb.ui
  %i.dfx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i402

bb.ul:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemfNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !12124, !noalias !12068
  %i.dfy = extractvalue { ptr, i64 } %i.dfw, 0, !dbg !12125 ; 10 uses
  %i.dfz = extractvalue { ptr, i64 } %i.dfw, 1, !dbg !12125 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !12126, !noalias !12068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !12131, !noalias !12068
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.am)
          to label %.noexc149.i411.a unwind label %.thread39.i408, !dbg !12132, !noalias !11762

.noexc149.i411.a:                                 ; preds = %bb.ul
  invoke void @_RINvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8NtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.am, i64 noundef %i.dfl)
          to label %.noexc150.i412 unwind label %.thread39.i408, !dbg !12134, !noalias !11762

.noexc150.i412:                                   ; preds = %.noexc149.i411.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !12126, !noalias !12068
  %i.dga = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.um unwind label %.thread39.i408, !dbg !12136, !noalias !11762 ; 2 uses

.thread39.i408:                                   ; preds = %.noexc150.i412, %.noexc149.i411.a, %bb.ul
  %i.dgb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8EECsfISxE4fmY1Y_14polars_parquet.exit.i409, !dbg !12139

bb.um:                                            ; preds = %.noexc150.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !12140, !noalias !12068
  %i.dgc = extractvalue { ptr, i64 } %i.dga, 0, !dbg !12141 ; 22 uses
  %i.dgd = extractvalue { ptr, i64 } %i.dga, 1, !dbg !12141 ; 21 uses
  %i.dge = mul i64 %i.dfl, %.sroa.04.1, !dbg !12142 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !12145, !noalias !12068
  call void @llvm.experimental.noalias.scope.decl(metadata !12148), !dbg !12151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !12153, !noalias !12157
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef %i.dge, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc153.i416 unwind label %.thread45.i413, !dbg !12153, !noalias !11762

.noexc153.i416:                                   ; preds = %bb.um
  %i.dgf = load i64, ptr %i.ak, align 8, !dbg !12153, !range !5797, !noalias !12157, !noundef !14
  %i.dgg = trunc nuw i64 %i.dgf to i1, !dbg !12158
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !12159
  %i.dgi = load i64, ptr %i.dgh, align 8, !dbg !12159, !range !5800, !noalias !12157, !noundef !14 ; 2 uses
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !12159 ; 2 uses
  br i1 %i.dgg, label %bb.un, label %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i417, !dbg !12158, !prof !168

bb.un:                                            ; preds = %.noexc153.i416
  %i.dgk = load i64, ptr %i.dgj, align 8, !dbg !12160, !noalias !12157
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dgi, i64 %i.dgk) #20
          to label %.noexc154.i875 unwind label %.thread45.i413, !dbg !12161, !noalias !11762

.noexc154.i875:                                   ; preds = %bb.un
  unreachable, !dbg !12161

_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i417: ; preds = %.noexc153.i416
  %i.dgl = load ptr, ptr %i.dgj, align 8, !dbg !12162, !noalias !12157, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !12163, !noalias !12157
  store i64 %i.dgi, ptr %i.al, align 8, !dbg !12164, !alias.scope !12148, !noalias !12068
  %i.dgm = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !12164
  store ptr %i.dgl, ptr %i.dgm, align 8, !dbg !12164, !alias.scope !12148, !noalias !12068
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !12164
  store i64 %i.dge, ptr %i.dgn, align 8, !dbg !12164, !alias.scope !12148, !noalias !12068
  %i.dgo = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.al)
          to label %bb.uo unwind label %.thread45.i413, !dbg !12165, !noalias !11762 ; 2 uses

.thread45.i413:                                   ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i417, %bb.un, %bb.um
  %i.dgp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxhEECsfISxE4fmY1Y_14polars_parquet.exit.i414, !dbg !12168

bb.uo:                                            ; preds = %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i152.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !12169, !noalias !12068
  %i.dgq = extractvalue { ptr, i64 } %i.dgo, 0, !dbg !12170 ; 8 uses
  %i.dgr = extractvalue { ptr, i64 } %i.dgo, 1, !dbg !12170 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !12171, !noalias !12068
  call void @llvm.experimental.noalias.scope.decl(metadata !12176), !dbg !12179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !12181, !noalias !12185
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, i64 noundef %spec.store.select.i365, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc157.i421 unwind label %.thread53.i418, !dbg !12181, !noalias !11762

.noexc157.i421:                                   ; preds = %bb.uo
  %i.dgs = load i64, ptr %i.ai, align 8, !dbg !12181, !range !5797, !noalias !12185, !noundef !14
  %i.dgt = trunc nuw i64 %i.dgs to i1, !dbg !12186
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !12187
  %i.dgv = load i64, ptr %i.dgu, align 8, !dbg !12187, !range !5800, !noalias !12185, !noundef !14 ; 2 uses
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !12187 ; 2 uses
  br i1 %i.dgt, label %bb.up, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i422, !dbg !12186, !prof !168

bb.up:                                            ; preds = %.noexc157.i421
  %i.dgx = load i64, ptr %i.dgw, align 8, !dbg !12188, !noalias !12185
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dgv, i64 %i.dgx) #20
          to label %.noexc158.i874 unwind label %.thread53.i418, !dbg !12189, !noalias !11762

.noexc158.i874:                                   ; preds = %bb.up
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i422: ; preds = %.noexc157.i421
  %i.dgy = load ptr, ptr %i.dgw, align 8, !dbg !12190, !noalias !12185, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !12191, !noalias !12185
  store i64 %i.dgv, ptr %i.aj, align 8, !dbg !12192, !alias.scope !12176, !noalias !12068
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !12192
  store ptr %i.dgy, ptr %i.dgz, align 8, !dbg !12192, !alias.scope !12176, !noalias !12068
  %i.dha = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !12192
  store i64 %spec.store.select.i365, ptr %i.dha, align 8, !dbg !12192, !alias.scope !12176, !noalias !12068
  %i.dhb = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
          to label %.split.i423 unwind label %.thread53.i418, !dbg !12193, !noalias !11762 ; 2 uses

.thread53.i418:                                   ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i422, %bb.up, %bb.uo
  %i.dhc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit.i419, !dbg !12196

.split.i423:                                      ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !12197, !noalias !12068
  %i.dhd = extractvalue { ptr, i64 } %i.dhb, 0, !dbg !12198 ; 5 uses
  %i.dhe = extractvalue { ptr, i64 } %i.dhb, 1, !dbg !12198 ; 5 uses
  %i.dhf = icmp slt i32 %.72.val, 12, !dbg !12199
  %..i424 = select i1 %i.dhf, i64 3, i64 10, !dbg !12201
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dfy) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dgc) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dgq) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dfi) ]
  %.idx393.i.i425 = shl nuw nsw i64 %i.dgd, 5     ; 2 uses
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dgc, i64 %.idx393.i.i425
  %i.dhh = icmp eq i64 %i.dgd, 0                  ; 2 uses
  %.not112.i.i426 = icmp ugt i64 %.sroa.04.1, %i.daa
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.czz, i64 %i.dcz
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.dho = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.dhq = add i64 %.sroa.04.1, -1                ; 6 uses
  %i.dhr = icmp ult i64 %i.dhq, %i.dfj
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dfi, i64 %i.dhq
  %umin4693 = call i64 @llvm.umin.i64(i64 %i.dhq, i64 %i.dfj), !dbg !12202
  %i.dht = add i64 %umin4693, 1, !dbg !12202      ; 3 uses
  %min.iters.check4695 = icmp ult i64 %i.dht, 33
  %i.dhu = and i64 %i.dht, 31                     ; 2 uses
  %i.dhv = icmp eq i64 %i.dhu, 0
  %i.dhw = select i1 %i.dhv, i64 32, i64 %i.dhu
  %n.vec4697 = sub i64 %i.dht, %i.dhw             ; 2 uses
  br label %bb.aak, !dbg !12202

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramAddItemNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %exitcond.not.i559 = icmp eq i64 %i.ebm, %..i424, !dbg !12210
  br i1 %exitcond.not.i559, label %bb.uq, label %bb.aak, !dbg !12202

bb.uq:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i
  %i.dhx = icmp eq i64 %i.dfz, 0, !dbg !12213
  br i1 %i.dhx, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i560, label %bb.ur, !dbg !12213

bb.ur:                                            ; preds = %bb.uq
  %i.dhy = shl nuw nsw i64 %i.dfz, 2, !dbg !12218
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.dfy, i64 noundef range(i64 1, 0) %i.dhy, i64 noundef 4) #19, !dbg !12221, !noalias !11762
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i560, !dbg !12226

.body.thread.thread.i564:                         ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i.i567, %bb.uv, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i563
  %lpad.thr_comm.split-lp.i565 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i402, !dbg !12139

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i560: ; preds = %bb.ur, %bb.uq
  br i1 %i.dhh, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i561, label %bb.us, !dbg !12227

bb.us:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i560
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.dgc, i64 noundef range(i64 1, 0) %.idx393.i.i425, i64 noundef 4) #19, !dbg !12232, !noalias !11762
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i561, !dbg !12237

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i561: ; preds = %bb.us, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i560
  %i.dhz = icmp eq i64 %i.dgr, 0, !dbg !12238
  br i1 %i.dhz, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i562, label %bb.ut, !dbg !12238

bb.ut:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i561
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dgq, i64 noundef range(i64 1, 0) %i.dgr, i64 noundef 1) #19, !dbg !12243, !noalias !11762
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i562, !dbg !12248

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i562: ; preds = %bb.ut, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc6compat8CompatF8E9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i561
  %i.dia = icmp eq i64 %i.dhe, 0, !dbg !12249
  br i1 %i.dia, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i563, label %bb.uu, !dbg !12249

bb.uu:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i562
  %i.dib = shl nuw nsw i64 %i.dhe, 1, !dbg !12254
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.dhd, i64 noundef range(i64 1, 0) %i.dib, i64 noundef 2) #19, !dbg !12257, !noalias !11762
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i563, !dbg !12262

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i563: ; preds = %bb.uu, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i562
  %i.dic = mul nuw nsw i64 %i.daq, 2192, !dbg !12263
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.dap, i64 noundef range(i64 1, 0) %i.dic, i64 noundef 8) #19, !dbg !12271, !noalias !11762
  call void @llvm.experimental.noalias.scope.decl(metadata !12276), !dbg !12279
  call void @llvm.experimental.noalias.scope.decl(metadata !12280), !dbg !12279
  call void @llvm.experimental.noalias.scope.decl(metadata !12282), !dbg !12279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !12284, !noalias !12290
  call void @llvm.experimental.noalias.scope.decl(metadata !12293), !dbg !12296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !12298, !noalias !12302
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, i64 noundef %.sroa.0.0.i.i548, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc165.i566.a unwind label %.body.thread.thread.i564, !dbg !12298, !noalias !11762

.noexc165.i566.a:                                 ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i563
  %i.did = load i64, ptr %i.z, align 8, !dbg !12298, !range !5797, !noalias !12302, !noundef !14
  %i.die = trunc nuw i64 %i.did to i1, !dbg !12303
  %i.dif = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !12304
  %i.dig = load i64, ptr %i.dif, align 8, !dbg !12304, !range !5800, !noalias !12302, !noundef !14 ; 2 uses
  %i.dih = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !12304 ; 2 uses
  br i1 %i.die, label %bb.uv, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i.i567, !dbg !12303, !prof !168

bb.uv:                                            ; preds = %.noexc165.i566.a
  %i.dii = load i64, ptr %i.dih, align 8, !dbg !12305, !noalias !12302
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dig, i64 %i.dii) #20
          to label %.noexc166.i861 unwind label %.body.thread.thread.i564, !dbg !12306, !noalias !11762

.noexc166.i861:                                   ; preds = %bb.uv
  unreachable

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i.i567: ; preds = %.noexc165.i566.a
  %i.dij = load ptr, ptr %i.dih, align 8, !dbg !12307, !noalias !12302, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !12308, !noalias !12302
  store i64 %i.dig, ptr %i.aa, align 8, !dbg !12309, !alias.scope !12293, !noalias !12290
  %i.dik = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !12309
  store ptr %i.dij, ptr %i.dik, align 8, !dbg !12309, !alias.scope !12293, !noalias !12290
  %i.dil = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !12309
  store i64 %.sroa.0.0.i.i548, ptr %i.dil, align 8, !dbg !12309, !alias.scope !12293, !noalias !12290
  %i.dim = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
          to label %.noexc167.i568 unwind label %.body.thread.thread.i564, !dbg !12310, !noalias !11762 ; 2 uses

.noexc167.i568:                                   ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit.i.i567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !12313, !noalias !12290
  %i.din = extractvalue { ptr, i64 } %i.dim, 0, !dbg !12314 ; 13 uses
  %i.dio = extractvalue { ptr, i64 } %i.dim, 1, !dbg !12314 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !12315, !noalias !12290
  call void @llvm.experimental.noalias.scope.decl(metadata !12319), !dbg !12322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !12324, !noalias !12328
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef %.sroa.0.0.i.i548, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc414.i.i572 unwind label %.thread.i.i569, !dbg !12324, !noalias !12329

.noexc414.i.i572:                                 ; preds = %.noexc167.i568
  %i.dip = load i64, ptr %i.x, align 8, !dbg !12324, !range !5797, !noalias !12328, !noundef !14
  %i.diq = trunc nuw i64 %i.dip to i1, !dbg !12330
  %i.dir = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !12331
  %i.dis = load i64, ptr %i.dir, align 8, !dbg !12331, !range !5800, !noalias !12328, !noundef !14 ; 2 uses
  %i.dit = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !12331 ; 2 uses
  br i1 %i.diq, label %bb.uw, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i573, !dbg !12330, !prof !168

bb.uw:                                            ; preds = %.noexc414.i.i572
  %i.diu = load i64, ptr %i.dit, align 8, !dbg !12332, !noalias !12328
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dis, i64 %i.diu) #20
          to label %.noexc415.i.i860 unwind label %.thread.i.i569, !dbg !12333, !noalias !12329

.noexc415.i.i860:                                 ; preds = %bb.uw
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i573: ; preds = %.noexc414.i.i572
  %i.div = load ptr, ptr %i.dit, align 8, !dbg !12334, !noalias !12328, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12335, !noalias !12328
  store i64 %i.dis, ptr %i.y, align 8, !dbg !12336, !alias.scope !12319, !noalias !12290
  %i.diw = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !12336
  store ptr %i.div, ptr %i.diw, align 8, !dbg !12336, !alias.scope !12319, !noalias !12290
  %i.dix = getelementptr inbounds nuw i8, ptr %i.y, i64 16, !dbg !12336
  store i64 %.sroa.0.0.i.i548, ptr %i.dix, align 8, !dbg !12336, !alias.scope !12319, !noalias !12290
  %i.diy = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.y)
          to label %bb.ux unwind label %.thread.i.i569, !dbg !12337, !noalias !12329 ; 2 uses

.thread.i.i569:                                   ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i573, %bb.uw, %.noexc167.i568
  %i.diz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i570, !dbg !12340

bb.ux:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i.i.i573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !12341, !noalias !12290
  %i.dja = extractvalue { ptr, i64 } %i.diy, 0, !dbg !12342 ; 8 uses
  %i.djb = extractvalue { ptr, i64 } %i.diy, 1, !dbg !12342 ; 14 uses
  %i.djc = shl i64 %.sroa.0.0.i.i548, 4, !dbg !12343
  %i.djd = add i64 %i.djc, 1008, !dbg !12343
  %i.dje = lshr i64 %i.djd, 6, !dbg !12347        ; 5 uses
  %i.djf = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull readnone poison, i64 noundef %i.dje)
          to label %bb.uy unwind label %.thread566.i.i574, !dbg !12350, !noalias !12356 ; 2 uses

.thread566.i.i574:                                ; preds = %bb.ux
  %i.djg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aah, !dbg !12357

bb.uy:                                            ; preds = %bb.ux
  %i.djh = extractvalue { ptr, i64 } %i.djf, 0, !dbg !12350 ; 6 uses
  %i.dji = extractvalue { ptr, i64 } %i.djf, 1, !dbg !12350 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12358, !noalias !12290
  call void @llvm.experimental.noalias.scope.decl(metadata !12364), !dbg !12367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12369, !noalias !12373
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.dje, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc419.i.i580 unwind label %bb.vb, !dbg !12369, !noalias !12329

.noexc419.i.i580:                                 ; preds = %bb.uy
  %i.djj = load i64, ptr %i.v, align 8, !dbg !12369, !range !5797, !noalias !12373, !noundef !14
  %i.djk = trunc nuw i64 %i.djj to i1, !dbg !12374
  %i.djl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !12375
  %i.djm = load i64, ptr %i.djl, align 8, !dbg !12375, !range !5800, !noalias !12373, !noundef !14 ; 2 uses
  %i.djn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !12375 ; 2 uses
  br i1 %i.djk, label %bb.uz, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i418.i.i581, !dbg !12374, !prof !168

bb.uz:                                            ; preds = %.noexc419.i.i580
  %i.djo = load i64, ptr %i.djn, align 8, !dbg !12376, !noalias !12373
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.djm, i64 %i.djo) #20
          to label %.noexc420.i.i859 unwind label %bb.vb, !dbg !12377, !noalias !12329

.noexc420.i.i859:                                 ; preds = %bb.uz
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i418.i.i581: ; preds = %.noexc419.i.i580
  %i.djp = load ptr, ptr %i.djn, align 8, !dbg !12378, !noalias !12373, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12379, !noalias !12373
  store i64 %i.djm, ptr %i.w, align 8, !dbg !12380, !alias.scope !12364, !noalias !12290
  %i.djq = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !12380
  store ptr %i.djp, ptr %i.djq, align 8, !dbg !12380, !alias.scope !12364, !noalias !12290
  %i.djr = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !12380
  store i64 %i.dje, ptr %i.djr, align 8, !dbg !12380, !alias.scope !12364, !noalias !12290
  %i.djs = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.ve unwind label %bb.vb, !dbg !12381, !noalias !12329 ; 2 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i576: ; preds = %bb.vc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceEECsfISxE4fmY1Y_14polars_parquet.exit424.i.i, %bb.vb
  %.sroa.14.0.i.i577 = phi i64 [ %i.dji, %bb.vb ], [ %.sroa.14.1.i.i585, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceEECsfISxE4fmY1Y_14polars_parquet.exit424.i.i ], [ %.sroa.14.1.i.i585, %bb.vc ], !dbg !12350 ; 2 uses
  %.sroa.0497.0.i.i578 = phi ptr [ %i.djh, %bb.vb ], [ %.sroa.0497.1.i.i586, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceEECsfISxE4fmY1Y_14polars_parquet.exit424.i.i ], [ %.sroa.0497.1.i.i586, %bb.vc ], !dbg !12350 ; 2 uses
  %.pn229.pn.pn.pn.pn.i.i579 = phi { ptr, i32 } [ %i.djv, %bb.vb ], [ %.pn229.pn.pn.pn.i.i587, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceEECsfISxE4fmY1Y_14polars_parquet.exit424.i.i ], [ %.pn229.pn.pn.pn.i.i587, %bb.vc ] ; 2 uses
  %i.djt = icmp eq i64 %.sroa.14.0.i.i577, 0, !dbg !12384
  br i1 %i.djt, label %bb.aah, label %bb.va, !dbg !12384

bb.va:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i576
  %i.dju = mul nuw nsw i64 %.sroa.14.0.i.i577, 2192, !dbg !12388
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0497.0.i.i578) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0497.0.i.i578, i64 noundef range(i64 1, 0) %i.dju, i64 noundef 8) #19, !dbg !12391, !noalias !12329
  br label %bb.aah, !dbg !12396

bb.vb:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i418.i.i581, %bb.uz, %bb.uy
  %i.djv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i.i576

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceEECsfISxE4fmY1Y_14polars_parquet.exit424.i.i: ; preds = %bb.vg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit.i.i588, %bb.vd
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock20BrotliBuildMetaBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ka, !dbg !29279
  %i.ke = load i8, ptr %i.kd, align 1, !dbg !29279, !alias.scope !29129, !noalias !29281, !noundef !14 ; 3 uses
  %i.kf = zext i8 %i.ke to i64, !dbg !29279
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.kf, !dbg !29282 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !dbg !29284, !alias.scope !29285, !noalias !29288, !noundef !14
  %i.ki = add i32 %i.kh, 1, !dbg !29289
  store i32 %i.ki, ptr %i.kg, align 4, !dbg !29291, !alias.scope !29285, !noalias !29288
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 1024, !dbg !29292 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !dbg !29292, !alias.scope !29294, !noalias !29288, !noundef !14
  %i.kl = add i64 %i.kk, 1, !dbg !29297
  store i64 %i.kl, ptr %i.kj, align 8, !dbg !29299, !alias.scope !29301, !noalias !29288
  %i.km = add i64 %.sroa.0.1190.i, 1, !dbg !29304 ; 2 uses
  %i.kn = add nsw i64 %.sroa.011.0187.i, -1, !dbg !29307 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 0, !dbg !29259
  br i1 %i.ko, label %._crit_edge.i, label %.lr.ph.split.i, !dbg !29259

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram32BrotliBuildHistogramsWithContextNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.bb, %_RNvMsq_NtNtCsk4ZPsEfLtLH_6brotli3enc9histogramINtB5_18BlockSplitIteratorNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet.exit48.i
  %i.kp = icmp eq i64 %.sroa.10.1, 0, !dbg !29413
  br i1 %i.kp, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.bv, !dbg !29413

bb.bv:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram32BrotliBuildHistogramsWithContextNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0311.1, i64 noundef range(i64 1, 0) %.sroa.10.1, i64 noundef 1) #19, !dbg !29419
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !29424

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.bv, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram32BrotliBuildHistogramsWithContextNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %15, i64 224, !dbg !29425
  %i.kr = shl i64 %i.ca, 6, !dbg !29425           ; 5 uses
  store i64 %i.kr, ptr %i.kq, align 8, !dbg !29425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !29426
  call void @llvm.experimental.noalias.scope.decl(metadata !29430), !dbg !29433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !29435, !noalias !29430
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.kr, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc99 unwind label %.split461, !dbg !29435

.noexc99:                                         ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram11ContextTypeE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit
  %i.ks = load i64, ptr %i.g, align 8, !dbg !29435, !range !5797, !noalias !29430, !noundef !14
  %i.kt = trunc nuw i64 %i.ks to i1, !dbg !29439
  %i.ku = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !29440
  %i.kv = load i64, ptr %i.ku, align 8, !dbg !29440, !range !5800, !noalias !29430, !noundef !14 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !29440 ; 2 uses
  br i1 %i.kt, label %bb.bw, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !29439, !prof !168

bb.bw:                                            ; preds = %.noexc99
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !29441, !noalias !29430
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kv, i64 %i.kx) #20
          to label %.noexc100 unwind label %.split461, !dbg !29442

.noexc100:                                        ; preds = %bb.bw
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %.noexc99
  %i.ky = load ptr, ptr %i.kw, align 8, !dbg !29443, !noalias !29430, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !29444, !noalias !29430
  store i64 %i.kv, ptr %i.h, align 8, !dbg !29445, !alias.scope !29430
  %i.kz = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !29445
  store ptr %i.ky, ptr %i.kz, align 8, !dbg !29445, !alias.scope !29430
  %i.la = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !29445
  store i64 %i.kr, ptr %i.la, align 8, !dbg !29445, !alias.scope !29430
  %i.lb = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.bx unwind label %.split461, !dbg !29446 ; 2 uses

bb.bx:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !29449
  %i.lc = extractvalue { ptr, i64 } %i.lb, 0, !dbg !29450 ; 16 uses
  %i.ld = extractvalue { ptr, i64 } %i.lb, 1, !dbg !29450 ; 32 uses
  %i.le = getelementptr inbounds nuw i8, ptr %15, i64 144, !dbg !29451 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %15, i64 152, !dbg !29451 ; 2 uses
  %.val38 = load i64, ptr %i.lf, align 8, !dbg !29451, !noundef !14 ; 2 uses
  %i.lg = icmp eq i64 %.val38, 0, !dbg !29452
  br i1 %i.lg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.by, !dbg !29452

bb.by:                                            ; preds = %bb.bx
  %.val37 = load ptr, ptr %i.le, align 8, !dbg !29451, !nonnull !14, !noundef !14
  %i.lh = shl nuw nsw i64 %.val38, 2, !dbg !29456
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef range(i64 1, 0) %i.lh, i64 noundef 4) #19, !dbg !29459
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !29464

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.by, %bb.bx
  store ptr %i.lc, ptr %i.le, align 8, !dbg !29451
  store i64 %i.ld, ptr %i.lf, align 8, !dbg !29451
  %i.li = getelementptr inbounds nuw i8, ptr %15, i64 240, !dbg !29465 ; 2 uses
  store i64 %i.kr, ptr %i.li, align 8, !dbg !29465
  %i.lj = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull poison, i64 noundef %i.kr)
          to label %bb.bz unwind label %.split461, !dbg !29466 ; 2 uses

bb.bz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit
  %i.lk = extractvalue { ptr, i64 } %i.lj, 0, !dbg !29466 ; 12 uses
  %i.ll = extractvalue { ptr, i64 } %i.lj, 1, !dbg !29466 ; 23 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 176, !dbg !29468 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 184, !dbg !29468 ; 2 uses
  %.val50 = load i64, ptr %i.ln, align 8, !dbg !29468, !noundef !14 ; 2 uses
  %i.lo = icmp eq i64 %.val50, 0, !dbg !29469
  br i1 %i.lo, label %bb.cb, label %bb.ca, !dbg !29469

bb.ca:                                            ; preds = %bb.bz
  %.val49 = load ptr, ptr %i.lm, align 8, !dbg !29468, !nonnull !14, !noundef !14
  %i.lp = mul nuw nsw i64 %.val50, 1040, !dbg !29473
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val49, i64 noundef range(i64 1, 0) %i.lp, i64 noundef 8) #19, !dbg !29476
  br label %bb.cb, !dbg !29481

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  store ptr %i.lk, ptr %i.lm, align 8, !dbg !29468
  store i64 %i.ll, ptr %i.ln, align 8, !dbg !29468
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lk) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29482), !dbg !29485
  call void @llvm.experimental.noalias.scope.decl(metadata !29486), !dbg !29485
  call void @llvm.experimental.noalias.scope.decl(metadata !29488), !dbg !29485
  call void @llvm.experimental.noalias.scope.decl(metadata !29490), !dbg !29485
  %i.lq = icmp ne i64 %i.ct, 0, !dbg !29492       ; 3 uses
  %i.lr = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifmNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %i.lq, ptr noalias noundef nonnull %0, i64 noundef %i.ct)
          to label %.noexc107 unwind label %.split461, !dbg !29497 ; 2 uses

.noexc107:                                        ; preds = %bb.cb
  %i.ls = extractvalue { ptr, i64 } %i.lr, 0, !dbg !29497 ; 9 uses
  %i.lt = extractvalue { ptr, i64 } %i.lr, 1, !dbg !29497 ; 10 uses
  %i.lu = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifmNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %i.lq, ptr noalias noundef nonnull %0, i64 noundef %i.ct)
          to label %bb.cc unwind label %.thread.i, !dbg !29498, !noalias !29501 ; 2 uses

.thread.i:                                        ; preds = %.noexc107
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew, !dbg !29503

bb.cc:                                            ; preds = %.noexc107
  %i.lw = extractvalue { ptr, i64 } %i.lu, 0, !dbg !29498 ; 12 uses
  %i.lx = extractvalue { ptr, i64 } %i.lu, 1, !dbg !29498 ; 19 uses
  %i.ly = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull poison, i64 noundef 2049)
          to label %bb.cd unwind label %.thread132.i, !dbg !29504, !noalias !29511 ; 2 uses

.thread150.thread190.loopexit.i:                  ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i

.thread150.thread190.loopexit.split-lp.loopexit.i: ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram21HistogramAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit40.us.i.i
  %lpad.loopexit198.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i

.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.split.us86.preheader.i.i
  %lpad.loopexit206.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i

.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.split.us.i.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i

.thread132.i:                                     ; preds = %bb.cc
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i, !dbg !29512

bb.cd:                                            ; preds = %bb.cc
  %i.ma = extractvalue { ptr, i64 } %i.ly, 0, !dbg !29504 ; 14 uses
  %i.mb = extractvalue { ptr, i64 } %i.ly, 1, !dbg !29504 ; 13 uses
  %.not265.i = icmp eq i64 %i.ct, 0, !dbg !29513  ; 5 uses
  br i1 %.not265.i, label %._crit_edge264.i, label %.lr.ph.i102, !dbg !29524

.lr.ph.i102:                                      ; preds = %bb.cd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  %i.mc = add i64 %i.ct, -1, !dbg !29524
  %umin = call i64 @llvm.umin.i64(i64 %i.mc, i64 %i.lt), !dbg !29524
  %i.md = add i64 %umin, 1, !dbg !29524           ; 3 uses
  %min.iters.check = icmp ult i64 %i.md, 9, !dbg !29524
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !29524

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i102
  %.sroa.027.0256.i.ph = phi i64 [ 0, %.lr.ph.i102 ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !29525

vector.ph:                                        ; preds = %.lr.ph.i102
  %i.me = and i64 %i.md, 7                        ; 2 uses
  %i.mf = icmp eq i64 %i.me, 0
  %i.mg = select i1 %i.mf, i64 8, i64 %i.me
  %n.vec = sub i64 %i.md, %i.mg                   ; 2 uses
  br label %vector.body, !dbg !29524

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !29527 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %index, !dbg !29525 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16, !dbg !29525
  store <4 x i32> splat (i32 1), ptr %i.mh, align 4, !dbg !29525, !noalias !29511
  store <4 x i32> splat (i32 1), ptr %i.mi, align 4, !dbg !29525, !noalias !29511
  %index.next = add nuw i64 %index, 8, !dbg !29527 ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec, !dbg !29524
  br i1 %i.mj, label %scalar.ph.preheader, label %vector.body, !dbg !29524, !llvm.loop !29533

.lr.ph263.preheader.i:                            ; preds = %bb.es
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  br label %.lr.ph260.i, !dbg !29534

.lr.ph258.i:                                      ; preds = %bb.et, %bb.es
  %.sroa.029.0257.i = phi i64 [ %i.mk, %bb.es ], [ 0, %bb.et ] ; 8 uses
  %i.mk = add nuw nsw i64 %.sroa.029.0257.i, 1, !dbg !29541 ; 2 uses
  %exitcond322.not.i = icmp eq i64 %.sroa.029.0257.i, %i.cw, !dbg !29552
  br i1 %exitcond322.not.i, label %.invoke449.i, label %bb.en, !dbg !29552

.lr.ph260.i:                                      ; preds = %bb.el, %.lr.ph263.preheader.i
  %indvars.iv.i = phi i64 [ %i.ct, %.lr.ph263.preheader.i ], [ %indvars.iv.next.i, %bb.el ] ; 3 uses
  %.sroa.0.0262.i = phi i64 [ 0, %.lr.ph263.preheader.i ], [ %i.vt, %bb.el ] ; 8 uses
  %.sroa.08.0261.i = phi i64 [ 0, %.lr.ph263.preheader.i ], [ %i.vu, %bb.el ] ; 8 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 1), !dbg !29554
  %umin1489 = call i64 @llvm.umin.i64(i64 %umax, i64 64), !dbg !29554
  %16 = add nsw i64 %umin1489, -1, !dbg !29554
  %17 = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 1), !dbg !29554
  %umax327.i = call i64 @llvm.umin.i64(i64 %17, i64 64), !dbg !29554
  %18 = sub nuw i64 %i.ct, %.sroa.08.0261.i, !dbg !29554
  %.sroa.0.0.i79.i = call noundef i64 @llvm.umin.i64(i64 %18, i64 64), !dbg !29557 ; 2 uses
  %19 = call i64 @llvm.usub.sat.i64(i64 %i.lx, i64 %.sroa.0.0262.i), !dbg !29534 ; 2 uses
  %umin1490 = call i64 @llvm.umin.i64(i64 %16, i64 %19), !dbg !29534 ; 2 uses
  %min.iters.check1492 = icmp ult i64 %umin1490, 8, !dbg !29534
  br i1 %min.iters.check1492, label %scalar.ph1491.preheader, label %vector.ph1493, !dbg !29534

scalar.ph1491.preheader:                          ; preds = %vector.body1495, %.lr.ph260.i
  %.sroa.031.0259.i.ph = phi i64 [ 0, %.lr.ph260.i ], [ %n.vec1494, %vector.body1495 ]
  br label %scalar.ph1491, !dbg !29561

vector.ph1493:                                    ; preds = %.lr.ph260.i
  %i.ml = add nuw nsw i64 %umin1490, 1, !dbg !29534 ; 2 uses
  %i.mm = and i64 %i.ml, 7                        ; 2 uses
  %i.mn = icmp eq i64 %i.mm, 0
  %i.mo = select i1 %i.mn, i64 8, i64 %i.mm
  %n.vec1494 = sub i64 %i.ml, %i.mo               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.sroa.08.0261.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op1775 = add nuw <4 x i64> splat (i64 4), %broadcast.splat, !dbg !29534
  %invariant.gep = getelementptr [4 x i8], ptr %i.lw, i64 %.sroa.0.0262.i, !dbg !29534
  br label %vector.body1495, !dbg !29534

vector.body1495:                                  ; preds = %vector.body1495, %vector.ph1493
  %index1496 = phi i64 [ 0, %vector.ph1493 ], [ %index.next1497, %vector.body1495 ], !dbg !29563 ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1493 ], [ %vec.ind.next, %vector.body1495 ] ; 3 uses
  %i.mp = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat, !dbg !29569
  %.reass = add nuw <4 x i64> %vec.ind, %invariant.op1775
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1496, !dbg !29561 ; 2 uses
  %i.mq = trunc <4 x i64> %i.mp to <4 x i32>, !dbg !29561
  %i.mr = trunc <4 x i64> %.reass to <4 x i32>, !dbg !29561
  %i.ms = getelementptr inbounds nuw i8, ptr %gep, i64 16, !dbg !29561
  store <4 x i32> %i.mq, ptr %gep, align 4, !dbg !29561, !noalias !29511
  store <4 x i32> %i.mr, ptr %i.ms, align 4, !dbg !29561, !noalias !29511
  %index.next1497 = add nuw i64 %index1496, 8, !dbg !29563 ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.mt = icmp eq i64 %index.next1497, %n.vec1494, !dbg !29534
  br i1 %i.mt, label %scalar.ph1491.preheader, label %vector.body1495, !dbg !29534, !llvm.loop !29572

.loopexit.i:                                      ; preds = %bb.ek
  %lpad.loopexit210.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.eq
  %lpad.loopexit214.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke449.i, %.invoke.i, %bb.cn
  %.sroa.10.1.ph.ph.ph.i = phi i64 [ %i.mb, %.invoke449.i ], [ %.sroa.10.2.i, %bb.cn ], [ %i.mb, %.invoke.i ]
  %.sroa.0118.1.ph.ph.ph.i = phi ptr [ %i.ma, %.invoke449.i ], [ %.sroa.0118.2.i, %bb.cn ], [ %i.ma, %.invoke.i ]
  %lpad.loopexit.split-lp215.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i

._crit_edge264.i:                                 ; preds = %bb.el, %bb.cd
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.cd ], [ %i.vt, %bb.el ], !dbg !29573 ; 4 uses
  %i.mu = shl i64 %.sroa.0.0.lcssa.i, 6, !dbg !29574
  %i.mv = lshr i64 %.sroa.0.0.lcssa.i, 1, !dbg !29577
  %i.mw = mul i64 %i.mv, %.sroa.0.0.lcssa.i, !dbg !29580
  %.sroa.0.0.i.i105 = call noundef i64 @llvm.umin.i64(i64 %i.mw, i64 %i.mu), !dbg !29582 ; 3 uses
  %i.mx = icmp ugt i64 %.sroa.0.0.i.i105, 2047, !dbg !29585
  br i1 %i.mx, label %.preheader.i, label %bb.cn, !dbg !29585

.preheader.i:                                     ; preds = %._crit_edge264.i, %.preheader.i
  %.sroa.018.0.i = phi i64 [ %i.my, %.preheader.i ], [ 2048, %._crit_edge264.i ], !dbg !29587 ; 3 uses
  %.not.i106 = icmp ugt i64 %.sroa.018.0.i, %.sroa.0.0.i.i105, !dbg !29588
  %i.my = shl i64 %.sroa.018.0.i, 1, !dbg !29591
  br i1 %.not.i106, label %bb.ce, label %.preheader.i, !dbg !29588

bb.ce:                                            ; preds = %.preheader.i
  %i.mz = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifNtNtB4_7cluster13HistogramPairNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext true, ptr noalias noundef nonnull %0, i64 noundef %.sroa.018.0.i)
          to label %bb.cg unwind label %bb.cf, !dbg !29593, !noalias !29511 ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %lpad.thr_comm.split-lp168.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i, !dbg !29596

bb.cg:                                            ; preds = %bb.ce
  %i.na = extractvalue { ptr, i64 } %i.mz, 0, !dbg !29593 ; 4 uses
  %i.nb = extractvalue { ptr, i64 } %i.mz, 1, !dbg !29593 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.na) ]
  %i.nc = icmp ugt i64 %i.nb, 2047, !dbg !29597
  br i1 %i.nc, label %bb.cj, label %bb.ch, !dbg !29597, !prof !489

bb.ch:                                            ; preds = %bb.cg
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2048, i64 noundef %i.nb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #20
          to label %bb.ci unwind label %bb.eh, !dbg !29605, !noalias !29511

bb.ci:                                            ; preds = %bb.eo, %bb.ck, %bb.ch
  unreachable

bb.cj:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ma) ]
  %i.nd = icmp ugt i64 %i.mb, 2047, !dbg !29606
  br i1 %i.nd, label %bb.cl, label %bb.ck, !dbg !29606, !prof !489

bb.ck:                                            ; preds = %bb.cj
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2048, i64 noundef %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @268) #20
          to label %bb.ci unwind label %.thread181.i, !dbg !29613, !noalias !29511

bb.cl:                                            ; preds = %bb.cj
  invoke void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 4 %i.na, i64 noundef 2048, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ma, i64 noundef 2048, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269)
          to label %bb.cm unwind label %.thread181.i, !dbg !29614, !noalias !29511

bb.cm:                                            ; preds = %bb.cl
  %i.ne = shl nuw nsw i64 %i.mb, 4, !dbg !29619
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ma, i64 noundef range(i64 1, 0) %i.ne, i64 noundef 4) #19, !dbg !29626, !noalias !29511
  br label %bb.cn, !dbg !29631

bb.cn:                                            ; preds = %bb.cm, %._crit_edge264.i
  %.sroa.10.2.i = phi i64 [ %i.nb, %bb.cm ], [ %i.mb, %._crit_edge264.i ], !dbg !29632 ; 4 uses
  %.sroa.0118.2.i = phi ptr [ %i.na, %bb.cm ], [ %i.ma, %._crit_edge264.i ], !dbg !29632 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.2.i) ]
  %i.nf = invoke fastcc noundef i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 %i.lk, i64 noundef range(i64 0, 8868626958514208) %i.ll, ptr noalias noundef nonnull align 4 %i.ls, i64 noundef %i.lt, ptr noalias noundef nonnull align 4 %i.lc, i64 noundef range(i64 0, 2305843009213693952) %i.ld, ptr noalias noundef nonnull align 4 %i.lw, i64 noundef %i.lx, ptr noalias noundef nonnull align 4 %.sroa.0118.2.i, i64 noundef %.sroa.10.2.i, i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %i.ct, i64 noundef 256, i64 noundef %.sroa.0.0.i.i105, ptr noalias noundef nonnull %12)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !29633, !noalias !29488 ; 5 uses

bb.co:                                            ; preds = %bb.cn
  %i.ng = icmp eq i64 %.sroa.10.2.i, 0, !dbg !29634
  br i1 %i.ng, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit80.i, label %bb.cp, !dbg !29634

bb.cp:                                            ; preds = %bb.co
  %i.nh = shl nuw nsw i64 %.sroa.10.2.i, 4, !dbg !29639
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.0118.2.i, i64 noundef range(i64 1, 0) %i.nh, i64 noundef 4) #19, !dbg !29642, !noalias !29511
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit80.i, !dbg !29647

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit80.i: ; preds = %bb.cp, %bb.co
  %i.ni = icmp eq i64 %i.lt, 0, !dbg !29648
  br i1 %i.ni, label %bb.cr, label %bb.cq, !dbg !29648

bb.cq:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit80.i
  %i.nj = shl nuw nsw i64 %i.lt, 2, !dbg !29653
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ls, i64 noundef range(i64 1, 0) %i.nj, i64 noundef 4) #19, !dbg !29656, !noalias !29511
  br label %bb.cr, !dbg !29661

bb.cr:                                            ; preds = %bb.cq, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit80.i
  call void @llvm.experimental.noalias.scope.decl(metadata !29662), !dbg !29665
  call void @llvm.experimental.noalias.scope.decl(metadata !29666), !dbg !29665
  call void @llvm.experimental.noalias.scope.decl(metadata !29668), !dbg !29665
  call void @llvm.experimental.noalias.scope.decl(metadata !29670), !dbg !29665
  br i1 %.not265.i, label %.preheader.i.i, label %.lr.ph78.i.i, !dbg !29672

.lr.ph78.i.i:                                     ; preds = %bb.cr
  %.not.i.i = icmp eq i64 %i.ld, 0                ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 4 uses
  %.not113.i.i = icmp eq i64 %i.nf, 0
  %i.nl = getelementptr inbounds nuw i8, ptr %i.f, i64 1024 ; 2 uses
  br i1 %.not113.i.i, label %.lr.ph78.split.i.i, label %.lr.ph78.split.us.i.i

.lr.ph78.split.us.i.i:                            ; preds = %.lr.ph78.i.i, %bb.cz
  %.sroa.010.076.us.i.i = phi i64 [ %i.nm, %bb.cz ], [ 0, %.lr.ph78.i.i ] ; 7 uses
  %i.nm = add nuw nsw i64 %.sroa.010.076.us.i.i, 1, !dbg !29681 ; 2 uses
  %i.nn = icmp eq i64 %.sroa.010.076.us.i.i, 0, !dbg !29687
  br i1 %i.nn, label %bb.cu, label %bb.cs, !dbg !29687

bb.cs:                                            ; preds = %.lr.ph78.split.us.i.i
  %i.no = add nsw i64 %.sroa.010.076.us.i.i, -1, !dbg !29689 ; 3 uses
  %i.np = icmp ult i64 %i.no, %i.ld, !dbg !29692
  br i1 %i.np, label %bb.ct, label %.split.us.i.invoke.i, !dbg !29692

bb.ct:                                            ; preds = %bb.cs
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.no, !dbg !29692
  br label %bb.cv, !dbg !29693

bb.cu:                                            ; preds = %.lr.ph78.split.us.i.i
  br i1 %.not.i.i, label %.split.us.i.invoke.i, label %bb.cv, !dbg !29694

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.sroa.01.0.in.us.i.i = phi ptr [ %i.nq, %bb.ct ], [ %i.lc, %bb.cu ]
  %.sroa.01.0.us.i.i = load i32, ptr %.sroa.01.0.in.us.i.i, align 4, !dbg !29695, !alias.scope !29696, !noalias !29697, !noundef !14 ; 3 uses
  %exitcond173.not.i.i = icmp eq i64 %.sroa.010.076.us.i.i, %i.cw, !dbg !29700
  br i1 %exitcond173.not.i.i, label %.split.us.i.invoke.i, label %bb.cw, !dbg !29700

bb.cw:                                            ; preds = %bb.cv
  %i.nr = getelementptr inbounds nuw [1040 x i8], ptr %i.cv, i64 %.sroa.010.076.us.i.i, !dbg !29702 ; 3 uses
  %i.ns = zext i32 %.sroa.01.0.us.i.i to i64, !dbg !29703 ; 3 uses
  %i.nt = icmp samesign ugt i64 %i.ll, %i.ns, !dbg !29704
  br i1 %i.nt, label %bb.cx, label %.split.us.i.invoke.i, !dbg !29704

bb.cx:                                            ; preds = %bb.cw
  %i.nu = getelementptr inbounds nuw [1040 x i8], ptr %i.lk, i64 %i.ns, !dbg !29705 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 1024, !dbg !29706
  %i.nw = load i64, ptr %i.nv, align 8, !dbg !29706, !alias.scope !29709, !noalias !29712, !noundef !14
  %i.nx = icmp eq i64 %i.nw, 0, !dbg !29716
  br i1 %i.nx, label %.lr.ph.split.us.us.i.i, label %vector.ph1510, !dbg !29716

vector.ph1510:                                    ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !29717, !noalias !29718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.nr, i64 1040, i1 false), !dbg !29720, !alias.scope !29722, !noalias !29712
  %i.ny = load i64, ptr %i.nk, align 8, !dbg !29726, !alias.scope !29729, !noalias !29732, !noundef !14
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 1024, !dbg !29735
  %i.oa = load i64, ptr %i.nz, align 8, !dbg !29735, !alias.scope !29737, !noalias !29740, !noundef !14
  %i.ob = add i64 %i.oa, %i.ny, !dbg !29741
  store i64 %i.ob, ptr %i.nk, align 8, !dbg !29742, !alias.scope !29744, !noalias !29747
  br label %vector.body1511, !dbg !29748

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1510
  %index1512 = phi i64 [ 0, %vector.ph1510 ], [ %index.next1517.1, %vector.body1511 ], !dbg !29751 ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index1512, !dbg !29754 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16, !dbg !29755 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9metablock20BrotliBuildMetaBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  br label %.thread367.thread, !dbg !29992

bb.dt:                                            ; preds = %bb.dr
  %i.tr = getelementptr inbounds nuw [1040 x i8], ptr %i.tf, i64 %.sroa.025.0145.i.i, !dbg !30043
  %i.ts = getelementptr inbounds nuw [1040 x i8], ptr %i.lk, i64 %.sroa.025.0145.i.i, !dbg !30045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ts, ptr noundef nonnull align 8 dereferenceable(1040) %i.tr, i64 1040, i1 false), !dbg !30045, !noalias !30057
  %exitcond173.not.i104.i = icmp eq i64 %i.to, %i.tk, !dbg !30019
  br i1 %exitcond173.not.i104.i, label %._crit_edge147.i.i, label %bb.do, !dbg !30012

.lr.ph141.i.i:                                    ; preds = %bb.dm, %bb.ea
  %.sroa.0.1139.i.i = phi i32 [ %.sroa.0.2.i.i, %bb.ea ], [ 0, %bb.dm ] ; 4 uses
  %.sroa.023.0138.i.i = phi i64 [ %i.tt, %bb.ea ], [ 0, %bb.dm ] ; 3 uses
  %i.tt = add nuw nsw i64 %.sroa.023.0138.i.i, 1, !dbg !30058 ; 2 uses
  %exitcond169.not.i100.i = icmp eq i64 %.sroa.023.0138.i.i, %i.ld, !dbg !30064
  br i1 %exitcond169.not.i100.i, label %.invoke225.i.i, label %bb.du, !dbg !30064

bb.du:                                            ; preds = %.lr.ph141.i.i
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.sroa.023.0138.i.i, !dbg !30064 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 4, !dbg !30064, !alias.scope !30066, !noalias !30067, !noundef !14
  %i.tw = zext i32 %i.tv to i64, !dbg !30069      ; 6 uses
  %i.tx = icmp ugt i64 %i.st, %i.tw, !dbg !30070
  br i1 %i.tx, label %bb.dv, label %.invoke225.i.i, !dbg !30070

bb.dv:                                            ; preds = %bb.du
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.tw, !dbg !30070 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 4, !dbg !30070, !noalias !29983, !noundef !14 ; 2 uses
  %i.ua = icmp eq i32 %i.tz, %.sroa.0.1139.i.i, !dbg !30070
  br i1 %i.ua, label %bb.dw, label %bb.ea, !dbg !30070

.invoke225.i.i:                                   ; preds = %bb.dw, %bb.du, %.lr.ph141.i.i
  %i.ub = phi i64 [ %i.ld, %.lr.ph141.i.i ], [ %i.tw, %bb.du ], [ %i.tw, %bb.dw ]
  %i.uc = phi i64 [ %i.ld, %.lr.ph141.i.i ], [ %i.st, %bb.du ], [ %i.ll, %bb.dw ]
  %i.ud = phi ptr [ @260, %.lr.ph141.i.i ], [ @261, %bb.du ], [ @262, %bb.dw ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ub, i64 noundef %i.uc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ud) #20
          to label %.cont226.i.i unwind label %.thread.i.i, !dbg !30071, !noalias !29983

.cont226.i.i:                                     ; preds = %.invoke225.i.i
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.ue = icmp samesign ugt i64 %i.ll, %i.tw, !dbg !30072
  br i1 %i.ue, label %bb.dx, label %.invoke225.i.i, !dbg !30072

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tf) ]
  %i.uf = zext i32 %.sroa.0.1139.i.i to i64, !dbg !30073 ; 3 uses
  %i.ug = icmp ugt i64 %i.tg, %i.uf, !dbg !30074
  br i1 %i.ug, label %bb.dz, label %bb.dy, !dbg !30074

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.uf, i64 noundef %i.tg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #20
          to label %bb.dq unwind label %.thread.thread.i.i, !dbg !30074, !noalias !29983

bb.dz:                                            ; preds = %bb.dx
  %i.uh = getelementptr inbounds nuw [1040 x i8], ptr %i.lk, i64 %i.tw, !dbg !30072
  %i.ui = getelementptr inbounds nuw [1040 x i8], ptr %i.tf, i64 %i.uf, !dbg !30074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ui, ptr noundef nonnull align 8 dereferenceable(1040) %i.uh, i64 1040, i1 false), !dbg !30074, !noalias !30057
  %i.uj = add i32 %.sroa.0.1139.i.i, 1, !dbg !30075
  %.pre.i.i = load i32, ptr %i.ty, align 4, !dbg !30078, !noalias !29983
  br label %bb.ea, !dbg !30079

bb.ea:                                            ; preds = %bb.dz, %bb.dv
  %i.uk = phi i32 [ %.pre.i.i, %bb.dz ], [ %i.tz, %bb.dv ], !dbg !30078
  %.sroa.0.2.i.i = phi i32 [ %i.uj, %bb.dz ], [ %.sroa.0.1139.i.i, %bb.dv ], !dbg !29986 ; 3 uses
  store i32 %i.uk, ptr %i.tu, align 4, !dbg !30080, !alias.scope !30066, !noalias !30067
  %exitcond170.not.i101.i = icmp eq i64 %i.tt, %i.ct, !dbg !30081
  br i1 %exitcond170.not.i101.i, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %.lr.ph141.i.i, !dbg !29993

.lr.ph137.i.i:                                    ; preds = %bb.ef, %bb.ee
  %.sroa.0.0136.i.i = phi i32 [ %.sroa.0.3.i.i, %bb.ee ], [ 0, %bb.ef ] ; 3 uses
  %.sroa.021.0135.i.i = phi i64 [ %i.ul, %bb.ee ], [ 0, %bb.ef ] ; 3 uses
  %i.ul = add nuw nsw i64 %.sroa.021.0135.i.i, 1, !dbg !30084 ; 2 uses
  %exitcond167.not.i.i = icmp eq i64 %.sroa.021.0135.i.i, %i.ld, !dbg !30095
  br i1 %exitcond167.not.i.i, label %.invoke.i.i, label %bb.eb, !dbg !30095

bb.eb:                                            ; preds = %.lr.ph137.i.i
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.sroa.021.0135.i.i, !dbg !30095
  %i.un = load i32, ptr %i.um, align 4, !dbg !30095, !alias.scope !30066, !noalias !30067, !noundef !14
  %i.uo = zext i32 %i.un to i64, !dbg !30097      ; 3 uses
  %i.up = icmp ugt i64 %i.st, %i.uo, !dbg !30098
  br i1 %i.up, label %bb.ec, label %.invoke.i.i, !dbg !30098

bb.ec:                                            ; preds = %bb.eb
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.uo, !dbg !30098 ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 4, !dbg !30098, !noalias !29983, !noundef !14
  %i.us = icmp eq i32 %i.ur, -1, !dbg !30098
  br i1 %i.us, label %bb.ed, label %bb.ee, !dbg !30098

bb.ed:                                            ; preds = %bb.ec
  store i32 %.sroa.0.0136.i.i, ptr %i.uq, align 4, !dbg !30099, !noalias !29983
  %i.ut = add i32 %.sroa.0.0136.i.i, 1, !dbg !30100
  br label %bb.ee, !dbg !30102

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.sroa.0.3.i.i = phi i32 [ %i.ut, %bb.ed ], [ %.sroa.0.0136.i.i, %bb.ec ], !dbg !29986 ; 2 uses
  %exitcond168.not.i99.i = icmp eq i64 %i.ul, %i.ct, !dbg !30103
  br i1 %exitcond168.not.i99.i, label %._crit_edge.i.i, label %.lr.ph137.i.i, !dbg !30106

scalar.ph1540:                                    ; preds = %scalar.ph1540.preheader, %bb.ef
  %.sroa.019.0134.i.i = phi i64 [ %i.uu, %bb.ef ], [ %.sroa.019.0134.i.i.ph, %scalar.ph1540.preheader ] ; 3 uses
  %exitcond.not.i98.i = icmp eq i64 %.sroa.019.0134.i.i, %i.st, !dbg !29975
  br i1 %exitcond.not.i98.i, label %.invoke.i.i, label %bb.ef, !dbg !29975

bb.ef:                                            ; preds = %scalar.ph1540
  %i.uu = add nuw i64 %.sroa.019.0134.i.i, 1, !dbg !29977 ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %.sroa.019.0134.i.i, !dbg !29975
  store i32 -1, ptr %i.uv, align 4, !dbg !29975, !noalias !29983
  %exitcond166.not.i.i = icmp eq i64 %i.uu, %i.ct, !dbg !30107
  br i1 %exitcond166.not.i.i, label %.lr.ph137.i.i, label %scalar.ph1540, !dbg !29965, !llvm.loop !30109

.invoke.i.i:                                      ; preds = %scalar.ph1540, %bb.eb, %.lr.ph137.i.i
  %i.uw = phi i64 [ %i.uo, %bb.eb ], [ %i.ld, %.lr.ph137.i.i ], [ %i.st, %scalar.ph1540 ]
  %i.ux = phi i64 [ %i.st, %bb.eb ], [ %i.ld, %.lr.ph137.i.i ], [ %i.st, %scalar.ph1540 ]
  %i.uy = phi ptr [ @265, %bb.eb ], [ @264, %.lr.ph137.i.i ], [ @266, %scalar.ph1540 ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.uw, i64 noundef %i.ux, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.uy) #20
          to label %.cont.i.i unwind label %.thread97.i.i, !dbg !29986, !noalias !29983

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.eg:                                            ; preds = %.thread.i.i
  br i1 %i.uz, label %.thread211.i.i, label %.thread367.thread, !dbg !29992

.thread.i.i:                                      ; preds = %.invoke225.i.i, %bb.dp
  %i.uz = phi i1 [ false, %bb.dp ], [ true, %.invoke225.i.i ] ; 2 uses
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.va = icmp eq i64 %i.tg, 0, !dbg !30110
  br i1 %i.va, label %bb.eg, label %.split.i.i, !dbg !30110

.thread.thread.i.i:                               ; preds = %bb.dy
  %i.vb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vc = icmp eq i64 %i.tg, 0, !dbg !30110
  br i1 %i.vc, label %.thread211.thread.i.i, label %.split.thread214.i.i, !dbg !30110

.split.thread214.i.i:                             ; preds = %.thread.thread.i.i
  %i.vd = mul nuw nsw i64 %i.tg, 1040, !dbg !30046
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tf, i64 noundef range(i64 1, 0) %i.vd, i64 noundef 8) #19, !dbg !30052, !noalias !29983
  br label %.thread211.thread.i.i, !dbg !29992

.split.i.i:                                       ; preds = %.thread.i.i
  %i.ve = mul nuw nsw i64 %i.tg, 1040, !dbg !30046
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tf) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.tf, i64 noundef range(i64 1, 0) %i.ve, i64 noundef 8) #19, !dbg !30052, !noalias !29983
  br i1 %i.uz, label %.thread211.i.i, label %.thread367.thread, !dbg !29992

.thread211.i.i:                                   ; preds = %.split.i.i, %bb.eg, %.thread97.i.i
  %.pn88101.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.thread97.i.i ], [ %lpad.thr_comm.i.i, %bb.eg ], [ %lpad.thr_comm.i.i, %.split.i.i ] ; 2 uses
  %i.vf = icmp eq i64 %i.st, 0, !dbg !30111
  br i1 %i.vf, label %.thread367.thread, label %.thread211.thread.i.i, !dbg !30111

.thread211.thread.i.i:                            ; preds = %.thread211.i.i, %.split.thread214.i.i, %.thread.thread.i.i
  %.pn88101218.i.i = phi { ptr, i32 } [ %.pn88101.i.i, %.thread211.i.i ], [ %i.vb, %.split.thread214.i.i ], [ %i.vb, %.thread.thread.i.i ]
  %i.vg = shl nuw nsw i64 %i.st, 2, !dbg !30115
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ss) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ss, i64 noundef range(i64 1, 0) %i.vg, i64 noundef 4) #19, !dbg !30118, !noalias !29983
  br label %.thread367.thread, !dbg !30123

.thread181.i:                                     ; preds = %bb.cl, %bb.ck
  %lpad.thr_comm179.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei, !dbg !30124

bb.eh:                                            ; preds = %bb.ch
  %lpad.thr_comm.split-lp180.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vh = icmp eq i64 %i.nb, 0, !dbg !30124
  br i1 %i.vh, label %.thread138.i, label %bb.ei, !dbg !30124

bb.ei:                                            ; preds = %bb.eh, %.thread181.i
  %lpad.phi183.i = phi { ptr, i32 } [ %lpad.thr_comm179.i, %.thread181.i ], [ %lpad.thr_comm.split-lp180.i, %bb.eh ]
  %i.vi = shl nuw nsw i64 %i.nb, 4, !dbg !30128
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.na, i64 noundef range(i64 1, 0) %i.vi, i64 noundef 4) #19, !dbg !30131, !noalias !29511
  br label %.thread138.i, !dbg !30136

._crit_edge.i104:                                 ; preds = %bb.em
  %i.vj = icmp samesign ugt i64 %.sroa.08.0261.i, %i.ld, !dbg !30137
  br i1 %i.vj, label %.invoke.i, label %bb.ej, !dbg !30137, !prof !168

.invoke.i:                                        ; preds = %bb.ej, %._crit_edge.i104
  %i.vk = phi i64 [ %.sroa.08.0261.i, %._crit_edge.i104 ], [ %.sroa.0.0262.i, %bb.ej ]
  %i.vl = phi i64 [ %i.ld, %._crit_edge.i104 ], [ %i.lx, %bb.ej ] ; 2 uses
  %i.vm = phi ptr [ @271, %._crit_edge.i104 ], [ @270, %bb.ej ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.vk, i64 noundef %i.vl, i64 noundef %i.vl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vm) #20
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !30142, !noalias !29511

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ej:                                            ; preds = %._crit_edge.i104
  %i.vn = icmp ugt i64 %.sroa.0.0262.i, %i.lx, !dbg !30145
  br i1 %i.vn, label %.invoke.i, label %bb.ek, !dbg !30145, !prof !168

bb.ek:                                            ; preds = %bb.ej
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.sroa.08.0261.i, !dbg !30149
  %i.vp = sub nuw nsw i64 %i.ld, %.sroa.08.0261.i, !dbg !30154
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ma) ]
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.sroa.0.0262.i, !dbg !30155
  %i.vr = sub nuw i64 %i.lx, %.sroa.0.0262.i, !dbg !30160
  %i.vs = invoke fastcc noundef i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 %i.lk, i64 noundef range(i64 0, 8868626958514208) %i.ll, ptr noalias noundef nonnull align 4 %i.ls, i64 noundef %i.lt, ptr noalias noundef nonnull align 4 %i.vo, i64 noundef %i.vp, ptr noalias noundef nonnull align 4 %i.vq, i64 noundef %i.vr, ptr noalias noundef nonnull align 4 %i.ma, i64 noundef %i.mb, i64 noundef %.sroa.0.0.i79.i, i64 noundef %.sroa.0.0.i79.i, i64 noundef 256, i64 noundef 2048, ptr noalias noundef nonnull %12)
          to label %bb.el unwind label %.loopexit.i, !dbg !30161, !noalias !29488

bb.el:                                            ; preds = %bb.ek
  %i.vt = add i64 %i.vs, %.sroa.0.0262.i, !dbg !30162 ; 2 uses
  %i.vu = add nuw nsw i64 %.sroa.08.0261.i, 64, !dbg !30165 ; 2 uses
  %i.vv = icmp ult i64 %i.vu, %i.ct, !dbg !30167
  %indvars.iv.next.i = add i64 %indvars.iv.i, -64, !dbg !30167
  br i1 %i.vv, label %.lr.ph260.i, label %._crit_edge264.i, !dbg !30167

scalar.ph1491:                                    ; preds = %scalar.ph1491.preheader, %bb.em
  %.sroa.031.0259.i = phi i64 [ %i.vy, %bb.em ], [ %.sroa.031.0259.i.ph, %scalar.ph1491.preheader ] ; 4 uses
  %i.vw = add nuw i64 %.sroa.031.0259.i, %.sroa.0.0262.i, !dbg !30168 ; 2 uses
  %exitcond326.not.i = icmp eq i64 %.sroa.031.0259.i, %19, !dbg !29561
  br i1 %exitcond326.not.i, label %.invoke449.i, label %bb.em, !dbg !29561

bb.em:                                            ; preds = %scalar.ph1491
  %i.vx = add nuw nsw i64 %.sroa.031.0259.i, %.sroa.08.0261.i, !dbg !29569
  %i.vy = add nuw nsw i64 %.sroa.031.0259.i, 1, !dbg !29563 ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.vw, !dbg !29561
  %i.wa = trunc i64 %i.vx to i32, !dbg !29561
  store i32 %i.wa, ptr %i.vz, align 4, !dbg !29561, !noalias !29511
  %exitcond328.not.i = icmp eq i64 %i.vy, %umax327.i, !dbg !30170
  br i1 %exitcond328.not.i, label %._crit_edge.i104, label %scalar.ph1491, !dbg !29534, !llvm.loop !30173

.invoke449.i:                                     ; preds = %scalar.ph, %bb.er, %.lr.ph258.i, %scalar.ph1491
  %i.wb = phi i64 [ %i.ld, %bb.er ], [ %i.vw, %scalar.ph1491 ], [ %i.cw, %.lr.ph258.i ], [ %i.lt, %scalar.ph ]
  %i.wc = phi i64 [ %i.ld, %bb.er ], [ %i.lx, %scalar.ph1491 ], [ %i.cw, %.lr.ph258.i ], [ %i.lt, %scalar.ph ]
  %i.wd = phi ptr [ @275, %bb.er ], [ @272, %scalar.ph1491 ], [ @273, %.lr.ph258.i ], [ @276, %scalar.ph ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.wb, i64 noundef %i.wc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wd) #20
          to label %.cont450.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !30174, !noalias !29511

.cont450.i:                                       ; preds = %.invoke449.i
  unreachable

bb.en:                                            ; preds = %.lr.ph258.i
  %exitcond323.not.i = icmp eq i64 %.sroa.029.0257.i, %i.ll, !dbg !30175
  br i1 %exitcond323.not.i, label %bb.eo, label %bb.eq, !dbg !30175

bb.eo:                                            ; preds = %bb.en
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 8868626958514208) %i.ll, i64 noundef range(i64 0, 8868626958514208) %i.ll, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #20
          to label %bb.ci unwind label %bb.ep, !dbg !30175, !noalias !29511

bb.ep:                                            ; preds = %bb.eo
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %.thread138.i, !dbg !30176

bb.eq:                                            ; preds = %bb.en
  %i.wf = getelementptr inbounds nuw [1040 x i8], ptr %i.cv, i64 %.sroa.029.0257.i, !dbg !29552 ; 2 uses
  %i.wg = getelementptr inbounds nuw [1040 x i8], ptr %i.lk, i64 %.sroa.029.0257.i, !dbg !30175 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.wg, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.wf, i64 1040, i1 false), !dbg !30175, !alias.scope !30177, !noalias !30178
  %i.wh = invoke noundef float @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.wf, ptr noalias noundef nonnull %12)
          to label %bb.er unwind label %.loopexit.split-lp.loopexit.i, !dbg !30179, !noalias !29511

bb.er:                                            ; preds = %bb.eq
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 1032, !dbg !30180
  store float %i.wh, ptr %i.wi, align 8, !dbg !30180, !alias.scope !30182, !noalias !30185
  %exitcond324.not.i = icmp eq i64 %.sroa.029.0257.i, %i.ld, !dbg !30186
  br i1 %exitcond324.not.i, label %.invoke449.i, label %bb.es, !dbg !30186

bb.es:                                            ; preds = %bb.er
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.sroa.029.0257.i, !dbg !30186
  %i.wk = trunc i64 %.sroa.029.0257.i to i32, !dbg !30186
  store i32 %i.wk, ptr %i.wj, align 4, !dbg !30186, !alias.scope !29490, !noalias !30187
  %exitcond325.not.i = icmp eq i64 %i.mk, %i.ct, !dbg !30188
  br i1 %exitcond325.not.i, label %.lr.ph263.preheader.i, label %.lr.ph258.i, !dbg !30191

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.et
  %.sroa.027.0256.i = phi i64 [ %i.wl, %bb.et ], [ %.sroa.027.0256.i.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not.i103 = icmp eq i64 %.sroa.027.0256.i, %i.lt, !dbg !29525
  br i1 %exitcond.not.i103, label %.invoke449.i, label %bb.et, !dbg !29525

bb.et:                                            ; preds = %scalar.ph
  %i.wl = add nuw i64 %.sroa.027.0256.i, 1, !dbg !29527 ; 2 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.sroa.027.0256.i, !dbg !29525
  store i32 1, ptr %i.wm, align 4, !dbg !29525, !noalias !29511
  %exitcond321.not.i = icmp eq i64 %i.wl, %i.ct, !dbg !29513
  br i1 %exitcond321.not.i, label %.lr.ph258.i, label %scalar.ph, !dbg !29524, !llvm.loop !30192

.thread138.i:                                     ; preds = %bb.ep, %bb.ei, %bb.eh, %bb.cf, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn147.i = phi { ptr, i32 } [ %lpad.phi183.i, %bb.ei ], [ %lpad.thr_comm.split-lp168.i, %bb.cf ], [ %i.we, %bb.ep ], [ %lpad.thr_comm.split-lp180.i, %bb.eh ], [ %lpad.loopexit210.i, %.loopexit.i ], [ %lpad.loopexit214.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp215.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.0118.0146.i = phi ptr [ %i.ma, %bb.ei ], [ %i.ma, %bb.cf ], [ %i.ma, %bb.ep ], [ %i.ma, %bb.eh ], [ %i.ma, %.loopexit.i ], [ %i.ma, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0118.1.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.10.0145.i = phi i64 [ %i.mb, %bb.ei ], [ %i.mb, %bb.cf ], [ %i.mb, %bb.ep ], [ %i.mb, %bb.eh ], [ %i.mb, %.loopexit.i ], [ %i.mb, %.loopexit.split-lp.loopexit.i ], [ %.sroa.10.1.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %i.wn = icmp eq i64 %.sroa.10.0145.i, 0, !dbg !30193
  br i1 %i.wn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i, label %bb.eu, !dbg !30193

bb.eu:                                            ; preds = %.thread138.i
  %i.wo = shl nuw nsw i64 %.sroa.10.0145.i, 4, !dbg !30197
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0118.0146.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0118.0146.i, i64 noundef range(i64 1, 0) %i.wo, i64 noundef 4) #19, !dbg !30200, !noalias !29511
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i, !dbg !30205

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i: ; preds = %bb.eu, %.thread138.i, %.thread132.i, %.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.thread150.thread190.loopexit.split-lp.loopexit.i, %.thread150.thread190.loopexit.i
  %.sroa.026.1137.i = phi i1 [ true, %.thread132.i ], [ true, %bb.eu ], [ true, %.thread138.i ], [ false, %.thread150.thread190.loopexit.split-lp.loopexit.i ], [ false, %.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ false, %.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ false, %.thread150.thread190.loopexit.i ]
  %.pn.pn136.i = phi { ptr, i32 } [ %i.lz, %.thread132.i ], [ %.pn147.i, %bb.eu ], [ %.pn147.i, %.thread138.i ], [ %lpad.loopexit198.i, %.thread150.thread190.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit206.i, %.thread150.thread190.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.i, %.thread150.thread190.loopexit.i ] ; 2 uses
  %i.wp = icmp eq i64 %i.lx, 0, !dbg !30206
  br i1 %i.wp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.ev, !dbg !30206

bb.ev:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i
  %i.wq = shl nuw nsw i64 %i.lx, 2, !dbg !30210
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lw) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lw, i64 noundef range(i64 1, 0) %i.wq, i64 noundef 4) #19, !dbg !30213, !noalias !29511
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !30218

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.ev, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster13HistogramPairEECsfISxE4fmY1Y_14polars_parquet.exit106.i
  br i1 %.sroa.026.1137.i, label %bb.ew, label %.thread367.thread, !dbg !29503

bb.ew:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i, %.thread.i
  %.pn.pn.pn131.i = phi { ptr, i32 } [ %i.lv, %.thread.i ], [ %.pn.pn136.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit.i ] ; 2 uses
  %i.wr = icmp eq i64 %i.lt, 0, !dbg !30219
  br i1 %i.wr, label %.thread367.thread, label %bb.ex, !dbg !30219

bb.ex:                                            ; preds = %bb.ew
  %i.ws = shl nuw nsw i64 %i.lt, 2, !dbg !30223
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ls) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ls, i64 noundef range(i64 1, 0) %i.ws, i64 noundef 4) #19, !dbg !30226, !noalias !29511
  br label %.thread367.thread, !dbg !30231

bb.ey:                                            ; preds = %bb.dn, %._crit_edge147.i.i
  store i64 %i.tl, ptr %i.li, align 8, !dbg !30232, !alias.scope !29488, !noalias !30233
  %i.wt = icmp eq i64 %i.cw, 0, !dbg !30234
  br i1 %i.wt, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.ez, !dbg !30234

bb.ez:                                            ; preds = %bb.ey
  %i.wu = mul nuw nsw i64 %i.cw, 1040, !dbg !30239
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.cv, i64 noundef range(i64 1, 0) %i.wu, i64 noundef 8) #19, !dbg !30242
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !30247

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.ez, %bb.ey
  %i.wv = load i32, ptr %i.bw, align 4, !dbg !30248, !noundef !14
  %i.ww = icmp eq i32 %i.wv, 0, !dbg !30248
  br i1 %i.ww, label %.loopexit561, label %bb.fa, !dbg !30248

bb.fa:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit
  %i.wx = load i64, ptr %i.cs, align 8, !dbg !30249, !noundef !14 ; 3 uses
  %i.wy = icmp eq i64 %i.wx, 0, !dbg !30250
  br i1 %i.wy, label %.loopexit561, label %.lr.ph746, !dbg !30250

.lr.ph746:                                        ; preds = %bb.fa
  %i.wz = add i64 %i.wx, -1, !dbg !30250
  %.first_iter = icmp ult i64 %i.wz, %i.ld, !dbg !30250
  br label %bb.fc, !dbg !30250

.loopexit561:                                     ; preds = %.loopexit, %bb.fa, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram16HistogramLiteralE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit
  %i.xa = load i64, ptr %i.cx, align 8, !dbg !30251, !noundef !14
  %i.xb = getelementptr inbounds nuw i8, ptr %15, i64 232, !dbg !30252
  %i.xc = shl i64 %i.xa, 2, !dbg !30252           ; 24 uses
  store i64 %i.xc, ptr %i.xb, align 8, !dbg !30252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !30253
  call void @llvm.experimental.noalias.scope.decl(metadata !30256), !dbg !30259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !30261, !noalias !30256
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.xc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc115 unwind label %.split461.thread, !dbg !30261

.noexc115:                                        ; preds = %.loopexit561
  %i.xd = load i64, ptr %i.c, align 8, !dbg !30261, !range !5797, !noalias !30256, !noundef !14
  %i.xe = trunc nuw i64 %i.xd to i1, !dbg !30265
  %i.xf = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !30266
  %i.xg = load i64, ptr %i.xf, align 8, !dbg !30266, !range !5800, !noalias !30256, !noundef !14 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !30266 ; 2 uses
  br i1 %i.xe, label %bb.fb, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i114, !dbg !30265, !prof !168

bb.fb:                                            ; preds = %.noexc115
  %i.xi = load i64, ptr %i.xh, align 8, !dbg !30267, !noalias !30256
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.xg, i64 %i.xi) #20
          to label %.noexc116 unwind label %.split461.thread, !dbg !30268

.noexc116:                                        ; preds = %bb.fb
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i114: ; preds = %.noexc115
  %i.xj = load ptr, ptr %i.xh, align 8, !dbg !30269, !noalias !30256, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !30270, !noalias !30256
  store i64 %i.xg, ptr %i.d, align 8, !dbg !30271, !alias.scope !30256
  %i.xk = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !30271
  store ptr %i.xj, ptr %i.xk, align 8, !dbg !30271, !alias.scope !30256
  %i.xl = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !30271
  store i64 %i.xc, ptr %i.xl, align 8, !dbg !30271, !alias.scope !30256
  %i.xm = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.fd unwind label %.split461.thread, !dbg !30272 ; 2 uses

.loopexit:                                        ; preds = %bb.ij
  %i.xn = icmp eq i64 %i.xo, 0, !dbg !30250
  br i1 %i.xn, label %.loopexit561, label %bb.fc, !dbg !30250

bb.fc:                                            ; preds = %.lr.ph746, %.loopexit
  %.sroa.015.0745 = phi i64 [ %i.wx, %.lr.ph746 ], [ %i.xo, %.loopexit ]
  %i.xo = add i64 %.sroa.015.0745, -1, !dbg !30275 ; 5 uses
  %i.xp = shl i64 %i.xo, 6                        ; 2 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.xo ; 2 uses
  br i1 %.first_iter, label %.split744, label %.invoke1369, !dbg !30279

bb.fd:                                            ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !30280
  %i.xr = extractvalue { ptr, i64 } %i.xm, 0, !dbg !30281 ; 14 uses
  %i.xs = extractvalue { ptr, i64 } %i.xm, 1, !dbg !30281 ; 31 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %15, i64 160, !dbg !30282 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %15, i64 168, !dbg !30282 ; 2 uses
  %.val36 = load i64, ptr %i.xu, align 8, !dbg !30282, !noundef !14 ; 2 uses
  %i.xv = icmp eq i64 %.val36, 0, !dbg !30283
  br i1 %i.xv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit119, label %bb.fe, !dbg !30283

bb.fe:                                            ; preds = %bb.fd
  %.val = load ptr, ptr %i.xt, align 8, !dbg !30282, !nonnull !14, !noundef !14
  %i.xw = shl nuw nsw i64 %.val36, 2, !dbg !30287
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.xw, i64 noundef 4) #19, !dbg !30290
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit119, !dbg !30295

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit119: ; preds = %bb.fe, %bb.fd
  store ptr %i.xr, ptr %i.xt, align 8, !dbg !30282
  store i64 %i.xs, ptr %i.xu, align 8, !dbg !30282
  %i.xx = getelementptr inbounds nuw i8, ptr %15, i64 256, !dbg !30296 ; 2 uses
  store i64 %i.xc, ptr %i.xx, align 8, !dbg !30296
  %i.xy = invoke { ptr, i64 } @_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorNtNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram17HistogramDistanceE10alloc_cellCsfISxE4fmY1Y_14polars_parquet(ptr noalias nonnull poison, i64 noundef %i.xc)
          to label %bb.ff unwind label %.split461.thread, !dbg !30297 ; 2 uses

bb.ff:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit119
  %i.xz = extractvalue { ptr, i64 } %i.xy, 0, !dbg !30297 ; 12 uses
  %i.ya = extractvalue { ptr, i64 } %i.xy, 1, !dbg !30297 ; 23 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %15, i64 208, !dbg !30299 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %15, i64 216, !dbg !30299 ; 2 uses
  %.val68 = load i64, ptr %i.yc, align 8, !dbg !30299, !noundef !14 ; 2 uses
end_hunk_2
