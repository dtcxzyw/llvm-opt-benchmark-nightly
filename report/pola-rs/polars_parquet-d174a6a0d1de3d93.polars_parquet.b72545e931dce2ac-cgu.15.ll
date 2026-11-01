Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.15?download=true
inline.NumInlined: 2995
inline.NumDeleted: 2017
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write10statistics6reduce:bb.a
  %.sroa.10.32.extract.trunc = trunc nuw nsw i64 %i.er to i8, !dbg !32974
  br label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write10statistics14reduce_booleanINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtB6_10statistics10StatisticsENCNvB2_6reduces0_0EEB8_.exit, !dbg !32975

bb.gn:                                            ; preds = %.loopexit63.i.i.i, %bb.cb
  %.pre-phi47.i = phi i1 [ %i.is, %bb.cb ], [ %.pre46.i, %.loopexit63.i.i.i ], !dbg !32647
  %.pre-phi.i87 = phi i1 [ %i.in, %bb.cb ], [ %.pre.i86, %.loopexit63.i.i.i ], !dbg !32646
  %.sroa.23.0.i = phi i64 [ %.sroa.56.0.i.i51, %bb.cb ], [ %.sroa.5.0.i3.i.i.lcssa.i.i.i83, %.loopexit63.i.i.i ], !dbg !32631
  %.sroa.19.0.i = phi i64 [ %i.ir, %bb.cb ], [ %.sroa.012.0.i2.i.i.lcssa.i.i.i82, %.loopexit63.i.i.i ], !dbg !32631
  %.sroa.15.0.i = phi i64 [ %.sroa.54.0.i.i50, %bb.cb ], [ %.sroa.5.0.i.i.i.lcssa.i.i.i85, %.loopexit63.i.i.i ], !dbg !32631
  %.sroa.11.0.i = phi i64 [ %i.im, %bb.cb ], [ %.sroa.012.0.i.i.i.lcssa.i.i.i84, %.loopexit63.i.i.i ], !dbg !32631
  %.sroa.7.0.i88 = phi i64 [ %i.ii, %bb.cb ], [ 0, %.loopexit63.i.i.i ], !dbg !32631
  %.sroa.5.0.i89 = phi i64 [ %.sroa.5.0.i.i53, %bb.cb ], [ %.sroa.5.0.i7.i.i.lcssa.i.i.i, %.loopexit63.i.i.i ], !dbg !32631
  %.sroa.0.0.i90 = phi i64 [ %i.ie, %bb.cb ], [ %.sroa.012.0.i6.i.i.lcssa.i.i.i, %.loopexit63.i.i.i ], !dbg !32631
  %spec.select.i91 = select i1 %.pre-phi.i87, i64 %.sroa.15.0.i, i64 undef, !dbg !32646
  %.sroa.56.0.i92 = select i1 %.pre-phi47.i, i64 %.sroa.23.0.i, i64 undef, !dbg !32647
  %.sroa.25521.sroa.0.0.extract.trunc = trunc nuw nsw i32 %i.hw to i8, !dbg !32976
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i44), !dbg !32977
  %.sroa.10514.32.extract.trunc = trunc nuw nsw i64 %.sroa.11.0.i to i8, !dbg !32978
  %.sroa.20519.72.extract.trunc = trunc i64 %i.id to i32, !dbg !32978
  %.sroa.20519.76.extract.shift = lshr i64 %i.id, 32, !dbg !32978
  %.sroa.20519.76.extract.trunc = trunc nuw i64 %.sroa.20519.76.extract.shift to i32, !dbg !32978
  %.sroa.30.sroa.0.0.insert.ext = zext nneg i8 %i.hv to i32, !dbg !32978
  br label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write10statistics14reduce_booleanINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtB6_10statistics10StatisticsENCNvB2_6reduces0_0EEB8_.exit, !dbg !32979

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i
  %.sroa.39.0.i173 = phi float [ %.sroa.56.0.i.i117, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.0.i3.i.i.peel.i.i.i149, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.5.0.i3.i.i.i.i.i168, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32702 ; 2 uses
  %.sroa.35.0.i174 = phi i32 [ %i.mb, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.012.0.i2.i.i.peel.i.i.i148, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.012.0.i2.i.i.i.i.i167, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32702 ; 2 uses
  %.sroa.31.0.i175 = phi float [ %.sroa.54.0.i.i116, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.0.i.i.i.peel.i.i.i146, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i165, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32702 ; 2 uses
  %.sroa.27.0.i176 = phi i32 [ %i.lw, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.012.0.i.i.i.peel.i.i.i145, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.012.0.i.i.i.i.i.i164, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32702 ; 2 uses
  %.sroa.7.0.i177 = phi i64 [ %i.ls, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32702
  %.sroa.5.052.i = phi i64 [ %.sroa.5.0.i.i119, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.0.i6.i.i.peel.i.i.i153, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.5.0.i6.i.i.i.i.i172, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32702
  %.sroa.0.0.i178 = phi i64 [ %i.lo, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsfENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.012.0.i5.i.i.peel.i.i.i152, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.012.0.i5.i.i.i.i.i171, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsfEB23_NCNvNtNtB10_5write10statistics6reduces3_0NCINvB2Q_16reduce_primitivefINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32702
  %.sroa.15.i106.sroa.0.0.copyload = load i64, ptr %i.lk, align 8, !dbg !32702, !noalias !32266
  %.sroa.15.i106.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 64, !dbg !32702
  %.sroa.15.i106.sroa.4.0.copyload = load i64, ptr %.sroa.15.i106.sroa.4.0..sroa_idx, align 8, !dbg !32702, !noalias !32266
  %.sroa.15.i106.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 72, !dbg !32702
  %.sroa.15.i106.sroa.5.0.copyload = load i64, ptr %.sroa.15.i106.sroa.5.0..sroa_idx, align 8, !dbg !32702, !noalias !32266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i109, i64 24, i1 false), !dbg !32702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.i, ptr noundef nonnull align 8 dereferenceable(24) %i.lj, i64 24, i1 false), !dbg !32702
  %i.yj = trunc nuw i32 %.sroa.27.0.i176 to i1, !dbg !32980
  %i.yk = fcmp oeq float %.sroa.31.0.i175, 0.000000e+00, !dbg !32980
  %i.yl = trunc nuw i32 %.sroa.35.0.i174 to i1, !dbg !32981
  %i.ym = fcmp oeq float %.sroa.39.0.i173, 0.000000e+00, !dbg !32981
  %i.yn = bitcast float %.sroa.31.0.i175 to i32, !dbg !32982
  %i.yo = select i1 %i.yk, i32 -2147483648, i32 %i.yn, !dbg !32980
  %i.yp = select i1 %i.yj, i32 %i.yo, i32 undef, !dbg !32980
  %i.yq = bitcast float %.sroa.39.0.i173 to i32, !dbg !32982
  %i.yr = select i1 %i.ym, i32 0, i32 %i.yq, !dbg !32981
  %i.ys = select i1 %i.yl, i32 %i.yr, i32 undef, !dbg !32981
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i109), !dbg !32983
  %.sroa.10551.32.extract.trunc = trunc nuw nsw i64 %i.ll to i8, !dbg !32984
  br label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write10statistics14reduce_booleanINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtB6_10statistics10StatisticsENCNvB2_6reduces0_0EEB8_.exit, !dbg !32985

.loopexit963:                                     ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i
  %.sroa.23.0.i272 = phi double [ %.sroa.56.0.i.i217, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.0.i3.i.i.peel.i.i.i248, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.5.0.i3.i.i.i.i.i267, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32771 ; 2 uses
  %.sroa.19.0.i273 = phi i64 [ %i.pp, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.012.0.i2.i.i.peel.i.i.i247, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.012.0.i2.i.i.i.i.i266, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32771 ; 2 uses
  %.sroa.15.0.i274 = phi double [ %.sroa.54.0.i.i216, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.0.i.i.i.peel.i.i.i245, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i264, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32771 ; 2 uses
  %.sroa.11.0.i275 = phi i64 [ %i.pk, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.012.0.i.i.i.peel.i.i.i244, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.012.0.i.i.i.i.i.i263, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32771 ; 2 uses
  %.sroa.7.0.i276 = phi i64 [ %i.pg, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32771
  %.sroa.5.047.i = phi i64 [ %.sroa.5.0.i.i219, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.5.0.i7.i.i.peel.i.i.i252, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.5.0.i7.i.i.i.i.i271, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32771
  %.sroa.0.0.i277 = phi i64 [ %i.pc, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics9primitiveINtB5_19PrimitiveStatisticsdENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneBb_.exit.i ], [ %.sroa.012.0.i6.i.i.peel.i.i.i251, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.peel.i.i.i ], [ %.sroa.012.0.i6.i.i.i.i.i270, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRINtNtBY_9primitive19PrimitiveStatisticsdEB23_NCNvNtNtB10_5write10statistics6reduces4_0NCINvB2Q_16reduce_primitivedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2M_EE0E0B12_.exit.i.i.i ], !dbg !32771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i, ptr noundef nonnull align 8 dereferenceable(24) %i.oy, i64 24, i1 false), !dbg !32771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.25.i209, i64 24, i1 false), !dbg !32771
  %i.yt = trunc nuw i64 %.sroa.11.0.i275 to i1, !dbg !32986
  %i.yu = fcmp oeq double %.sroa.15.0.i274, 0.000000e+00, !dbg !32986
  %i.yv = trunc nuw i64 %.sroa.19.0.i273 to i1, !dbg !32987
  %i.yw = fcmp oeq double %.sroa.23.0.i272, 0.000000e+00, !dbg !32987
  %i.yx = bitcast double %.sroa.15.0.i274 to i64, !dbg !32988
  %i.yy = select i1 %i.yu, i64 -9223372036854775808, i64 %i.yx, !dbg !32986
  %i.yz = select i1 %i.yt, i64 %i.yy, i64 undef, !dbg !32986
  %i.za = bitcast double %.sroa.23.0.i272 to i64, !dbg !32988
  %i.zb = select i1 %i.yw, i64 0, i64 %i.za, !dbg !32987
  %i.zc = select i1 %i.yv, i64 %i.zb, i64 undef, !dbg !32987
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i209), !dbg !32989
  %.sroa.10565.32.extract.trunc = trunc nuw nsw i64 %.sroa.11.0.i275 to i8, !dbg !32990
  %.sroa.22570.72.extract.trunc = trunc i64 %i.pb to i32, !dbg !32990
  %.sroa.22570.76.extract.shift = lshr i64 %i.pb, 32, !dbg !32990
  %.sroa.22570.76.extract.trunc = trunc nuw i64 %.sroa.22570.76.extract.shift to i32, !dbg !32990
  %.sroa.27.104.extract.trunc = trunc nuw nsw i32 %i.ou to i8, !dbg !32990
  %.sroa.34574.sroa.0.0.insert.ext = zext nneg i8 %i.ot to i32, !dbg !32990
  br label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write10statistics14reduce_booleanINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtB6_10statistics10StatisticsENCNvB2_6reduces0_0EEB8_.exit, !dbg !32991

.loopexit964:                                     ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i
  %.sroa.30594.136.copyload = phi i64 [ %.sroa.7.i.sroa.10.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i.sroa.18.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i.sroa.18.0.copyload825, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ], !dbg !32857
  %.sroa.29593.136.copyload = phi i32 [ %.sroa.7.i.sroa.9.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i.sroa.15.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i.sroa.15.0.copyload820, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ], !dbg !32857
  %.sroa.28592.136.copyload = phi i32 [ %.sroa.7.i.sroa.8.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i.sroa.12.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i.sroa.12.0.copyload815, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ], !dbg !32857
  %.sroa.27591.136.copyload = phi i32 [ %.sroa.7.i.sroa.7.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i.sroa.9.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i.sroa.9.0.copyload810, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ], !dbg !32857
  %.sroa.25590.136.copyload = phi i32 [ %.sroa.7.i.sroa.0.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i.sroa.0.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i.sroa.0.0.copyload805, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ], !dbg !32857
  %.sink88.i = phi i64 [ %i.su, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.012.0.i.i.i.i.i.peel.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.012.0.i.i.i.i.i.i313, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ]
  %.sink87.i = phi i64 [ %i.sw, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.0.i.i.i.i.i.peel.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.5.0.i.i.i.i.i.i314, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ]
  %.sink.i315 = phi i64 [ %i.sy, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ]
  %.sroa.0.0.i4.sink.i = phi i64 [ %.sroa.0.0.i4.i, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.12.0.copyload56.peel.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.12.0.copyload56.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ]
  %.sroa.9.sink.i = phi ptr [ %.sroa.9.i, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics6binaryNtB5_16BinaryStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.13.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.13.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_6binary16BinaryStatisticsB23_NCNvNtNtB10_5write10statistics6reduces5_0NCINvB2H_13reduce_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2D_EE0E0B12_.exit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.16, i64 24, i1 false), !dbg !32857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.20, i64 24, i1 false), !dbg !32857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.14.sroa.17.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sink.i, i64 16, i1 false), !dbg !32857
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i), !dbg !32992, !noalias !32312
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.16), !dbg !32993
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.20), !dbg !32993
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i), !dbg !32993
  br label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write10statistics14reduce_booleanINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtB6_10statistics10StatisticsENCNvB2_6reduces0_0EEB8_.exit, !dbg !32994

.loopexit965:                                     ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i
  %.sroa.30625.136.copyload = phi i64 [ %.sroa.7.i325.sroa.10.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i321.sroa.18.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i321.sroa.18.0.copyload955, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ], !dbg !32949
  %.sroa.29624.136.copyload = phi i32 [ %.sroa.7.i325.sroa.9.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i321.sroa.15.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i321.sroa.15.0.copyload950, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ], !dbg !32949
  %.sroa.28623.136.copyload = phi i32 [ %.sroa.7.i325.sroa.8.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i321.sroa.12.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i321.sroa.12.0.copyload945, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ], !dbg !32949
  %.sroa.27622.136.copyload = phi i32 [ %.sroa.7.i325.sroa.7.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i321.sroa.9.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i321.sroa.9.0.copyload940, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ], !dbg !32949
  %.sroa.25621.136.copyload = phi i32 [ %.sroa.7.i325.sroa.0.0.copyload, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.11.i321.sroa.0.0.copyload, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.11.i321.sroa.0.0.copyload935, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ], !dbg !32949
  %.sink87.i375 = phi i64 [ %i.wa, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.012.0.i.i.i.i.i.peel.i362, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.012.0.i.i.i.i.i.i373, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ]
  %.sink86.i = phi i64 [ %i.wc, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.5.0.i.i.i.i.i.peel.i363, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.5.0.i.i.i.i.i.i374, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ]
  %.sink.i376 = phi i64 [ %i.we, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ 0, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ]
  %.sroa.0.0.i4.sink.i378 = phi i64 [ %.sroa.0.0.i4.i341, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.12.0.copyload55.peel.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.12.0.copyload55.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ]
  %.sroa.9.sink.i379 = phi ptr [ %.sroa.9.i326, %_RNvXs0_NtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics16fixed_len_binaryNtB5_18FixedLenStatisticsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i ], [ %.sroa.13.i322, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.peel.i ], [ %.sroa.13.i322, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldRRNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet10statistics10StatisticsRNtNtBY_16fixed_len_binary18FixedLenStatisticsB23_NCNvNtNtB10_5write10statistics6reduces6_0NCINvB2U_21reduce_fix_len_binaryINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB2Q_EE0E0B12_.exit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.31.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i324.sroa.16, i64 24, i1 false), !dbg !32949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.37.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i324.sroa.20, i64 24, i1 false), !dbg !32949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.14.sroa.17.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sink.i379, i64 16, i1 false), !dbg !32949
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i322), !dbg !32995, !noalias !32345
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i324.sroa.16), !dbg !32996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i324.sroa.20), !dbg !32996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i326), !dbg !32996
  br label %_RINvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write10statistics14reduce_booleanINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterRNtNtB6_10statistics10StatisticsENCNvB2_6reduces0_0EEB8_.exit, !dbg !32997

