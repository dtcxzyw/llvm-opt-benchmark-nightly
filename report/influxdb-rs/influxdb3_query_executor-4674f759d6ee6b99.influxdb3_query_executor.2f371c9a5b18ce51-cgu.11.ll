Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.11?download=true
inline.NumInlined: 5809
inline.NumDeleted: 2024
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNCNvXsg_Cs43kcu4yvms7_24influxdb3_query_executorNtB7_8DatabaseNtNtCsaYhiBUKoVwV_18datafusion_catalog6schema14SchemaProvider5table0B7_:bb.a
bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21107)
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !21108, !nonnull !24, !noundef !24 ; 2 uses
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !21108
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !alias.scope !21108
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !21108, !nonnull !24, !noundef !24
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !noalias !21108
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21108
  store i64 1, ptr %i.a, align 8, !noalias !21108
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.al, align 8, !noalias !21108
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.am, align 8, !noalias !21108
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !21108
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x ptr> %i.ah, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !21108
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !21109
  %i.an = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !21109 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.o, label %_RNCNCNvMs2_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_8Database11query_table00B9_.exit.i.i, !prof !34

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #44
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !21108

.noexc.i.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs43kcu4yvms7_24influxdb3_query_executor10QueryTableEBD_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %..body_crit_edge.i unwind label %bb.q, !noalias !21108

..body_crit_edge.i:                               ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.b, align 8, !alias.scope !21110
  br label %.body.i

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45, !noalias !21108
  unreachable

bb.r:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

_RNCNCNvMs2_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_8Database11query_table00B9_.exit.i.i: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !21108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21108
  %.pre1.i = load ptr, ptr %i.b, align 8, !alias.scope !21111
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEE3mapIBJ_NtCs43kcu4yvms7_24influxdb3_query_executor10QueryTableENCNCNvMs2_B2Y_NtB2Y_8Database11query_table00EB2Y_.exit.i

bb.s:                                             ; preds = %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs43kcu4yvms7_24influxdb3_query_executor.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %..body_crit_edge.i
  %i.as = phi ptr [ %i.x, %bb.s ], [ %.pre.i, %..body_crit_edge.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %i.ap, %..body_crit_edge.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21112)
  call void @llvm.experimental.noalias.scope.decl(metadata !21113)
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !21110
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i

bb.t:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs43kcu4yvms7_24influxdb3_query_executor.exit.i unwind label %bb.v

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEE3mapIBJ_NtCs43kcu4yvms7_24influxdb3_query_executor10QueryTableENCNCNvMs2_B2Y_NtB2Y_8Database11query_table00EB2Y_.exit.i: ; preds = %_RNCNCNvMs2_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_8Database11query_table00B9_.exit.i.i, %bb.j
  %i.av = phi ptr [ %.pre1.i, %_RNCNCNvMs2_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_8Database11query_table00B9_.exit.i.i ], [ %i.x, %bb.j ]
  %.sroa.02.0.i.i = phi ptr [ %i.an, %_RNCNCNvMs2_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_8Database11query_table00B9_.exit.i.i ], [ null, %bb.j ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21115)
  %i.aw = atomicrmw add ptr %i.av, i64 -1 release, align 8, !noalias !21111
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %common.ret

bb.u:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEE3mapIBJ_NtCs43kcu4yvms7_24influxdb3_query_executor10QueryTableENCNCNvMs2_B2Y_NtB2Y_8Database11query_table00EB2Y_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.ret unwind label %bb.g

bb.v:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.w:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #44
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #44
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %bb.x
  unreachable

