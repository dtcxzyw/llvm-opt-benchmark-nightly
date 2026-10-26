Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.10?download=true
inline.NumInlined: 3495
inline.NumDeleted: 1680
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvMB8_SB17_16sort_unstable_byNCNCINvMs4_NtB1a_3mapINtB4p_8IndexMapB1E_B2q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2s_NtB2s_15TableDefinition16add_columns_impl0E00E0EB2y_:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2822
  unreachable

bb.bn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i111, %bb.bl
  %i.ee = icmp eq i32 %i.dx, 0
  %i.ef = sub i64 %.sroa.4.0.i.i.i.i106, %.sroa.4.0.i12.i.i.i109
  %i.eg = sext i32 %i.dx to i64
  %spec.select.i.i.i112 = select i1 %i.ee, i64 %i.ef, i64 %i.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2822
  %i.eh = icmp sgt i64 %spec.select.i.i.i112, -1
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.19.1.i.i59 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.1.i.i61, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 32, i1 false), !alias.scope !2834, !noalias !2835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i62, i64 32, i1 false), !noalias !2824
  %i.ej = zext i1 %i.eh to i64
  %i.ek = add i64 %.sroa.19.1.i.i59, %i.ej        ; 4 uses
  %.sroa.11.1.sroa.gep22.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i60, i64 32
  br i1 %i.dj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5b_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2S_NtB2S_15TableDefinition16add_columns_impl0E00E0E0EB2Y_.exit.i, label %.preheader.i.i58

.lr.ph.i.i47:                                     ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5d_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2U_NtB2U_15TableDefinition16add_columns_impl0E00E0E0E0B30_.exit13.i.i, %bb.au
  %.sroa.11.035.i.i48 = phi ptr [ %.sroa.11.0.i.i57, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5d_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2U_NtB2U_15TableDefinition16add_columns_impl0E00E0E0E0B30_.exit13.i.i ], [ %.sroa.11.032.i.i43, %bb.au ] ; 5 uses
  %.sroa.014.034.i.i49 = phi ptr [ %.sroa.11.035.i.i48, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5d_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2U_NtB2U_15TableDefinition16add_columns_impl0E00E0E0E0B30_.exit13.i.i ], [ %i.df, %bb.au ] ; 5 uses
  %.sroa.19.033.i.i50 = phi i64 [ %i.fm, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5d_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2U_NtB2U_15TableDefinition16add_columns_impl0E00E0E0E0B30_.exit13.i.i ], [ 0, %bb.au ] ; 2 uses
  %.val.i9.i.i51 = load i64, ptr %.sroa.11.035.i.i48, align 8, !alias.scope !2834, !noalias !2836
  %i.el = getelementptr i8, ptr %.sroa.014.034.i.i49, i64 40
  %.val1.i10.i.i52 = load ptr, ptr %i.el, align 8, !alias.scope !2834, !noalias !2836 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2822
  %i.em = load ptr, ptr %i.di, align 8, !noalias !2822, !nonnull !4, !noundef !4
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !noalias !2822
  %i.eo = icmp slt i64 %i.en, 0                   ; 3 uses
  switch i64 %.val2.i.pre.i.i44, label %default.unreachable [
    i64 0, label %bb.bo
    i64 1, label %bb.bp
    i64 2, label %bb.bq
  ]

bb.bo:                                            ; preds = %.lr.ph.i.i47
  br i1 %i.eo, label %bb.br, label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87

bb.bp:                                            ; preds = %.lr.ph.i.i47
  br i1 %i.eo, label %bb.bs, label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87

bb.bq:                                            ; preds = %.lr.ph.i.i47
  br i1 %i.eo, label %bb.bt, label %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87

bb.br:                                            ; preds = %bb.bo
  call void @llvm.trap(), !noalias !2822
  unreachable

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.trap(), !noalias !2822
  unreachable

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.trap(), !noalias !2822
  unreachable

_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87: ; preds = %bb.bq, %bb.bp, %bb.bo
  %.sroa.0.0.i.i.i.i89 = load ptr, ptr %i.di, align 8, !noalias !2822, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.i.i.i.i90 = load i64, ptr %.sroa.4.0.in.i.i.i.i88, align 8, !noalias !2822, !noundef !4 ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i89, ptr %i.d, align 8, !noalias !2822
  store i64 %.sroa.4.0.i.i.i.i90, ptr %i.p, align 8, !noalias !2822
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2822
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i10.i.i52) ], !noalias !2822
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1.i10.i.i52, i64 16 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !2822, !nonnull !4, !noundef !4
  %i.er = atomicrmw add ptr %i.eq, i64 1 monotonic, align 8, !noalias !2822
  %i.es = icmp slt i64 %i.er, 0                   ; 3 uses
  switch i64 %.val.i9.i.i51, label %default.unreachable.i13.i.i.i98 [
    i64 0, label %bb.bu
    i64 1, label %bb.bv
    i64 2, label %bb.bw
  ]

default.unreachable.i13.i.i.i98:                  ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87
  unreachable

bb.bu:                                            ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87
  br i1 %i.es, label %bb.bx, label %bb.cc

bb.bv:                                            ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87
  br i1 %i.es, label %bb.by, label %bb.cc

bb.bw:                                            ; preds = %_RNvMsL_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_16ColumnDefinition4name.exit.i.i.i87
  br i1 %i.es, label %bb.bz, label %bb.cc

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.trap(), !noalias !2822
  unreachable

bb.by:                                            ; preds = %bb.bv
  call void @llvm.trap(), !noalias !2822
  unreachable

bb.bz:                                            ; preds = %bb.bw
  call void @llvm.trap(), !noalias !2822
  unreachable

bb.ca:                                            ; preds = %bb.cd
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2837), !noalias !2822
  call void @llvm.experimental.noalias.scope.decl(metadata !2838), !noalias !2822
  %i.eu = load ptr, ptr %i.d, align 8, !alias.scope !2839, !noalias !2822, !nonnull !4, !noundef !4
  %i.ev = atomicrmw add ptr %i.eu, i64 -1 release, align 8, !noalias !2840
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.cb, label %.loopexit.i.i67.body

bb.cb:                                            ; preds = %bb.ca
  fence acquire, !noalias !2822
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.loopexit.i.i67.body unwind label %bb.cf, !noalias !2822

bb.cc:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.sroa.4.0.in.i10.i.i.i91 = getelementptr inbounds nuw i8, ptr %.val1.i10.i.i52, i64 24
  %.sroa.0.0.i11.i.i.i92 = load ptr, ptr %i.ep, align 8, !noalias !2822, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.4.0.i12.i.i.i93 = load i64, ptr %.sroa.4.0.in.i10.i.i.i91, align 8, !noalias !2822, !noundef !4 ; 3 uses
  store ptr %.sroa.0.0.i11.i.i.i92, ptr %i.c, align 8, !noalias !2822
  store i64 %.sroa.4.0.i12.i.i.i93, ptr %i.q, align 8, !noalias !2822
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i89, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11.i.i.i92, i64 16
  %spec.store.select.i.i.i94 = call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i90, i64 %.sroa.4.0.i12.i.i.i93)
  %i.ez = call i32 @memcmp(ptr nonnull %i.ex, ptr nonnull %i.ey, i64 %spec.store.select.i.i.i94), !noalias !2822 ; 2 uses
  %i.fa = atomicrmw add ptr %.sroa.0.0.i11.i.i.i92, i64 -1 release, align 8, !noalias !2841
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95

bb.cd:                                            ; preds = %bb.cc
  fence acquire, !noalias !2822
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95 unwind label %bb.ca, !noalias !2822

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2822
  call void @llvm.experimental.noalias.scope.decl(metadata !2842), !noalias !2822
  call void @llvm.experimental.noalias.scope.decl(metadata !2843), !noalias !2822
  %i.fc = load ptr, ptr %i.d, align 8, !alias.scope !2844, !noalias !2822, !nonnull !4, !noundef !4
  %i.fd = atomicrmw add ptr %i.fc, i64 -1 release, align 8, !noalias !2845
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.ce, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5d_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2U_NtB2U_15TableDefinition16add_columns_impl0E00E0E0E0B30_.exit13.i.i

bb.ce:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95
  fence acquire, !noalias !2822
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5d_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2U_NtB2U_15TableDefinition16add_columns_impl0E00E0E0E0B30_.exit13.i.i unwind label %.loopexit.split-lp.i.i53

bb.cf:                                            ; preds = %bb.cb
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2822
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5d_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2U_NtB2U_15TableDefinition16add_columns_impl0E00E0E0E0B30_.exit13.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95, %bb.ce
  %i.fg = icmp eq i32 %i.ez, 0
  %i.fh = sub i64 %.sroa.4.0.i.i.i.i90, %.sroa.4.0.i12.i.i.i93
  %i.fi = sext i32 %i.ez to i64
  %spec.select.i.i.i96 = select i1 %i.fg, i64 %i.fh, i64 %i.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2822
  %i.fj = icmp sgt i64 %spec.select.i.i.i96, -1
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.19.033.i.i50 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.034.i.i49, ptr noundef nonnull align 8 dereferenceable(32) %i.fk, i64 32, i1 false), !alias.scope !2834, !noalias !2836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.035.i.i48, i64 32, i1 false), !alias.scope !2834, !noalias !2836
  %i.fl = zext i1 %i.fj to i64
  %i.fm = add i64 %.sroa.19.033.i.i50, %i.fl      ; 2 uses
  %.sroa.11.0.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i48, i64 32 ; 3 uses
  %i.fn = icmp ult ptr %.sroa.11.0.i.i57, %i.dh
  br i1 %i.fn, label %.lr.ph.i.i47, label %.preheader.i.i58

.loopexit.i.i67:                                  ; preds = %bb.bl
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i67.body

.loopexit.split-lp.i.i53:                         ; preds = %bb.ce
  %lpad.loopexit.split-lp.i.i54 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i67.body

.loopexit.i.i67.body:                             ; preds = %.loopexit.split-lp.i.i53, %bb.cb, %bb.ca, %.loopexit.i.i67, %bb.bi, %bb.bh
  %.sroa.014.2.i.i55 = phi ptr [ %.sroa.014.1.i.i61, %.loopexit.i.i67 ], [ %.sroa.014.1.i.i61, %bb.bh ], [ %.sroa.014.1.i.i61, %bb.bi ], [ %.sroa.014.034.i.i49, %bb.ca ], [ %.sroa.014.034.i.i49, %bb.cb ], [ %.sroa.014.034.i.i49, %.loopexit.split-lp.i.i53 ]
  %lpad.phi.i.i56 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.loopexit.i.i67 ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bi ], [ %i.et, %bb.ca ], [ %i.et, %bb.cb ], [ %lpad.loopexit.split-lp.i.i54, %.loopexit.split-lp.i.i53 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.2.i.i55, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !2821
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5b_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2S_NtB2S_15TableDefinition16add_columns_impl0E00E0E0EB2Y_.exit.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2822
  %.not7.i70 = icmp ult i64 %i.ek, %.sroa.15.0301764
  br i1 %.not7.i70, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5b_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2S_NtB2S_15TableDefinition16add_columns_impl0E00E0E0EB2Y_.exit.i
  call void @llvm.trap()
  unreachable

bb.ch:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5b_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMsy_B2S_NtB2S_15TableDefinition16add_columns_impl0E00E0E0EB2Y_.exit.i
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0302763, i64 %i.ek ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0302763, i64 32, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0302763, ptr noundef nonnull align 8 dereferenceable(32) %i.fo, i64 32, i1 false), !alias.scope !2846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fp = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.fq = sub nuw nsw i64 %.sroa.15.0301764, %i.fp
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0302763, i64 %i.fp
  br label %.backedge

.backedge:                                        ; preds = %bb.ch, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE12split_at_mutB1V_.exit
  %.sroa.023.0.be = phi ptr [ %i.cx, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE12split_at_mutB1V_.exit ], [ null, %bb.ch ]
  %.sroa.15.0.be = phi i64 [ %i.da, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE12split_at_mutB1V_.exit ], [ %i.fq, %bb.ch ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cy, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE12split_at_mutB1V_.exit ], [ %i.fr, %bb.ch ] ; 3 uses
  %i.fs = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.fs, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB17_16sort_unstable_byNCNCINvMs4_NtB1a_3mapINtB4H_8IndexMapB1E_B2q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2u_5tableNtB6O_15TableDefinition14rebuild_schema0E00E0EB2C_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(32) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = icmp samesign ult i64 %1, 33
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = icmp eq i32 %3, 0
  br i1 %i.x, label %._crit_edge768, label %.lr.ph767