bb.go:                                            ; preds = %.body
  %i.zd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !32998
  unreachable, !dbg !32998
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write9row_group16compute_num_rows(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 16238331050800662) %2) unnamed_addr #16 personality ptr @rust_eh_personality !dbg !32999 {
bb.a:
  %.not = icmp eq i64 %2, 0, !dbg !33057
  br i1 %.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultxNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEEB19_.exit, label %bb.b, !dbg !33057

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 552, !dbg !33058
  %.val = load ptr, ptr %i.a, align 8, !dbg !33058, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 560, !dbg !33058
  %.val1 = load i64, ptr %i.b, align 8, !dbg !33058, !noundef !1321 ; 2 uses
  %.idx.i = mul nuw nsw i64 %.val1, 600, !dbg !33059
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i, !dbg !33059
  %i.d = icmp eq i64 %.val1, 0, !dbg !33060
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultxNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEEB19_.exit, label %.lr.ph.i.i, !dbg !33061

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i, %bb.d ], [ 0, %bb.b ], !dbg !33062
  %i.e = phi ptr [ %i.g, %bb.d ], [ %.val, %bb.b ] ; 3 uses
  %i.f = phi i64 [ %i.l, %bb.d ], [ 0, %bb.b ]    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 600, !dbg !33063 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 340, !dbg !33064
  %i.i = load i32, ptr %i.h, align 4, !dbg !33064, !alias.scope !33052, !noalias !33053, !noundef !1321
  switch i32 %i.i, label %bb.d [
    i32 3, label %bb.c
    i32 0, label %bb.c
  ], !dbg !33065

