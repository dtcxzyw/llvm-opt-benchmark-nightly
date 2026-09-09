Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.10?download=true
inline.NumInlined: 4139
inline.NumDeleted: 1124
begin_hunk_0_@_RNvXs1B_NtCs7fnekraeopg_15datafusion_expr4exprNtB6_7BetweenNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !21, !noundef !21
  %i.g = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g)
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !21, !noundef !21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !21, !noundef !21
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.j, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l)
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !21, !noundef !21
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi i1 [ %i.r, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1I_NtCs7fnekraeopg_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call noundef zeroext i1 @_RNvXNtCs7fnekraeopg_15datafusion_expr3udfNtB2_9ScalarUDFNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !21
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.e
  %.sroa.0.0 = phi i1 [ %i.r, %bb.e ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !21, !noundef !21
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #3 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11208)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !11207, !noalias !11208, !nonnull !21, !noundef !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !11207, !noalias !11208, !noundef !21 ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !11208, !noalias !11207, !nonnull !21, !noundef !21 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !11208, !noalias !11207, !noundef !21
  %i.j = icmp eq ptr %i.d, %i.g
  %i.k = icmp eq i64 %i.f, %i.i                   ; 2 uses
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i64 noundef %i.f), !noalias !11209
  br i1 %i.o, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.r = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q)
  br i1 %i.r, label %bb.e, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.a, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.s = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.s, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.f

