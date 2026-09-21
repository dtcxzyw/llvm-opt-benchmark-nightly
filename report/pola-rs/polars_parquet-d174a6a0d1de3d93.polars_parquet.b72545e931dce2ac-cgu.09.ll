Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.09?download=true
inline.NumInlined: 2320
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RNvNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write14array_to_pages:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dq, i64 24, !dbg !43370
  %i.fw = atomicrmw add ptr %i.fv, i64 1 monotonic, align 8, !dbg !43371, !noalias !43207 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !43372

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.bp, %bb.bo
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 16, !dbg !43373
  %i.fy = load i64, ptr %i.fx, align 8, !dbg !43373, !noalias !43207, !noundef !1155
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 24, !dbg !43374
  %i.ga = load i64, ptr %i.fz, align 8, !dbg !43374, !noalias !43207, !noundef !1155
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 32, !dbg !43375
  %i.gc = load atomic i64, ptr %i.gb monotonic, align 8, !dbg !43376, !noalias !43207
  br label %bb.bq, !dbg !43377

bb.bq:                                            ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, %bb.az
  %.sroa.517.sroa.5.0.i.i = phi i64 [ undef, %bb.az ], [ %i.gc, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !43313
  %.sroa.517.sroa.4.0.i.i = phi i64 [ undef, %bb.az ], [ %i.ga, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !43313
  %.sroa.517.sroa.0.0.i.i = phi i64 [ undef, %bb.az ], [ %i.fy, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i ], !dbg !43313
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 40, !dbg !43313
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !43313, !noalias !43191, !noundef !1155
  br label %bb.bx, !dbg !43339

bb.br:                                            ; preds = %bb.bm
  %i.gf = load i64, ptr %i.fp, align 8, !dbg !43378, !range !1186, !noalias !43208, !noundef !1155
  %i.gg = icmp eq i64 %i.gf, 3, !dbg !43379
  br i1 %i.gg, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i, label %bb.bs, !dbg !43379

bb.bs:                                            ; preds = %bb.br
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 24, !dbg !43380
  %i.gi = atomicrmw add ptr %i.gh, i64 1 monotonic, align 8, !dbg !43381, !noalias !43208 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i, !dbg !43382

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i: ; preds = %bb.bs, %bb.br
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 16, !dbg !43383
  %i.gk = load i64, ptr %i.gj, align 8, !dbg !43383, !noalias !43208, !noundef !1155
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 24, !dbg !43384
  %i.gm = load i64, ptr %i.gl, align 8, !dbg !43384, !noalias !43208, !noundef !1155
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 32, !dbg !43385
  %i.go = load atomic i64, ptr %i.gn monotonic, align 8, !dbg !43386, !noalias !43208
  br label %bb.bt, !dbg !43387

bb.bt:                                            ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i, %bb.bm
  %.sroa.514.sroa.5.0.i.i = phi i64 [ undef, %bb.bm ], [ %i.go, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i ], !dbg !43388
  %.sroa.514.sroa.4.0.i.i = phi i64 [ undef, %bb.bm ], [ %i.gm, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i ], !dbg !43388
  %.sroa.514.sroa.0.0.i.i = phi i64 [ undef, %bb.bm ], [ %i.gk, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit29.i.i ], !dbg !43388
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 56, !dbg !43388
  %i.gq = load i8, ptr %i.gp, align 8, !dbg !43388, !range !1485, !noalias !43191, !noundef !1155
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 40, !dbg !43388
  %i.gs = load i64, ptr %i.gr, align 8, !dbg !43388, !noalias !43191, !noundef !1155
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 48, !dbg !43388
  %i.gu = load i64, ptr %i.gt, align 8, !dbg !43388, !noalias !43191, !noundef !1155
  store i64 %.sroa.514.sroa.4.0.i.i, ptr %.sroa.14.i, align 8, !dbg !43389, !alias.scope !43190, !noalias !43201
  br label %bb.bx, !dbg !43339

bb.bu:                                            ; preds = %bb.bn
  %i.gv = load i64, ptr %i.fs, align 8, !dbg !43390, !range !1186, !noalias !43209, !noundef !1155
  %i.gw = icmp eq i64 %i.gv, 3, !dbg !43391
  br i1 %i.gw, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i, label %bb.bv, !dbg !43391

bb.bv:                                            ; preds = %bb.bu
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24, !dbg !43392
  %i.gy = atomicrmw add ptr %i.gx, i64 1 monotonic, align 8, !dbg !43393, !noalias !43209 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i, !dbg !43394

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i: ; preds = %bb.bv, %bb.bu
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 16, !dbg !43395
  %i.ha = load i64, ptr %i.gz, align 8, !dbg !43395, !noalias !43209, !noundef !1155
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 24, !dbg !43396
  %i.hc = load i64, ptr %i.hb, align 8, !dbg !43396, !noalias !43209, !noundef !1155
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 32, !dbg !43397
  %i.he = load atomic i64, ptr %i.hd monotonic, align 8, !dbg !43398, !noalias !43209
  br label %bb.bw, !dbg !43399

bb.bw:                                            ; preds = %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i, %bb.bn
  %.sroa.511.sroa.5.0.i.i = phi i64 [ undef, %bb.bn ], [ %i.he, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i ], !dbg !43365
  %.sroa.511.sroa.4.0.i.i = phi i64 [ undef, %bb.bn ], [ %i.hc, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i ], !dbg !43365
  %.sroa.511.sroa.0.0.i.i = phi i64 [ undef, %bb.bn ], [ %i.ha, %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit30.i.i ], !dbg !43365
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.013.067.i, i64 40, !dbg !43365
  %i.hg = load i64, ptr %i.hf, align 8, !dbg !43365, !noalias !43191, !noundef !1155
  br label %bb.bx, !dbg !43339

bb.bx:                                            ; preds = %bb.bw, %bb.bt, %bb.bq, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i
  %.sroa.9.0.i = phi i64 [ %.sroa.517.sroa.0.0.i.i, %bb.bq ], [ %i.eo, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.fn, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.514.sroa.0.0.i.i, %bb.bt ], [ %.sroa.511.sroa.0.0.i.i, %bb.bw ], !dbg !43311
  %.sroa.431.0.i = phi ptr [ %i.dq, %bb.bq ], [ %i.dt, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.es, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.fp, %bb.bt ], [ %i.fs, %bb.bw ], !dbg !43311
  %.sink64.i.sroa.phi.i = phi ptr [ %.sroa.14.i, %bb.bq ], [ %.sroa.24.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.24.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.19.i, %bb.bt ], [ %.sroa.14.i, %bb.bw ]
  %.sroa.511.sroa.4.0.sink.i.i = phi i64 [ %.sroa.517.sroa.4.0.i.i, %bb.bq ], [ %.sroa.5.sroa.0.0.i.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.5.sroa.0.0.i23.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.514.sroa.5.0.i.i, %bb.bt ], [ %.sroa.511.sroa.4.0.i.i, %bb.bw ]
  %.sink63.i.sroa.phi.i = phi ptr [ %.sroa.19.i, %bb.bq ], [ %.sroa.29.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.29.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.24.i, %bb.bt ], [ %.sroa.19.i, %bb.bw ]
  %.sroa.511.sroa.5.0.sink.i.i = phi i64 [ %.sroa.517.sroa.5.0.i.i, %bb.bq ], [ %.sroa.5.sroa.4.0.i.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.5.sroa.4.0.i22.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.gs, %bb.bt ], [ %.sroa.511.sroa.5.0.i.i, %bb.bw ]
  %.sink62.i.sroa.phi.i = phi ptr [ %.sroa.24.i, %bb.bq ], [ %.sroa.34.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.34.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.29.i, %bb.bt ], [ %.sroa.24.i, %bb.bw ]
  %.sink61.i.i = phi i64 [ %i.ge, %bb.bq ], [ %.sroa.5.sroa.5.0.i.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.5.sroa.5.0.i21.i.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.gu, %bb.bt ], [ %i.hg, %bb.bw ]
  %.sink60.i.sroa.phi.i = phi ptr [ %.sroa.29.i, %bb.bq ], [ %.sroa.37.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.37.i, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %.sroa.34.i, %bb.bt ], [ %.sroa.29.i, %bb.bw ]
  %.sink59.i.i = phi i8 [ %i.dp, %bb.bq ], [ %i.ds, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedlENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.er, %_RNvXs8_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesINtB5_10ListNestedxENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i.i ], [ %i.gq, %bb.bt ], [ %i.fr, %bb.bw ]
  store i64 %.sroa.511.sroa.4.0.sink.i.i, ptr %.sink64.i.sroa.phi.i, align 8, !dbg !43311, !alias.scope !43190, !noalias !43201
  store i64 %.sroa.511.sroa.5.0.sink.i.i, ptr %.sink63.i.sroa.phi.i, align 8, !dbg !43311, !alias.scope !43190, !noalias !43201
  store i64 %.sink61.i.i, ptr %.sink62.i.sroa.phi.i, align 8, !dbg !43311, !alias.scope !43190, !noalias !43201
  store i8 %.sink59.i.i, ptr %.sink60.i.sroa.phi.i, align 8, !dbg !43311, !alias.scope !43190, !noalias !43201
  %i.hh = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %.sroa.7.066.i, !dbg !43400 ; 9 uses
  %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i = load i64, ptr %.sroa.14.i, align 8, !dbg !43401, !noalias !43201
  %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload.i = load i64, ptr %.sroa.19.i, align 8, !dbg !43401, !noalias !43201
  %.sroa.24.i.0..sroa.24.i.0..sroa.24.i.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload.i = load i64, ptr %.sroa.24.i, align 8, !dbg !43401, !noalias !43201
  %.sroa.29.i.0..sroa.29.i.0..sroa.29.i.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload.i = load i64, ptr %.sroa.29.i, align 8, !dbg !43401, !noalias !43201
  %.sroa.34.i.0..sroa.34.i.0..sroa.34.i.0..sroa.34.0..sroa.34.0..sroa.34.0.copyload.i = load i64, ptr %.sroa.34.i, align 8, !dbg !43401, !noalias !43201
  %.sroa.37.i.0..sroa.37.i.0..sroa.37.i.0..sroa.37.0..sroa.37.0..sroa.37.0.copyload.i = load i8, ptr %.sroa.37.i, align 8, !dbg !43401, !noalias !43201
  store i64 %i.dm, ptr %i.hh, align 8, !dbg !43402, !noalias !43201
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8, !dbg !43402
  store ptr %.sroa.431.0.i, ptr %.sroa.449.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  %.sroa.550.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 16, !dbg !43402
  store i64 %.sroa.9.0.i, ptr %.sroa.550.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 24, !dbg !43402
  store i64 %.sroa.14.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.0.copyload.i, ptr %.sroa.651.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  %.sroa.752.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 32, !dbg !43402
  store i64 %.sroa.19.i.0..sroa.19.i.0..sroa.19.i.0..sroa.19.0..sroa.19.0..sroa.19.0.copyload.i, ptr %.sroa.752.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  %.sroa.853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 40, !dbg !43402
  store i64 %.sroa.24.i.0..sroa.24.i.0..sroa.24.i.0..sroa.24.0..sroa.24.0..sroa.24.0.copyload.i, ptr %.sroa.853.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  %.sroa.954.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 48, !dbg !43402
  store i64 %.sroa.29.i.0..sroa.29.i.0..sroa.29.i.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload.i, ptr %.sroa.954.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  %.sroa.1055.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 56, !dbg !43402
  store i64 %.sroa.34.i.0..sroa.34.i.0..sroa.34.i.0..sroa.34.0..sroa.34.0..sroa.34.0.copyload.i, ptr %.sroa.1055.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  %.sroa.1156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 64, !dbg !43402
  store i8 %.sroa.37.i.0..sroa.37.i.0..sroa.37.i.0..sroa.37.0..sroa.37.0..sroa.37.0.copyload.i, ptr %.sroa.1156.0..sroa_idx.i, align 8, !dbg !43402, !noalias !43201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i), !dbg !43403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i), !dbg !43403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i), !dbg !43403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29.i), !dbg !43403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.34.i), !dbg !43403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i), !dbg !43403
  %i.hi = icmp eq i64 %i.di, 0, !dbg !43404
  br i1 %i.hi, label %bb.ch, label %.lr.ph.i, !dbg !43404