bb.c:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 560, !dbg !33066
  %.val4.i.i.i = load i64, ptr %i.j, align 8, !dbg !33066, !alias.scope !33052, !noalias !33053, !noundef !1321
  %i.k = add i64 %.val4.i.i.i, %i.f, !dbg !33067  ; 2 uses
  br label %bb.d, !dbg !33066

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i.i ], [ %i.k, %bb.c ], !dbg !33068 ; 2 uses
  %i.l = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.k, %bb.c ]
  %i.m = icmp eq ptr %i.g, %i.c, !dbg !33060
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultxNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEEB19_.exit, label %.lr.ph.i.i, !dbg !33061

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultxNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEEB19_.exit: ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.0.2.i.sink = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.0.1.i, %bb.d ]
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !33069
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33069
  store i64 %.sroa.0.2.i.sink, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !33069
  ret void, !dbg !33070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef float @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0) unnamed_addr #17 !dbg !33071 {
bb.a:
  %i.a = bitcast i16 %0 to half, !dbg !33085
  %.sroa.04.0.vec.extract = fpext half %i.a to float, !dbg !33085
  ret float %.sroa.04.0.vec.extract, !dbg !33086
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([344 x i8]) align 8 captures(none) dereferenceable(344) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(360) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i8 noundef range(i8 0, 8) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !33087 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [168 x i8], align 8               ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [168 x i8], align 8               ; 12 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [168 x i8], align 8               ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [1 x i8], align 1                 ; 4 uses
  %i.s = alloca [152 x i8], align 8               ; 12 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !33329
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 340, !dbg !33329
  %i.x = load i32, ptr %i.w, align 4, !dbg !33329, !noundef !1321
  invoke void @_RNvXs4_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_8PageTypeINtNtCscgRAwXFJnXP_4core7convert7TryFromNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8PageTypeE8try_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, i32 noundef %i.x)
          to label %bb.b unwind label %.thread365, !dbg !33428

