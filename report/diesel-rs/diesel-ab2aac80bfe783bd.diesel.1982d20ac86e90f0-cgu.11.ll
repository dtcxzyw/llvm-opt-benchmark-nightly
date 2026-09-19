Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.11?download=true
inline.NumInlined: 924
inline.NumDeleted: 381
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsl_NtNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup12pg_namespace7columnsNtB5_7nspnameINtNtBd_13query_builder13QueryFragmentNtNtBb_7backend2PgE8walk_astCs2bNgeUs5Jlc_6diesel:bb.a

bb.j:                                             ; preds = %bb.h
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
  %i.c = load i64, ptr %2, align 8, !range !26, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !22, !noundef !5
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
  %i.q = load i64, ptr %i.b, align 8, !range !25, !noundef !5
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
  %i.c = load i64, ptr %2, align 8, !range !26, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !22, !noundef !5
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
  %i.o = load i64, ptr %i.b, align 8, !range !25, !noundef !5
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

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.q, %bb.b, %bb.s, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.dt, %bb.s ], [ %i.dr, %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit ], [ %.sroa.014.5.i, %bb.q ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.s, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.g = load i8, ptr %0, align 1, !alias.scope !2201, !noalias !2202, !noundef !5 ; 5 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 7) %1, i64 4) ; 4 uses
  %i.j = icmp samesign ult i64 %i.i, %1
  br i1 %i.j, label %.lr.ph, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp ult i64 %i.i, %i.x
  br i1 %i.k, label %.lr.ph.1, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.1:                                         ; preds = %bb.d
  %i.l = add nsw i64 %1, -2                       ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !2201, !noalias !2203, !noundef !5 ; 2 uses
  %.not.i.not.i.i.1 = icmp eq i8 %i.n, %i.g
  br i1 %.not.i.not.i.i.1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.1
  %i.o = icmp ult i64 %i.i, %i.l
  br i1 %i.o, label %.lr.ph.2, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.2:                                         ; preds = %bb.e
  %i.p = add nsw i64 %1, -3                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !2201, !noalias !2203, !noundef !5 ; 2 uses
  %.not.i.not.i.i.2 = icmp eq i8 %i.r, %i.g
  br i1 %.not.i.not.i.i.2, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.2
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %.lr.ph.3, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit

.lr.ph.3:                                         ; preds = %bb.f
  %i.t = add nsw i64 %1, -4                       ; 3 uses
  %i.u = icmp samesign ugt i64 %1, 3
  br i1 %i.u, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5, label %bb.g

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5: ; preds = %.lr.ph.3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !2201, !noalias !2203, !noundef !5 ; 2 uses
  %.not.i.not.i.i.5 = icmp eq i8 %i.w, %i.g
  br i1 %.not.i.not.i.i.5, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit, label %bb.h

.lr.ph:                                           ; preds = %bb.c
  %i.x = add nsw i64 %1, -1                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !2201, !noalias !2203, !noundef !5 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.z, %i.g
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.h

bb.g:                                             ; preds = %.lr.ph.3
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef range(i64 3, 7) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #29, !noalias !2204
  unreachable

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5, %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %.lcssa43 = phi i8 [ %i.z, %.lr.ph ], [ %i.n, %.lr.ph.1 ], [ %i.r, %.lr.ph.2 ], [ %i.w, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5 ]
  %.lcssa41 = phi i64 [ %i.x, %.lr.ph ], [ %i.l, %.lr.ph.1 ], [ %i.p, %.lr.ph.2 ], [ %i.t, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5 ] ; 6 uses
  %i.aa = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.ab = icmp ult i64 %3, %i.aa
  br i1 %i.ab, label %.lr.ph.split.us.i.i, label %bb.i