bb.b:                                             ; preds = %.backedge
  %i.y = icmp eq i32 %i.z, 0
  br i1 %i.y, label %._crit_edge768, label %.lr.ph767

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB1f_16sort_unstable_byNCNCINvMs4_NtB1i_3mapINtB4P_8IndexMapB1M_B2y_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2C_5tableNtB6W_15TableDefinition14rebuild_schema0E00E0EB2K_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.f

._crit_edge768:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.0302.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.0301.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB15_16sort_unstable_byNCNCINvMs4_NtB18_3mapINtB4F_8IndexMapB1C_B2o_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2s_5tableNtB6M_15TableDefinition14rebuild_schema0E00E0EB2A_(ptr noalias noundef nonnull align 8 %.sroa.0.0302.lcssa, i64 noundef %.sroa.15.0301.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.f

.lr.ph767:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.0299766 = phi i32 [ %i.z, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.0300765 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 4 uses
  %.sroa.15.0301764 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 9 uses
  %.sroa.0.0302763 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 31 uses
  %i.z = add nsw i32 %.sroa.026.0299766, -1       ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  %i.aa = lshr i64 %.sroa.15.0301764, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.aa, 7
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0302763, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.aa, 224
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0302763, i64 %.idx2.i ; 4 uses
  %i.ad = icmp samesign ult i64 %.sroa.15.0301764, 64
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph767
  %i.ae = call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB14_16sort_unstable_byNCNCINvMs4_NtB17_3mapINtB4E_8IndexMapB1B_B2n_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2r_5tableNtB6L_15TableDefinition14rebuild_schema0E00E0EB2z_(ptr noundef nonnull readonly align 8 %.sroa.0.0302763, ptr noundef nonnull readonly %i.ab, ptr noundef nonnull readonly %i.ac, i64 noundef %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB15_16sort_unstable_byNCNCINvMs4_NtB18_3mapINtB4F_8IndexMapB1C_B2o_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2s_5tableNtB6M_15TableDefinition14rebuild_schema0E00E0EB2A_.exit

bb.d:                                             ; preds = %.lr.ph767
  %.val10.i = load i64, ptr %.sroa.0.0302763, align 8, !range !14, !alias.scope !2924, !noundef !4 ; 2 uses
  %i.af = getelementptr i8, ptr %.sroa.0.0302763, i64 8
  %.val11.i = load ptr, ptr %i.af, align 8, !alias.scope !2924 ; 2 uses
  %.val12.i = load i64, ptr %i.ab, align 8, !alias.scope !2924 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 8
  %.val13.i = load ptr, ptr %i.ag, align 8, !alias.scope !2924 ; 2 uses
  %i.ah = call fastcc noundef zeroext i1 @_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionE16sort_unstable_byNCNCINvMs4_NtBA_3mapINtB3T_8IndexMapB14_B1Q_INtNtB7_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB1U_5tableNtB5Z_15TableDefinition14rebuild_schema0E00E0B22_(i64 %.val10.i, ptr %.val11.i, i64 %.val12.i, ptr %.val13.i), !noalias !2925 ; 2 uses
  %.val8.i = load i64, ptr %i.ac, align 8, !alias.scope !2924 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i = load ptr, ptr %i.ai, align 8, !alias.scope !2924 ; 2 uses
  %i.aj = call fastcc noundef zeroext i1 @_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionE16sort_unstable_byNCNCINvMs4_NtBA_3mapINtB3T_8IndexMapB14_B1Q_INtNtB7_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB1U_5tableNtB5Z_15TableDefinition14rebuild_schema0E00E0B22_(i64 %.val10.i, ptr %.val11.i, i64 %.val8.i, ptr %.val9.i), !noalias !2925
  %i.ak = xor i1 %i.ah, %i.aj
  br i1 %i.ak, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB15_16sort_unstable_byNCNCINvMs4_NtB18_3mapINtB4F_8IndexMapB1C_B2o_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2s_5tableNtB6M_15TableDefinition14rebuild_schema0E00E0EB2A_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = call fastcc noundef zeroext i1 @_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionE16sort_unstable_byNCNCINvMs4_NtBA_3mapINtB3T_8IndexMapB14_B1Q_INtNtB7_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB1U_5tableNtB5Z_15TableDefinition14rebuild_schema0E00E0B22_(i64 %.val12.i, ptr %.val13.i, i64 %.val8.i, ptr %.val9.i), !noalias !2925
  %i.am = xor i1 %i.ah, %i.al
  %..i.i = select i1 %i.am, ptr %i.ac, ptr %i.ab
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB15_16sort_unstable_byNCNCINvMs4_NtB18_3mapINtB4F_8IndexMapB1C_B2o_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2s_5tableNtB6M_15TableDefinition14rebuild_schema0E00E0EB2A_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB15_16sort_unstable_byNCNCINvMs4_NtB18_3mapINtB4F_8IndexMapB1C_B2o_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2s_5tableNtB6M_15TableDefinition14rebuild_schema0E00E0EB2A_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ae, %bb.c ], [ %.sroa.0.0302763, %bb.d ], [ %..i.i, %bb.e ]
  %i.an = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ao = ptrtoint ptr %.sroa.0.0302763 to i64
  %i.ap = sub nuw i64 %i.an, %i.ao                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.ap, 5
  %i.aq = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0301764
  call void @llvm.assume(i1 %i.aq)
  %.not = icmp eq ptr %.sroa.023.0300765, null
  br i1 %.not, label %bb.g, label %bb.at

bb.f:                                             ; preds = %._crit_edge768, %._crit_edge
  ret void

bb.g:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB15_16sort_unstable_byNCNCINvMs4_NtB18_3mapINtB4F_8IndexMapB1C_B2o_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2s_5tableNtB6M_15TableDefinition14rebuild_schema0E00E0EB2A_.exit, %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0302763, i64 %i.ap ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0302763, i64 32, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0302763, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !alias.scope !2927
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0302763, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  call void @llvm.experimental.noalias.scope.decl(metadata !2929)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !noalias !2929
  %i.at = shl nuw nsw i64 %.sroa.15.0301764, 5
  %i.au = getelementptr i8, ptr %.sroa.0.0302763, i64 %i.at ; 2 uses
  %.sroa.11.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0302763, i64 64
  %.val2.i.pre.i.i = load i64, ptr %.sroa.0.0302763, align 8, !alias.scope !2931, !noalias !4 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0302763, i64 8
  %.val3.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !2931, !noalias !4 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val3.i.pre.i.i, i64 16 ; 4 uses
  %.sroa.4.0.in.i10.i.i.i = getelementptr inbounds nuw i8, ptr %.val3.i.pre.i.i, i64 24 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB59_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7g_15TableDefinition14rebuild_schema0E00E0E0B34_.exit13.i.i, %bb.z
  %.sroa.19.1.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.cv, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB59_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7g_15TableDefinition14rebuild_schema0E00E0E0B34_.exit13.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep22.i.i, %bb.z ], [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB59_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7g_15TableDefinition14rebuild_schema0E00E0E0B34_.exit13.i.i ] ; 5 uses
  %.sroa.014.1.i.i = phi ptr [ %.sroa.11.1.i.i, %bb.z ], [ %.sroa.11.035.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB59_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7g_15TableDefinition14rebuild_schema0E00E0E0B34_.exit13.i.i ] ; 4 uses
  %i.aw = icmp eq ptr %.sroa.11.1.i.i, %i.au      ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.aw, ptr %i.m, ptr %.sroa.11.1.i.i ; 2 uses
  %.val.i.i.i = load i64, ptr %.sroa.01.0.i.i, align 8, !range !14, !noalias !2932, !noundef !4
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aw, ptr %i.m, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val1.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !2932, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2930
  %i.ax = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !2930, !nonnull !4, !noundef !4
  %i.az = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !2930
  %i.ba = icmp slt i64 %i.az, 0                   ; 3 uses
  switch i64 %.val.i.i.i, label %.preheader.i.i.unreachabledefault [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

.preheader.i.i.unreachabledefault:                ; preds = %.preheader.i.i
  unreachable

default.unreachable:                              ; preds = %.lr.ph.i.i47, %.preheader.i.i58, %.lr.ph.i.i
  unreachable

bb.h:                                             ; preds = %.preheader.i.i
  br i1 %i.ba, label %bb.k, label %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i71

bb.i:                                             ; preds = %.preheader.i.i
  br i1 %i.ba, label %bb.l, label %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i71

bb.j:                                             ; preds = %.preheader.i.i
  br i1 %i.ba, label %bb.m, label %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i71

bb.k:                                             ; preds = %bb.h
  call void @llvm.trap(), !noalias !2930
  unreachable

bb.l:                                             ; preds = %bb.i
  call void @llvm.trap(), !noalias !2930
  unreachable

bb.m:                                             ; preds = %bb.j
  call void @llvm.trap(), !noalias !2930
  unreachable

_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i71: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.4.0.in.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 24
  %.sroa.0.0.i.i.i.i73 = load ptr, ptr %i.ax, align 8, !noalias !2930, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.i.i.i.i74 = load i64, ptr %.sroa.4.0.in.i.i.i.i72, align 8, !noalias !2930, !noundef !4 ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i73, ptr %i.f, align 8, !noalias !2930
  store i64 %.sroa.4.0.i.i.i.i74, ptr %i.v, align 8, !noalias !2930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2930
  %i.bb = load ptr, ptr %i.av, align 8, !noalias !2930, !nonnull !4, !noundef !4
  %i.bc = atomicrmw add ptr %i.bb, i64 1 monotonic, align 8, !noalias !2930
  %i.bd = icmp slt i64 %i.bc, 0                   ; 3 uses
  switch i64 %.val2.i.pre.i.i, label %default.unreachable.i13.i.i.i82 [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvMB8_SB17_16sort_unstable_byNCNCINvMs4_NtB1a_3mapINtB4H_8IndexMapB1E_B2q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2u_5tableNtB6O_15TableDefinition14rebuild_schema0E00E0EB2C_:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2959
  unreachable

bb.bn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i111, %bb.bl
  %i.ee = icmp eq i32 %i.dx, 0
  %i.ef = sub i64 %.sroa.4.0.i.i.i.i106, %.sroa.4.0.i12.i.i.i109
  %i.eg = sext i32 %i.dx to i64
  %spec.select.i.i.i112 = select i1 %i.ee, i64 %i.ef, i64 %i.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2959
  %i.eh = icmp sgt i64 %spec.select.i.i.i112, -1
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.19.1.i.i59 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.1.i.i61, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i64 32, i1 false), !alias.scope !2971, !noalias !2972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i62, i64 32, i1 false), !noalias !2961
  %i.ej = zext i1 %i.eh to i64
  %i.ek = add i64 %.sroa.19.1.i.i59, %i.ej        ; 4 uses
  %.sroa.11.1.sroa.gep22.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i60, i64 32
  br i1 %i.dj, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5t_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2U_5tableNtB7A_15TableDefinition14rebuild_schema0E00E0E0EB32_.exit.i, label %.preheader.i.i58

.lr.ph.i.i47:                                     ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5v_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7C_15TableDefinition14rebuild_schema0E00E0E0E0B34_.exit13.i.i, %bb.au
  %.sroa.11.035.i.i48 = phi ptr [ %.sroa.11.0.i.i57, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5v_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7C_15TableDefinition14rebuild_schema0E00E0E0E0B34_.exit13.i.i ], [ %.sroa.11.032.i.i43, %bb.au ] ; 5 uses
  %.sroa.014.034.i.i49 = phi ptr [ %.sroa.11.035.i.i48, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5v_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7C_15TableDefinition14rebuild_schema0E00E0E0E0B34_.exit13.i.i ], [ %i.df, %bb.au ] ; 5 uses
  %.sroa.19.033.i.i50 = phi i64 [ %i.fm, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5v_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7C_15TableDefinition14rebuild_schema0E00E0E0E0B34_.exit13.i.i ], [ 0, %bb.au ] ; 2 uses
  %.val.i9.i.i51 = load i64, ptr %.sroa.11.035.i.i48, align 8, !alias.scope !2971, !noalias !2973
  %i.el = getelementptr i8, ptr %.sroa.014.034.i.i49, i64 40
  %.val1.i10.i.i52 = load ptr, ptr %i.el, align 8, !alias.scope !2971, !noalias !2973 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2959
  %i.em = load ptr, ptr %i.di, align 8, !noalias !2959, !nonnull !4, !noundef !4
  %i.en = atomicrmw add ptr %i.em, i64 1 monotonic, align 8, !noalias !2959
  %i.eo = icmp slt i64 %i.en, 0                   ; 3 uses
  switch i64 %.val2.i.pre.i.i44, label %default.unreachable [
    i64 0, label %bb.bo
    i64 1, label %bb.bp
    i64 2, label %bb.bq
  ]

bb.bo:                                            ; preds = %.lr.ph.i.i47
  br i1 %i.eo, label %bb.br, label %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87

bb.bp:                                            ; preds = %.lr.ph.i.i47
  br i1 %i.eo, label %bb.bs, label %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87

bb.bq:                                            ; preds = %.lr.ph.i.i47
  br i1 %i.eo, label %bb.bt, label %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87

bb.br:                                            ; preds = %bb.bo
  call void @llvm.trap(), !noalias !2959
  unreachable

bb.bs:                                            ; preds = %bb.bp
  call void @llvm.trap(), !noalias !2959
  unreachable

bb.bt:                                            ; preds = %bb.bq
  call void @llvm.trap(), !noalias !2959
  unreachable

_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87: ; preds = %bb.bq, %bb.bp, %bb.bo
  %.sroa.0.0.i.i.i.i89 = load ptr, ptr %i.di, align 8, !noalias !2959, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.i.i.i.i90 = load i64, ptr %.sroa.4.0.in.i.i.i.i88, align 8, !noalias !2959, !noundef !4 ; 3 uses
  store ptr %.sroa.0.0.i.i.i.i89, ptr %i.d, align 8, !noalias !2959
  store i64 %.sroa.4.0.i.i.i.i90, ptr %i.p, align 8, !noalias !2959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2959
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i10.i.i52) ], !noalias !2959
  %i.ep = getelementptr inbounds nuw i8, ptr %.val1.i10.i.i52, i64 16 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !2959, !nonnull !4, !noundef !4
  %i.er = atomicrmw add ptr %i.eq, i64 1 monotonic, align 8, !noalias !2959
  %i.es = icmp slt i64 %i.er, 0                   ; 3 uses
  switch i64 %.val.i9.i.i51, label %default.unreachable.i13.i.i.i98 [
    i64 0, label %bb.bu
    i64 1, label %bb.bv
    i64 2, label %bb.bw
  ]