common.ret:                                       ; preds = %bb.u, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v36schema5table15TableDefinitionEE3mapIBJ_NtCs43kcu4yvms7_24influxdb3_query_executor10QueryTableENCNCNvMs2_B2Y_NtB2Y_8Database11query_table00EB2Y_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.i.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @35, ptr %.sroa.3.0..sroa_idx, align 8
  store i8 1, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB7_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !21186 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 11 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 6 uses
  %i.f = alloca [12 x i8], align 4                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 8 uses
  %i.k = alloca [88 x i8], align 8                ; 11 uses
  %i.l = alloca [48 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [112 x i8], align 16              ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 10 uses
  %i.r = alloca [56 x i8], align 8                ; 5 uses
  %i.s = alloca [56 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 9 uses
  %i.u = alloca [40 x i8], align 8                ; 12 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [56 x i8], align 8                ; 18 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [8 x i8], align 8                 ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [64 x i8], align 8               ; 12 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [64 x i8], align 8               ; 12 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !58, !noundef !24
  switch i8 %i.al, label %default.unreachable279 [
    i8 0, label %bb.b
    i8 1, label %bb.cl
    i8 2, label %bb.cm
    i8 3, label %bb.h
  ]

default.unreachable279:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 185 ; 7 uses
  store i8 0, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 186 ; 3 uses
  store i8 0, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !24, !align !31, !noundef !24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !align !31, !noundef !24
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.av = load <2 x i64>, ptr %1, align 8
  store <2 x i64> %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !24, !align !29, !noundef !24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !24 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !21187
  %i.bb = mul nuw nsw i64 %i.az, 112              ; 2 uses
  %i.bc = icmp eq i64 %i.az, 0
  br i1 %i.bc, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i.i, label %bb.c

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i.i: ; preds = %bb.b
  store i64 0, ptr %i.o, align 8, !noalias !21187
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %i.bd, align 8, !noalias !21187
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %.noexc

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !21188
  %i.bf = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bb, i64 noundef range(i64 1, -9223372036854775807) 16) #43, !noalias !21188 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.d, label %.lr.ph.preheader.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.bb) #44
          to label %.noexc72 unwind label %bb.i

.noexc72:                                         ; preds = %bb.d
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  store i64 %i.az, ptr %i.o, align 8, !noalias !21187
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !noalias !21187
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %3 = getelementptr inbounds nuw [112 x i8], ptr %i.ax, i64 %i.az
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.bk, %bb.e ], [ %i.ax, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.7.022.i.i = phi i64 [ %i.bj, %bb.e ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %4, %bb.e ], [ %i.az, %.lr.ph.preheader.i.i ]
  %4 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %5 = icmp eq ptr %.sroa.012.023.i.i, %3
  br i1 %5, label %.noexc, label %6

6:                                                ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21187
  invoke fastcc void @_RNvXsV_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.n, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.012.023.i.i)
          to label %bb.e unwind label %bb.g, !noalias !21189

bb.e:                                             ; preds = %6
  %i.bj = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 112
  %i.bl = getelementptr inbounds nuw [112 x i8], ptr %i.bf, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bl, ptr noundef nonnull align 16 dereferenceable(112) %i.n, i64 112, i1 false), !noalias !21189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !21187
  %i.bm = icmp eq i64 %4, 0
  br i1 %i.bm, label %.noexc, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #45, !noalias !21189
  unreachable

bb.g:                                             ; preds = %6
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.bi, align 8, !noalias !21187
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEECs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef align 8 dereferenceable(24) %i.o) #46
          to label %.body unwind label %bb.f, !noalias !21189

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  br label %bb.co

.body:                                            ; preds = %bb.cy, %bb.cz, %bb.cd, %bb.ce, %bb.g, %bb.i, %bb.ck
  %.pn48 = phi { ptr, i32 } [ %.pn45.pn, %bb.ck ], [ %lpad.loopexit.i.i, %bb.g ], [ %i.iy, %bb.cd ], [ %i.bo, %bb.i ], [ %i.iy, %bb.ce ], [ %i.ki, %bb.cz ], [ %i.ki, %bb.cy ]
  store i8 2, ptr %i.ak, align 8
  resume { ptr, i32 } %.pn48

bb.i:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.lr.ph.i.i, %bb.e, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i.i
  %7 = phi ptr [ %i.be, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs43kcu4yvms7_24influxdb3_query_executor.exit.thread.i.i ], [ %i.bi, %bb.e ], [ %i.bi, %.lr.ph.i.i ]
  store i64 %i.az, ptr %7, align 8, !noalias !21187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !21190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !21187
  %i.bp = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off = add i64 %i.bp, -2
  %switch = icmp ult i64 %.off, 4
  br i1 %switch, label %.thread219, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.bq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.br = icmp ult i8 %i.bq, 3
  br i1 %i.br, label %bb.l, label %bb.k, !prof !103

