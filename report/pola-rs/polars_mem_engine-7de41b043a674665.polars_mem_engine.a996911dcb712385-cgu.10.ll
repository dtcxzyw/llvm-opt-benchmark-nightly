inline.NumInlined: 3075
inline.NumDeleted: 1348
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvNtNtCseyIfFeUOWMb_17polars_mem_engine9executors16group_by_rolling15sort_and_groups:bb.a

bb.p:                                             ; preds = %bb.o
  %i.as = invoke noundef nonnull align 8 ptr @_RNvMNtCs1LHh8CLbVkQ_11polars_core5frameNtNtB2_9dataframe9DataFrame21push_column_unchecked(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(160) %i.q)
          to label %bb.q unwind label %bb.n, !dbg !20207 ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !20208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !20209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !20210
  invoke void @_RNvXse_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB5_12ChunkedArrayNtNtB7_9datatypes10UInt32TypeENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noundef nonnull align 8 %i.t)
          to label %bb.r unwind label %bb.n, !dbg !20211

bb.r:                                             ; preds = %bb.q
  %i.at = invoke { ptr, ptr } @_RNvXs2w_NtCs1LHh8CLbVkQ_11polars_core9datatypesNtB6_10UInt32TypeNtB6_18PolarsPhysicalType14ca_into_series(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n)
          to label %bb.s unwind label %bb.n, !dbg !20212 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.au = extractvalue { ptr, ptr } %i.at, 0, !dbg !20212
  %i.av = extractvalue { ptr, ptr } %i.at, 1, !dbg !20212
  store ptr %i.au, ptr %i.o, align 8, !dbg !20212
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !20212
  store ptr %i.av, ptr %i.aw, align 8, !dbg !20212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !20215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !20216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !20218
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !20219
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %i.ax, align 4, !dbg !20219
  store i32 0, ptr %i.l, align 4, !dbg !20219
  invoke void @_RNvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops7various14is_sorted_impl(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.l)
          to label %bb.v unwind label %bb.u, !dbg !20222

.body38:                                          ; preds = %bb.an, %bb.x, %bb.am, %bb.u, %bb.ao
  %.pn29 = phi { ptr, i32 } [ %eh.lpad-body42, %bb.an ], [ %i.bs, %bb.ao ], [ %i.br, %bb.am ], [ %i.bb, %bb.u ], [ %i.bd, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20231), !dbg !20234
  call void @llvm.experimental.noalias.scope.decl(metadata !20235), !dbg !20238
  call void @llvm.experimental.noalias.scope.decl(metadata !20240), !dbg !20243
  %i.ay = load ptr, ptr %i.o, align 8, !dbg !20245, !alias.scope !20249, !nonnull !14, !noundef !14
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !dbg !20250, !noalias !20249
  %i.ba = icmp eq i64 %i.az, 1, !dbg !20253
  br i1 %i.ba, label %bb.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !20253

bb.t:                                             ; preds = %.body38
  fence acquire, !dbg !20254
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #39
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.ap, !dbg !20256

bb.u:                                             ; preds = %bb.ar, %bb.ab, %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body38

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !20257
  call void @llvm.experimental.noalias.scope.decl(metadata !20258), !dbg !20261
  %i.bc = load i64, ptr %i.m, align 8, !dbg !20262, !range !141, !alias.scope !20258, !noundef !14
  %.not.i37 = icmp eq i64 %i.bc, 18, !dbg !20262
  br i1 %.not.i37, label %bb.aa, label %bb.w, !dbg !20265, !prof !319

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20266, !noalias !20258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.m, i64 72, i1 false), !dbg !20266
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #40
          to label %bb.y unwind label %bb.x, !dbg !20267, !noalias !20258

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #38
          to label %.body38 unwind label %bb.z, !dbg !20269, !noalias !20258

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !20270, !noalias !20258
  unreachable, !dbg !20270