.thread365:                                       ; preds = %bb.n, %bb.ae, %bb.ax, %bb.at, %bb.g, %bb.e, %bb.a, %bb.m, %bb.ad, %bb.as
  %.sroa.0123.1.ph = phi i8 [ 1, %bb.as ], [ 0, %bb.ad ], [ 1, %bb.m ], [ 1, %bb.a ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.at ], [ 1, %bb.ax ], [ 0, %bb.ae ], [ 1, %bb.n ]
  %.sroa.0122.1.ph = phi i1 [ true, %bb.as ], [ true, %bb.ad ], [ false, %bb.m ], [ true, %bb.a ], [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.at ], [ true, %bb.ax ], [ true, %bb.ae ], [ false, %bb.n ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread356, !dbg !33429

.thread370:                                       ; preds = %bb.bd
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.thread, !dbg !33429

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.v, align 8, !dbg !33430, !range !1692, !noundef !1321 ; 2 uses
  %.not = icmp eq i64 %i.y, -9223372036854775803, !dbg !33430
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !33431
  %i.aa = load i8, ptr %i.z, align 8, !dbg !33431 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c, !dbg !33432

bb.c:                                             ; preds = %bb.b
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 9, !dbg !33433
  %.sroa.3138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17, !dbg !33434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.3138.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6135.0..sroa_idx, i64 23, i1 false), !dbg !33433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !33435
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33434
  store i64 %i.y, ptr %i.ab, align 8, !dbg !33434
  %.sroa.2137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33434
  store i8 %i.aa, ptr %.sroa.2137.0..sroa_idx, align 8, !dbg !33434
  store i64 3, ptr %0, align 8, !dbg !33434
  br label %bb.av, !dbg !33436

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !33435
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 344, !dbg !33437
  %i.ad = load i32, ptr %i.ac, align 8, !dbg !33437, !noundef !1321 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1, !dbg !33438
  br i1 %i.ae, label %bb.f, label %bb.e, !dbg !33438

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !33439
  invoke void @_RNvXs5_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB5_12ParquetErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtB1f_3num5error15TryFromIntErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g)
          to label %bb.h unwind label %.thread365, !dbg !33439

bb.f:                                             ; preds = %bb.d
  %i.af = zext nneg i32 %i.ad to i64, !dbg !33440 ; 3 uses
  %i.ag = load atomic i32, ptr @_RNvNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page10DO_VERBOSE acquire, align 4, !dbg !33441
  %i.ah = icmp eq i32 %i.ag, 0, !dbg !33442
  br i1 %i.ah, label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1J_.exit, label %bb.g, !dbg !33442, !prof !1337

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1E_()
          to label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1J_.exit unwind label %.thread365, !dbg !33443

bb.h:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !33444
  store i64 3, ptr %0, align 8, !dbg !33444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33445
  br label %bb.av, !dbg !33446

_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1J_.exit: ; preds = %bb.f, %bb.g
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page10DO_VERBOSE, i64 4), align 4, !dbg !33447, !range !1448, !noundef !1321
  %i.ak = trunc nuw i8 %i.aj to i1, !dbg !33447   ; 3 uses
  switch i8 %i.aa, label %default.unreachable404 [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
  ], !dbg !33448

default.unreachable404:                           ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1J_.exit
  unreachable

bb.i:                                             ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1J_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !33449
  %.sroa.056.0.copyload = load i64, ptr %1, align 8, !dbg !33450 ; 2 uses
  %.not218 = icmp eq i64 %.sroa.056.0.copyload, 3, !dbg !33451
  br i1 %.not218, label %bb.m, label %bb.l, !dbg !33452

bb.j:                                             ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1J_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !33453
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !33454
  %.sroa.095.0.copyload = load i64, ptr %i.al, align 8, !dbg !33454 ; 2 uses
  %.not214 = icmp eq i64 %.sroa.095.0.copyload, 3, !dbg !33455
  br i1 %.not214, label %bb.ad, label %bb.ac, !dbg !33456

bb.k:                                             ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockbE15get_or_try_initNCINvB2_11get_or_initNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read4page6reader11finish_page0E0zEB1J_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 328, !dbg !33457 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 336, !dbg !33457 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !dbg !33457, !range !1706, !noundef !1321 ; 2 uses
  %.not212 = icmp eq i8 %i.ao, 3, !dbg !33457
  br i1 %.not212, label %bb.as, label %bb.ar, !dbg !33458