.lr.ph.split.us.i.i:                              ; preds = %bb.h
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !2205, !noalias !2206
  %i.ac = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.ac, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.ad = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i36 = icmp ugt i64 %1, %i.ad
  br i1 %.not28.i.i36, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i
  %i.ae = phi i64 [ %i.ah, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i ], [ %i.ad, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader ]
  %.pn.i37 = phi ptr [ %i.af, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.pn.i37, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.af, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 3, 7) %1), !alias.scope !2205, !noalias !2206
  %i.ag = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.ag, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs2bNgeUs5Jlc_6diesel.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.ah = add nsw i64 %i.ae, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ah
  br i1 %.not28.i.i, label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ak = insertelement <16 x i8> poison, i8 %.lcssa43, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2205
  store ptr %2, ptr %i.a, align 8, !noalias !2205
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.an, align 8, !noalias !2205
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !noalias !2205
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.ap, align 8, !noalias !2205
  %i.aq = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.aq, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.i
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.i ], [ %.sroa.014.2.3.i, %bb.m ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.cl, %bb.m ] ; 2 uses
  %i.ar = add i64 %.sroa.06.0.lcssa.i, %i.aa
  %i.as = icmp uge i64 %i.ar, %3
  %i.at = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.sroa.06.098.i = phi i64 [ %i.cl, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !2202, !noalias !2207
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.lcssa41
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.av, align 1, !alias.scope !2202, !noalias !2207
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.aj
  %i.ax = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.al
  %i.ay = and <16 x i1> %i.aw, %i.ax
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !2202, !noalias !2207
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.lcssa41
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.bb, align 1, !alias.scope !2202, !noalias !2207
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.aj
  %i.bd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.al
  %i.be = and <16 x i1> %i.bc, %i.bd
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !2202, !noalias !2207
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.lcssa41
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.bh, align 1, !alias.scope !2202, !noalias !2207
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.aj
  %i.bj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.al
  %i.bk = and <16 x i1> %i.bi, %i.bj
  %i.bl = bitcast <16 x i1> %i.bk to i16          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.bm, align 1, !alias.scope !2202, !noalias !2207
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.lcssa41
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.bn, align 1, !alias.scope !2202, !noalias !2207
  %i.bo = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.aj
  %i.bp = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.al
  %i.bq = and <16 x i1> %i.bo, %i.bp
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %i.bs = icmp eq i16 %i.az, 0
  br i1 %i.bs, label %.preheader91.1.i, label %bb.n

.preheader91.1.i:                                 ; preds = %bb.n, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.cq, %bb.n ] ; 3 uses
  %i.bt = icmp eq i16 %i.bf, 0
  br i1 %i.bt, label %.preheader91.2.i, label %bb.j

bb.j:                                             ; preds = %.preheader91.1.i
  %i.bu = or disjoint i64 %.sroa.06.098.i, 16
  %i.bv = trunc nuw i8 %.sroa.014.2.i to i1
  %i.bw = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bu, i16 noundef %i.bf, i1 noundef zeroext %i.bv)
  %i.bx = zext i1 %i.bw to i8
  %i.by = or i8 %.sroa.014.2.i, %i.bx
  br label %.preheader91.2.i

.preheader91.2.i:                                 ; preds = %bb.j, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.by, %bb.j ] ; 3 uses
  %i.bz = icmp eq i16 %i.bl, 0
  br i1 %i.bz, label %.preheader91.3.i, label %bb.k

bb.k:                                             ; preds = %.preheader91.2.i
  %i.ca = or disjoint i64 %.sroa.06.098.i, 32
  %i.cb = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.cc = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ca, i16 noundef %i.bl, i1 noundef zeroext %i.cb)
  %i.cd = zext i1 %i.cc to i8
  %i.ce = or i8 %.sroa.014.2.1.i, %i.cd
  br label %.preheader91.3.i

.preheader91.3.i:                                 ; preds = %bb.k, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.ce, %bb.k ] ; 3 uses
  %i.cf = icmp eq i16 %i.br, 0
  br i1 %i.cf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader91.3.i
  %i.cg = or disjoint i64 %.sroa.06.098.i, 48
  %i.ch = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.ci = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cg, i16 noundef %i.br, i1 noundef zeroext %i.ch)
  %i.cj = zext i1 %i.ci to i8
  %i.ck = or i8 %.sroa.014.2.2.i, %i.cj
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.ck, %bb.l ] ; 2 uses
  %i.cl = add i64 %.sroa.06.098.i, 64             ; 3 uses
  %i.cm = add i64 %i.cl, %i.aq
  %i.cn = icmp uge i64 %i.cm, %3
  %i.co = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond.i, label %.preheader.i, label %.lr.ph.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.cp = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.az, i1 noundef zeroext false)
  %i.cq = zext i1 %i.cp to i8
  br label %.preheader91.1.i

