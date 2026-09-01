Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.11?download=true
inline.NumInlined: 924
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsl_NtNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup12pg_namespace7columnsNtB5_7nspnameINtNtBd_13query_builder13QueryFragmentNtNtBb_7backend2PgE8walk_astCs2bNgeUs5Jlc_6diesel:bb.a
  store i8 0, ptr %.sroa.8.0, align 1
  br label %bb.d

bb.k:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsl_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columnsNtB5_10table_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2d_2pg7backend2PgE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %2, align 8, !range !1029, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !399, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.f, i64 0
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp eq i64 %i.c, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.b
  call void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_2pg7backend2PgE15push_identifierCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 10)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.thread
  %i.m = phi <2 x ptr> [ %i.i, %.thread ], [ %i.l, %bb.e ], [ undef, %bb.c ]
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.0 = load ptr, ptr %.sroa.8.0.in, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x ptr> %i.m, ptr %.sroa.13.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.o, ptr %i.p, align 8
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder5nodesINtB4_27StaticQueryFragmentInstanceNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables5tableEINtB6_13QueryFragmentNtNtNtB8_2pg7backend2PgE8walk_astB1x_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load i64, ptr %i.b, align 8, !range !930, !noundef !5
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i64 %i.c, label %bb.d [
    i64 0, label %bb.i
    i64 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel2pg13query_builderNtB4_14PgQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend2PgE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.8.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %.sroa.8.0, align 1
  br label %bb.d

bb.k:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsl_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables7columnsNtB5_10table_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2d_5mysql7backend5MysqlE8walk_astBf_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %2, align 8, !range !1029, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !399, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = icmp eq i64 %i.c, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.b
  call void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_5mysql7backend5MysqlE15push_identifierCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 10)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.thread
  %.sroa.13.0 = phi ptr [ %i.f, %.thread ], [ %i.k, %bb.e ], [ undef, %bb.c ]
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.0 = load ptr, ptr %.sroa.8.0.in, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.m, ptr %i.n, align 8
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder5nodesINtB4_27StaticQueryFragmentInstanceNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals18information_schema18information_schema6tables5tableEINtB6_13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1x_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = load i64, ptr %i.b, align 8, !range !930, !noundef !5
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i64 %i.c, label %bb.d [
    i64 0, label %bb.i
    i64 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.8.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %.sroa.8.0, align 1
  br label %bb.d

bb.k:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCscI6d9CVNmLh_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 3, 7) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.s, %bb.b, %bb.u, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dy, %bb.u ], [ %i.dw, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.s ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.u, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.g = load i8, ptr %0, align 1, !alias.scope !2182, !noalias !2185, !noundef !5 ; 7 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 7) %1, i64 4) ; 6 uses
  %4 = icmp samesign ult i64 %i.i, %1
  br i1 %4, label %.lr.ph, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp ult i64 %i.i, %7
  br i1 %i.j, label %.lr.ph.1, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.k = add nsw i64 %1, -2                       ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !2182, !noalias !2187, !noundef !5 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.m, %i.g
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph.1
  %i.n = icmp ult i64 %i.i, %i.k
  br i1 %i.n, label %.lr.ph.2, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.o = add nsw i64 %1, -3                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !2182, !noalias !2187, !noundef !5 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.q, %i.g
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph.2
  %i.r = icmp ult i64 %i.i, %i.o
  br i1 %i.r, label %.lr.ph.3, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.s = add nsw i64 %1, -4                       ; 4 uses
  %i.t = icmp samesign ugt i64 %1, 3
  br i1 %i.t, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.3, label %bb.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.3: ; preds = %.lr.ph.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !2182, !noalias !2187, !noundef !5 ; 2 uses
  %.not.i.not.i.i.3 = icmp eq i8 %i.v, %i.g
  br i1 %.not.i.not.i.i.3, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.3
  %i.w = icmp ult i64 %i.i, %i.s
  br i1 %i.w, label %.lr.ph.4, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.4:                                         ; preds = %bb.g
  %i.x = add nsw i64 %1, -5                       ; 4 uses
  %.not = icmp eq i64 %1, 4
  br i1 %.not, label %bb.i, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.4

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.4: ; preds = %.lr.ph.4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !2182, !noalias !2187, !noundef !5 ; 2 uses
  %.not.i.not.i.i.4 = icmp eq i8 %i.z, %i.g
  br i1 %.not.i.not.i.i.4, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.4
  %i.aa = icmp ult i64 %i.i, %i.x
  br i1 %i.aa, label %.lr.ph.5, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.5:                                         ; preds = %bb.h
  %i.ab = add nsw i64 %1, -6                      ; 3 uses
  %i.ac = icmp samesign ugt i64 %1, 5
  br i1 %i.ac, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5, label %bb.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5: ; preds = %.lr.ph.5
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %6 = load i8, ptr %5, align 1, !alias.scope !2182, !noalias !2187, !noundef !5 ; 2 uses
  %.not.i.not.i.i.5 = icmp eq i8 %6, %i.g
  br i1 %.not.i.not.i.i.5, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit, label %bb.j

