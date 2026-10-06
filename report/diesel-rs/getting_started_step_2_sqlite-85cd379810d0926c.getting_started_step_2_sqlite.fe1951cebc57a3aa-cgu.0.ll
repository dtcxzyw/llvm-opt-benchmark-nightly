Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/getting_started_step_2_sqlite-85cd379810d0926c.getting_started_step_2_sqlite.fe1951cebc57a3aa-cgu.0?download=true
inline.NumInlined: 216
inline.NumDeleted: 116
begin_hunk_0_@_RNvXsi_NtCsjRvGck33osM_6diesel6resultNtB5_21DeserializeFieldErrorNtNtCscI6d9CVNmLh_4core5error5Error6source:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !5, !noundef !4
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtB9_10insertable28DefaultableColumnInsertValueINtBR_17ColumnInsertValueNtNtNtNtCslOySh1CwWOA_29getting_started_step_2_sqlite6schema5posts7columns5titleINtNtNtB9_10expression5bound5BoundNtNtB9_9sql_types4TextRReEEEIBP_IB1D_NtB23_4bodyB3j_EEEINtBR_12InsertValuesNtNtNtB9_6sqlite7backend6SqliteNtB25_5tableE12column_namesB29_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [1 x i8], align 1                 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !472
  store i8 1, ptr %i.h, align 1, !noalias !472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !475, !noalias !476, !align !5, !noundef !4
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !472
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !477
  store i64 4, ptr %i.f, align 8, !noalias !478
  %.sroa.4.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx4.i, align 8, !noalias !478
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.j, ptr %i.m, align 8, !noalias !477
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types4TextRReEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_6sqlite7backend6SqliteE8walk_astCslOySh1CwWOA_29getting_started_step_2_sqlite(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f), !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !477
  %i.n = load i64, ptr %i.g, align 8, !range !16, !noalias !477, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.n, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.6.8.copyload = load i8, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !480
  %.sroa.10.8..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.8..sroa.7.0..sroa_idx2.i.sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !472
  store i64 %i.n, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.8.copyload, ptr %.sroa.424.0..sroa_idx, align 8
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !477
  %.pre.i = load i8, ptr %i.h, align 1, !range !7, !noalias !472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !472
  %i.o = trunc nuw i8 %.pre.i to i1
  br i1 %i.o, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.057.0.copyload = load i64, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  switch i64 %.sroa.057.0.copyload, label %bb.i [
    i64 0, label %bb.f
    i64 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !481
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE15push_identifier(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5), !noalias !482
  %i.p = load i64, ptr %i.e, align 8, !range !16, !noalias !481, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  store i8 0, ptr %.sroa.4.0.copyload, align 1, !noalias !481
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !481
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %.thread, %bb.d
  %i.q = phi i1 [ true, %.thread ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !484
  store i8 1, ptr %i.d, align 1, !noalias !484
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !487, !noalias !488, !align !5, !noundef !4
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread101, label %bb.j

.thread101:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !484
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !489
  store i64 4, ptr %i.b, align 8, !noalias !490
  %.sroa.4.0..sroa_idx4.i44 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx4.i44, align 8, !noalias !490
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.u, align 8, !noalias !489
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types4TextRReEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_6sqlite7backend6SqliteE8walk_astCslOySh1CwWOA_29getting_started_step_2_sqlite(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !489
  %i.v = load i64, ptr %i.c, align 8, !range !16, !noalias !489, !noundef !4 ; 2 uses
  %.not.i.i.i45 = icmp eq i64 %i.v, -1
  br i1 %.not.i.i.i45, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.479.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx4.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !481
  store i64 %i.p, ptr %0, align 8
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %.sroa.7.0..sroa_idx2.i46 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.662.8.copyload = load i8, ptr %.sroa.7.0..sroa_idx2.i46, align 8, !noalias !492
  %.sroa.1063.8..sroa.7.0..sroa_idx2.i46.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.1063.8..sroa.7.0..sroa_idx2.i46.sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !484
  store i64 %i.v, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.662.8.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !489
  %.pre.i49 = load i8, ptr %i.d, align 1, !range !7, !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !484
  %i.w = trunc nuw i8 %.pre.i49 to i1
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.066.0.copyload.pr = load i64, ptr %2, align 8 ; 2 uses
  br i1 %i.q, label %thread-pre-split, label %bb.s

bb.o:                                             ; preds = %bb.r, %bb.q, %thread-pre-split, %.thread101, %bb.m
  store i64 -1, ptr %0, align 8
  br label %bb.u

thread-pre-split:                                 ; preds = %bb.n, %bb.s
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.467.0.copyload = load ptr, ptr %.sroa.467.0..sroa_idx, align 8 ; 2 uses
  switch i64 %.sroa.066.0.copyload.pr, label %bb.o [
    i64 0, label %bb.p
    i64 4, label %bb.q
  ]

bb.p:                                             ; preds = %.thread103, %thread-pre-split
  %.sroa.467.0.copyload108 = phi ptr [ %i.z, %.thread103 ], [ %.sroa.467.0.copyload, %thread-pre-split ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.467.0.copyload108) ]
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE15push_identifier(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.467.0.copyload108, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 4), !noalias !494
  %i.x = load i64, ptr %i.a, align 8, !range !16, !noalias !493, !noundef !4 ; 2 uses
  %.not.i.i51 = icmp eq i64 %i.x, -1
  br i1 %.not.i.i51, label %bb.r, label %bb.t

bb.q:                                             ; preds = %.thread109, %thread-pre-split
  %.sroa.467.0.copyload114 = phi ptr [ %i.ab, %.thread109 ], [ %.sroa.467.0.copyload, %thread-pre-split ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.467.0.copyload114) ]
  store i8 0, ptr %.sroa.467.0.copyload114, align 1, !noalias !493
  br label %bb.o

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  br label %bb.o

bb.s:                                             ; preds = %bb.n
  switch i64 %.sroa.066.0.copyload.pr, label %thread-pre-split [
    i64 0, label %.thread103
    i64 4, label %.thread109
  ]

.thread103:                                       ; preds = %bb.s
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel6sqlite13query_builderNtB4_18SqliteQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend6SqliteE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 2)
  br label %bb.p