bb.by:                                            ; preds = %bb.au
  %i.hj = load i64, ptr %4, align 8, !dbg !43405, !range !1567, !noundef !1155
  %i.hk = icmp eq i64 %i.hj, 0, !dbg !43406
  br i1 %i.hk, label %bb.bz, label %.thread65, !dbg !43406

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !43407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !43408
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43214), !dbg !43409
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43215), !dbg !43409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !43410
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !43410 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 71, !dbg !43411 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 1, !dbg !43411, !range !1184, !alias.scope !43215, !noalias !43214, !noundef !1155
  %i.ho = icmp eq i8 %i.hn, -40, !dbg !43412
  br i1 %i.ho, label %bb.ca, label %bb.cb, !dbg !43412

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hl) #41
          to label %bb.cc unwind label %.thread61, !dbg !43413

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hl, i64 24, i1 false), !dbg !43414, !noalias !43214
  br label %bb.cc, !dbg !43415

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !43410
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 72, !dbg !43416
  %i.hr = load i8, ptr %i.hq, align 8, !dbg !43416, !range !1519, !alias.scope !43215, !noalias !43214, !noundef !1155
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 80, !dbg !43417
  %i.ht = getelementptr inbounds nuw i8, ptr %i.o, i64 80, !dbg !43418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.ht, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hs, i64 24, i1 false), !dbg !43417, !alias.scope !43216
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !43419
  %i.hv = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !43418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.hv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.hu, i64 24, i1 false), !dbg !43419, !alias.scope !43216
  %i.hw = getelementptr inbounds nuw i8, ptr %i.o, i64 40, !dbg !43418
  %i.hx = load <2 x i32>, ptr %i.hp, align 8, !dbg !43420, !alias.scope !43215, !noalias !43214
  store <2 x i32> %i.hx, ptr %i.hw, align 8, !dbg !43418, !alias.scope !43214, !noalias !43215
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 48, !dbg !43418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !43418, !noalias !43215
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72, !dbg !43418
  store i8 %i.hr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !43418, !alias.scope !43214, !noalias !43215
  %i.hy = load <2 x i64>, ptr %3, align 8, !dbg !43421, !alias.scope !43215, !noalias !43214
  store <2 x i64> %i.hy, ptr %i.o, align 16, !dbg !43418, !alias.scope !43214, !noalias !43215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !43422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !43407
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !dbg !43407
  invoke void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write10dictionary29encode_as_dictionary_optional(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noundef nonnull align 8 %4, i64 noundef %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %bb.cd unwind label %.thread61, !dbg !43407

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !43407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !43423
  %i.hz = load i64, ptr %i.p, align 8, !dbg !43407, !range !43217, !noundef !1155
  %.not30 = icmp eq i64 %i.hz, 19, !dbg !43407
  br i1 %.not30, label %bb.cg, label %bb.ce, !dbg !43424

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !dbg !43425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !43426
  %i.ia = load i8, ptr %i.hm, align 1, !dbg !43427, !range !1184, !alias.scope !43218, !noundef !1155
  %i.ib = icmp eq i8 %i.ia, -40, !dbg !43428
  br i1 %i.ib, label %bb.cf, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit, !dbg !43428, !prof !1185

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hl), !dbg !43429
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit, !dbg !43429

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !43426
  br label %.thread65, !dbg !43430

