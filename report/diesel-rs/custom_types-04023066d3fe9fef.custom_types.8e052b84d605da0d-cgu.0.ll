Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/custom_types-04023066d3fe9fef.custom_types.8e052b84d605da0d-cgu.0?download=true
inline.NumInlined: 247
inline.NumDeleted: 130
begin_hunk_0_@_RNvXs92_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTINtNtBa_10insertable28DefaultableColumnInsertValueINtBS_17ColumnInsertValueNtNtNtNtCscbY9jYmb70D_12custom_types6schema12translations7columns7word_idINtNtNtBa_10expression5bound5BoundNtNtBa_9sql_types7IntegerRlEEEIBQ_IB1E_NtB24_14translation_idB3d_EEIBQ_IB1E_NtB24_8languageIB3e_NtNtB28_9sql_types8LanguageRNtNtB2a_5model8LanguageEEEEINtNtBa_13query_builder13QueryFragmentNtNtNtBa_2pg7backend2PgE8walk_astB2a_:bb.a
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [1 x i8], align 1                 ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [1 x i8], align 1                 ; 7 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.8101 = alloca [16 x i8], align 8         ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !421
  store i8 1, ptr %i.m, align 1, !noalias !421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.r = load ptr, ptr %1, align 8, !alias.scope !424, !noalias !425, !align !16, !noundef !5
  %i.s = icmp eq ptr %i.r, null                   ; 2 uses
  br i1 %i.s, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !421
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !426
  store i64 4, ptr %i.k, align 8, !noalias !427
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !427
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.q, ptr %i.t, align 8, !noalias !426
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types7IntegerRlEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astCscbY9jYmb70D_12custom_types(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !426
  %i.u = load i64, ptr %i.l, align 8, !range !7, !noalias !426, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.8.copyload = load i8, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !429
  %.sroa.10.8..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10.8..sroa.7.0..sroa_idx2.i.sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !421
  store i64 %i.u, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.8.copyload, ptr %.sroa.435.0..sroa_idx, align 8
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !426
  %.pre.i = load i8, ptr %i.m, align 1, !range !17, !noalias !421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !421
  %i.v = trunc nuw i8 %.pre.i to i1
  br i1 %i.v, label %bb.n, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.sroa.077.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.579.0.copyload = load ptr, ptr %.sroa.579.0..sroa_idx, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = icmp eq i64 %.sroa.077.0.copyload, 2
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.579.0.copyload) ]
  store i8 0, ptr %.sroa.579.0.copyload, align 1, !noalias !430
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  switch i64 %.sroa.077.0.copyload, label %bb.n [
    i64 0, label %bb.k
    i64 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !430
  store i64 %.sroa.077.0.copyload, ptr %i.i, align 8, !noalias !431
  %.sroa.579.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.579.0.copyload, ptr %.sroa.579.0..sroa_idx80, align 8, !noalias !431
  %.sroa.8.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx84, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.q, ptr %i.x, align 8, !noalias !430
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types7IntegerRlEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astCscbY9jYmb70D_12custom_types(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.i), !noalias !432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !430
  %i.y = load i64, ptr %i.j, align 8, !range !7, !noalias !430, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !430
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.579.0.copyload) ]
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.579.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 7), !noalias !430
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.579.0.copyload) ]
  store i8 0, ptr %.sroa.579.0.copyload, align 1, !noalias !430
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %.sroa.7.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx76, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !430
  store i64 %i.y, ptr %0, align 8
  br label %bb.aq

bb.n:                                             ; preds = %bb.h, %bb.j, %bb.k, %bb.l, %bb.d
  %i.z = phi i1 [ true, %bb.d ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.h ] ; 2 uses
  %.sroa.0.0 = xor i1 %i.z, true
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !434
  store i8 1, ptr %i.h, align 1, !noalias !434
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !437, !noalias !438, !align !16, !noundef !5
  %i.ac = icmp eq ptr %i.ab, null                 ; 2 uses
  br i1 %i.ac, label %.thread138, label %bb.o