bb.aa:                                            ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !20271
  %i.bg = load i8, ptr %i.bf, align 8, !dbg !20271, !range !5209, !alias.scope !20258, !noundef !14
  %i.bh = trunc nuw i8 %i.bg to i1, !dbg !20271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !20272
  br i1 %i.bh, label %bb.ai, label %bb.ab, !dbg !20216

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20274
  store ptr %1, ptr %i.d, align 8, !dbg !20274
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !20274
  store ptr %i.t, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !20274
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !20274
  store ptr %2, ptr %.sroa.519.0..sroa_idx, align 8, !dbg !20274
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !20274
  store ptr %i.t, ptr %.sroa.620.0..sroa_idx, align 8, !dbg !20274
  invoke void @_RINvMNtCs1LHh8CLbVkQ_11polars_core7runtimeNtB3_5RAYON4withNCINvB2_7installNCINvB2_4joinNCNvNtNtCseyIfFeUOWMb_17polars_mem_engine9executors16group_by_rolling15sort_and_groups0NCB1p_s_0NtNtNtB5_5frame9dataframe9DataFrameINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtB2Z_6column6ColumnEE0TB2V_B3u_EE0B4q_EB1v_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %bb.ac unwind label %bb.u, !dbg !20279

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !20281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !20282
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 48, !dbg !20282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !dbg !20282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !20283
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(48) %1)
          to label %bb.ad unwind label %bb.ao, !dbg !20284

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !dbg !20284
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.af unwind label %bb.ae, !dbg !20286

bb.ae:                                            ; preds = %bb.ad
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.an unwind label %bb.ag, !dbg !20288

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.ah, !dbg !20290

bb.ag:                                            ; preds = %bb.ae
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !20286
  unreachable, !dbg !20286

bb.ah:                                            ; preds = %bb.af
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.an, !dbg !20292

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !20292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !20293
  br label %bb.ai, !dbg !20294

bb.ai:                                            ; preds = %bb.aa, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseyIfFeUOWMb_17polars_mem_engine.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !20295), !dbg !20298
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !20301 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20304), !dbg !20301
  call void @llvm.experimental.noalias.scope.decl(metadata !20307), !dbg !20310
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !20312 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.bn, align 8, !dbg !20312, !alias.scope !20314, !noundef !14
  switch i32 %.val.i.i.i, label %bb.aj [
    i32 3, label %bb.aq
    i32 2, label %bb.aq
    i32 0, label %bb.ak
  ], !dbg !20315, !prof !400

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #41
          to label %.noexc.i unwind label %bb.am, !dbg !20319, !noalias !20295

.noexc.i:                                         ; preds = %bb.aj
  unreachable, !dbg !20319

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !20320), !dbg !20323
  call void @llvm.experimental.noalias.scope.decl(metadata !20325), !dbg !20328
  %i.bo = load ptr, ptr %i.bm, align 8, !dbg !20330, !alias.scope !20334, !nonnull !14, !noundef !14
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !dbg !20335, !noalias !20334
  %i.bq = icmp eq i64 %i.bp, 1, !dbg !20338
  br i1 %i.bq, label %bb.al, label %bb.aq, !dbg !20338

bb.al:                                            ; preds = %bb.ak
  fence acquire, !dbg !20339
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bm) #39
          to label %bb.aq unwind label %bb.am, !dbg !20341

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.br = landingpad { ptr, i32 }
          cleanup
  store i32 3, ptr %i.bn, align 8, !dbg !20301, !alias.scope !20295
  br label %.body38, !dbg !20342