bb.l:                                             ; preds = %bb.i
  %.sroa.658.sroa.8.0..sroa.658.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !33450
  %.sroa.658.sroa.7.0..sroa.658.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !33450
  %.sroa.658.sroa.7.0.copyload = load i64, ptr %.sroa.658.sroa.7.0..sroa.658.0..sroa_idx.sroa_idx, align 8, !dbg !33450
  %.sroa.658.sroa.6.0..sroa.658.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !33450
  %.sroa.658.sroa.6.0.copyload = load ptr, ptr %.sroa.658.sroa.6.0..sroa.658.0..sroa_idx.sroa_idx, align 8, !dbg !33450
  %.sroa.658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !33450
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !33459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.658.sroa.8.0..sroa.658.0..sroa_idx.sroa_idx, i64 112, i1 false), !dbg !33460
  store i64 %.sroa.056.0.copyload, ptr %i.s, align 8, !dbg !33459
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !33459
  %5 = load <2 x i64>, ptr %.sroa.658.0..sroa_idx, align 8, !dbg !33450
  store <2 x i64> %5, ptr %.sroa.461.0..sroa_idx, align 8, !dbg !33459
  %.sroa.461.sroa.5.0..sroa.461.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24, !dbg !33459
  store ptr %.sroa.658.sroa.6.0.copyload, ptr %.sroa.461.sroa.5.0..sroa.461.0..sroa_idx.sroa_idx, align 8, !dbg !33459
  %.sroa.461.sroa.6.0..sroa.461.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !33459
  store i64 %.sroa.658.sroa.7.0.copyload, ptr %.sroa.461.sroa.6.0..sroa.461.0..sroa_idx.sroa_idx, align 8, !dbg !33459
  br i1 %i.ak, label %bb.r, label %bb.q, !dbg !33461

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !33462, !noalias !33342
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 70, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc229 unwind label %.thread365, !dbg !33462

.noexc229:                                        ; preds = %bb.m
  %i.ap = load i64, ptr %i.c, align 8, !dbg !33462, !range !1399, !noalias !33342, !noundef !1321
  %i.aq = trunc nuw i64 %i.ap to i1, !dbg !33463
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !33464
  %i.as = load i64, ptr %i.ar, align 8, !dbg !33464, !range !1396, !noalias !33342, !noundef !1321 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !33464 ; 2 uses
  br i1 %i.aq, label %bb.n, label %bb.o, !dbg !33463, !prof !1345

bb.n:                                             ; preds = %.noexc229
  %i.au = load i64, ptr %i.at, align 8, !dbg !33465, !noalias !33342
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.au) #44
          to label %.noexc230 unwind label %.thread365, !dbg !33466

.noexc230:                                        ; preds = %bb.n
  unreachable, !dbg !33466

bb.o:                                             ; preds = %.noexc229
  %i.av = load ptr, ptr %i.at, align 8, !dbg !33467, !noalias !33342, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.aw = icmp samesign ugt i64 %i.as, 69, !dbg !33468
  tail call void @llvm.assume(i1 %i.aw), !dbg !33469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !33470, !noalias !33342
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.av, ptr noundef nonnull align 1 dereferenceable(70) @91, i64 70, i1 false), !dbg !33471, !noalias !33342
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33472
  store i64 -9223372036854775808, ptr %i.ax, align 8, !dbg !33472
  %.sroa.2318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33472
  store i64 %i.as, ptr %.sroa.2318.0..sroa_idx, align 8, !dbg !33472
  %.sroa.3319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33472
  store ptr %i.av, ptr %.sroa.3319.0..sroa_idx, align 8, !dbg !33472
  %.sroa.4320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33472
  store i64 70, ptr %.sroa.4320.0..sroa_idx, align 8, !dbg !33472
  store i64 3, ptr %0, align 8, !dbg !33472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !33473
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit.thread unwind label %.thread391, !dbg !33474

bb.p:                                             ; preds = %.thread356
  br i1 %.sroa.0122.0362, label %.thread.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit265, !dbg !33429

.thread391:                                       ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit265.thread, !dbg !33429

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.bf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit252
  %i.az = trunc nuw i8 %.sroa.0123.7 to i1, !dbg !33429
  br i1 %i.az, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit.thread, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33429

bb.q:                                             ; preds = %bb.u, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !33475
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !33475 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ba, ptr noundef nonnull align 8 dereferenceable(152) %i.s, i64 152, i1 false), !dbg !33476
  store i64 3, ptr %i.o, align 8, !dbg !33475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !33477
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !33477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !33478
  store i64 0, ptr %i.n, align 8, !dbg !33477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33479
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40, !dbg !33479
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48, !dbg !33479 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 71, !dbg !33480
  %i.bf = load i8, ptr %i.be, align 1, !dbg !33480, !range !1484, !noundef !1321
  %i.bg = icmp eq i8 %i.bf, -40, !dbg !33481
  br i1 %i.bg, label %bb.v, label %bb.w, !dbg !33481

bb.r:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 136, !dbg !33482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !33483
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 140, !dbg !33484
  %i.bj = load i32, ptr %i.bi, align 4, !dbg !33484, !noundef !1321
  invoke void @_RNvXs6_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_8EncodingINtNtCscgRAwXFJnXP_4core7convert7TryFromNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8EncodingE8try_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, i32 noundef %i.bj)
          to label %bb.s unwind label %bb.ab, !dbg !33483

bb.s:                                             ; preds = %bb.r
  %i.bk = load i64, ptr %i.q, align 8, !dbg !33485, !range !1692, !noundef !1321
  %.not219 = icmp eq i64 %i.bk, -9223372036854775803, !dbg !33485 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !33486
  %i.bm = load i8, ptr %i.bl, align 8, !dbg !33486, !range !33354
  %storemerge220 = select i1 %.not219, i8 %i.bm, i8 9, !dbg !33486
  store i8 %storemerge220, ptr %i.r, align 1, !dbg !33487
  br i1 %.not219, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit, label %bb.t, !dbg !33488

bb.t:                                             ; preds = %bb.s
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit unwind label %bb.ab, !dbg !33489

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !33490
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !33491
  store ptr %i.bh, ptr %i.p, align 8, !dbg !33491
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !33491
  store ptr @_RNvXs9_NtNtNtCscgRAwXFJnXP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4166.0..sroa_idx, align 8, !dbg !33491
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !33491
  store ptr %4, ptr %i.bn, align 8, !dbg !33491
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24, !dbg !33491
  store ptr @_RNvXs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.4170.0..sroa_idx, align 8, !dbg !33491
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 32, !dbg !33491
  store ptr %i.r, ptr %i.bo, align 8, !dbg !33491
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !33491
  store ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingENtNtB7_3fmt5Debug3fmtBQ_, ptr %.sroa.4174.0..sroa_idx, align 8, !dbg !33491
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @176, ptr noundef nonnull %i.p)
          to label %bb.u unwind label %bb.ab, !dbg !33482

bb.u:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !33482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !33482
  br label %bb.q, !dbg !33492

bb.v:                                             ; preds = %bb.q
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd)
          to label %bb.y unwind label %bb.x, !dbg !33493

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !dbg !33494
  br label %bb.y, !dbg !33495