.lr.ph:                                           ; preds = %bb.c
  %7 = add nsw i64 %1, -1                         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %7
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !2182, !noalias !2187, !noundef !5 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.ae, %i.g
  br i1 %.not.i.not.i.i.a, label %bb.d, label %bb.j

bb.i:                                             ; preds = %.lr.ph.5, %.lr.ph.4, %.lr.ph.3
  %.lcssa40 = phi i64 [ %i.ab, %.lr.ph.5 ], [ %i.x, %.lr.ph.4 ], [ %i.s, %.lr.ph.3 ]
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.lcssa40, i64 noundef range(i64 3, 7) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #29, !noalias !2195
  unreachable

bb.j:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.4, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa43 = phi i8 [ %i.ae, %.lr.ph ], [ %i.m, %.lr.ph.1 ], [ %i.q, %.lr.ph.2 ], [ %i.v, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.3 ], [ %i.z, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.4 ], [ %6, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5 ]
  %.lcssa41 = phi i64 [ %7, %.lr.ph ], [ %i.k, %.lr.ph.1 ], [ %i.o, %.lr.ph.2 ], [ %i.s, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.3 ], [ %i.x, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.4 ], [ %i.ab, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5 ] ; 6 uses
  %i.af = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.ag = icmp ult i64 %3, %i.af
  br i1 %i.ag, label %.lr.ph.split.us.i.i, label %bb.k

.lr.ph.split.us.i.i:                              ; preds = %bb.j
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !2196, !noalias !2197
  %i.ah = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ah, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ai = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i36 = icmp ugt i64 %1, %i.ai
  br i1 %.not28.i.i36, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i
  %i.aj = phi i64 [ %i.am, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i ], [ %i.ai, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader ]
  %.pn.i37 = phi ptr [ %i.ak, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn.i37, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ak, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !2196, !noalias !2197
  %i.al = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.al, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.am = add nsw i64 %i.aj, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.am
  br i1 %.not28.i.i, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.k:                                             ; preds = %bb.j
  %i.an = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ap = insertelement <16 x i8> poison, i8 %.lcssa43, i64 0
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2196
  store ptr %2, ptr %i.a, align 8, !noalias !2196
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.as, align 8, !noalias !2196
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ar, ptr %i.at, align 8, !noalias !2196
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.au, align 8, !noalias !2196
  %i.av = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.av, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.k
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.k ], [ %.sroa.014.2.3.i, %bb.o ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.k ], [ %i.cq, %bb.o ] ; 2 uses
  %i.aw = add i64 %.sroa.06.0.lcssa.i, %i.af
  %i.ax = icmp uge i64 %i.aw, %3
  %i.ay = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.o
  %.sroa.06.098.i = phi i64 [ %i.cq, %bb.o ], [ 0, %bb.k ] ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !2185, !noalias !2201
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.lcssa41
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !2185, !noalias !2201
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.ao
  %i.bc = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.aq
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !2185, !noalias !2201
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.lcssa41
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !2185, !noalias !2201
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.ao
  %i.bi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.aq
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bl, align 1, !alias.scope !2185, !noalias !2201
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.lcssa41
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !2185, !noalias !2201
  %i.bn = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.ao
  %i.bo = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.aq
  %i.bp = and <16 x i1> %i.bn, %i.bo
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !2185, !noalias !2201
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.lcssa41
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !2185, !noalias !2201
  %i.bt = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.ao
  %i.bu = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.aq
  %i.bv = and <16 x i1> %i.bt, %i.bu
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %i.bx = icmp eq i16 %i.be, 0
  br i1 %i.bx, label %.preheader91.1.i, label %bb.p