bb.an:                                            ; preds = %bb.ah, %bb.ae
  %eh.lpad-body42 = phi { ptr, i32 } [ %i.bl, %bb.ah ], [ %i.bj, %bb.ae ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !20292
  br label %.body38, !dbg !20293

bb.ao:                                            ; preds = %bb.ac
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !dbg !20284
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #38
          to label %.body38 unwind label %bb.ap, !dbg !20293

bb.ap:                                            ; preds = %bb.t, %bb.bx, %bb.bw, %bb.bv, %.body, %.body35, %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit, %.thread50
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !20343
  unreachable, !dbg !20343

bb.aq:                                            ; preds = %bb.al, %bb.ak, %bb.ai, %bb.ai
  store i32 3, ptr %i.bn, align 8, !dbg !20301, !alias.scope !20295
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20344 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !20344, !noundef !14 ; 4 uses
  %i.bw = icmp eq i64 %i.bv, 0, !dbg !20344
  br i1 %i.bw, label %bb.ar, label %bb.as, !dbg !20344, !prof !864

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #40
          to label %bb.au unwind label %bb.u, !dbg !20347

bb.as:                                            ; preds = %bb.aq
  %i.bx = add nsw i64 %i.bv, -1, !dbg !20350      ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !dbg !20350
  %i.by = load i64, ptr %1, align 8, !dbg !20351, !range !2776, !noundef !14
  %i.bz = icmp samesign ult i64 %i.bx, %i.by, !dbg !20358
  call void @llvm.assume(i1 %i.bz), !dbg !20359
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20362
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !20362, !nonnull !14, !noundef !14
  %i.cc = icmp ult i64 %i.bv, 57646075230342350, !dbg !20370
  call void @llvm.assume(i1 %i.cc), !dbg !20374
  %i.cd = getelementptr [160 x i8], ptr %i.cb, i64 %i.bv, !dbg !20375
  %3 = getelementptr i8, ptr %i.cd, i64 -160, !dbg !20375
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.r, ptr noundef nonnull align 16 dereferenceable(160) %3, i64 160, i1 false), !dbg !20378
  call void @llvm.experimental.noalias.scope.decl(metadata !20379), !dbg !20234
  call void @llvm.experimental.noalias.scope.decl(metadata !20382), !dbg !20385
  call void @llvm.experimental.noalias.scope.decl(metadata !20387), !dbg !20390
  %i.ce = load ptr, ptr %i.o, align 8, !dbg !20392, !alias.scope !20396, !nonnull !14, !noundef !14
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !dbg !20397, !noalias !20396
  %i.cg = icmp eq i64 %i.cf, 1, !dbg !20400
  br i1 %i.cg, label %bb.at, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit46, !dbg !20400

bb.at:                                            ; preds = %bb.as
  fence acquire, !dbg !20401
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #39
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit46 unwind label %bb.n, !dbg !20403

bb.au:                                            ; preds = %bb.bn, %bb.ar
  unreachable

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit46: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !20234
  %i.ch = load i8, ptr %i.r, align 16, !dbg !20404, !range !1204, !noundef !14
  %.not24 = icmp eq i8 %i.ch, 31, !dbg !20404
  br i1 %.not24, label %bb.aw, label %bb.av, !dbg !20408

bb.av:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit46
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB2_12ScalarColumn22as_materialized_series(ptr noundef nonnull align 16 %i.r)
          to label %bb.ax unwind label %bb.ay, !dbg !20409

bb.aw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !20411
  br label %bb.ax, !dbg !20415

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.sroa.06.0 = phi ptr [ %i.cj, %bb.aw ], [ %i.ci, %bb.av ], !dbg !20416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20417
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series3ops8downcastNtB6_6Series13binary_offset(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.06.0)
          to label %bb.az unwind label %bb.ay, !dbg !20419

.body35:                                          ; preds = %bb.bb, %bb.ay, %.body
  %.pn27 = phi { ptr, i32 } [ %.pn25, %.body ], [ %i.ck, %bb.ay ], [ %i.cm, %bb.bb ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 16 dereferenceable(160) %i.r) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.ap, !dbg !20420

bb.ay:                                            ; preds = %bb.bo, %bb.be, %bb.ax, %bb.av
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body35

bb.az:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !20421), !dbg !20424
  %i.cl = load i64, ptr %i.h, align 8, !dbg !20425, !range !141, !alias.scope !20421, !noundef !14
  %.not.i34 = icmp eq i64 %i.cl, 18, !dbg !20425
  br i1 %.not.i34, label %bb.be, label %bb.ba, !dbg !20428, !prof !319

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20429, !noalias !20421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.h, i64 72, i1 false), !dbg !20429
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #40
          to label %bb.bc unwind label %bb.bb, !dbg !20430, !noalias !20421

bb.bb:                                            ; preds = %bb.ba
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #38
          to label %.body35 unwind label %bb.bd, !dbg !20432, !noalias !20421

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !20433, !noalias !20421
  unreachable, !dbg !20433