bb.x:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsfISxE4fmY1Y_14polars_parquet7parquet9CowBufferEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.n) #41
          to label %bb.aa unwind label %bb.z, !dbg !33496

bb.y:                                             ; preds = %bb.v, %bb.w
  %.sroa.775.sroa.0.sroa.6.sroa.5.0..sroa.775.sroa.0.sroa.6.0..sroa.775.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !33497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.775.sroa.0.sroa.6.sroa.5.0..sroa.775.sroa.0.sroa.6.0..sroa.775.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !33498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !33499
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 72, !dbg !33500
  %i.br = load i8, ptr %i.bq, align 8, !dbg !33500, !range !1576, !noundef !1321
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 80, !dbg !33501
  %.sroa.775.sroa.0.sroa.7.0..sroa.775.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !33497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.775.sroa.0.sroa.7.0..sroa.775.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !dbg !33501
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !33502
  %.sroa.775.sroa.0.sroa.5.0..sroa.775.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !33497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.775.sroa.0.sroa.5.0..sroa.775.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !dbg !33502
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 104, !dbg !33346
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !33497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.674.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %i.o, i64 168, i1 false), !dbg !33503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !33503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !33496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !33496
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33497
  store i64 0, ptr %.sroa.472.0..sroa_idx, align 8, !dbg !33497
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !33497
  %i.bv = load <2 x i64>, ptr %4, align 8, !dbg !33504
  store <2 x i64> %i.bv, ptr %.sroa.775.0..sroa_idx, align 8, !dbg !33497
  %.sroa.775.sroa.0.sroa.6.0..sroa.775.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !33497
  %i.bw = load <2 x i32>, ptr %i.bc, align 8, !dbg !33505
  store <2 x i32> %i.bw, ptr %.sroa.775.sroa.0.sroa.6.0..sroa.775.0..sroa_idx.sroa_idx, align 8, !dbg !33497
  %.sroa.775.sroa.0.sroa.6.sroa.6.0..sroa.775.sroa.0.sroa.6.0..sroa.775.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !33497
  store i8 %i.br, ptr %.sroa.775.sroa.0.sroa.6.sroa.6.0..sroa.775.sroa.0.sroa.6.0..sroa.775.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !33497
  %.sroa.775.sroa.4.0..sroa.775.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !33497
  %i.bx = load <2 x i16>, ptr %i.bu, align 8, !dbg !33346
  store <2 x i16> %i.bx, ptr %.sroa.775.sroa.4.0..sroa.775.0..sroa_idx.sroa_idx, align 8, !dbg !33497
  %.sroa.876.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !33497
  store i64 %i.af, ptr %.sroa.876.0..sroa_idx, align 8, !dbg !33497
  %.sroa.977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !33497
  store i8 %3, ptr %.sroa.977.0..sroa_idx, align 8, !dbg !33497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !33473
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit254, !dbg !33429

bb.z:                                             ; preds = %bb.bm, %bb.bl, %.thread356, %bb.bk, %bb.bh, %bb.aq, %bb.ap, %bb.ab, %bb.aa, %bb.bc, %bb.an, %bb.x
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !33506
  unreachable, !dbg !33506

bb.aa:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ba)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit265.thread unwind label %bb.z, !dbg !33507

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit254: ; preds = %bb.ba, %bb.bb, %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !33429 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !dbg !33508, !range !1478, !alias.scope !33372, !noundef !1321
  %i.cb = icmp eq i64 %i.ca, 3, !dbg !33508
  br i1 %i.cb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit.sink.split, !dbg !33508

bb.ab:                                            ; preds = %bb.t, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit, %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.s)
          to label %.thread356 unwind label %bb.z, !dbg !33509

bb.ac:                                            ; preds = %bb.j
  %.sroa.697.sroa.8.0..sroa.697.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 192, !dbg !33454
  %.sroa.697.sroa.7.0..sroa.697.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 184, !dbg !33454
  %.sroa.697.sroa.7.0.copyload = load i64, ptr %.sroa.697.sroa.7.0..sroa.697.0..sroa_idx.sroa_idx, align 8, !dbg !33454
  %.sroa.697.sroa.6.0..sroa.697.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !33454
  %.sroa.697.sroa.6.0.copyload = load ptr, ptr %.sroa.697.sroa.6.0..sroa.697.0..sroa_idx.sroa_idx, align 8, !dbg !33454
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 160, !dbg !33454
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !33510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5101.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.697.sroa.8.0..sroa.697.0..sroa_idx.sroa_idx, i64 128, i1 false), !dbg !33511
  store i64 %.sroa.095.0.copyload, ptr %i.m, align 8, !dbg !33510
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !33510
  %6 = load <2 x i64>, ptr %.sroa.697.0..sroa_idx, align 8, !dbg !33454
  store <2 x i64> %6, ptr %.sroa.4100.0..sroa_idx, align 8, !dbg !33510
  %.sroa.4100.sroa.5.0..sroa.4100.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !33510
  store ptr %.sroa.697.sroa.6.0.copyload, ptr %.sroa.4100.sroa.5.0..sroa.4100.0..sroa_idx.sroa_idx, align 8, !dbg !33510
  %.sroa.4100.sroa.6.0..sroa.4100.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !33510
  store i64 %.sroa.697.sroa.7.0.copyload, ptr %.sroa.4100.sroa.6.0..sroa.4100.0..sroa_idx.sroa_idx, align 8, !dbg !33510
  br i1 %i.ak, label %bb.ah, label %bb.ag, !dbg !33512

bb.ad:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33513, !noalias !33373
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 70, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc237 unwind label %.thread365, !dbg !33513

.noexc237:                                        ; preds = %bb.ad
  %i.cd = load i64, ptr %i.b, align 8, !dbg !33513, !range !1399, !noalias !33373, !noundef !1321
  %i.ce = trunc nuw i64 %i.cd to i1, !dbg !33514
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !33515
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !33515, !range !1396, !noalias !33373, !noundef !1321 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !33515 ; 2 uses
  br i1 %i.ce, label %bb.ae, label %bb.af, !dbg !33514, !prof !1345

bb.ae:                                            ; preds = %.noexc237
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !33516, !noalias !33373
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cg, i64 %i.ci) #44
          to label %.noexc238 unwind label %.thread365, !dbg !33517