.thread73:                                        ; preds = %.thread69, %bb.av
  store i64 0, ptr %i.n, align 8, !dbg !43431
  %.sroa.552.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !43431
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.552.0..sroa_idx77, align 8, !dbg !43431
  %.sroa.753.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !43431
  store i64 %5, ptr %.sroa.753.0..sroa_idx78, align 8, !dbg !43431
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #37
          to label %bb.s unwind label %bb.cn, !dbg !43432

bb.ch:                                            ; preds = %bb.bx, %.lr.ph.i
  store i64 %5, ptr %i.n, align 8, !dbg !43431
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !43431
  store ptr %i.df, ptr %.sroa.552.0..sroa_idx, align 8, !dbg !43431
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !43431
  store i64 %5, ptr %.sroa.753.0..sroa_idx, align 8, !dbg !43431
  %i.ic = load i64, ptr %i.df, align 8, !dbg !43433, !range !1567, !noundef !1155
  switch i64 %i.ic, label %default.unreachable95 [
    i64 0, label %bb.ci
    i64 1, label %bb.cj
    i64 2, label %bb.ck
    i64 3, label %bb.cl
    i64 4, label %bb.cm
  ], !dbg !43434

bb.ci:                                            ; preds = %bb.ch
  %i.id = getelementptr inbounds nuw i8, ptr %i.df, i64 40, !dbg !43435
  %i.ie = load i64, ptr %i.id, align 8, !dbg !43435, !noundef !1155
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !43436