.thread109:                                       ; preds = %bb.s
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  br label %bb.q

bb.t:                                             ; preds = %bb.p
  %.sroa.7.0..sroa_idx4.i52 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.489.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx4.i52, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !493
  store i64 %i.x, ptr %0, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.l, %bb.t, %bb.c, %bb.k, %bb.o
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCsgczF5crJ4sT_3std3envNtB5_8VarErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !13, !noundef !4
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCsjRvGck33osM_6diesel6resultNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !15, !noundef !4 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %i.i = add i64 %i.g, -9223372036854775807
  %i.j = select i1 %i.h, i64 %i.i, i64 0
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 14, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.e, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 13, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 8)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.d, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 17, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.c, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 20, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.b, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 18, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.a, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 21, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 14, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 19)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 20)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 16)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 24)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.k, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.s, %bb.g ], [ %i.u, %bb.h ], [ %i.x, %bb.i ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.aa, %bb.l ], [ %i.ab, %bb.m ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !495, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.57, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxNtNtCsjRvGck33osM_6diesel6result5ErrorENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCslOySh1CwWOA_29getting_started_step_2_sqlite(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsk_NtCsjRvGck33osM_6diesel6resultNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCsjRvGck33osM_6diesel6resultNtB5_19UnexpectedNullErrorNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtCsjRvGck33osM_6diesel6resultNtB5_18UnexpectedEndOfRowNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsjRvGck33osM_6diesel6result18UnexpectedEndOfRowNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCslOySh1CwWOA_29getting_started_step_2_sqlite(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @75, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsjRvGck33osM_6diesel6result18UnexpectedEndOfRowNtNtCscI6d9CVNmLh_4core5error5Error5causeCslOySh1CwWOA_29getting_started_step_2_sqlite(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsjRvGck33osM_6diesel6result18UnexpectedEndOfRowNtNtCscI6d9CVNmLh_4core5error5Error6sourceCslOySh1CwWOA_29getting_started_step_2_sqlite(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsjRvGck33osM_6diesel6result18UnexpectedEndOfRowNtNtCscI6d9CVNmLh_4core5error5Error7provideCslOySh1CwWOA_29getting_started_step_2_sqlite(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
end_hunk_0