._crit_edge.i:                                    ; preds = %bb.o, %.preheader.i
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i ], [ %.sroa.014.4.i, %bb.o ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.at, %.preheader.i ], [ %i.dk, %bb.o ]
  %i.cr = sub nuw i64 %3, %i.h
  %i.cs = add i64 %i.cr, -16                      ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !2202, !noalias !2208
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.lcssa41
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.cu, align 1, !alias.scope !2202, !noalias !2208
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.aj
  %i.cw = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.al
  %i.cx = and <16 x i1> %i.cv, %i.cw
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.q, label %bb.r

.lr.ph102.i:                                      ; preds = %.preheader.i, %bb.o
  %.sroa.06.1101.i = phi i64 [ %i.dh, %bb.o ], [ %.sroa.06.0.lcssa.i, %.preheader.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.da, align 1, !alias.scope !2202, !noalias !2209
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.lcssa41
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.db, align 1, !alias.scope !2202, !noalias !2209
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.aj
  %i.dd = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.al
  %i.de = and <16 x i1> %i.dc, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.dm, %bb.p ] ; 2 uses
  %i.dh = add i64 %.sroa.06.1101.i, 16            ; 2 uses
  %i.di = add i64 %i.dh, %i.aa
  %i.dj = icmp uge i64 %i.di, %3
  %i.dk = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.dj, %i.dk
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i

bb.p:                                             ; preds = %.lr.ph102.i
  %i.dl = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.df, i1 noundef zeroext false)
  %i.dm = zext i1 %i.dl to i8
  br label %bb.o

bb.q:                                             ; preds = %bb.r, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.dp, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2205
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.r:                                             ; preds = %._crit_edge.i
  %i.dn = call fastcc noundef zeroext i1 @_RNCNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_containss0_0Cs2bNgeUs5Jlc_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cs, i16 noundef %i.cy, i1 noundef zeroext %.lcssa.i)
  %i.do = zext i1 %i.dn to i8
  %i.dp = or i8 %.sroa.014.3.lcssa.i, %i.do
  br label %bb.q

_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit: ; preds = %bb.d, %bb.e, %bb.f, %_RNCINvNvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs2bNgeUs5Jlc_6diesel.exit.i.i.5, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  call fastcc void @_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.dq = load i64, ptr %i.c, align 8, !range !9, !noundef !5
  %i.dr = trunc nuw nsw i64 %i.dq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread

bb.s:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.ds = icmp eq i32 %bcmp, 0
  %i.dt = zext i1 %i.ds to i8
  br label %_RNvNtNtCscI6d9CVNmLh_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !9, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.b, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !range !22, !alias.scope !2218, !noalias !2219, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.promoted = load i64, ptr %i.c, align 8        ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2218, !noalias !2219, !nonnull !5, !noundef !5 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2218, !noalias !2219, !noundef !5 ; 16 uses
  %.promoted26 = load i8, ptr %i.g, align 8, !alias.scope !2218, !noalias !2219 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2220)
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
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !2221, !noalias !2222, !noundef !5
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %.loopexit74

bb.d:                                             ; preds = %bb.c, %.split.i.i.peel, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %.promoted ; 4 uses
  %i.s = icmp samesign eq i64 %.promoted, %i.k
  br i1 %i.s, label %.loopexit75, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.r, align 1, !noalias !2223, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.f, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2bNgeUs5Jlc_6diesel.exit12.i.i.peel: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = and i8 %i.t, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = add nuw nsw i64 %.promoted, 1
  %i.z = icmp samesign ne i64 %i.y, %i.k
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load i8, ptr %i.v, align 1, !noalias !2223, !noundef !5
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
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !2223, !noundef !5
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
  %i.au = load i8, ptr %i.ar, align 1, !noalias !2223, !noundef !5
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
  store i64 %i.bh, ptr %i.c, align 8, !alias.scope !2220, !noalias !2219
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2218)
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
  %i.ch = load i8, ptr %i.bk, align 1, !alias.scope !2221, !noalias !2224, !noundef !5
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