bb.cj:                                            ; preds = %bb.ch
  %i.if = getelementptr inbounds nuw i8, ptr %i.df, i64 24, !dbg !43437
  %i.ig = load i64, ptr %i.if, align 8, !dbg !43437, !noundef !1155
  %i.ih = add i64 %i.ig, -1, !dbg !43438
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !43439

bb.ck:                                            ; preds = %bb.ch
  %i.ii = getelementptr inbounds nuw i8, ptr %i.df, i64 24, !dbg !43440
  %i.ij = load i64, ptr %i.ii, align 8, !dbg !43440, !noundef !1155
  %i.ik = add i64 %i.ij, -1, !dbg !43441
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !43442

bb.cl:                                            ; preds = %bb.ch
  %i.il = getelementptr inbounds nuw i8, ptr %i.df, i64 48, !dbg !43443
  %i.im = load i64, ptr %i.il, align 8, !dbg !43443, !noundef !1155
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !43444

bb.cm:                                            ; preds = %bb.ch
  %i.in = getelementptr inbounds nuw i8, ptr %i.df, i64 40, !dbg !43445
  %i.io = load i64, ptr %i.in, align 8, !dbg !43445, !noundef !1155
  br label %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, !dbg !43446

bb.cn:                                            ; preds = %bb.co, %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit, %.thread73
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %.sroa.0.0.i = phi i64 [ %i.ie, %bb.ci ], [ %i.ih, %bb.cj ], [ %i.ik, %bb.ck ], [ %i.im, %bb.cl ], [ %i.io, %bb.cm ], !dbg !43447 ; 5 uses
  %i.iq = invoke noundef i64 @_RNvNtNtNtCs8774dFTUdNv_12polars_arrow7compute9aggregate6memory20estimated_bytes_size(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %2)
          to label %bb.co unwind label %bb.cn, !dbg !43448