bb.k:                                             ; preds = %bb.j
  %i.bs = invoke noundef i8 @_RNvMNtCs4BfJs7E7SEE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan010___CALLSITE)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i73 = phi i8 [ %i.bq, %bb.j ], [ %i.bs, %bb.k ] ; 2 uses
  %i.bt = icmp eq i8 %.sroa.0.0.i73, 0
  br i1 %i.bt, label %.thread219, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.n:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr @_RNvNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan010___CALLSITE, align 8, !nonnull !24, !align !31, !noundef !24
  %i.bw = invoke noundef zeroext i1 @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bv, i8 noundef %.sroa.0.0.i73)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  br i1 %i.bw, label %bb.z, label %.thread219

.thread219:                                       ; preds = %.noexc, %bb.l, %bb.o
  %i.bx = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not = icmp eq i8 %i.bx, 0
  br i1 %.not, label %bb.p, label %bb.ae

bb.p:                                             ; preds = %.thread219
  %i.by = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 6
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp samesign ugt i64 %i.by, 3
  br i1 %i.ca, label %bb.q, label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr @_RNvNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan010___CALLSITE, align 8, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.cc = getelementptr i8, ptr %i.cb, i64 32
  %.val63 = load ptr, ptr %i.cc, align 8, !nonnull !24, !noundef !24
  %i.cd = getelementptr i8, ptr %i.cb, i64 40
  %.val64 = load i64, ptr %i.cd, align 8, !noundef !24
  store i64 4, ptr %i.ad, align 8, !alias.scope !21191
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.val63, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !21191
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.val64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !21191
  %i.ce = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %bb.r unwind label %bb.s       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.cf = extractvalue { ptr, ptr } %i.ce, 0      ; 2 uses
  %i.cg = extractvalue { ptr, ptr } %i.ce, 1      ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !24, !nonnull !24
  %i.cj = invoke noundef zeroext i1 %i.ci(ptr noundef %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.cl = load ptr, ptr @_RNvNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan010___CALLSITE, align 8, !nonnull !24, !align !31, !noundef !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @72, ptr %i.aa, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr inttoptr (i64 67 to ptr), ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.aq, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ba, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.at, ptr %i.x, align 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @57, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.z, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @73, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.y, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr @74, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.x, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr @75, ptr %i.cu, align 8
  store i64 1, ptr %i.ac, align 8, !alias.scope !21192
  %.sroa.4.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i76, align 8, !alias.scope !21192
  %.sroa.5.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx.i77, align 8, !alias.scope !21192
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.cm, ptr %i.cv, align 8, !alias.scope !21192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cb, ptr noundef nonnull %i.cf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.u

bb.y:                                             ; preds = %bb.s, %bb.w
  %.pn9.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.w ], [ %i.ck, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.ck

bb.z:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.cx = load ptr, ptr @_RNvNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan010___CALLSITE, align 8, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr @72, ptr %i.ah, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 67 to ptr), ptr %i.cz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.aq, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ba, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.at, ptr %i.ae, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @57, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ag, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @73, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.af, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr @74, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr %i.ae, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr @75, ptr %i.dg, align 8
  store i64 1, ptr %i.aj, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 4, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.cy, ptr %.sroa.11.0..sroa_idx, align 8
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %.noexc81 unwind label %bb.ad

.noexc81:                                         ; preds = %bb.z
  %i.dh = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !21193
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %bb.aa, label %_RNCNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan0s_0B9_.exit

bb.aa:                                            ; preds = %.noexc81
  %i.dj = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !21193 ; 2 uses
  %i.dk = icmp ult i64 %i.dj, 6
  call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp samesign ugt i64 %i.dj, 3
  br i1 %i.dl, label %bb.ab, label %_RNCNCNvXsi_Cs43kcu4yvms7_24influxdb3_query_executorNtB9_10QueryTableNtNtCsaYhiBUKoVwV_18datafusion_catalog5table13TableProvider4scan0s_0B9_.exit
end_hunk_0