.preheader91.1.i:                                 ; preds = %bb.p, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cv, %bb.p ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %.preheader91.2.i, label %bb.l

bb.l:                                             ; preds = %.preheader91.1.i
  %i.bz = or disjoint i64 %.sroa.06.098.i, 16
  %i.ca = trunc nuw i8 %.sroa.014.2.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca)
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.i, %i.cc
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.l, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.cd, %bb.l ] ; 3 uses
  %i.ce = icmp eq i16 %i.bq, 0
  br i1 %i.ce, label %.preheader91.3.i, label %bb.m

bb.m:                                             ; preds = %.preheader91.2.i
  %i.cf = or disjoint i64 %.sroa.06.098.i, 32
  %i.cg = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.ch = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cf, i16 noundef %i.bq, i1 noundef zeroext %i.cg)
  %i.ci = zext i1 %i.ch to i8
  %i.cj = or i8 %.sroa.014.2.1.i, %i.ci
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.m, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.cj, %bb.m ] ; 3 uses
  %i.ck = icmp eq i16 %i.bw, 0
  br i1 %i.ck, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader91.3.i
  %i.cl = or disjoint i64 %.sroa.06.098.i, 48
  %i.cm = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cl, i16 noundef %i.bw, i1 noundef zeroext %i.cm)
  %i.co = zext i1 %i.cn to i8
  %i.cp = or i8 %.sroa.014.2.2.i, %i.co
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.cp, %bb.n ] ; 2 uses
  %i.cq = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.cr = add i64 %i.cq, %i.av
  %i.cs = icmp uge i64 %i.cr, %3
  %i.ct = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.cu = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.be, i1 noundef zeroext false)
  %i.cv = zext i1 %i.cu to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.q, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.q ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ay, %.preheader.i ], [ %i.dp, %bb.q ]
  %i.cw = sub nuw i64 %3, %i.h
  %i.cx = add i64 %i.cw, -16                      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.cy, align 1, !alias.scope !2185, !noalias !2204
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.lcssa41
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !2185, !noalias !2204
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.ao
  %i.db = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.aq
  %i.dc = and <16 x i1> %i.da, %i.db
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %i.de = icmp eq i16 %i.dd, 0
  br i1 %i.de, label %bb.s, label %bb.t

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.q
  %.sroa.06.1101.i = phi i64 [ %i.dm, %bb.q ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.df, align 1, !alias.scope !2185, !noalias !2207
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.lcssa41
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.dg, align 1, !alias.scope !2185, !noalias !2207
  %i.dh = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.ao
  %i.di = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.aq
  %i.dj = and <16 x i1> %i.dh, %i.di
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.r, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.dr, %bb.r ] ; 2 uses
  %i.dm = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.dn = add i64 %i.dm, %i.af
  %i.do = icmp uge i64 %i.dn, %3
  %i.dp = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.do, %i.dp
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.r:                                             ; preds = %.lr.ph102.i
  %i.dq = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.dk, i1 noundef zeroext false)
  %i.dr = zext i1 %i.dq to i8
  br label %bb.q