_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.d, %bb.c, %bb.m, %bb.l, %bb.k, %bb.j, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.i, %bb.h, %bb.e, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %bb.i ], [ true, %bb.e ], [ %i.bi, %bb.m ], [ false, %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11211)
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !11210, !noalias !11211, !nonnull !21, !noundef !21 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !11211, !noalias !11210, !nonnull !21, !noundef !21 ; 4 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11213)
  %i.aa = load ptr, ptr %i.y, align 8, !alias.scope !11212, !noalias !11214, !nonnull !21, !noundef !21 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !11212, !noalias !11214, !noundef !21 ; 2 uses
  %i.ad = load ptr, ptr %i.z, align 8, !alias.scope !11213, !noalias !11215, !nonnull !21, !noundef !21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !11213, !noalias !11215, !noundef !21
  %i.ag = icmp eq ptr %i.aa, %i.ad
  %i.ah = icmp eq i64 %i.ac, %i.af                ; 2 uses
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ah, label %bb.i, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef %i.ac), !noalias !11216
  br i1 %i.al, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.i, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ao = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.an), !noalias !11217
  br i1 %i.ao, label %bb.j, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !11210, !noalias !11211, !noundef !21 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !11211, !noalias !11210, !noundef !21
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %bb.k, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !11211, !noalias !11210, !nonnull !21, !noundef !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !11210, !noalias !11211, !nonnull !21, !noundef !21
  %i.ay = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtB9_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.av, i64 noundef %i.aq), !noalias !11217
  br i1 %i.ay, label %bb.l, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !11210, !noalias !11211, !noundef !21 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !11211, !noalias !11210, !noundef !21
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.m, label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !11211, !noalias !11210, !nonnull !21, !noundef !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11210, !noalias !11211, !nonnull !21, !noundef !21
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !11217
  br label %_RNvXse_NtCslWccy9wMl4f_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !83, !noundef !21 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !83, !noundef !21 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv2 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv2, i64 2, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.k
    i64 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.h, %bb.f, %bb.b, %bb.a, %bb.i, %bb.j, %bb.k, %bb.e
  %.sroa.0.0 = phi i1 [ %i.n, %bb.e ], [ false, %bb.a ], [ %i.aa, %bb.j ], [ false, %bb.f ], [ %i.w, %bb.i ], [ true, %bb.b ], [ %i.af, %bb.k ], [ false, %bb.h ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !21, !noundef !21
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m)
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !21, !noundef !21
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !21, !noundef !21
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
  br i1 %i.s, label %bb.g, label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.a to i1
  %i.v = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %bb.j, label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.w = xor i1 %i.v, true
  br label %bb.c

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.t, align 8, !noundef !21
  %i.z = load i64, ptr %i.x, align 8, !noundef !21
  %i.aa = icmp eq i64 %i.y, %i.z
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !21, !noundef !21
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !21, !noundef !21
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCsaNmiEuYuYZf_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1P_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_7SetExprNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !88, !noundef !21 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !88, !noundef !21
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.cl, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr534 = phi ptr [ %i.ck, %tailrecurse ], [ %1, %bb.a ] ; 14 uses
  %.tr33 = phi ptr [ %i.ci, %tailrecurse ], [ %0, %bb.a ] ; 14 uses
  switch i8 %i.d, label %default.unreachable68 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %bb.t, %bb.s, %bb.d, %bb.a, %bb.r, %bb.q, %bb.p, %.split.i, %bb.o, %bb.n, %bb.m, %bb.g, %bb.f, %bb.e, %bb.k, %bb.j, %bb.i, %bb.h, %bb.c, %bb.b
  %.sroa.0.0.shrunk = phi i1 [ %i.i, %bb.b ], [ %i.n, %bb.c ], [ false, %bb.q ], [ false, %bb.n ], [ false, %.split.i ], [ %i.ai, %bb.h ], [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ %i.ar, %bb.k ], [ false, %bb.f ], [ false, %bb.o ], [ false, %bb.m ], [ %i.af, %bb.g ], [ false, %bb.e ], [ %i.by, %bb.r ], [ %.mux.i, %bb.p ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.s ], [ false, %bb.t ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable68:                            ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  %i.g = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !21, !noundef !21
  %i.i = tail call fastcc noundef zeroext i1 @_RNvXs2H_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6SelectNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %i.h)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !21, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !21, !noundef !21
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXs1v_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_5QueryNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.m)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr33, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %.tr534, i64 2
  %.val = load i8, ptr %i.o, align 1, !range !55, !noundef !21
  %.val2 = load i8, ptr %i.p, align 1, !range !55, !noundef !21
  %i.q = icmp eq i8 %.val, %.val2
  br i1 %i.q, label %bb.s, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11225)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr33, i64 32
  %i.s = load i8, ptr %i.r, align 8, !range !95, !alias.scope !11224, !noalias !11225, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %.tr534, i64 32
  %i.u = load i8, ptr %i.t, align 8, !range !95, !alias.scope !11225, !noalias !11224, !noundef !21
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.tr33, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !11224, !noalias !11225, !noundef !21 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.tr534, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !11225, !noalias !11224, !noundef !21
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr534, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !11225, !noalias !11224, !nonnull !21, !noundef !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr33, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !11224, !noalias !11225, !nonnull !21, !noundef !21
  %i.af = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsaNmiEuYuYZf_9sqlparser3ast4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ac, i64 noundef %i.x), !noalias !11226
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ai = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ah)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.al = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ak)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ao = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.an)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.ar = tail call fastcc noundef zeroext i1 @_RNvXsc7_NtCsaNmiEuYuYZf_9sqlparser3astNtB6_9StatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.aq)
  br label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr33, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !21, !noundef !21 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.tr534, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !21, !noundef !21 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11228)
  %i.aw = load i64, ptr %i.at, align 8, !range !34, !alias.scope !11227, !noalias !11228, !noundef !21
  %.not.i = icmp eq i64 %i.aw, -1
  %i.ax = load i64, ptr %i.av, align 8, !range !34, !alias.scope !11228, !noalias !11227, !noundef !21
  %i.ay = icmp eq i64 %i.ax, -1                   ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ay, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  br i1 %i.ay, label %bb.p, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !11227, !noalias !11228, !noundef !21 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !11228, !noalias !11227, !noundef !21
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %.split.i, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split.i:                                         ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !11228, !noalias !11227, !nonnull !21, !noundef !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11227, !noalias !11228, !nonnull !21, !noundef !21
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bh, ptr nonnull %i.bf, i64 %i.ba), !noalias !11229
  %i.bi = icmp eq i32 %bcmp.i, 0
  br i1 %i.bi, label %bb.p, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.split.i, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !range !34, !alias.scope !11227, !noalias !11228, !noundef !21 ; 2 uses
  %.not6.i = icmp eq i64 %i.bk, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !range !34, !alias.scope !11228, !noalias !11227, !noundef !21 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, -1
  %brmerge.i = or i1 %.not6.i, %i.bn
  %i.bo = and i64 %i.bm, %i.bk
  %.mux.i = icmp eq i64 %i.bo, -1
  br i1 %brmerge.i, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !11227, !noalias !11228, !noundef !21 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !11228, !noalias !11227, !noundef !21
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.r, label %_RNvXse7_NtNtCsaNmiEuYuYZf_9sqlparser3ast5queryNtB6_6ValuesNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !11228, !noalias !11227, !nonnull !21, !noundef !21
end_hunk_0