bb.co:                                            ; preds = %_RNvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pagesNtB4_6Nested3len.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 184, !dbg !43449
  %i.is = load ptr, ptr %i.ir, align 8, !dbg !43449, !invariant.load !1155, !nonnull !1155
  %i.it = invoke { ptr, ptr } %i.is(ptr noundef nonnull %1)
          to label %bb.cp unwind label %bb.cn, !dbg !43450 ; 2 uses

bb.cp:                                            ; preds = %bb.co
  %i.iu = extractvalue { ptr, ptr } %i.it, 0, !dbg !43449 ; 3 uses
  %i.iv = extractvalue { ptr, ptr } %i.it, 1, !dbg !43449 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24, !dbg !43451
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !43451
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32, !dbg !43451
  %.sroa.449.0.copyload = load i64, ptr %.sroa.449.0..sroa_idx, align 8, !dbg !43451
  %i.iw = icmp eq i64 %.sroa.0.0.i, 0, !dbg !43452
  br i1 %i.iw, label %bb.cs, label %bb.cq, !dbg !43452

bb.cq:                                            ; preds = %bb.cp
  %i.ix = uitofp i64 %i.iq to double, !dbg !43453
  %i.iy = uitofp i64 %.sroa.0.0.i to double, !dbg !43454
  %i.iz = fdiv double %i.ix, %i.iy, !dbg !43455
  %i.ja = call i64 @llvm.fptoui.sat.i64.f64(double %i.iz), !dbg !43455
  %i.jb = add i64 %i.ja, 1, !dbg !43456           ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 0, !dbg !43457
  br i1 %i.jc, label %bb.cr, label %bb.cs, !dbg !43457

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #42
          to label %.noexc40 unwind label %bb.ct, !dbg !43457