default.unreachable.i13.i.i.i98:                  ; preds = %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87
  unreachable

bb.bu:                                            ; preds = %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87
  br i1 %i.es, label %bb.bx, label %bb.cc

bb.bv:                                            ; preds = %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87
  br i1 %i.es, label %bb.by, label %bb.cc

bb.bw:                                            ; preds = %_RNvMs_NtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6columnNtB4_16ColumnDefinition4name.exit.i.i.i87
  br i1 %i.es, label %bb.bz, label %bb.cc

bb.bx:                                            ; preds = %bb.bu
  call void @llvm.trap(), !noalias !2959
  unreachable

bb.by:                                            ; preds = %bb.bv
  call void @llvm.trap(), !noalias !2959
  unreachable

bb.bz:                                            ; preds = %bb.bw
  call void @llvm.trap(), !noalias !2959
  unreachable

bb.ca:                                            ; preds = %bb.cd
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2974), !noalias !2959
  call void @llvm.experimental.noalias.scope.decl(metadata !2975), !noalias !2959
  %i.eu = load ptr, ptr %i.d, align 8, !alias.scope !2976, !noalias !2959, !nonnull !4, !noundef !4
  %i.ev = atomicrmw add ptr %i.eu, i64 -1 release, align 8, !noalias !2977
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.cb, label %.loopexit.i.i67.body

bb.cb:                                            ; preds = %bb.ca
  fence acquire, !noalias !2959
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.loopexit.i.i67.body unwind label %bb.cf, !noalias !2959

bb.cc:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.sroa.4.0.in.i10.i.i.i91 = getelementptr inbounds nuw i8, ptr %.val1.i10.i.i52, i64 24
  %.sroa.0.0.i11.i.i.i92 = load ptr, ptr %i.ep, align 8, !noalias !2959, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.4.0.i12.i.i.i93 = load i64, ptr %.sroa.4.0.in.i10.i.i.i91, align 8, !noalias !2959, !noundef !4 ; 3 uses
  store ptr %.sroa.0.0.i11.i.i.i92, ptr %i.c, align 8, !noalias !2959
  store i64 %.sroa.4.0.i12.i.i.i93, ptr %i.q, align 8, !noalias !2959
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i89, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i11.i.i.i92, i64 16
  %spec.store.select.i.i.i94 = call i64 @llvm.umin.i64(i64 %.sroa.4.0.i.i.i.i90, i64 %.sroa.4.0.i12.i.i.i93)
  %i.ez = call i32 @memcmp(ptr nonnull %i.ex, ptr nonnull %i.ey, i64 %spec.store.select.i.i.i94), !noalias !2959 ; 2 uses
  %i.fa = atomicrmw add ptr %.sroa.0.0.i11.i.i.i92, i64 -1 release, align 8, !noalias !2978
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.cd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95

bb.cd:                                            ; preds = %bb.cc
  fence acquire, !noalias !2959
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95 unwind label %bb.ca, !noalias !2959

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2959
  call void @llvm.experimental.noalias.scope.decl(metadata !2979), !noalias !2959
  call void @llvm.experimental.noalias.scope.decl(metadata !2980), !noalias !2959
  %i.fc = load ptr, ptr %i.d, align 8, !alias.scope !2981, !noalias !2959, !nonnull !4, !noundef !4
  %i.fd = atomicrmw add ptr %i.fc, i64 -1 release, align 8, !noalias !2982
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.ce, label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5v_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7C_15TableDefinition14rebuild_schema0E00E0E0E0B34_.exit13.i.i

bb.ce:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95
  fence acquire, !noalias !2959
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5v_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7C_15TableDefinition14rebuild_schema0E00E0E0E0B34_.exit13.i.i unwind label %.loopexit.split-lp.i.i53

bb.cf:                                            ; preds = %bb.cb
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !2959
  unreachable

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvMs4_NtB1C_3mapINtB5v_8IndexMapB26_B2S_INtNtBc_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2W_5tableNtB7C_15TableDefinition14rebuild_schema0E00E0E0E0B34_.exit13.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit16.i.i.i95, %bb.ce
  %i.fg = icmp eq i32 %i.ez, 0
  %i.fh = sub i64 %.sroa.4.0.i.i.i.i90, %.sroa.4.0.i12.i.i.i93
  %i.fi = sext i32 %i.ez to i64
  %spec.select.i.i.i96 = select i1 %i.fg, i64 %i.fh, i64 %i.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2959
  %i.fj = icmp sgt i64 %spec.select.i.i.i96, -1
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %.sroa.19.033.i.i50 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.034.i.i49, ptr noundef nonnull align 8 dereferenceable(32) %i.fk, i64 32, i1 false), !alias.scope !2971, !noalias !2973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.035.i.i48, i64 32, i1 false), !alias.scope !2971, !noalias !2973
  %i.fl = zext i1 %i.fj to i64
  %i.fm = add i64 %.sroa.19.033.i.i50, %i.fl      ; 2 uses
  %.sroa.11.0.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i48, i64 32 ; 3 uses
  %i.fn = icmp ult ptr %.sroa.11.0.i.i57, %i.dh
  br i1 %i.fn, label %.lr.ph.i.i47, label %.preheader.i.i58

.loopexit.i.i67:                                  ; preds = %bb.bl
  %lpad.loopexit.i.i68 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i67.body

.loopexit.split-lp.i.i53:                         ; preds = %bb.ce
  %lpad.loopexit.split-lp.i.i54 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i67.body

.loopexit.i.i67.body:                             ; preds = %.loopexit.split-lp.i.i53, %bb.cb, %bb.ca, %.loopexit.i.i67, %bb.bi, %bb.bh
  %.sroa.014.2.i.i55 = phi ptr [ %.sroa.014.1.i.i61, %.loopexit.i.i67 ], [ %.sroa.014.1.i.i61, %bb.bh ], [ %.sroa.014.1.i.i61, %bb.bi ], [ %.sroa.014.034.i.i49, %bb.ca ], [ %.sroa.014.034.i.i49, %bb.cb ], [ %.sroa.014.034.i.i49, %.loopexit.split-lp.i.i53 ]
  %lpad.phi.i.i56 = phi { ptr, i32 } [ %lpad.loopexit.i.i68, %.loopexit.i.i67 ], [ %i.dr, %bb.bh ], [ %i.dr, %bb.bi ], [ %i.et, %bb.ca ], [ %i.et, %bb.cb ], [ %lpad.loopexit.split-lp.i.i54, %.loopexit.split-lp.i.i53 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.014.2.i.i55, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !2958
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5t_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2U_5tableNtB7A_15TableDefinition14rebuild_schema0E00E0E0EB32_.exit.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2959
  %.not7.i70 = icmp ult i64 %i.ek, %.sroa.15.0301764
  br i1 %.not7.i70, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5t_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2U_5tableNtB7A_15TableDefinition14rebuild_schema0E00E0E0EB32_.exit.i
  call void @llvm.trap()
  unreachable

bb.ch:                                            ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvMs4_NtB1A_3mapINtB5t_8IndexMapB24_B2Q_INtNtBa_4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE16sort_unstable_byNCNvMs_NtB2U_5tableNtB7A_15TableDefinition14rebuild_schema0E00E0E0EB32_.exit.i
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0302763, i64 %i.ek ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0302763, i64 32, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0302763, ptr noundef nonnull align 8 dereferenceable(32) %i.fo, i64 32, i1 false), !alias.scope !2983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fp = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.fq = sub nuw nsw i64 %.sroa.15.0301764, %i.fp
  %i.fr = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0302763, i64 %i.fp
  br label %.backedge

.backedge:                                        ; preds = %bb.ch, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionE12split_at_mutB1Z_.exit
  %.sroa.023.0.be = phi ptr [ %i.cx, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionE12split_at_mutB1Z_.exit ], [ null, %bb.ch ]
  %.sroa.15.0.be = phi i64 [ %i.da, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionE12split_at_mutB1Z_.exit ], [ %i.fq, %bb.ch ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cy, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema6column16ColumnDefinitionE12split_at_mutB1Z_.exit ], [ %i.fr, %bb.ch ] ; 3 uses
  %i.fs = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.fs, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2v_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(96) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 17
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph125

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.g, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  %i.f = icmp samesign ugt i64 %.sroa.15.0.lcssa, 1
  br i1 %i.f, label %bb.b, label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB3a_.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1m_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2K_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 17) %.sroa.15.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB3a_.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.081.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.080.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2t_(ptr noalias noundef nonnull align 8 %.sroa.0.081.lcssa, i64 noundef %.sroa.15.080.lcssa, ptr noalias nonnull align 8 poison)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB3a_.exit

