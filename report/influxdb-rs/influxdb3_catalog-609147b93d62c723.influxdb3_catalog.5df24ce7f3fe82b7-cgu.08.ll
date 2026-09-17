Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.08?download=true
inline.NumInlined: 3953
inline.NumDeleted: 1700
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog12num_triggers:bb.a
bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = add i64 %.sroa.611.043.i.i.i.i.i, 1
  br label %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.s = add i64 %.sroa.7.042.i.i.i.i.i, 1
  br label %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = add i64 %.sroa.8.041.i.i.i.i.i, 1
  br label %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i

_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.06.0.i.i.i.i.i.i = phi i64 [ %.sroa.8.041.i.i.i.i.i, %bb.b ], [ %.sroa.8.041.i.i.i.i.i, %bb.c ], [ %i.t, %bb.e ], [ %.sroa.8.041.i.i.i.i.i, %bb.d ] ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ %.sroa.7.042.i.i.i.i.i, %bb.b ], [ %.sroa.7.042.i.i.i.i.i, %bb.c ], [ %.sroa.7.042.i.i.i.i.i, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %.sroa.611.043.i.i.i.i.i, %bb.b ], [ %i.r, %bb.c ], [ %.sroa.611.043.i.i.i.i.i, %bb.e ], [ %.sroa.611.043.i.i.i.i.i, %bb.d ] ; 2 uses
  %.sroa.0.0.i6.i.i.i.i.i = phi i64 [ %i.q, %bb.b ], [ %.sroa.08.044.i.i.i.i.i, %bb.c ], [ %.sroa.08.044.i.i.i.i.i, %bb.e ], [ %.sroa.08.044.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.u = icmp eq ptr %i.n, %i.l
  br i1 %i.u, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEETyyyyEB3k_NCNvMsd_B25_NtB25_12InnerCatalog12num_triggers0NCB3w_s_0E0B2b_.exit.i, label %.lr.ph.i.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEETyyyyEB3k_NCNvMsd_B25_NtB25_12InnerCatalog12num_triggers0NCB3w_s_0E0B2b_.exit.i: ; preds = %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i, %.lr.ph.i
  %.sroa.8.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.06.0.i.i.i.i.i.i, %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i ]
  %.sroa.7.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.04.0.i.i.i.i.i.i, %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i ]
  %.sroa.611.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.02.0.i.i.i.i.i.i, %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i ]
  %.sroa.08.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0.0.i6.i.i.i.i.i, %_RNCNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_14DatabaseSchema21trigger_count_by_type0Bd_.exit.i.i.i.i.i ]
  %i.v = add i64 %.sroa.08.0.lcssa.i.i.i.i.i, %.sroa.07.043.i ; 2 uses
  %i.w = add i64 %.sroa.611.0.lcssa.i.i.i.i.i, %.sroa.610.042.i ; 2 uses
  %i.x = add i64 %.sroa.7.0.lcssa.i.i.i.i.i, %.sroa.7.041.i ; 2 uses
  %i.y = add i64 %.sroa.8.0.lcssa.i.i.i.i.i, %.sroa.8.040.i ; 2 uses
  %i.z = icmp eq ptr %i.g, %i.e
  br i1 %i.z, label %_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldTyyyyENCINvNtNtB3e_8adapters3map8map_foldTRBL_RB1k_EB48_B48_NCNvMsd_B1T_NtB1T_12InnerCatalog12num_triggers0NCB58_s_0E0EB1Z_.exit, label %.lr.ph.i

_RINvYINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldTyyyyENCINvNtNtB3e_8adapters3map8map_foldTRBL_RB1k_EB48_B48_NCNvMsd_B1T_NtB1T_12InnerCatalog12num_triggers0NCB58_s_0E0EB1Z_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEETyyyyEB3k_NCNvMsd_B25_NtB25_12InnerCatalog12num_triggers0NCB3w_s_0E0B2b_.exit.i, %bb.a
  %.sroa.8.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.y, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEETyyyyEB3k_NCNvMsd_B25_NtB25_12InnerCatalog12num_triggers0NCB3w_s_0E0B2b_.exit.i ]
  %.sroa.7.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.x, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEETyyyyEB3k_NCNvMsd_B25_NtB25_12InnerCatalog12num_triggers0NCB3w_s_0E0B2b_.exit.i ]
  %.sroa.610.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.w, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEETyyyyEB3k_NCNvMsd_B25_NtB25_12InnerCatalog12num_triggers0NCB3w_s_0E0B2b_.exit.i ]
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.v, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEETyyyyEB3k_NCNvMsd_B25_NtB25_12InnerCatalog12num_triggers0NCB3w_s_0E0B2b_.exit.i ]
  store i64 %.sroa.07.0.lcssa.i, ptr %0, align 8, !alias.scope !4825, !noalias !4831
  %.sroa.610.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.610.0.lcssa.i, ptr %.sroa.610.0..sroa_idx13.i, align 8, !alias.scope !4825, !noalias !4831
  %.sroa.7.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.lcssa.i, ptr %.sroa.7.0..sroa_idx17.i, align 8, !alias.scope !4825, !noalias !4831
  %.sroa.8.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.lcssa.i, ptr %.sroa.8.0..sroa_idx21.i, align 8, !alias.scope !4825, !noalias !4831
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog13current_usage(ptr noalias noundef readonly align 8 captures(none) dereferenceable(808) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4858)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4858, !nonnull !11, !noundef !11 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4858, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.j, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4858
  store ptr %i.h, ptr %i.e, align 8, !noalias !4858
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.l, align 8, !noalias !4858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4858
  call void @_RNvXs2_NtNtCs96Uix8yqi9Q_8indexmap3map4iterINtB5_4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB24_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !4858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4858
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit.thread, label %.lr.ph.i.i.i

_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4858
  br label %._crit_edge

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.am, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i.i ]
  %.sroa.0.01116.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.o, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01116.i.i.i, i64 24 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.0.01116.i.i.i, align 8, !alias.scope !4859, !noalias !4858, !nonnull !11, !noundef !11 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 448
  %i.q = load i8, ptr %i.p, align 8, !range !12, !noalias !4860, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4860
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 416
  %i.t = load ptr, ptr %i.s, align 8, !noalias !4860, !nonnull !11, !noundef !11 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 424
  %i.v = load i64, ptr %i.u, align 8, !noalias !4860, !noundef !11 ; 2 uses
  %i.w = atomicrmw add ptr %i.t, i64 1 monotonic, align 8, !noalias !4860
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.t, ptr %i.c, align 8, !noalias !4860
  store i64 %i.v, ptr %i.n, align 8, !noalias !4860
  %i.y = icmp eq i64 %i.v, 9
  br i1 %i.y, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 7020674649187838303
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = xor i64 %i.ae, 108
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = icmp ne i64 %i.ag, 0                    ; 2 uses
  %i.ai = zext i1 %i.ah to i32                    ; 0 uses
  %i.aj = zext i1 %i.ah to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.f ], [ 1, %bb.d ]
  %i.ak = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !4861
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c), !noalias !4860
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4860
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i, %bb.b
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i.i ], [ 0, %bb.b ]
  %i.am = add i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.0.017.i.i.i ; 2 uses
  %i.an = icmp eq ptr %i.o, %i.k
  br i1 %i.an, label %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit, label %bb.b