.noexc40:                                         ; preds = %bb.cr
  unreachable, !dbg !43457

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %.sroa.03.014.i = phi i64 [ %i.jb, %bb.cq ], [ 1, %bb.cp ]
  %i.jd = trunc nuw i64 %.sroa.3.0.copyload to i1, !dbg !43458
  %i.je = call i64 @llvm.umin.i64(i64 %.sroa.449.0.copyload, i64 2113929216), !dbg !43459
  %.sroa.0.0.i.i = select i1 %i.jd, i64 %i.je, i64 1048576, !dbg !43458
  %i.jf = udiv i64 %.sroa.0.0.i.i, %.sroa.03.014.i, !dbg !43457
  %.sroa.0.0.i12.i = call noundef i64 @llvm.umax.i64(i64 %i.jf, i64 1), !dbg !43460 ; 4 uses
  %i.jg = udiv i64 %.sroa.0.0.i, %.sroa.0.0.i12.i, !dbg !43461
  %i.jh = urem i64 %.sroa.0.0.i, %.sroa.0.0.i12.i, !dbg !43462
  %.not10.i.i.i = icmp ne i64 %i.jh, 0, !dbg !43463
  %i.ji = zext i1 %.not10.i.i.i to i64, !dbg !43463
  %.sroa.05.0.i.i.i = add i64 %i.jg, %i.ji, !dbg !43463
  %i.jj = add nsw i64 %.sroa.0.0.i12.i, -1, !dbg !43464
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023), !dbg !43465
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iu) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iv) ]
  %.sroa.023.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.023, i64 160, !dbg !43465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.160..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !dbg !43465
  %.sroa.023.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.023, i64 56, !dbg !43465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.023.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !dbg !43465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.023, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !dbg !43465
  %i.jk = getelementptr inbounds nuw i8, ptr %i.m, i64 208, !dbg !43466
  store i64 %.sroa.0.0.i12.i, ptr %i.jk, align 8, !dbg !43466
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 216, !dbg !43466
  store i64 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !43466
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 224, !dbg !43466
  store i64 0, ptr %.sroa.544.0..sroa_idx, align 8, !dbg !43466
  %.sroa.6.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.m, i64 232, !dbg !43466
  store i64 %.sroa.05.0.i.i.i, ptr %.sroa.6.0..sroa_idx45, align 8, !dbg !43466
  %.sroa.7.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.m, i64 240, !dbg !43466
  store i64 %i.jj, ptr %.sroa.7.0..sroa_idx46, align 8, !dbg !43466
  %.sroa.8.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.m, i64 248, !dbg !43466
  store i8 1, ptr %.sroa.8.0..sroa_idx47, align 8, !dbg !43466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.m, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.023, i64 184, i1 false), !dbg !43466
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 184, !dbg !43466
  store ptr %i.iu, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !43466
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 192, !dbg !43466
  store ptr %i.iv, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !43466
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 200, !dbg !43466
  store i8 %.sroa.0.068, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !43466
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023), !dbg !43467
  %i.jl = call { ptr, ptr } @_RINvMs_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write8dyn_iterINtB5_7DynIterINtNtCscgRAwXFJnXP_4core6result6ResultNtNtB9_4page4PageNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE3newINtNtNtNtB1l_4iter8adapters3map3MapIB2X_INtNtB31_7step_by6StepByINtNtNtB1l_3ops5range5RangejEENCNvNtNtBb_5arrow5write16row_slice_ranges0ENCNvB4w_14array_to_pages0EEBb_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.m), !dbg !43468 ; 2 uses
  %i.jm = extractvalue { ptr, ptr } %i.jl, 0, !dbg !43468
  %i.jn = extractvalue { ptr, ptr } %i.jl, 1, !dbg !43468
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !43469
  store ptr %i.jm, ptr %i.jo, align 8, !dbg !43469
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !43469
  store ptr %i.jn, ptr %i.jp, align 8, !dbg !43469
  store i64 18, ptr %0, align 8, !dbg !43469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !43229
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_type13PrimitiveTypeEBQ_.exit, !dbg !43229