.lr.ph125:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.078124 = phi i32 [ %i.g, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.079123 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.080122 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.081121 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.g = add nsw i32 %.sroa.026.078124, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3005)
  %i.h = lshr i64 %.sroa.15.080122, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.h, 384
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.h, 672
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx2.i ; 4 uses
  %i.k = icmp samesign ult i64 %.sroa.15.080122, 64
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph125
  %i.l = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB14_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2s_(ptr noundef nonnull readonly align 8 %.sroa.0.081121, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2t_.exit

bb.d:                                             ; preds = %.lr.ph125
  %i.m = getelementptr i8, ptr %.sroa.0.081121, i64 8
  %.val10.i = load ptr, ptr %i.m, align 8, !alias.scope !3005, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.081121, i64 16
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !3005, !noundef !4 ; 4 uses
  %i.o = getelementptr i8, ptr %i.i, i64 8
  %.val12.i = load ptr, ptr %i.o, align 8, !alias.scope !3005, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.i, i64 16
  %.val13.i = load i64, ptr %i.p, align 8, !alias.scope !3005, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i), !noalias !3006 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %i.j, i64 8
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !3005, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr i8, ptr %i.j, i64 16
  %.val9.i = load i64, ptr %i.v, align 8, !alias.scope !3005, !noundef !4 ; 4 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i14.i), !noalias !3006 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val11.i, %.val9.i
  %spec.select.i.i15.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = xor i64 %spec.select.i.i15.i, %spec.select.i.i.i
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2t_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i16.i), !noalias !3006 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val13.i, %.val9.i
  %spec.select.i.i17.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = xor i64 %spec.select.i.i17.i, %spec.select.i.i.i
  %i.ah = icmp slt i64 %i.ag, 0
  %..i.i = select i1 %i.ah, ptr %i.j, ptr %i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2t_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2t_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.l, %bb.c ], [ %.sroa.0.081121, %bb.d ], [ %..i.i, %bb.e ]
  %i.ai = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aj = ptrtoint ptr %.sroa.0.081121 to i64
  %i.ak = sub nuw i64 %i.ai, %i.aj                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ak, 96         ; 3 uses
  %i.al = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.080122
  tail call void @llvm.assume(i1 %i.al)
  %.not = icmp eq ptr %.sroa.023.079123, null
  br i1 %.not, label %bb.f, label %bb.h

_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB3a_.exit: ; preds = %bb.b, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2t_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 96076792050570581) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 96 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.am, i64 96, i1 false), !noalias !3009
  %i.an = mul nuw nsw i64 %.sroa.15.080122, 96
  %i.ao = getelementptr i8, ptr %.sroa.0.081121, i64 %i.an ; 2 uses
  %.sroa.11.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 192
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3011, !noalias !4 ; 2 uses
  %.phi.trans.insert44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i = load i64, ptr %.phi.trans.insert44.i.i, align 8, !alias.scope !3011, !noalias !4 ; 4 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.av, %.preheader.i.i ], [ %i.bd, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep27.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 6 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.036.i.i, %.lr.ph.i.i ]
  %i.ap = icmp eq ptr %.sroa.11.1.i.i, %i.ao      ; 4 uses
  %.sroa.01.0.i.i = select i1 %i.ap, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ap, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3012, !nonnull !4, !noundef !4
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ap, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3012, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.pre.i.i)
  %i.aq = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i), !noalias !3013 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = sub i64 %.val1.i.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i.i.i = select i1 %i.as, i64 %i.at, i64 %i.ar
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.am, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false), !alias.scope !3014, !noalias !3015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.0.i.i, i64 96, i1 false), !noalias !3012
  %spec.select.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.av = add i64 %spec.select.i.i.lobit.i.i.i, %.sroa.19.1.i.i ; 6 uses
  %.sroa.11.1.sroa.gep27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 96
  br i1 %i.ap, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2V_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.11.036.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.033.i.i, %bb.f ] ; 4 uses
  %.sroa.016.035.i.i = phi ptr [ %.sroa.11.036.i.i, %.lr.ph.i.i ], [ %i.am, %bb.f ] ; 3 uses
  %.sroa.19.034.i.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.sroa.016.035.i.i, i64 104
  %.val.i9.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !3014, !noalias !3016, !nonnull !4, !noundef !4
  %i.ax = getelementptr i8, ptr %.sroa.016.035.i.i, i64 112
  %.val1.i10.i.i = load i64, ptr %i.ax, align 8, !alias.scope !3014, !noalias !3016, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i10.i.i, i64 %.val3.i.pre.i.i)
  %i.ay = tail call i32 @memcmp(ptr nonnull readonly %.val.i9.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i13.i.i), !noalias !3017 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %.val1.i10.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i14.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.am, i64 %.sroa.19.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.016.035.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.bc, i64 96, i1 false), !alias.scope !3014, !noalias !3016
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bc, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.036.i.i, i64 96, i1 false), !alias.scope !3014, !noalias !3016
  %spec.select.i.i.lobit.i15.i.i = lshr i64 %spec.select.i.i.i14.i.i, 63
  %i.bd = add i64 %spec.select.i.i.lobit.i15.i.i, %.sroa.19.034.i.i ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.036.i.i, i64 96 ; 3 uses
  %i.be = icmp ult ptr %.sroa.11.0.i.i, %i.ao
  br i1 %i.be, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2V_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3010
  %.not7.i = icmp ult i64 %i.av, %.sroa.15.080122
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2V_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2V_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.bf = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.081121, i64 %i.av ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = xor i64 %i.av, -1
  %i.bi = add i64 %.sroa.15.080122, %i.bh
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2v_(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %.sroa.023.079123, i32 noundef %i.g, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0EB2t_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %i.ak ; 2 uses
  %i.bk = getelementptr i8, ptr %.sroa.023.079123, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %i.bl = getelementptr i8, ptr %.sroa.023.079123, i64 16
  %.sroa.023.0.val34 = load i64, ptr %i.bl, align 8, !noundef !4 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.val = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bn = getelementptr i8, ptr %i.bj, i64 16
  %.val35 = load i64, ptr %i.bn, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35)
  %i.bo = tail call i32 @memcmp(ptr nonnull readonly %.sroa.023.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i) ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp eq i32 %i.bo, 0
  %i.br = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i = select i1 %i.bq, i64 %i.br, i64 %i.bp
  %i.bs = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.bs, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 96076792050570581) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 96 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.bt, i64 96, i1 false), !noalias !3020
  %i.bu = mul nuw nsw i64 %.sroa.15.080122, 96
  %i.bv = getelementptr i8, ptr %.sroa.0.081121, i64 %i.bu ; 2 uses
  %.sroa.11.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 192
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i44 = load ptr, ptr %.phi.trans.insert.i.i43, align 8, !alias.scope !3022, !noalias !4 ; 2 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i45 = load i64, ptr %.phi.trans.insert43.i.i, align 8, !alias.scope !3022, !noalias !4 ; 4 uses
  br label %.lr.ph.i.i46

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i46, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.ce, %.preheader.i.i50 ], [ %i.co, %.lr.ph.i.i46 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep26.i.i, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ] ; 6 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ]
  %i.bw = icmp eq ptr %.sroa.11.1.i.i52, %i.bv    ; 4 uses
  %.sroa.01.0.i.i53 = select i1 %i.bw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i56 = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3023, !nonnull !4, !noundef !4
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i57 = load i64, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3023, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i.i.i57)
  %i.bx = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i.i.i56, i64 %spec.store.select.i.i.i.i.i.i), !noalias !3024 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp eq i32 %i.bx, 0
  %i.ca = sub i64 %.val3.i.pre.i.i45, %.val1.i.i.i57
  %spec.select.i.i.i.i.i.i = select i1 %i.bz, i64 %i.ca, i64 %i.by
  %i.cb = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.cc = getelementptr inbounds nuw [96 x i8], ptr %i.bt, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cc, i64 96, i1 false), !alias.scope !3025, !noalias !3026
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cc, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.0.i.i53, i64 96, i1 false), !noalias !3023
  %i.cd = zext i1 %i.cb to i64
  %i.ce = add i64 %.sroa.19.1.i.i51, %i.cd        ; 4 uses
  %.sroa.11.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 96
  br i1 %i.bw, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0E0EB3h_.exit.i, label %.preheader.i.i50

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %bb.i
  %.sroa.11.035.i.i = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ], [ %.sroa.11.032.i.i, %bb.i ] ; 4 uses
  %.sroa.015.034.i.i = phi ptr [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ], [ %i.bt, %bb.i ] ; 3 uses
  %.sroa.19.033.i.i = phi i64 [ %i.co, %.lr.ph.i.i46 ], [ 0, %bb.i ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.015.034.i.i, i64 104
  %.val.i9.i.i47 = load ptr, ptr %i.cf, align 8, !alias.scope !3025, !noalias !3027, !nonnull !4, !noundef !4
  %i.cg = getelementptr i8, ptr %.sroa.015.034.i.i, i64 112
  %.val1.i10.i.i48 = load i64, ptr %i.cg, align 8, !alias.scope !3025, !noalias !3027, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i10.i.i48)
  %i.ch = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i9.i.i47, i64 %spec.store.select.i.i.i.i13.i.i), !noalias !3028 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp eq i32 %i.ch, 0
  %i.ck = sub i64 %.val3.i.pre.i.i45, %.val1.i10.i.i48
  %spec.select.i.i.i.i14.i.i = select i1 %i.cj, i64 %i.ck, i64 %i.ci
  %i.cl = icmp sgt i64 %spec.select.i.i.i.i14.i.i, -1
  %i.cm = getelementptr inbounds nuw [96 x i8], ptr %i.bt, i64 %.sroa.19.033.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.015.034.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cm, i64 96, i1 false), !alias.scope !3025, !noalias !3027
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.035.i.i, i64 96, i1 false), !alias.scope !3025, !noalias !3027
  %i.cn = zext i1 %i.cl to i64
  %i.co = add i64 %.sroa.19.033.i.i, %i.cn        ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i, i64 96 ; 3 uses
  %i.cp = icmp ult ptr %.sroa.11.0.i.i49, %i.bv
  br i1 %i.cp, label %.lr.ph.i.i46, label %.preheader.i.i50

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0E0EB3h_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3021
  %.not7.i58 = icmp ult i64 %i.ce, %.sroa.15.080122
  br i1 %.not7.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0E0EB3h_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v112load_catalog00E0E0EB3h_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.cq = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %i.cr = sub nuw nsw i64 %.sroa.15.080122, %i.cq
  %i.cs = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.081121, i64 %i.cq
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit
  %.sroa.023.0.be = phi ptr [ %i.bf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.cr, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.cs, %bb.k ] ; 3 uses
  %i.ct = icmp ult i64 %.sroa.15.0.be, 17
  br i1 %i.ct, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2v_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(96) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 17
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph125

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.g, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  %i.f = icmp samesign ugt i64 %.sroa.15.0.lcssa, 1
  br i1 %i.f, label %bb.b, label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB3a_.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1m_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2K_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 17) %.sroa.15.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB3a_.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.081.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.080.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2t_(ptr noalias noundef nonnull align 8 %.sroa.0.081.lcssa, i64 noundef %.sroa.15.080.lcssa, ptr noalias nonnull align 8 poison)
  br label %_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB3a_.exit

.lr.ph125:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.078124 = phi i32 [ %i.g, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.079123 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.080122 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.081121 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.g = add nsw i32 %.sroa.026.078124, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %i.h = lshr i64 %.sroa.15.080122, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.h, 384
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.h, 672
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx2.i ; 4 uses
  %i.k = icmp samesign ult i64 %.sroa.15.080122, 64
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph125
  %i.l = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB14_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2s_(ptr noundef nonnull readonly align 8 %.sroa.0.081121, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2t_.exit

bb.d:                                             ; preds = %.lr.ph125
  %i.m = getelementptr i8, ptr %.sroa.0.081121, i64 8
  %.val10.i = load ptr, ptr %i.m, align 8, !alias.scope !3050, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.081121, i64 16
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !3050, !noundef !4 ; 4 uses
  %i.o = getelementptr i8, ptr %i.i, i64 8
  %.val12.i = load ptr, ptr %i.o, align 8, !alias.scope !3050, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.i, i64 16
  %.val13.i = load i64, ptr %i.p, align 8, !alias.scope !3050, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i), !noalias !3051 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.val11.i, %.val13.i
  %spec.select.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %i.j, i64 8
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !3050, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr i8, ptr %i.j, i64 16
  %.val9.i = load i64, ptr %i.v, align 8, !alias.scope !3050, !noundef !4 ; 4 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i14.i), !noalias !3051 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val11.i, %.val9.i
  %spec.select.i.i15.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = xor i64 %spec.select.i.i15.i, %spec.select.i.i.i
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2t_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i16.i), !noalias !3051 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val13.i, %.val9.i
  %spec.select.i.i17.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = xor i64 %spec.select.i.i17.i, %spec.select.i.i.i
  %i.ah = icmp slt i64 %i.ag, 0
  %..i.i = select i1 %i.ah, ptr %i.j, ptr %i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2t_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2t_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.l, %bb.c ], [ %.sroa.0.081121, %bb.d ], [ %..i.i, %bb.e ]
  %i.ai = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aj = ptrtoint ptr %.sroa.0.081121 to i64
  %i.ak = sub nuw i64 %i.ai, %i.aj                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ak, 96         ; 3 uses
  %i.al = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.080122
  tail call void @llvm.assume(i1 %i.al)
  %.not = icmp eq ptr %.sroa.023.079123, null
  br i1 %.not, label %bb.f, label %bb.h