.noexc238:                                        ; preds = %bb.ae
  unreachable, !dbg !33517

bb.af:                                            ; preds = %.noexc237
  %i.cj = load ptr, ptr %i.ch, align 8, !dbg !33518, !noalias !33373, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.ck = icmp samesign ugt i64 %i.cg, 69, !dbg !33519
  tail call void @llvm.assume(i1 %i.ck), !dbg !33520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33521, !noalias !33373
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.cj, ptr noundef nonnull align 1 dereferenceable(70) @92, i64 70, i1 false), !dbg !33522, !noalias !33373
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33523
  store i64 -9223372036854775808, ptr %i.cl, align 8, !dbg !33523
  %.sroa.2345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33523
  store i64 %i.cg, ptr %.sroa.2345.0..sroa_idx, align 8, !dbg !33523
  %.sroa.3346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33523
  store ptr %i.cj, ptr %.sroa.3346.0..sroa_idx, align 8, !dbg !33523
  %.sroa.4347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33523
  store i64 70, ptr %.sroa.4347.0..sroa_idx, align 8, !dbg !33523
  store i64 3, ptr %0, align 8, !dbg !33523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !33524
  br label %bb.av, !dbg !33525

bb.ag:                                            ; preds = %bb.ak, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !33526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.i, ptr noundef nonnull align 8 dereferenceable(168) %i.m, i64 168, i1 false), !dbg !33527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !33528
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !33528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !33529
  store i64 0, ptr %i.h, align 8, !dbg !33528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33530
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 40, !dbg !33530
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 48, !dbg !33530 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 71, !dbg !33531
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !33531, !range !1484, !noundef !1321
  %i.cr = icmp eq i8 %i.cq, -40, !dbg !33532
  br i1 %i.cr, label %bb.al, label %bb.am, !dbg !33532

bb.ah:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 136, !dbg !33533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !33534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !33534
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 148, !dbg !33535
  %i.cu = load i32, ptr %i.ct, align 4, !dbg !33535, !noundef !1321
  invoke void @_RNvXs6_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridgeNtB5_8EncodingINtNtCscgRAwXFJnXP_4core7convert7TryFromNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8EncodingE8try_from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, i32 noundef %i.cu)
          to label %bb.ai unwind label %bb.aq, !dbg !33534

bb.ai:                                            ; preds = %bb.ah
  %i.cv = load i64, ptr %i.k, align 8, !dbg !33536, !range !1692, !noundef !1321
  %.not215 = icmp eq i64 %i.cv, -9223372036854775803, !dbg !33536 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !33537
  %i.cx = load i8, ptr %i.cw, align 8, !dbg !33537, !range !33354
  %storemerge = select i1 %.not215, i8 %i.cx, i8 9, !dbg !33537
  store i8 %storemerge, ptr %i.l, align 1, !dbg !33538
  br i1 %.not215, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit240, label %bb.aj, !dbg !33539

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5error12ParquetErrorEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit240 unwind label %bb.aq, !dbg !33540

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit240: ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !33541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !33542
  store ptr %i.cs, ptr %i.j, align 8, !dbg !33542
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !33542
  store ptr @_RNvXs9_NtNtNtCscgRAwXFJnXP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4191.0..sroa_idx, align 8, !dbg !33542
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !33542
  store ptr %4, ptr %i.cy, align 8, !dbg !33542
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !33542
  store ptr @_RNvXs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types12parquet_typeNtB5_13PrimitiveTypeNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.4195.0..sroa_idx, align 8, !dbg !33542
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !33542
  store ptr %i.l, ptr %i.cz, align 8, !dbg !33542
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !33542
  store ptr @_RNvXsR_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingENtNtB7_3fmt5Debug3fmtBQ_, ptr %.sroa.4199.0..sroa_idx, align 8, !dbg !33542
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio6__print(ptr noundef nonnull @177, ptr noundef nonnull %i.j)
          to label %bb.ak unwind label %bb.aq, !dbg !33533

bb.ak:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !33533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !33533
  br label %bb.ag, !dbg !33543

bb.al:                                            ; preds = %bb.ag
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co)
          to label %bb.ao unwind label %bb.an, !dbg !33544

bb.am:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !dbg !33545
  br label %bb.ao, !dbg !33546

bb.an:                                            ; preds = %bb.al
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsfISxE4fmY1Y_14polars_parquet7parquet9CowBufferEBK_(ptr noalias noundef align 8 dereferenceable(32) %i.h) #41
          to label %bb.ap unwind label %bb.z, !dbg !33547

bb.ao:                                            ; preds = %bb.al, %bb.am
  %.sroa.7114.sroa.0.sroa.6.sroa.5.0..sroa.7114.sroa.0.sroa.6.0..sroa.7114.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264, !dbg !33548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7114.sroa.0.sroa.6.sroa.5.0..sroa.7114.sroa.0.sroa.6.0..sroa.7114.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !33549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !33550
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 72, !dbg !33551
  %i.dc = load i8, ptr %i.db, align 8, !dbg !33551, !range !1576, !noundef !1321
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 80, !dbg !33552
  %.sroa.7114.sroa.0.sroa.7.0..sroa.7114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296, !dbg !33548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7114.sroa.0.sroa.7.0..sroa.7114.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !dbg !33552
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !33553
  %.sroa.7114.sroa.0.sroa.5.0..sroa.7114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !33548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7114.sroa.0.sroa.5.0..sroa.7114.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !dbg !33553
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 104, !dbg !33554
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !33548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.6113.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %i.i, i64 168, i1 false), !dbg !33555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !33555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !33547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !33547
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33548
  store i64 0, ptr %.sroa.4111.0..sroa_idx, align 8, !dbg !33548
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !33548
  %i.dg = load <2 x i64>, ptr %4, align 8, !dbg !33556
  store <2 x i64> %i.dg, ptr %.sroa.7114.0..sroa_idx, align 8, !dbg !33548
  %.sroa.7114.sroa.0.sroa.6.0..sroa.7114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !33548
  %i.dh = load <2 x i32>, ptr %i.cn, align 8, !dbg !33557
  store <2 x i32> %i.dh, ptr %.sroa.7114.sroa.0.sroa.6.0..sroa.7114.0..sroa_idx.sroa_idx, align 8, !dbg !33548
  %.sroa.7114.sroa.0.sroa.6.sroa.6.0..sroa.7114.sroa.0.sroa.6.0..sroa.7114.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !33548
  store i8 %i.dc, ptr %.sroa.7114.sroa.0.sroa.6.sroa.6.0..sroa.7114.sroa.0.sroa.6.0..sroa.7114.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !33548
  %.sroa.7114.sroa.4.0..sroa.7114.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !33548
  %i.di = load <2 x i16>, ptr %i.df, align 8, !dbg !33554
  store <2 x i16> %i.di, ptr %.sroa.7114.sroa.4.0..sroa.7114.0..sroa_idx.sroa_idx, align 8, !dbg !33548
  %.sroa.8115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !33548
  store i64 %i.af, ptr %.sroa.8115.0..sroa_idx, align 8, !dbg !33548
  %.sroa.9116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !33548
  store i8 %3, ptr %.sroa.9116.0..sroa_idx, align 8, !dbg !33548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !33524
  %i.dj = load i64, ptr %1, align 8, !dbg !33558, !range !1478, !alias.scope !33406, !noundef !1321
  %i.dk = icmp eq i64 %i.dj, 3, !dbg !33558
  br i1 %i.dk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit.sink.split, !dbg !33558