.thread138:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !434
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !439
  store i64 4, ptr %i.f, align 8, !noalias !440
  %.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i60, align 8, !noalias !440
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.q, ptr %i.ad, align 8, !noalias !439
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types7IntegerRlEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astCscbY9jYmb70D_12custom_types(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f), !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !439
  %i.ae = load i64, ptr %i.g, align 8, !range !7, !noalias !439, !noundef !5 ; 2 uses
  %.not.i.i.i61 = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i.i61, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.7.0..sroa_idx2.i62 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.688.8.copyload = load i8, ptr %.sroa.7.0..sroa_idx2.i62, align 8, !noalias !442
  %.sroa.1089.8..sroa.7.0..sroa_idx2.i62.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.545.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.1089.8..sroa.7.0..sroa_idx2.i62.sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !434
  store i64 %i.ae, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.688.8.copyload, ptr %.sroa.444.0..sroa_idx, align 8
  br label %bb.aq

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !439
  %.pre.i65 = load i8, ptr %i.h, align 1, !range !17, !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !434
  %i.af = trunc nuw i8 %.pre.i65 to i1
  br i1 %i.af, label %bb.ae, label %bb.r

bb.r:                                             ; preds = %.thread138, %bb.q
  %.sroa.094.0.copyload.pr = load i64, ptr %2, align 8 ; 4 uses
  br i1 %i.z, label %thread-pre-split, label %bb.z

.thread140:                                       ; preds = %bb.aa, %bb.ab
  %.sroa.596.0.copyload143 = phi ptr [ %i.ak, %bb.aa ], [ %i.am, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8101)
  %.sroa.8101.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8101, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8101.0..sroa_idx144, i64 16, i1 false)
  br label %bb.t

thread-pre-split:                                 ; preds = %bb.r, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8101)
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.596.0.copyload = load ptr, ptr %.sroa.596.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8101, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8101.0..sroa_idx, i64 16, i1 false)
  %i.ag = icmp eq i64 %.sroa.094.0.copyload.pr, 2
  br i1 %i.ag, label %bb.s, label %bb.t

bb.s:                                             ; preds = %thread-pre-split
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.596.0.copyload) ]
  store i8 0, ptr %.sroa.596.0.copyload, align 1, !noalias !443
  br label %bb.t

bb.t:                                             ; preds = %.thread140, %bb.s, %thread-pre-split
  %.sroa.596.0.copyload146 = phi ptr [ %.sroa.596.0.copyload143, %.thread140 ], [ %.sroa.596.0.copyload, %bb.s ], [ %.sroa.596.0.copyload, %thread-pre-split ] ; 5 uses
  %.sroa.094.0.copyload145 = phi i64 [ %.sroa.094.0.copyload.pr, %.thread140 ], [ 2, %bb.s ], [ %.sroa.094.0.copyload.pr, %thread-pre-split ] ; 2 uses
  br i1 %i.ac, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  switch i64 %.sroa.094.0.copyload145, label %bb.ad [
    i64 0, label %bb.x
    i64 4, label %bb.y
  ]

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !443
  store i64 %.sroa.094.0.copyload145, ptr %i.d, align 8, !noalias !444
  %.sroa.596.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.596.0.copyload146, ptr %.sroa.596.0..sroa_idx97, align 8, !noalias !444
  %.sroa.8101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8101.0..sroa_idx102, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8101, i64 16, i1 false), !noalias !444
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.q, ptr %i.ah, align 8, !noalias !443
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtB9_9sql_types7IntegerRlEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astCscbY9jYmb70D_12custom_types(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !443
  %i.ai = load i64, ptr %i.e, align 8, !range !7, !noalias !443, !noundef !5 ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.ai, -1
  br i1 %.not.i.i66, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !443
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.596.0.copyload146) ]
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.596.0.copyload146, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 7), !noalias !443
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.596.0.copyload146) ]
  store i8 0, ptr %.sroa.596.0.copyload146, align 1, !noalias !443
  br label %bb.ad

bb.z:                                             ; preds = %bb.r
  switch i64 %.sroa.094.0.copyload.pr, label %thread-pre-split [
    i64 0, label %bb.aa
    i64 4, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 2)
  br label %.thread140

bb.ab:                                            ; preds = %bb.z
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store i8 0, ptr %i.am, align 1
  br label %.thread140

bb.ac:                                            ; preds = %bb.v
  %.sroa.792.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4126.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.792.0..sroa_idx93, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8101)
  store i64 %i.ai, ptr %0, align 8
  br label %bb.aq

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8101)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.q, %bb.ad
  %.sroa.0.1 = phi i1 [ true, %bb.ad ], [ %.sroa.0.0, %bb.q ]
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !447
  store i8 1, ptr %i.c, align 1, !noalias !447
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !450, !noalias !451, !noundef !5
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread153, label %bb.af