_RINvXs2_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortNtCs1LivM9IBWqb_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB3a_.exit: ; preds = %bb.b, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2t_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 96076792050570581) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 96 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.am, i64 96, i1 false), !noalias !3054
  %i.an = mul nuw nsw i64 %.sroa.15.080122, 96
  %i.ao = getelementptr i8, ptr %.sroa.0.081121, i64 %i.an ; 2 uses
  %.sroa.11.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 192
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3056, !noalias !4 ; 2 uses
  %.phi.trans.insert44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i = load i64, ptr %.phi.trans.insert44.i.i, align 8, !alias.scope !3056, !noalias !4 ; 4 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.av, %.preheader.i.i ], [ %i.bd, %.lr.ph.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep27.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %.lr.ph.i.i ] ; 6 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.036.i.i, %.lr.ph.i.i ]
  %i.ap = icmp eq ptr %.sroa.11.1.i.i, %i.ao      ; 4 uses
  %.sroa.01.0.i.i = select i1 %i.ap, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ap, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3057, !nonnull !4, !noundef !4
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ap, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3057, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.pre.i.i)
  %i.aq = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i.i.i), !noalias !3058 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = sub i64 %.val1.i.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i.i.i = select i1 %i.as, i64 %i.at, i64 %i.ar
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.am, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false), !alias.scope !3059, !noalias !3060
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.0.i.i, i64 96, i1 false), !noalias !3057
  %spec.select.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i, 63
  %i.av = add i64 %spec.select.i.i.lobit.i.i.i, %.sroa.19.1.i.i ; 6 uses
  %.sroa.11.1.sroa.gep27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 96
  br i1 %i.ap, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2V_.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.11.036.i.i = phi ptr [ %.sroa.11.0.i.i, %.lr.ph.i.i ], [ %.sroa.11.033.i.i, %bb.f ] ; 4 uses
  %.sroa.016.035.i.i = phi ptr [ %.sroa.11.036.i.i, %.lr.ph.i.i ], [ %i.am, %bb.f ] ; 3 uses
  %.sroa.19.034.i.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.aw = getelementptr i8, ptr %.sroa.016.035.i.i, i64 104
  %.val.i9.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !3059, !noalias !3061, !nonnull !4, !noundef !4
  %i.ax = getelementptr i8, ptr %.sroa.016.035.i.i, i64 112
  %.val1.i10.i.i = load i64, ptr %i.ax, align 8, !alias.scope !3059, !noalias !3061, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i10.i.i, i64 %.val3.i.pre.i.i)
  %i.ay = tail call i32 @memcmp(ptr nonnull readonly %.val.i9.i.i, ptr nonnull readonly %.val2.i.pre.i.i, i64 %spec.store.select.i.i.i13.i.i), !noalias !3062 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp eq i32 %i.ay, 0
  %i.bb = sub i64 %.val1.i10.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i14.i.i = select i1 %i.ba, i64 %i.bb, i64 %i.az
  %i.bc = getelementptr inbounds nuw [96 x i8], ptr %i.am, i64 %.sroa.19.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.016.035.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.bc, i64 96, i1 false), !alias.scope !3059, !noalias !3061
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bc, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.036.i.i, i64 96, i1 false), !alias.scope !3059, !noalias !3061
  %spec.select.i.i.lobit.i15.i.i = lshr i64 %spec.select.i.i.i14.i.i, 63
  %i.bd = add i64 %spec.select.i.i.lobit.i15.i.i, %.sroa.19.034.i.i ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.036.i.i, i64 96 ; 3 uses
  %i.be = icmp ult ptr %.sroa.11.0.i.i, %i.ao
  br i1 %i.be, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2V_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3055
  %.not7.i = icmp ult i64 %i.av, %.sroa.15.080122
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2V_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2V_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.bf = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.081121, i64 %i.av ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %i.bh = xor i64 %i.av, -1
  %i.bi = add i64 %.sroa.15.080122, %i.bh
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB17_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2v_(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %.sroa.023.079123, i32 noundef %i.g, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0EB2t_.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %i.ak ; 2 uses
  %i.bk = getelementptr i8, ptr %.sroa.023.079123, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.bk, align 8, !nonnull !4, !noundef !4
  %i.bl = getelementptr i8, ptr %.sroa.023.079123, i64 16
  %.sroa.023.0.val34 = load i64, ptr %i.bl, align 8, !noundef !4 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.val = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bn = getelementptr i8, ptr %i.bj, i64 16
  %.val35 = load i64, ptr %i.bn, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.023.0.val34, i64 %.val35)
  %i.bo = tail call i32 @memcmp(ptr nonnull readonly %.sroa.023.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i) ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp eq i32 %i.bo, 0
  %i.br = sub i64 %.sroa.023.0.val34, %.val35
  %spec.select.i.i = select i1 %i.bq, i64 %i.br, i64 %i.bp
  %i.bs = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.bs, label %bb.f, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 96076792050570581) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 96 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.bt, i64 96, i1 false), !noalias !3065
  %i.bu = mul nuw nsw i64 %.sroa.15.080122, 96
  %i.bv = getelementptr i8, ptr %.sroa.0.081121, i64 %i.bu ; 2 uses
  %.sroa.11.032.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 192
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 8
  %.val2.i.pre.i.i44 = load ptr, ptr %.phi.trans.insert.i.i43, align 8, !alias.scope !3067, !noalias !4 ; 2 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 16
  %.val3.i.pre.i.i45 = load i64, ptr %.phi.trans.insert43.i.i, align 8, !alias.scope !3067, !noalias !4 ; 4 uses
  br label %.lr.ph.i.i46

.preheader.i.i50:                                 ; preds = %.lr.ph.i.i46, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.ce, %.preheader.i.i50 ], [ %i.co, %.lr.ph.i.i46 ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep26.i.i, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ] ; 6 uses
  %.sroa.015.1.i.i = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ]
  %i.bw = icmp eq ptr %.sroa.11.1.i.i52, %i.bv    ; 4 uses
  %.sroa.01.0.i.i53 = select i1 %i.bw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i56 = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i54.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3068, !nonnull !4, !noundef !4
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bw, ptr %i.a, ptr %.sroa.11.1.i.i52
  %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i57 = load i64, ptr %.sroa.01.0.sroa.sel24.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3068, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i.i.i57)
  %i.bx = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i.i.i56, i64 %spec.store.select.i.i.i.i.i.i), !noalias !3069 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp eq i32 %i.bx, 0
  %i.ca = sub i64 %.val3.i.pre.i.i45, %.val1.i.i.i57
  %spec.select.i.i.i.i.i.i = select i1 %i.bz, i64 %i.ca, i64 %i.by
  %i.cb = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %i.cc = getelementptr inbounds nuw [96 x i8], ptr %i.bt, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.015.1.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cc, i64 96, i1 false), !alias.scope !3070, !noalias !3071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cc, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.01.0.i.i53, i64 96, i1 false), !noalias !3068
  %i.cd = zext i1 %i.cb to i64
  %i.ce = add i64 %.sroa.19.1.i.i51, %i.cd        ; 4 uses
  %.sroa.11.1.sroa.gep26.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 96
  br i1 %i.bw, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0E0EB3h_.exit.i, label %.preheader.i.i50

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %bb.i
  %.sroa.11.035.i.i = phi ptr [ %.sroa.11.0.i.i49, %.lr.ph.i.i46 ], [ %.sroa.11.032.i.i, %bb.i ] ; 4 uses
  %.sroa.015.034.i.i = phi ptr [ %.sroa.11.035.i.i, %.lr.ph.i.i46 ], [ %i.bt, %bb.i ] ; 3 uses
  %.sroa.19.033.i.i = phi i64 [ %i.co, %.lr.ph.i.i46 ], [ 0, %bb.i ] ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.015.034.i.i, i64 104
  %.val.i9.i.i47 = load ptr, ptr %i.cf, align 8, !alias.scope !3070, !noalias !3072, !nonnull !4, !noundef !4
  %i.cg = getelementptr i8, ptr %.sroa.015.034.i.i, i64 112
  %.val1.i10.i.i48 = load i64, ptr %i.cg, align 8, !alias.scope !3070, !noalias !3072, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.pre.i.i45, i64 %.val1.i10.i.i48)
  %i.ch = tail call i32 @memcmp(ptr nonnull readonly %.val2.i.pre.i.i44, ptr nonnull readonly %.val.i9.i.i47, i64 %spec.store.select.i.i.i.i13.i.i), !noalias !3073 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp eq i32 %i.ch, 0
  %i.ck = sub i64 %.val3.i.pre.i.i45, %.val1.i10.i.i48
  %spec.select.i.i.i.i14.i.i = select i1 %i.cj, i64 %i.ck, i64 %i.ci
  %i.cl = icmp sgt i64 %spec.select.i.i.i.i14.i.i, -1
  %i.cm = getelementptr inbounds nuw [96 x i8], ptr %i.bt, i64 %.sroa.19.033.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.015.034.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.cm, i64 96, i1 false), !alias.scope !3070, !noalias !3072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.035.i.i, i64 96, i1 false), !alias.scope !3070, !noalias !3072
  %i.cn = zext i1 %i.cl to i64
  %i.co = add i64 %.sroa.19.033.i.i, %i.cn        ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.035.i.i, i64 96 ; 3 uses
  %i.cp = icmp ult ptr %.sroa.11.0.i.i49, %i.bv
  br i1 %i.cp, label %.lr.ph.i.i46, label %.preheader.i.i50

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0E0EB3h_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3066
  %.not7.i58 = icmp ult i64 %i.ce, %.sroa.15.080122
  br i1 %.not7.i58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0E0EB3h_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtCs1LivM9IBWqb_12object_store10ObjectMetaNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCNvNtNtNtCs844E4pPEVZX_17influxdb3_catalog9serialize8versions2v212load_catalog0s1_0E0E0EB3h_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.cq = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %i.cr = sub nuw nsw i64 %.sroa.15.080122, %i.cq
  %i.cs = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0.081121, i64 %i.cq
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit
  %.sroa.023.0.be = phi ptr [ %i.bf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bi, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.cr, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bg, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtCs1LivM9IBWqb_12object_store10ObjectMeta12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.cs, %bb.k ] ; 3 uses
  %i.ct = icmp ult i64 %.sroa.15.0.be, 17
  br i1 %i.ct, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB17_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph196

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph196

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0110.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0109.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.0110.lcssa, i64 noundef %.sroa.15.0109.lcssa, ptr noalias nonnull poison)
  br label %bb.e