_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4858
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit, %.loopexit.a
  %.sroa.0.023 = phi i64 [ 0, %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit ], [ %.sroa.0.1, %.loopexit.a ] ; 3 uses
  %.sroa.02.022 = phi i64 [ 0, %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit ], [ %.sroa.02.1, %.loopexit.a ] ; 4 uses
  %.sroa.04.021 = phi ptr [ %i.h, %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit ], [ %i.aq, %.loopexit.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.021, i64 24 ; 2 uses
  %i.ar = load ptr, ptr %.sroa.04.021, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 448
  %i.at = load i8, ptr %i.as, align 8, !range !12, !noundef !11
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.loopexit.a, label %bb.k

._crit_edge:                                      ; preds = %.loopexit.a, %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit.thread
  %.sroa.0.0.lcssa.i.i.i33 = phi i64 [ 0, %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit.thread ], [ %i.am, %.loopexit.a ]
  %.sroa.02.0.lcssa = phi i64 [ 0, %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit.thread ], [ %.sroa.02.1, %.loopexit.a ]
  %.sroa.0.0.lcssa = phi i64 [ 0, %_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count.exit.thread ], [ %.sroa.0.1, %.loopexit.a ]
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4862
  %i.av = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 32, 825) 48, i64 noundef range(i64 8, 129) 8) #33, !noalias !4862 ; 8 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %_RNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB2_19CurrentCatalogUsage3new.exit, !prof !46

bb.j:                                             ; preds = %._crit_edge
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #32, !noalias !4862
  unreachable

_RNvMNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB2_19CurrentCatalogUsage3new.exit: ; preds = %._crit_edge
  store i64 1, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %.sroa.0.0.lcssa.i.i.i33, ptr %.sroa.6.0..sroa_idx10.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %.sroa.0.0.lcssa, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %.sroa.02.0.lcssa, ptr %.sroa.8.0..sroa_idx.i, align 8
  ret ptr %i.av

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 416
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 424
  %i.ba = load i64, ptr %i.az, align 8, !noundef !11 ; 2 uses
  %i.bb = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.l