.thread153:                                       ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !447
  br label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !452
  store i64 4, ptr %i.a, align 8, !noalias !453
  %.sroa.5.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i67, align 8, !noalias !453
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.q, ptr %i.aq, align 8, !noalias !452
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel10expression5boundINtB5_5BoundNtNtNtCscbY9jYmb70D_12custom_types6schema9sql_types8LanguageRNtNtB14_5model8LanguageEINtNtB9_13query_builder13QueryFragmentNtNtNtB9_2pg7backend2PgE8walk_astB14_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !452
  %i.ar = load i64, ptr %i.b, align 8, !range !7, !noalias !452, !noundef !5 ; 2 uses
  %.not.i.i.i68 = icmp eq i64 %i.ar, -1
  br i1 %.not.i.i.i68, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx2.i69 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6106.8.copyload = load i8, ptr %.sroa.7.0..sroa_idx2.i69, align 8, !noalias !455
  %.sroa.10107.8..sroa.7.0..sroa_idx2.i69.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.10107.8..sroa.7.0..sroa_idx2.i69.sroa_idx, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !447
  store i64 %i.ar, ptr %0, align 8
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6106.8.copyload, ptr %.sroa.453.0..sroa_idx, align 8
  br label %bb.aq

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !452
  %.pre.i72 = load i8, ptr %i.c, align 1, !range !17, !noalias !447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !447
  %i.as = trunc nuw i8 %.pre.i72 to i1
  br i1 %i.as, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %.thread153, %bb.ah
  br i1 %.sroa.0.1, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.al, %bb.am, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.q, ptr %i.at, align 8
  call fastcc void @_RNvXs5_NtCsjRvGck33osM_6diesel10insertableINtB5_28DefaultableColumnInsertValueINtB5_17ColumnInsertValueNtNtNtNtCscbY9jYmb70D_12custom_types6schema12translations7columns8languageINtNtNtB7_10expression5bound5BoundNtNtB1J_9sql_types8LanguageRNtNtB1L_5model8LanguageEEEINtNtB7_13query_builder13QueryFragmentNtNtNtB7_2pg7backend2PgE8walk_astB1L_(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.au = load i64, ptr %i.o, align 8, !range !7, !noundef !5
  %.not59 = icmp eq i64 %i.au, -1
  br i1 %.not59, label %bb.ao, label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.av = load i64, ptr %2, align 8, !range !15, !noundef !5
  switch i64 %i.av, label %bb.aj [
    i64 0, label %bb.al
    i64 4, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !12, !noundef !5
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 2)
  br label %bb.aj

bb.am:                                            ; preds = %bb.ak
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5
  store i8 0, ptr %i.az, align 1
  br label %bb.aj

bb.an:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aq

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ah, %bb.ao
  store i64 -1, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.c, %bb.m, %bb.p, %bb.ac, %bb.ag, %bb.an, %bb.ap
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allCscbY9jYmb70D_12custom_types(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !12, !noundef !5 ; 3 uses
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCscbY9jYmb70D_12custom_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !458, !noundef !5 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCscbY9jYmb70D_12custom_types.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !458, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !458
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCscbY9jYmb70D_12custom_types.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCscbY9jYmb70D_12custom_types.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = add i64 %i.h, %2
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !458
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtNtB8_13query_builder16select_statement15SelectStatementINtNtB11_11from_clause10FromClauseINtNtNtB8_12query_source5joins6JoinOnINtB2v_4JoinNtNtNtNtB8_2pg15metadata_lookup7pg_type5tableNtNtB3j_12pg_namespace5tableNtB2v_5InnerEINtNtNtB8_10expression7grouped7GroupedINtNtB4I_9operators2EqINtNtB4I_8nullable8NullableNtNtB3h_7columns12typnamespaceEIB5C_NtNtB40_7columns3oidEEEEEINtNtB11_13select_clause12SelectClauseTNtB64_3oidNtB64_8typarrayEENtNtB11_15distinct_clause16NoDistinctClauseINtNtB11_12where_clause11WhereClauseIB4E_INtB5i_3AndIB4E_IB5g_NtB64_7typnameINtNtB4I_5bound5BoundNtNtB8_9sql_types4TextReEEEIB4E_IB5g_NtB6E_7nspnameBa0_EEEEENtNtB11_12order_clause13NoOrderClauseINtNtB11_19limit_offset_clause17LimitOffsetClauseINtNtB11_12limit_clause11LimitClauseIBa1_NtBan_6BigIntxEENtNtB11_13offset_clause14NoOffsetClauseEEINtB4_31QueryFragmentForCachedStatementNtNtB3l_7backend2PgE13construct_sqlCscbY9jYmb70D_12custom_types(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8, !alias.scope !466
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !466
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !466
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 0, ptr %i.e, align 8, !alias.scope !466
end_hunk_0