.lr.ph196:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0107195 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0108194 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.0109193 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.0110192 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.0107195, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %i.g = lshr i64 %.sroa.15.0109193, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 168
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.0109193, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph196
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog(ptr noundef nonnull readonly align 8 %.sroa.0.0110192, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit

bb.c:                                             ; preds = %.lr.ph196
  %i.l = getelementptr i8, ptr %.sroa.0.0110192, i64 8
  %.val10.i = load ptr, ptr %i.l, align 8, !alias.scope !3095, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.0110192, i64 16
  %.val11.i = load i64, ptr %i.m, align 8, !alias.scope !3095, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %i.h, i64 8
  %.val12.i = load ptr, ptr %i.n, align 8, !alias.scope !3095, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 16
  %.val13.i = load i64, ptr %i.o, align 8, !alias.scope !3095, !noundef !4 ; 2 uses
  %i.p = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !3096 ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.p, -2
  %i.q = icmp slt i8 %i.p, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.q     ; 2 uses
  %i.r = getelementptr i8, ptr %i.i, i64 8
  %.val8.i = load ptr, ptr %i.r, align 8, !alias.scope !3095, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr i8, ptr %i.i, i64 16
  %.val9.i = load i64, ptr %i.s, align 8, !alias.scope !3095, !noundef !4 ; 2 uses
  %i.t = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !3096 ; 2 uses
  %.not.i.i14.i = icmp ne i8 %i.t, -2
  %i.u = icmp slt i8 %i.t, 0
  %.sroa.0.0.i.i15.i = and i1 %.not.i.i14.i, %i.u
  %i.v = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  br i1 %i.v, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !3096 ; 2 uses
  %.not.i.i16.i = icmp ne i8 %i.w, -2
  %i.x = icmp slt i8 %i.w, 0
  %.sroa.0.0.i.i17.i = and i1 %.not.i.i16.i, %i.x
  %i.y = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i17.i
  %..i.i = select i1 %i.y, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.0110192, %bb.c ], [ %..i.i, %bb.d ]
  %i.z = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aa = ptrtoint ptr %.sroa.0.0110192 to i64
  %i.ab = sub nuw i64 %i.z, %i.aa                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ab, 24         ; 3 uses
  %i.ac = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0109193
  tail call void @llvm.assume(i1 %i.ac)
  %.not = icmp eq ptr %.sroa.023.0108194, null
  br i1 %.not, label %bb.f, label %bb.j

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit, %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3097)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0109193, i64 noundef 0, i64 noundef range(i64 0, 384307168202282325) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !3099
  %i.ae = mul nuw nsw i64 %.sroa.15.0109193, 24
  %i.af = getelementptr i8, ptr %.sroa.0.0110192, i64 %i.ae ; 2 uses
  %.sroa.11.037.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 8
  %.val2.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !3101, !noalias !4 ; 2 uses
  %.phi.trans.insert51.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 16
  %.val3.i.pre.i.i = load i64, ptr %.phi.trans.insert51.i.i, align 8, !alias.scope !3101, !noalias !4 ; 2 uses
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i, %bb.g
  %.sroa.19.1.i.i = phi i64 [ %i.al, %bb.g ], [ %i.as, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep27.i.i, %bb.g ], [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ] ; 6 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.11.1.i.i, %bb.g ], [ %.sroa.11.040.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.11.1.i.i, %i.af      ; 4 uses
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ag, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3102, !nonnull !4, !noundef !4
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ag, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i = load i64, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3102, !noundef !4
  %i.ah = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.pre.i.i, i64 noundef %.val3.i.pre.i.i)
          to label %bb.g unwind label %.loopexit.i.i, !noalias !3103 ; 2 uses

bb.g:                                             ; preds = %.preheader.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v = select i1 %i.ag, ptr %i.b, ptr %.sroa.11.1.i.i
  %.not.i.i.i.i.i = icmp ne i8 %i.ah, -2
  %i.ai = icmp slt i8 %i.ah, 0
  %.sroa.0.0.i.i.i.i.i = and i1 %.not.i.i.i.i.i, %i.ai
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !alias.scope !3104, !noalias !3105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v, i64 24, i1 false), !noalias !3102
  %i.ak = zext i1 %.sroa.0.0.i.i.i.i.i to i64
  %i.al = add i64 %.sroa.19.1.i.i, %i.ak          ; 6 uses
  %.sroa.11.1.sroa.gep27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 24
  br i1 %i.ag, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit.i, label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i, %bb.f
  %.sroa.11.040.i.i = phi ptr [ %.sroa.11.0.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ], [ %.sroa.11.037.i.i, %bb.f ] ; 4 uses
  %.sroa.016.039.i.i = phi ptr [ %.sroa.11.040.i.i, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ], [ %i.ad, %bb.f ] ; 4 uses
  %.sroa.19.038.i.i = phi i64 [ %i.as, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.016.039.i.i, i64 32
  %.val.i9.i.i = load ptr, ptr %i.am, align 8, !alias.scope !3104, !noalias !3106, !nonnull !4, !noundef !4
  %i.an = getelementptr i8, ptr %.sroa.016.039.i.i, i64 40
  %.val1.i10.i.i = load i64, ptr %i.an, align 8, !alias.scope !3104, !noalias !3106, !noundef !4
  %i.ao = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i9.i.i, i64 noundef %.val1.i10.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.pre.i.i, i64 noundef %.val3.i.pre.i.i)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i unwind label %.loopexit.split-lp.i.i, !noalias !3103 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1z_NtNtBc_3cmp10PartialOrd2ltE0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i: ; preds = %.lr.ph.i.i
  %.not.i.i.i13.i.i = icmp ne i8 %i.ao, -2
  %i.ap = icmp slt i8 %i.ao, 0
  %.sroa.0.0.i.i.i14.i.i = and i1 %.not.i.i.i13.i.i, %i.ap
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.19.038.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.039.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !alias.scope !3104, !noalias !3106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.040.i.i, i64 24, i1 false), !alias.scope !3104, !noalias !3106
  %i.ar = zext i1 %.sroa.0.0.i.i.i14.i.i to i64
  %i.as = add i64 %.sroa.19.038.i.i, %i.ar        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.040.i.i, i64 24 ; 3 uses
  %i.at = icmp ult ptr %.sroa.11.0.i.i, %i.af
  br i1 %i.at, label %.lr.ph.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i.i:                           ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

common.resume:                                    ; preds = %bb.m, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.h ], [ %lpad.phi.i.i57, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.sroa.016.2.i.i = phi ptr [ %.sroa.016.1.i.i, %.loopexit.i.i ], [ %.sroa.016.039.i.i, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.2.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3099
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3100
  %.not7.i = icmp ult i64 %i.al, %.sroa.15.0109193
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0109193, i64 noundef 0, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0110192, i64 %i.al ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = xor i64 %i.al, -1
  %i.ax = add i64 %.sroa.15.0109193, %i.aw
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB17_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.023.0108194, i32 noundef %i.f, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtCs1LivM9IBWqb_12object_store4path4PathNvYB15_NtNtBa_3cmp10PartialOrd2ltECs844E4pPEVZX_17influxdb3_catalog.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 %i.ab ; 2 uses
  %i.az = getelementptr i8, ptr %.sroa.023.0108194, i64 8
  %.sroa.023.0.val = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr i8, ptr %.sroa.023.0108194, i64 16
  %.sroa.023.0.val34 = load i64, ptr %i.ba, align 8, !noundef !4
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %.val = load ptr, ptr %i.bb, align 8, !nonnull !4, !noundef !4
  %i.bc = getelementptr i8, ptr %i.ay, i64 16
  %.val35 = load i64, ptr %i.bc, align 8, !noundef !4
  %i.bd = tail call noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.023.0.val, i64 noundef %.sroa.023.0.val34, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val35) ; 2 uses
  %.not.i.i = icmp ne i8 %i.bd, -2
  %i.be = icmp slt i8 %i.bd, 0
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.be
  br i1 %.sroa.0.0.i.i, label %bb.f, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0109193, i64 noundef 0, i64 noundef range(i64 0, 384307168202282325) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !3109
  %i.bg = mul nuw nsw i64 %.sroa.15.0109193, 24
  %i.bh = getelementptr i8, ptr %.sroa.0.0110192, i64 %i.bg ; 2 uses
  %.sroa.11.037.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 48
  %.phi.trans.insert.i.i44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 8
  %.val2.i.pre.i.i45 = load ptr, ptr %.phi.trans.insert.i.i44, align 8, !alias.scope !3111, !noalias !4 ; 2 uses
  %.phi.trans.insert51.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.0110192, i64 16
  %.val3.i.pre.i.i47 = load i64, ptr %.phi.trans.insert51.i.i46, align 8, !alias.scope !3111, !noalias !4 ; 2 uses
  br label %.lr.ph.i.i48

.preheader.i.i59:                                 ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i, %bb.l
  %.sroa.19.1.i.i60 = phi i64 [ %i.bn, %bb.l ], [ %i.bu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ] ; 2 uses
  %.sroa.11.1.i.i61 = phi ptr [ %.sroa.11.1.sroa.gep27.i.i72, %bb.l ], [ %.sroa.11.0.i.i58, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ] ; 6 uses
  %.sroa.016.1.i.i62 = phi ptr [ %.sroa.11.1.i.i61, %bb.l ], [ %.sroa.11.040.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ] ; 2 uses
  %i.bi = icmp eq ptr %.sroa.11.1.i.i61, %i.bh    ; 4 uses
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bi, ptr %i.a, ptr %.sroa.11.1.i.i61
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  %.val.i.i.i65 = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3112, !nonnull !4, !noundef !4
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bi, ptr %i.a, ptr %.sroa.11.1.i.i61
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val1.i.i.i68 = load i64, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i66.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !3112, !noundef !4
  %i.bj = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.pre.i.i45, i64 noundef %.val3.i.pre.i.i47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i65, i64 noundef %.val1.i.i.i68)
          to label %bb.l unwind label %.loopexit.i.i69, !noalias !3113 ; 2 uses

bb.l:                                             ; preds = %.preheader.i.i59
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v = select i1 %i.bi, ptr %i.a, ptr %.sroa.11.1.i.i61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, -2
  %i.bk = icmp sgt i8 %i.bj, -1
  %.sroa.0.0.i.i.not.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.bk
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.19.1.i.i60 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.1.i.i62, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !alias.scope !3114, !noalias !3115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i63.sroa.sel.v, i64 24, i1 false), !noalias !3112
  %i.bm = zext i1 %.sroa.0.0.i.i.not.i.i.i.i to i64
  %i.bn = add i64 %.sroa.19.1.i.i60, %i.bm        ; 4 uses
  %.sroa.11.1.sroa.gep27.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i61, i64 24
  br i1 %i.bi, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i, label %.preheader.i.i59

.lr.ph.i.i48:                                     ; preds = %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i, %bb.k
  %.sroa.11.040.i.i49 = phi ptr [ %.sroa.11.0.i.i58, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ], [ %.sroa.11.037.i.i43, %bb.k ] ; 4 uses
  %.sroa.016.039.i.i50 = phi ptr [ %.sroa.11.040.i.i49, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ], [ %i.bf, %bb.k ] ; 4 uses
  %.sroa.19.038.i.i51 = phi i64 [ %i.bu, %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.bo = getelementptr i8, ptr %.sroa.016.039.i.i50, i64 32
  %.val.i9.i.i52 = load ptr, ptr %i.bo, align 8, !alias.scope !3114, !noalias !3116, !nonnull !4, !noundef !4
  %i.bp = getelementptr i8, ptr %.sroa.016.039.i.i50, i64 40
  %.val1.i10.i.i53 = load i64, ptr %i.bp, align 8, !alias.scope !3114, !noalias !3116, !noundef !4
  %i.bq = invoke noundef range(i8 -2, 2) i8 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2.i.pre.i.i45, i64 noundef %.val3.i.pre.i.i47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i9.i.i52, i64 noundef %.val1.i10.i.i53)
          to label %_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i unwind label %.loopexit.split-lp.i.i54, !noalias !3113 ; 2 uses

_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB4_9quicksortB1z_NvYB1z_NtNtBc_3cmp10PartialOrd2ltE0E0Cs844E4pPEVZX_17influxdb3_catalog.exit15.i.i: ; preds = %.lr.ph.i.i48
  %.not.i.i.i.i13.i.i = icmp eq i8 %i.bq, -2
  %i.br = icmp sgt i8 %i.bq, -1
  %.sroa.0.0.i.i.not.i.i14.i.i = or i1 %.not.i.i.i.i13.i.i, %i.br
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.sroa.19.038.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.039.i.i50, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !alias.scope !3114, !noalias !3116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.040.i.i49, i64 24, i1 false), !alias.scope !3114, !noalias !3116
  %i.bt = zext i1 %.sroa.0.0.i.i.not.i.i14.i.i to i64
  %i.bu = add i64 %.sroa.19.038.i.i51, %i.bt      ; 2 uses
  %.sroa.11.0.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.040.i.i49, i64 24 ; 3 uses
  %i.bv = icmp ult ptr %.sroa.11.0.i.i58, %i.bh
  br i1 %i.bv, label %.lr.ph.i.i48, label %.preheader.i.i59