bb.s:                                             ; preds = %bb.t, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.du, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2196
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.t:                                             ; preds = %._crit_edge.i
  %i.ds = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cx, i16 noundef %i.dd, i1 noundef zeroext %.lcssa.i)
  %i.dt = zext i1 %i.ds to i8
  %i.du = or i8 %.sroa.014.3.lcssa.i, %i.dt
  br label %bb.s

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.dv = load i64, ptr %i.c, align 8, !range !62, !noundef !5
  %i.dw = trunc nuw nsw i64 %i.dv to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.u:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.dx = icmp eq i32 %bcmp, 0
  %i.dy = zext i1 %i.dx to i8
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !62, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !399, !alias.scope !2210, !noalias !2213, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2210, !noalias !2213, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2210, !noalias !2213, !noundef !5 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !2210, !noalias !2213 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  %i.l = trunc nuw i8 %.promoted26 to i1          ; 2 uses
  %i.m = icmp eq i64 %.promoted, 0
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not.i.i.peel = icmp ult i64 %.promoted, %i.k
  br i1 %.not.i.i.peel, label %bb.c, label %.split.i.i.peel

.split.i.i.peel:                                  ; preds = %bb.b
  %i.n = icmp eq i64 %.promoted, %i.k
  br i1 %i.n, label %bb.d, label %.loopexit74

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !2217, !noalias !2220, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !2221, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !2221, !noundef !5
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.t, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.peel, label %bb.g

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ah = add nuw nsw i64 %.promoted, 2
  %i.ai = icmp samesign ne i64 %i.ah, %i.k
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !2221, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.t, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.peel, label %bb.g

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.as = add nuw nsw i64 %.promoted, 3
  %i.at = icmp samesign ne i64 %i.as, %i.k
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.ar, align 1, !noalias !2221, !noundef !5
  %i.av = shl nuw nsw i32 %i.x, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bc = zext nneg i8 %i.t to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.peel
  %.sroa.4.0.i.ph.i.peel = phi i32 [ %i.ap, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit14.i.i.peel ], [ %i.bb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit16.i.i.peel ], [ %i.ae, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.peel ], [ %i.bc, %bb.f ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bd)
  br i1 %i.l, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 128
  br i1 %i.be, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 2048
  br i1 %i.bf, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.peel, 65536
  %..i.peel = select i1 %i.bg, i64 3, i64 4
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.01.0.i.peel = phi i64 [ 2, %bb.i ], [ %..i.peel, %bb.j ], [ 1, %bb.h ]
  %i.bh = add i64 %.sroa.01.0.i.peel, %.promoted  ; 13 uses
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !2215, !noalias !2213
  %i.bi = icmp eq i64 %i.bh, 0
  %.not.i.i = icmp ult i64 %i.bh, %i.k
  %i.bj = icmp eq i64 %i.bh, %i.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh ; 4 uses
  %i.bm = icmp samesign eq i64 %i.bh, %i.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nuw nsw i64 %i.bh, 1
  %i.bp = icmp samesign ne i64 %i.bo, %i.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = add nuw nsw i64 %i.bh, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bu = add nuw nsw i64 %i.bh, 3
  %i.bv = icmp samesign ne i64 %i.bu, %i.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  br i1 %i.bi, label %bb.n, label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !5 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !5 ; 2 uses
  br i1 %i.by, label %bb.t, label %bb.u

bb.l:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %.not.i.i, label %bb.m, label %.split.i.i

.split.i.i:                                       ; preds = %bb.l
  br i1 %i.bj, label %bb.n, label %.loopexit74

bb.m:                                             ; preds = %bb.l
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !2217, !noalias !2224, !noundef !5
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %bb.n, label %.loopexit74

bb.n:                                             ; preds = %bb.m, %.split.i.i, %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.peel
  br i1 %i.bm, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load i8, ptr %i.bl, align 1, !noalias !2225, !noundef !5 ; 5 uses
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.p, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i: ; preds = %bb.o
  %i.cl = and i8 %i.cj, 31
  %i.cm = zext nneg i8 %i.cl to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bp)
  %i.cn = load i8, ptr %i.bn, align 1, !noalias !2225, !noundef !5
  %i.co = shl nuw nsw i32 %i.cm, 6
  %i.cp = and i8 %i.cn, 63
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %i.cr = or disjoint i32 %i.co, %i.cq
end_hunk_0