bb.ap:                                            ; preds = %bb.an
  %i.dl = load i64, ptr %i.i, align 8, !dbg !33559, !range !1478, !alias.scope !33407, !noundef !1321
  %i.dm = icmp eq i64 %i.dl, 3, !dbg !33559
  %.sink.idx.i242.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.dm, i64 8, i64 0, !dbg !33559
  %.sink.idx.i242.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink.idx.i242.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx, !dbg !33559
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(152) %.sink.idx.i242.sroa.sel.idx.sroa.sel.idx.sroa.sel)
          to label %.thread.thread unwind label %bb.z, !dbg !33559

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit.sink.split: ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit254, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit.thread
  %.sink = phi ptr [ %i.bz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit254 ], [ %i.er, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit.thread ], [ %1, %bb.ao ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(152) %.sink), !dbg !33429
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !33560

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format16DataPageHeaderV2EECsfISxE4fmY1Y_14polars_parquet.exit.sink.split, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit.thread, %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format14DataPageHeaderEECsfISxE4fmY1Y_14polars_parquet.exit254, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit
  ret void, !dbg !33560

bb.aq:                                            ; preds = %bb.aj, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet14parquet_bridge8EncodingNtNtB16_5error12ParquetErrorEEB18_.exit240, %bb.ah
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format10StatisticsEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.m)
          to label %.thread356 unwind label %bb.z, !dbg !33561

bb.ar:                                            ; preds = %bb.k
  br i1 %i.ak, label %bb.ax, label %bb.aw, !dbg !33562

bb.as:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33563, !noalias !33408
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 76, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc249 unwind label %.thread365, !dbg !33563

.noexc249:                                        ; preds = %bb.as
  %i.do = load i64, ptr %i.a, align 8, !dbg !33563, !range !1399, !noalias !33408, !noundef !1321
  %i.dp = trunc nuw i64 %i.do to i1, !dbg !33564
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !33565
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !33565, !range !1396, !noalias !33408, !noundef !1321 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !33565 ; 2 uses
  br i1 %i.dp, label %bb.at, label %bb.au, !dbg !33564, !prof !1345

bb.at:                                            ; preds = %.noexc249
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !33566, !noalias !33408
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.dr, i64 %i.dt) #44
          to label %.noexc250 unwind label %.thread365, !dbg !33567

.noexc250:                                        ; preds = %bb.at
  unreachable, !dbg !33567

bb.au:                                            ; preds = %.noexc249
  %i.du = load ptr, ptr %i.ds, align 8, !dbg !33568, !noalias !33408, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.dv = icmp samesign ugt i64 %i.dr, 75, !dbg !33569
  tail call void @llvm.assume(i1 %i.dv), !dbg !33570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !33571, !noalias !33408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.du, ptr noundef nonnull align 1 dereferenceable(76) @93, i64 76, i1 false), !dbg !33572, !noalias !33408
  %i.dw = inttoptr i64 %i.dr to ptr, !dbg !33573
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33574
  store i64 -9223372036854775808, ptr %i.dx, align 8, !dbg !33574
  %.sroa.2150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33574
  store ptr %i.dw, ptr %.sroa.2150.0..sroa_idx, align 8, !dbg !33574
  %.sroa.3151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33574
  store ptr %i.du, ptr %.sroa.3151.0..sroa_idx, align 8, !dbg !33574
  %.sroa.3151.sroa.2.0..sroa.3151.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33574
  store i64 76, ptr %.sroa.3151.sroa.2.0..sroa.3151.0..sroa_idx.sroa_idx, align 8, !dbg !33574
  store i64 3, ptr %0, align 8, !dbg !33574
  br label %bb.av, !dbg !33525

bb.av:                                            ; preds = %bb.h, %bb.af, %bb.au, %bb.c
  %.sroa.0123.6 = phi i8 [ 1, %bb.c ], [ 0, %bb.af ], [ 1, %bb.au ], [ 1, %bb.h ], !dbg !33575 ; 2 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEECsfISxE4fmY1Y_14polars_parquet.exit252 unwind label %.split.thread, !dbg !33576

.split.thread:                                    ; preds = %bb.av
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.thread.thread, !dbg !33429

bb.aw:                                            ; preds = %bb.ay, %bb.ar
  %i.dz = phi i8 [ %.pre, %bb.ay ], [ %i.ao, %bb.ar ], !dbg !33577 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !33578
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !33578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !33579
  store i64 0, ptr %i.t, align 8, !dbg !33578
  %i.eb = load i32, ptr %i.am, align 8, !dbg !33580, !noundef !1321 ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, -1, !dbg !33581
  br i1 %i.ec, label %bb.ba, label %bb.az, !dbg !33581

bb.ax:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !33582
  store ptr %i.am, ptr %i.u, align 8, !dbg !33582
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !33582
  store ptr @_RNvXs9_NtNtNtCscgRAwXFJnXP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4155.0..sroa_idx, align 8, !dbg !33582
  %i.ed = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !33582
end_hunk_0