.loopexit.a:                                      ; preds = %bb.t, %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15, %bb.i
  %.sroa.02.1 = phi i64 [ %.sroa.02.022, %bb.i ], [ %.sroa.02.022, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15 ], [ %.sroa.02.022, %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit ], [ %.sroa.02.3, %bb.t ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.023, %bb.i ], [ %.sroa.0.023, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15 ], [ %1, %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit ], [ %1, %bb.t ] ; 2 uses
  %i.bd = icmp eq ptr %i.aq, %i.k
  br i1 %i.bd, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.ay, ptr %i.f, align 8
  store i64 %i.ba, ptr %i.ao, align 8
  %i.be = icmp eq i64 %i.ba, 9
  br i1 %i.be, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 7020674649187838303
  %i.bi = getelementptr i8, ptr %i.bf, i64 8
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = xor i64 %i.bk, 108
  %i.bm = or i64 %i.bh, %i.bl
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %i.bp = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !4863
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !4864)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !4864, !nonnull !11, !noundef !11 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !4864, !noundef !11 ; 2 uses
  %.idx.i11 = mul nuw nsw i64 %i.bu, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4864
  store ptr %i.bs, ptr %i.b, align 8, !noalias !4864
  store ptr %i.bv, ptr %i.ap, align 8, !noalias !4864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4864
  call void @_RNvXs2_NtNtCs96Uix8yqi9Q_8indexmap3map4iterINtB5_4IterNtCsbFlE7Gjht9i_12influxdb3_id7TableIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v215TableDefinitionEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB27_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !4864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4864
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit, %.lr.ph.i.i.i12
  %.sroa.0.016.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i12 ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit ]
  %.sroa.0.01115.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i12 ], [ %i.bs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.01115.i.i.i, i64 24 ; 2 uses
  %.val.i.i.i13 = load ptr, ptr %.sroa.0.01115.i.i.i, align 8, !alias.scope !4865, !noalias !4864, !nonnull !11, !noundef !11
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i13, i64 1238
  %i.bz = load i8, ptr %i.by, align 2, !range !12, !noalias !4866, !noundef !11
  %i.ca = xor i8 %i.bz, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = add i64 %.sroa.0.016.i.i.i, %i.cb       ; 2 uses
  %i.cd = icmp eq ptr %i.bx, %i.bv
  br i1 %i.cd, label %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit, label %.lr.ph.i.i.i12

_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit: ; preds = %.lr.ph.i.i.i12, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit
  %.sroa.0.0.lcssa.i.i.i14 = phi i64 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit ], [ %i.cc, %.lr.ph.i.i.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4864
  %1 = add i64 %.sroa.0.0.lcssa.i.i.i14, %.sroa.0.023 ; 2 uses
  %i.ce = load ptr, ptr %i.br, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.cf = load i64, ptr %i.bt, align 8, !noundef !11 ; 2 uses
  %.idx27 = mul nuw nsw i64 %i.cf, 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx27
  %i.ch = icmp eq i64 %i.cf, 0
  br i1 %i.ch, label %.loopexit.a, label %.lr.ph

bb.q:                                             ; preds = %bb.n
  %i.ci = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !4867
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit15: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit.a

.lr.ph:                                           ; preds = %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit, %bb.t
  %.sroa.02.220 = phi i64 [ %.sroa.02.3, %bb.t ], [ %.sroa.02.022, %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit ] ; 2 uses
  %.sroa.06.019 = phi ptr [ %i.ck, %bb.t ], [ %i.ce, %_RNvMsh_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_14DatabaseSchema11table_count.exit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 24 ; 2 uses
  %i.cl = load ptr, ptr %.sroa.06.019, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1238
  %i.cn = load i8, ptr %i.cm, align 2, !range !12, !noundef !11
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !11
  %i.cr = add i64 %i.cq, %.sroa.02.220
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %.sroa.02.3 = phi i64 [ %.sroa.02.220, %.lr.ph ], [ %i.cr, %bb.s ] ; 2 uses
  %i.cs = icmp eq ptr %i.ck, %i.cg
  br i1 %i.cs, label %.loopexit.a, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog14database_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(808) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtNtCs96Uix8yqi9Q_8indexmap3map4iterINtB5_4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintB24_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEENCNvMsd_B2S_NtB2S_12InnerCatalog14database_count0ENtNtNtB9_6traits8iterator8Iterator5countB2Y_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.017.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i ]
  %.sroa.0.01116.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.l, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.01116.i.i, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.0.01116.i.i, align 8, !alias.scope !4876, !nonnull !11, !noundef !11 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 448
  %i.n = load i8, ptr %i.m, align 8, !range !12, !noalias !4877, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4877
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 416
  %i.q = load ptr, ptr %i.p, align 8, !noalias !4877, !nonnull !11, !noundef !11 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 424
  %i.s = load i64, ptr %i.r, align 8, !noalias !4877, !noundef !11 ; 2 uses
  %i.t = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !4877
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.a, align 8, !noalias !4877
  store i64 %i.s, ptr %i.k, align 8, !noalias !4877
  %i.v = icmp eq i64 %i.s, 9
  br i1 %i.v, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 1
  %i.y = xor i64 %i.x, 7020674649187838303
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = xor i64 %i.ab, 108
  %i.ad = or i64 %i.y, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0                    ; 2 uses
  %i.af = zext i1 %i.ae to i32                    ; 0 uses
  %i.ag = zext i1 %i.ae to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i.i.i.i.i = phi i64 [ %i.ag, %bb.f ], [ 1, %bb.d ]
  %i.ah = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !4878
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !4877
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4877
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i.i.i ], [ 0, %bb.b ]
  %i.aj = add i64 %.sroa.0.0.i.i.i.i.i, %.sroa.0.017.i.i ; 2 uses
  %i.ak = icmp eq ptr %i.l, %i.h
  br i1 %i.ak, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEENCNvMsd_B2S_NtB2S_12InnerCatalog14database_count0ENtNtNtB9_6traits8iterator8Iterator5countB2Y_.exit, label %bb.b

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterNtCsbFlE7Gjht9i_12influxdb3_id4DbIdINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEENCNvMsd_B2S_NtB2S_12InnerCatalog14database_count0ENtNtNtB9_6traits8iterator8Iterator5countB2Y_.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i, %bb.a
  %.sroa.0.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtCsbFlE7Gjht9i_12influxdb3_id4DbIdRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v214DatabaseSchemaEEjjNCINvNvXs1_NtB6_6filterINtB3x_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMsd_B25_NtB25_12InnerCatalog14database_count0E0NCINvXsK_NtB44_5accumjNtB5O_3Sum3sumINtB4_3MapINtNtNtCs96Uix8yqi9Q_8indexmap3map4iter4IterBW_B1w_EB3m_EE0E0B2b_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.0.lcssa.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_12InnerCatalog19apply_catalog_batch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.017.i.i = alloca [48 x i8], align 8      ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 21 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [80 x i8], align 8                ; 6 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 5 uses
  %i.s = alloca [80 x i8], align 8                ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 10 uses
  %i.ad = alloca [80 x i8], align 8               ; 4 uses
  %i.ae = alloca [48 x i8], align 8               ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [48 x i8], align 8               ; 6 uses
  %i.ah = alloca [8 x i8], align 8                ; 12 uses
  %i.ai = alloca [8 x i8], align 8                ; 13 uses
  %i.aj = alloca [48 x i8], align 8               ; 6 uses
  %i.ak = alloca [4 x i8], align 4                ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [160 x i8], align 8              ; 4 uses
  %i.ao = alloca [80 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 9 uses
  %i.as = alloca [8 x i8], align 8                ; 8 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 9 uses
  %i.ax = alloca [8 x i8], align 8                ; 10 uses
  %i.ay = alloca [80 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [80 x i8], align 8               ; 7 uses
  %i.bb = alloca [160 x i8], align 8              ; 4 uses
  %i.bc = alloca [80 x i8], align 8               ; 7 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [160 x i8], align 8              ; 19 uses
  %i.bh = alloca [48 x i8], align 8               ; 4 uses
  %i.bi = alloca [48 x i8], align 8               ; 4 uses
  %i.bj = alloca [80 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 8 uses
  %i.bm = alloca [48 x i8], align 8               ; 5 uses
  %i.bn = alloca [440 x i8], align 8              ; 10 uses
  %i.bo = alloca [440 x i8], align 8              ; 9 uses
  %.sroa.622.i.sroa.8 = alloca [78 x i8], align 2 ; 6 uses
  %i.bp = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.7.i.sroa.7 = alloca [78 x i8], align 2   ; 6 uses
  %.sroa.419.i = alloca [352 x i8], align 8       ; 5 uses
  %i.bq = alloca [440 x i8], align 8              ; 9 uses
  %i.br = alloca [440 x i8], align 8              ; 8 uses
  %i.bs = alloca [8 x i8], align 8                ; 9 uses
  %i.bt = alloca [160 x i8], align 8              ; 4 uses
  %i.bu = alloca [80 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 4 uses
  %i.bw = alloca [40 x i8], align 8               ; 4 uses
  %i.bx = alloca [8 x i8], align 8                ; 9 uses
  %i.by = alloca [8 x i8], align 8                ; 8 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [32 x i8], align 8               ; 8 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [16 x i8], align 8               ; 9 uses
  %i.cd = alloca [4 x i8], align 4                ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 7 uses
  %i.cf = alloca [48 x i8], align 8               ; 4 uses
  %i.cg = alloca [24 x i8], align 8               ; 7 uses
  %i.ch = alloca [48 x i8], align 8               ; 4 uses
  %i.ci = alloca [48 x i8], align 8               ; 4 uses
  %i.cj = alloca [24 x i8], align 8               ; 4 uses
  %i.ck = alloca [144 x i8], align 8              ; 20 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [8 x i8], align 8                ; 4 uses
  %i.cn = alloca [16 x i8], align 16              ; 4 uses
  %i.co = alloca [32 x i8], align 8               ; 7 uses
  %i.cp = alloca [32 x i8], align 8               ; 7 uses
end_hunk_0