.loopexit.i.i69:                                  ; preds = %.preheader.i.i59
  %lpad.loopexit.i.i70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp.i.i54:                         ; preds = %.lr.ph.i.i48
  %lpad.loopexit.split-lp.i.i55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i.i54, %.loopexit.i.i69
  %.sroa.016.2.i.i56 = phi ptr [ %.sroa.016.1.i.i62, %.loopexit.i.i69 ], [ %.sroa.016.039.i.i50, %.loopexit.split-lp.i.i54 ]
  %lpad.phi.i.i57 = phi { ptr, i32 } [ %lpad.loopexit.i.i70, %.loopexit.i.i69 ], [ %lpad.loopexit.split-lp.i.i55, %.loopexit.split-lp.i.i54 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.2.i.i56, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !3109
  br label %common.resume

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3110
  %.not7.i73 = icmp ult i64 %i.bn, %.sroa.15.0109193
  br i1 %.not7.i73, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i
  tail call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs1LivM9IBWqb_12object_store4path4PathNCINvB2_9quicksortB1x_NvYB1x_NtNtBa_3cmp10PartialOrd2ltE0ECs844E4pPEVZX_17influxdb3_catalog.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path14swap_uncheckedCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 %.sroa.0.0110192, i64 noundef range(i64 33, 384307168202282326) %.sroa.15.0109193, i64 noundef 0, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.bw = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bx = sub nuw nsw i64 %.sroa.15.0109193, %i.bw
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0110192, i64 %i.bw
  br label %.backedge

.backedge:                                        ; preds = %bb.o, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit
  %.sroa.023.0.be = phi ptr [ %i.au, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ null, %bb.o ]
  %.sroa.15.0.be = phi i64 [ %i.ax, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.bx, %bb.o ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.av, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs1LivM9IBWqb_12object_store4path4Path12split_at_mutCs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.by, %bb.o ] ; 3 uses
  %i.bz = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.bz, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1f_7catalog8versions2v2NtB4g_9ColumnSetNtB4g_8Snapshot8snapshots_0E0EB1f_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph113

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph113

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB1f_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1n_7catalog8versions2v2NtB4o_9ColumnSetNtB4o_8Snapshot8snapshots_0E0EB1n_(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.074.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.073.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1d_7catalog8versions2v2NtB4e_9ColumnSetNtB4e_8Snapshot8snapshots_0E0EB1d_(ptr noalias noundef nonnull align 8 %.sroa.0.074.lcssa, i64 noundef %.sroa.15.073.lcssa, ptr noalias nonnull align 8 poison)
  br label %bb.e

.lr.ph113:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.071112 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.072111 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.073110 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.074109 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.071112, -1        ; 3 uses
  %i.g = lshr i64 %.sroa.15.073110, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 160
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 280
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.073110, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph113
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB14_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1c_7catalog8versions2v2NtB4d_9ColumnSetNtB4d_8Snapshot8snapshots_0E0EB1c_(ptr noundef nonnull readonly align 8 %.sroa.0.074109, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1d_7catalog8versions2v2NtB4e_9ColumnSetNtB4e_8Snapshot8snapshots_0E0EB1d_.exit

bb.c:                                             ; preds = %.lr.ph113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  %i.l = load i64, ptr %.sroa.0.074109, align 8, !range !14, !alias.scope !3184, !noundef !4
  %switch.idx.mult.i.i.i = shl nuw nsw i64 %i.l, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %switch.idx.mult.i.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 26
  %.sroa.0.0.i.i.i = load i16, ptr %i.n, align 2, !range !17, !alias.scope !3184, !noundef !4
  %.sroa.4.0.i.i.i = load i16, ptr %i.o, align 2, !alias.scope !3184 ; 2 uses
  %i.p = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3185, !noundef !4
  %switch.idx.mult.i5.i.i = shl nuw nsw i64 %i.p, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %switch.idx.mult.i5.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 26
  %.sroa.0.0.i7.i.i = load i16, ptr %i.r, align 2, !range !17, !alias.scope !3185, !noundef !4
  %.sroa.4.0.i8.i.i = load i16, ptr %i.s, align 2, !alias.scope !3185 ; 2 uses
  %i.t = trunc nuw i16 %.sroa.0.0.i.i.i to i1     ; 2 uses
  %i.u = trunc nuw i16 %.sroa.0.0.i7.i.i to i1    ; 3 uses
  %i.v = icmp ult i16 %.sroa.4.0.i.i.i, %.sroa.4.0.i8.i.i
  %spec.select.i.i.i = select i1 %i.u, i1 %i.v, i1 false
  %.sroa.0.0.i.i.i.i = select i1 %i.t, i1 %spec.select.i.i.i, i1 %i.u ; 2 uses
  %i.w = load i64, ptr %i.i, align 8, !range !14, !alias.scope !3186, !noundef !4
  %switch.idx.mult.i5.i6.i = shl nuw nsw i64 %i.w, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %switch.idx.mult.i5.i6.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  %.sroa.0.0.i7.i7.i = load i16, ptr %i.y, align 2, !range !17, !alias.scope !3186, !noundef !4
  %.sroa.4.0.i8.i8.i = load i16, ptr %i.z, align 2, !alias.scope !3186 ; 2 uses
  %i.aa = trunc nuw i16 %.sroa.0.0.i7.i7.i to i1  ; 4 uses
  %i.ab = icmp ult i16 %.sroa.4.0.i.i.i, %.sroa.4.0.i8.i8.i
  %spec.select.i.i9.i = select i1 %i.aa, i1 %i.ab, i1 false
  %.sroa.0.0.i.i.i10.i = select i1 %i.t, i1 %spec.select.i.i9.i, i1 %i.aa
  %i.ac = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i10.i
  br i1 %i.ac, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1d_7catalog8versions2v2NtB4e_9ColumnSetNtB4e_8Snapshot8snapshots_0E0EB1d_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ult i16 %.sroa.4.0.i8.i.i, %.sroa.4.0.i8.i8.i
  %spec.select.i.i17.i = select i1 %i.aa, i1 %i.ad, i1 false
  %.sroa.0.0.i.i.i18.i = select i1 %i.u, i1 %spec.select.i.i17.i, i1 %i.aa
  %i.ae = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i18.i
  %..i.i = select i1 %i.ae, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1d_7catalog8versions2v2NtB4e_9ColumnSetNtB4e_8Snapshot8snapshots_0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1d_7catalog8versions2v2NtB4e_9ColumnSetNtB4e_8Snapshot8snapshots_0E0EB1d_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.074109, %bb.c ], [ %..i.i, %bb.d ]
  %i.af = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ag = ptrtoint ptr %.sroa.0.074109 to i64
  %i.ah = sub nuw i64 %i.af, %i.ag                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ah, 40         ; 3 uses
  %i.ai = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.073110
  tail call void @llvm.assume(i1 %i.ai)
  %.not = icmp eq ptr %.sroa.023.072111, null
  br i1 %.not, label %.lr.ph.i.i, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1d_7catalog8versions2v2NtB4e_9ColumnSetNtB4e_8Snapshot8snapshots_0E0EB1d_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3187)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false), !noalias !3189
  %i.ak = mul nuw nsw i64 %.sroa.15.073110, 40
  %i.al = getelementptr i8, ptr %.sroa.0.074109, i64 %i.ak ; 2 uses
  %.sroa.11.028.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 80
  %.pre.i.i = load i64, ptr %.sroa.0.074109, align 8, !range !14, !alias.scope !3191, !noalias !4
  %.pre36.i.i = shl nuw nsw i64 %.pre.i.i, 1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.pre36.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 26
  %.sroa.0.0.i7.i.i13.i.i = load i16, ptr %i.an, align 2, !range !17, !alias.scope !3192, !noalias !3193, !noundef !4
  %.sroa.4.0.i8.i.i14.i.i = load i16, ptr %i.ao, align 2, !alias.scope !3192, !noalias !3193 ; 2 uses
  %i.ap = trunc nuw i16 %.sroa.0.0.i7.i.i13.i.i to i1 ; 4 uses
  br label %bb.f

.preheader.i.i:                                   ; preds = %bb.f, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.az, %.preheader.i.i ], [ %i.bi, %bb.f ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %bb.f ] ; 4 uses
  %.sroa.017.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.031.i.i, %bb.f ]
  %i.aq = icmp eq ptr %.sroa.11.1.i.i, %i.al      ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.aq, ptr %i.b, ptr %.sroa.11.1.i.i ; 3 uses
  %i.ar = load i64, ptr %.sroa.01.0.i.i, align 8, !range !14, !alias.scope !3194, !noalias !3195, !noundef !4
  %switch.idx.mult.i.i.i.i.i = shl nuw nsw i64 %i.ar, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 %switch.idx.mult.i.i.i.i.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 26
  %.sroa.0.0.i.i.i.i.i = load i16, ptr %i.at, align 2, !range !17, !alias.scope !3194, !noalias !3195, !noundef !4
  %.sroa.4.0.i.i.i.i.i = load i16, ptr %i.au, align 2, !alias.scope !3194, !noalias !3195
  %i.av = trunc nuw i16 %.sroa.0.0.i.i.i.i.i to i1
  %i.aw = icmp ult i16 %.sroa.4.0.i.i.i.i.i, %.sroa.4.0.i8.i.i14.i.i
  %spec.select.i.i.i.i.i = select i1 %i.ap, i1 %i.aw, i1 false
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.av, i1 %spec.select.i.i.i.i.i, i1 %i.ap
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.017.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i64 40, i1 false), !alias.scope !3196, !noalias !3197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i, i64 40, i1 false), !noalias !3195
  %i.ay = zext i1 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.az = add i64 %.sroa.19.1.i.i, %i.ay          ; 6 uses
  %.sroa.11.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 40
  br i1 %i.aq, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB4G_9ColumnSetNtB4G_8Snapshot8snapshots_0E0EB1F_.exit.i, label %.preheader.i.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.11.031.i.i = phi ptr [ %.sroa.11.028.i.i, %.lr.ph.i.i ], [ %.sroa.11.0.i.i, %bb.f ] ; 6 uses
  %.sroa.017.030.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.sroa.11.031.i.i, %bb.f ]
  %.sroa.19.029.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bi, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3199)
  %i.ba = load i64, ptr %.sroa.11.031.i.i, align 8, !range !14, !alias.scope !3200, !noalias !3193, !noundef !4
  %switch.idx.mult.i.i.i9.i.i = shl nuw nsw i64 %i.ba, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.11.031.i.i, i64 %switch.idx.mult.i.i.i9.i.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 26
  %.sroa.0.0.i.i.i10.i.i = load i16, ptr %i.bc, align 2, !range !17, !alias.scope !3200, !noalias !3193, !noundef !4
  %.sroa.4.0.i.i.i11.i.i = load i16, ptr %i.bd, align 2, !alias.scope !3200, !noalias !3193
  %i.be = trunc nuw i16 %.sroa.0.0.i.i.i10.i.i to i1
  %i.bf = icmp ult i16 %.sroa.4.0.i.i.i11.i.i, %.sroa.4.0.i8.i.i14.i.i
  %spec.select.i.i.i15.i.i = select i1 %i.ap, i1 %i.bf, i1 false
  %.sroa.0.0.i.i.i.i16.i.i = select i1 %i.be, i1 %spec.select.i.i.i15.i.i, i1 %i.ap
  %i.bg = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %.sroa.19.029.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.017.030.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false), !alias.scope !3196, !noalias !3193
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.031.i.i, i64 40, i1 false), !alias.scope !3196, !noalias !3193
  %i.bh = zext i1 %.sroa.0.0.i.i.i.i16.i.i to i64
  %i.bi = add i64 %.sroa.19.029.i.i, %i.bh        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.031.i.i, i64 40 ; 3 uses
  %i.bj = icmp ult ptr %.sroa.11.0.i.i, %i.al
  br i1 %i.bj, label %bb.f, label %.preheader.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB4G_9ColumnSetNtB4G_8Snapshot8snapshots_0E0EB1F_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3190
  %.not7.i = icmp ult i64 %i.az, %.sroa.15.073110
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot12split_at_mutBC_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB4G_9ColumnSetNtB4G_8Snapshot8snapshots_0E0EB1F_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot12split_at_mutBC_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB4G_9ColumnSetNtB4G_8Snapshot8snapshots_0E0EB1F_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.074109, i64 %i.az ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = xor i64 %i.az, -1
  %i.bn = add i64 %.sroa.15.073110, %i.bm
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB17_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1f_7catalog8versions2v2NtB4g_9ColumnSetNtB4g_8Snapshot8snapshots_0E0EB1f_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef %i.az, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %.sroa.023.072111, i32 noundef %i.f, ptr noalias noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvMB8_SB15_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1d_7catalog8versions2v2NtB4e_9ColumnSetNtB4e_8Snapshot8snapshots_0E0EB1d_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3202)
  %i.bp = load i64, ptr %.sroa.023.072111, align 8, !range !14, !alias.scope !3203, !noundef !4
  %switch.idx.mult.i.i = shl nuw nsw i64 %i.bp, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.023.072111, i64 %switch.idx.mult.i.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 26
  %.sroa.0.0.i.i = load i16, ptr %i.br, align 2, !range !17, !alias.scope !3203, !noundef !4
  %.sroa.4.0.i.i = load i16, ptr %i.bs, align 2, !alias.scope !3203
  %i.bt = load i64, ptr %i.bo, align 8, !range !14, !alias.scope !3204, !noundef !4
  %switch.idx.mult.i5.i = shl nuw nsw i64 %i.bt, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 %switch.idx.mult.i5.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 26
  %.sroa.0.0.i7.i = load i16, ptr %i.bv, align 2, !range !17, !alias.scope !3204, !noundef !4
  %.sroa.4.0.i8.i = load i16, ptr %i.bw, align 2, !alias.scope !3204
  %i.bx = trunc nuw i16 %.sroa.0.0.i.i to i1
  %i.by = trunc nuw i16 %.sroa.0.0.i7.i to i1     ; 2 uses
  %i.bz = icmp ult i16 %.sroa.4.0.i.i, %.sroa.4.0.i8.i
  %spec.select.i.i = select i1 %i.by, i1 %i.bz, i1 false
  %.sroa.0.0.i.i.i40 = select i1 %i.bx, i1 %spec.select.i.i, i1 %i.by
  br i1 %.sroa.0.0.i.i.i40, label %.lr.ph.i.i, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3205)
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef range(i64 0, 230584300921369395) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3207)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ca, i64 40, i1 false), !noalias !3207
  %i.cb = mul nuw nsw i64 %.sroa.15.073110, 40
  %i.cc = getelementptr i8, ptr %.sroa.0.074109, i64 %i.cb ; 2 uses
  %.sroa.11.028.i.i43 = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 80
  %.pre.i.i44 = load i64, ptr %.sroa.0.074109, align 8, !range !14, !alias.scope !3209, !noalias !4
  %.pre36.i.i45 = shl nuw nsw i64 %.pre.i.i44, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.074109, i64 %.pre36.i.i45 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 26
  %.sroa.0.0.i.i.i.i10.i.i = load i16, ptr %i.ce, align 2, !range !17, !alias.scope !3210, !noalias !3211, !noundef !4
  %.sroa.4.0.i.i.i.i11.i.i = load i16, ptr %i.cf, align 2, !alias.scope !3210, !noalias !3211 ; 2 uses
  %i.cg = trunc nuw i16 %.sroa.0.0.i.i.i.i10.i.i to i1 ; 2 uses
  br label %bb.i