bb.ct:                                            ; preds = %bb.cr
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iv) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsfISxE4fmY1Y_14polars_parquet(ptr %i.iu, ptr nonnull %i.iv) #39
          to label %bb.cv unwind label %bb.cu, !dbg !43470

bb.cu:                                            ; preds = %bb.cw, %bb.ct, %bb.cv
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !43471
  unreachable, !dbg !43471

bb.cv:                                            ; preds = %bb.ct, %bb.cn
  %.pn.ph = phi { ptr, i32 } [ %i.ip, %bb.cn ], [ %i.jq, %bb.ct ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5pages6NestedEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #39
          to label %.thread unwind label %bb.cu, !dbg !43229

.thread58:                                        ; preds = %.thread, %bb.cw
  resume { ptr, i32 } %.pn3357, !dbg !43471

.thread:                                          ; preds = %bb.cv, %.thread61
  %.pn3357 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread61 ], [ %.pn.ph, %bb.cv ]
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 71, !dbg !43472
  %i.jt = load i8, ptr %i.js, align 1, !dbg !43472, !range !1184, !alias.scope !43226, !noundef !1155
  %i.ju = icmp eq i8 %i.jt, -40, !dbg !43473
  br i1 %i.ju, label %bb.cw, label %.thread58, !dbg !43473, !prof !1185

bb.cw:                                            ; preds = %.thread
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 48, !dbg !43474
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jv)
          to label %.thread58 unwind label %bb.cu, !dbg !43475
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef i64 @_RNvNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write14get_max_length(ptr nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 128102389400760776) %1) unnamed_addr #10 !dbg !43476 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 72, !dbg !43508
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx, !dbg !43508
  %i.b = icmp eq i64 %1, 0, !dbg !43509
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !dbg !43506

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.011 = phi i64 [ %.sroa.0.1, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.sroa.04.010 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.04.010, i64 72, !dbg !43510 ; 2 uses
  %i.d = load i64, ptr %.sroa.04.010, align 8, !dbg !43511, !range !1567, !noundef !1155
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ], !dbg !43512

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.1, %bb.b ], !dbg !43513
  ret i64 %.sroa.0.0.lcssa, !dbg !43514

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph
  %.sroa.0.1 = phi i64 [ %.sroa.0.011, %.lr.ph ], [ %i.n, %bb.c ], [ %i.v, %bb.d ], [ %i.ab, %bb.e ], !dbg !43515 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.a, !dbg !43509
  br i1 %i.e, label %._crit_edge, label %.lr.ph, !dbg !43506

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %.sroa.04.010, i64 16, !dbg !43516
  %.val = load ptr, ptr %i.f, align 8, !dbg !43516, !nonnull !1155, !noundef !1155 ; 2 uses
end_hunk_0