bb.be:                                            ; preds = %bb.az
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !20434
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !20434, !alias.scope !20421, !nonnull !14, !align !1153, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !20436
  invoke void @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes16BinaryOffsetTypeE16with_sorted_flagCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %i.cp, i8 noundef 0)
          to label %bb.bf unwind label %bb.ay, !dbg !20438

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !20439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !20441
  invoke void @_RNvXs4_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by11into_groupsINtNtBb_13chunked_array12ChunkedArrayNtNtBb_9datatypes16BinaryOffsetTypeENtB5_14IntoGroupsType12group_tuples(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noundef nonnull align 8 %i.g, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.bh unwind label %bb.bg, !dbg !20442

.body:                                            ; preds = %bb.bj, %bb.bg, %bb.bv
  %.pn25 = phi { ptr, i32 } [ %i.df, %bb.bv ], [ %i.cs, %bb.bj ], [ %i.cq, %bb.bg ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.g) #38
          to label %.body35 unwind label %bb.ap, !dbg !20443

bb.bg:                                            ; preds = %bb.bf
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !20444), !dbg !20447
  call void @llvm.experimental.noalias.scope.decl(metadata !20448), !dbg !20447
  %i.cr = load i64, ptr %i.e, align 8, !dbg !20450, !range !141, !alias.scope !20448, !noalias !20444, !noundef !14
  %.not.i = icmp eq i64 %i.cr, 18, !dbg !20450
  br i1 %.not.i, label %bb.bm, label %bb.bi, !dbg !20453, !prof !319

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20454, !noalias !20455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.e, i64 72, i1 false), !dbg !20454, !noalias !20444
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #40
          to label %bb.bk unwind label %bb.bj, !dbg !20456, !noalias !20455

bb.bj:                                            ; preds = %bb.bi
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #38
          to label %.body unwind label %bb.bl, !dbg !20458, !noalias !20455

bb.bk:                                            ; preds = %bb.bi
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !20459, !noalias !20455
  unreachable, !dbg !20459

bb.bm:                                            ; preds = %bb.bh
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !20460
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.cu, i64 56, i1 false), !dbg !20460, !alias.scope !20455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20461
  %i.cv = load i64, ptr %i.f, align 8, !dbg !20462, !range !1958, !noundef !14
  %i.cw = icmp eq i64 %i.cv, -9223372036854775808, !dbg !20462
  br i1 %i.cw, label %bb.bo, label %bb.bn, !dbg !20464, !prof !319

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #40
          to label %bb.au unwind label %bb.bv, !dbg !20465

bb.bo:                                            ; preds = %bb.bm
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !20466
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !dbg !20466
  store i64 18, ptr %0, align 8, !dbg !20467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20469
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.bp unwind label %bb.ay, !dbg !20443

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20443
  call void @llvm.experimental.noalias.scope.decl(metadata !20470), !dbg !20420
  %i.cz = load i8, ptr %i.r, align 16, !dbg !20473, !range !1204, !alias.scope !20470, !noundef !14
  %i.da = icmp eq i8 %i.cz, 31, !dbg !20473
  br i1 %i.da, label %bb.bq, label %bb.bs, !dbg !20473

bb.bq:                                            ; preds = %bb.bp
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !20473 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20475), !dbg !20473
  call void @llvm.experimental.noalias.scope.decl(metadata !20478), !dbg !20481
  call void @llvm.experimental.noalias.scope.decl(metadata !20483), !dbg !20486
  call void @llvm.experimental.noalias.scope.decl(metadata !20488), !dbg !20491
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !20493, !alias.scope !20497, !nonnull !14, !noundef !14
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !dbg !20498, !noalias !20497
  %i.de = icmp eq i64 %i.dd, 1, !dbg !20501
  br i1 %i.de, label %bb.br, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !20501

bb.br:                                            ; preds = %bb.bq
  fence acquire, !dbg !20502
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.db) #39
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.n, !dbg !20504

bb.bs:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalar12ScalarColumnECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 16 dereferenceable(160) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.n, !dbg !20473

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !20420
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.t)
          to label %bb.bt unwind label %bb.l, !dbg !20202

bb.bt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECseyIfFeUOWMb_17polars_mem_engine.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !20202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !20190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !20505
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.aa), !dbg !20163
  br label %bb.bu, !dbg !20158

bb.bu:                                            ; preds = %bb.bt, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !20163
  ret void, !dbg !20158

bb.bv:                                            ; preds = %bb.bn
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position10GroupsTypeECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.f) #38
          to label %.body unwind label %bb.ap, !dbg !20469

bb.bw:                                            ; preds = %bb.k
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes16BinaryOffsetTypeEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(56) %i.w) #38
          to label %.thread50 unwind label %bb.ap, !dbg !20190
end_hunk_0