.preheader.i.i50:                                 ; preds = %bb.i, %.preheader.i.i50
  %.sroa.19.1.i.i51 = phi i64 [ %i.cr, %.preheader.i.i50 ], [ %i.db, %bb.i ] ; 2 uses
  %.sroa.11.1.i.i52 = phi ptr [ %.sroa.11.1.sroa.gep.i.i55, %.preheader.i.i50 ], [ %.sroa.11.0.i.i49, %bb.i ] ; 4 uses
  %.sroa.017.1.i.i53 = phi ptr [ %.sroa.11.1.i.i52, %.preheader.i.i50 ], [ %.sroa.11.031.i.i46, %bb.i ]
  %i.ch = icmp eq ptr %.sroa.11.1.i.i52, %i.cc    ; 2 uses
  %.sroa.01.0.i.i54 = select i1 %i.ch, ptr %i.a, ptr %.sroa.11.1.i.i52 ; 3 uses
  %i.ci = load i64, ptr %.sroa.01.0.i.i54, align 8, !range !14, !alias.scope !3212, !noalias !3213, !noundef !4
  %switch.idx.mult.i5.i.i.i.i.i = shl nuw nsw i64 %i.ci, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i54, i64 %switch.idx.mult.i5.i.i.i.i.i ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 26
  %.sroa.0.0.i7.i.i.i.i.i = load i16, ptr %i.ck, align 2, !range !17, !alias.scope !3212, !noalias !3213, !noundef !4
  %.sroa.4.0.i8.i.i.i.i.i = load i16, ptr %i.cl, align 2, !alias.scope !3212, !noalias !3213
  %i.cm = trunc nuw i16 %.sroa.0.0.i7.i.i.i.i.i to i1 ; 2 uses
  %i.cn = icmp ult i16 %.sroa.4.0.i.i.i.i11.i.i, %.sroa.4.0.i8.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.cm, i1 %i.cn, i1 false
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.cg, i1 %spec.select.i.i.i.i.i.i, i1 %i.cm
  %i.co = xor i1 %.sroa.0.0.i.i.i.i.i.i.i, true
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %.sroa.19.1.i.i51 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.017.1.i.i53, ptr noundef nonnull align 8 dereferenceable(40) %i.cp, i64 40, i1 false), !alias.scope !3214, !noalias !3215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.01.0.i.i54, i64 40, i1 false), !noalias !3213
  %i.cq = zext i1 %i.co to i64
  %i.cr = add i64 %.sroa.19.1.i.i51, %i.cq        ; 4 uses
  %.sroa.11.1.sroa.gep.i.i55 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i52, i64 40
  br i1 %i.ch, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB52_9ColumnSetNtB52_8Snapshot8snapshots_0E0E0EB1F_.exit.i, label %.preheader.i.i50

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i42
  %.sroa.11.031.i.i46 = phi ptr [ %.sroa.11.028.i.i43, %.lr.ph.i.i42 ], [ %.sroa.11.0.i.i49, %bb.i ] ; 6 uses
  %.sroa.017.030.i.i47 = phi ptr [ %i.ca, %.lr.ph.i.i42 ], [ %.sroa.11.031.i.i46, %bb.i ]
  %.sroa.19.029.i.i48 = phi i64 [ 0, %.lr.ph.i.i42 ], [ %i.db, %bb.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.cs = load i64, ptr %.sroa.11.031.i.i46, align 8, !range !14, !alias.scope !3220, !noalias !3211, !noundef !4
  %switch.idx.mult.i5.i.i.i12.i.i = shl nuw nsw i64 %i.cs, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.11.031.i.i46, i64 %switch.idx.mult.i5.i.i.i12.i.i ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 26
  %.sroa.0.0.i7.i.i.i13.i.i = load i16, ptr %i.cu, align 2, !range !17, !alias.scope !3220, !noalias !3211, !noundef !4
  %.sroa.4.0.i8.i.i.i14.i.i = load i16, ptr %i.cv, align 2, !alias.scope !3220, !noalias !3211
  %i.cw = trunc nuw i16 %.sroa.0.0.i7.i.i.i13.i.i to i1 ; 2 uses
  %i.cx = icmp ult i16 %.sroa.4.0.i.i.i.i11.i.i, %.sroa.4.0.i8.i.i.i14.i.i
  %spec.select.i.i.i.i15.i.i = select i1 %i.cw, i1 %i.cx, i1 false
  %.sroa.0.0.i.i.i.i.i16.i.i = select i1 %i.cg, i1 %spec.select.i.i.i.i15.i.i, i1 %i.cw
  %i.cy = xor i1 %.sroa.0.0.i.i.i.i.i16.i.i, true
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %.sroa.19.029.i.i48 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.017.030.i.i47, ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i64 40, i1 false), !alias.scope !3214, !noalias !3211
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.031.i.i46, i64 40, i1 false), !alias.scope !3214, !noalias !3211
  %i.da = zext i1 %i.cy to i64
  %i.db = add i64 %.sroa.19.029.i.i48, %i.da      ; 2 uses
  %.sroa.11.0.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.11.031.i.i46, i64 40 ; 3 uses
  %i.dc = icmp ult ptr %.sroa.11.0.i.i49, %i.cc
  br i1 %i.dc, label %bb.i, label %.preheader.i.i50

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB52_9ColumnSetNtB52_8Snapshot8snapshots_0E0E0EB1F_.exit.i: ; preds = %.preheader.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3208
  %.not7.i56 = icmp ult i64 %i.cr, %.sroa.15.073110
  br i1 %.not7.i56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB52_9ColumnSetNtB52_8Snapshot8snapshots_0E0E0EB1F_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotNCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keyINtNtBa_6option6OptionNtCsbFlE7Gjht9i_12influxdb3_id8ColumnIdENCNvXs10_NtNtNtB1F_7catalog8versions2v2NtB52_9ColumnSetNtB52_8Snapshot8snapshots_0E0E0EB1F_.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot14swap_uncheckedBC_(ptr noalias noundef nonnull align 8 %.sroa.0.074109, i64 noundef range(i64 33, 230584300921369396) %.sroa.15.073110, i64 noundef 0, i64 noundef %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
  %i.dd = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %i.de = sub nuw nsw i64 %.sroa.15.073110, %i.dd
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.074109, i64 %i.dd
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot12split_at_mutBC_.exit
  %.sroa.023.0.be = phi ptr [ %i.bk, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot12split_at_mutBC_.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.bn, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot12split_at_mutBC_.exit ], [ %i.de, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.bl, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshot12split_at_mutBC_.exit ], [ %i.df, %bb.k ] ; 3 uses
  %i.dg = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.dg, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs844E4pPEVZX_17influxdb3_catalog(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #4 {
bb.a:
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.a = shl i64 %2, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %i.c
  %bound1 = icmp ult ptr %1, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !3234, !noalias !3235
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !3234, !noalias !3235
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !3236
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !3236
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !3234, !noalias !3235
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !3234, !noalias !3235
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !3236
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !3236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !3227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !alias.scope !3232
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !alias.scope !3233
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !alias.scope !3232
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !alias.scope !3233
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !3232
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !3233
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !3232
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !3233
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !3239
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !3240
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !3239
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !3240
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !3231
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNtNtCs5dqXyjIhJTx_4uuid8external13serde_supportNtB7_4UuidNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB1T_16CompactFormatterEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [45 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %i.c = call fastcc ptr @_RNvNtCs5dqXyjIhJTx_4uuid3fmt17encode_hyphenated(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull %i.a)
  %i.d = call noundef align 8 ptr @_RNvXsa_NtCsdLkRf3gRIi6_10serde_json3serINtB5_18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_strCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 36)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNtNtCs5dqXyjIhJTx_4uuid8external13serde_supportNtB7_4UuidNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef readonly captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [45 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.b, i8 0, i64 9, i1 false)
  %i.c = call fastcc ptr @_RNvNtCs5dqXyjIhJTx_4uuid3fmt17encode_hyphenated(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = call noundef ptr @_RINvNtCsdLkRf3gRIi6_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 36) ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvXs1_NtCsdLkRf3gRIi6_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_strCs844E4pPEVZX_17influxdb3_catalog.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 ptr @_RNvMs0_NtCsdLkRf3gRIi6_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.e)
  br label %_RNvXs1_NtCsdLkRf3gRIi6_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_strCs844E4pPEVZX_17influxdb3_catalog.exit

_RNvXs1_NtCsdLkRf3gRIi6_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_strCs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsdLkRf3gRIi6_10serde_json2de6MapKeyNtNtB1U_4read9SliceReadEECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3252)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3253, !noundef !4
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !3253
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !3254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3255
  call void @_RNvXs5_NtCsdLkRf3gRIi6_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !3256
  %i.g = load i64, ptr %i.a, align 8, !range !14, !noalias !3255, !noundef !4
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !3255, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !3256
  store i64 -1, ptr %0, align 8, !alias.scope !3256
  br label %_RINvXsh_NtCsdLkRf3gRIi6_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECs844E4pPEVZX_17influxdb3_catalog.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3255
  call void @_RINvXs4_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i.i)
  br label %_RINvXsh_NtCsdLkRf3gRIi6_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvXsh_NtCsdLkRf3gRIi6_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs5CfTnloWo2c_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3255
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs5CfTnloWo2c_10serde_core2de5implsNtNtCscdodAO9FK5_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtNtCs87O7Q65ve1k_7bitcode5serde2de14DecoderWrapperECs844E4pPEVZX_17influxdb3_catalog(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(88) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  %i.a = load i64, ptr %1, align 8, !range !3271, !alias.scope !3272, !noundef !4
  %i.b = icmp eq i64 %i.a, 5
  br i1 %i.b, label %._crit_edge, label %bb.d, !prof !9

._crit_edge:                                      ; preds = %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !3273, !noalias !3274, !noundef !4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !noalias !3275, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !3273, !noalias !3274
  %.not.i = icmp eq i8 %i.e, -1
end_hunk_1
