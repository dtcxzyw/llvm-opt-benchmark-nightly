Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.02?download=true
inline.NumInlined: 817
inline.NumDeleted: 508
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMapjRbENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel:bb.a
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1395
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterjRbE10dying_nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !1395, !noundef !5
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8IntoIterjRbEECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1395
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterjRbE10dying_nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.f = load ptr, ptr %i.a, align 8, !noalias !1395, !noundef !5
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8IntoIterjRbEECs2bNgeUs5Jlc_6diesel.exit, label %.lr.ph.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8IntoIterjRbEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %.lr.ph.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXNvXsy_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBe_6borrow3CoweEEIB2d_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueENtNtBe_5alloc6GlobalEB1e_4dropCs2bNgeUs5Jlc_6diesel(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB18_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueEE10dying_nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.b)
  %i.c = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1F_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2bNgeUs5Jlc_6diesel.exit
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.o, %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1F_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2bNgeUs5Jlc_6diesel.exit ] ; 2 uses
  %.sroa.41.0.copyload = load i64, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.sroa.41.0.copyload ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.41.0.copyload ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !339, !alias.scope !1400, !noalias !1405, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1F_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2bNgeUs5Jlc_6diesel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i unwind label %bb.d, !noalias !1405

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.e, !noalias !1405

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !1405
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1F_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2bNgeUs5Jlc_6diesel.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.k, %bb.d ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedNtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(56) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedNtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueEEECs2bNgeUs5Jlc_6diesel.exit unwind label %bb.g, !inline_history !1408

bb.g:                                             ; preds = %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23, !noalias !1405, !inline_history !1409
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedNtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueEEECs2bNgeUs5Jlc_6diesel.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1F_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2bNgeUs5Jlc_6diesel.exit: ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i.i
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedNtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueEECs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 dereferenceable(56) %i.h), !noalias !1410, !inline_history !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB18_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueEE10dying_nextCs2bNgeUs5Jlc_6diesel(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.b)
  %i.o = load ptr, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtCs5bxo1VoU15Y_13serde_spanned7spanned7SpannedINtNtBb_6borrow3CoweEEIB1F_NtNtNtNtCsjgZ4NMfOQZW_4toml2de6parser7devalue7DeValueENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCs2bNgeUs5Jlc_6diesel.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1Z_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema16key_column_usage7columnsNtB6_22referenced_column_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2n_5mysql7backend5MysqlE8walk_astBg_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %2, align 8, !range !1416, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !4, !noundef !5
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
  call void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_5mysql7backend5MysqlE15push_identifierCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 22)
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
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder5nodesINtB4_27StaticQueryFragmentInstanceNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema16key_column_usage5tableEINtB6_13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1x_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = load i64, ptr %i.b, align 8, !range !1417, !noundef !5
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
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.8.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 1)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %.sroa.8.0, align 1
  br label %bb.d

bb.k:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs1a_NtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema16key_column_usage7columnsNtB6_11column_nameINtNtCsjRvGck33osM_6diesel13query_builder13QueryFragmentNtNtNtB2c_5mysql7backend5MysqlE8walk_astBg_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca [32 x i8], align 8                  ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %1, align 8, !range !1416, !noundef !5 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !4, !noundef !5
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
  call void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_5mysql7backend5MysqlE15push_identifierCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 11)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.thread
  %.sroa.13.0 = phi ptr [ %i.f, %.thread ], [ %i.k, %bb.e ], [ undef, %bb.c ]
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0 = load ptr, ptr %.sroa.8.0.in, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.m, ptr %i.n, align 8
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel13query_builder5nodesINtB4_27StaticQueryFragmentInstanceNtNtNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals5mysql18information_schema16key_column_usage5tableEINtB6_13QueryFragmentNtNtNtB8_5mysql7backend5MysqlE8walk_astB1x_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = load i64, ptr %i.b, align 8, !range !1417, !noundef !5
  %.not = icmp eq i64 %i.o, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i64 %i.c, label %bb.d [
    i64 0, label %bb.i
    i64 4, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.8.0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 1)
  br label %bb.d

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %.sroa.8.0, align 1
  br label %bb.d

bb.k:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1z_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEINtNtCscI6d9CVNmLh_4core7convert4FromATB18_B1t_Ej1_E4fromB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 5 uses
  %i.b = alloca [208 x i8], align 8               ; 4 uses
  %i.c = alloca [208 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [208 x i8], align 8               ; 4 uses
  %i.f = alloca [232 x i8], align 8               ; 8 uses
  %i.g = alloca [208 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [480 x i8], align 8               ; 9 uses
  %i.j = alloca [232 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.j, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.k = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEE13new_uninit_inB1O_()
          to label %.loopexit57.i.i unwind label %bb.aa, !noalias !1421 ; 4 uses

.loopexit57.i.i:                                  ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2288
  store ptr null, ptr %i.l, align 8, !noalias !1421
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 2562
  store i16 0, ptr %i.m, align 2, !noalias !1421
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.668.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1421
  %.sroa.3.0..sroa_idx65.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 -2, ptr %.sroa.3.0..sroa_idx65.i, align 8, !noalias !1428
  %.sroa.466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  store i64 0, ptr %.sroa.466.0..sroa_idx.i, align 8, !noalias !1428
  %.sroa.567.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  store i64 1, ptr %.sroa.567.0..sroa_idx.i, align 8, !noalias !1428
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %.loopexit57.i.i
  %.sroa.011.0.i = phi i64 [ 0, %.loopexit57.i.i ], [ %i.go, %.loopexit.i.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ 0, %.loopexit57.i.i ], [ %.sroa.8.2.i, %.loopexit.i.i ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.k, %.loopexit57.i.i ], [ %.sroa.0.2.i, %.loopexit.i.i ] ; 8 uses
  %.sroa.0.050.i.i = phi ptr [ %i.k, %.loopexit57.i.i ], [ %.sroa.0.1.i.i, %.loopexit.i.i ] ; 6 uses
  invoke void @_RNvXs_NtNtNtCs40k4W9msRzi_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterNtNtBa_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaINtNtNtCscI6d9CVNmLh_4core5array4iter8IntoIterTB1t_B1O_EKj1_EENtNtNtNtB2E_4iter6traits8iterator8Iterator4nextB1S_(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(480) %i.i)
          to label %bb.d unwind label %bb.c, !noalias !1423

.critedge.i.i:                                    ; preds = %bb.y, %bb.t, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.hc, %bb.y ], [ %i.dl, %bb.t ], [ %i.o, %bb.c ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterNtNtBK_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaINtNtNtB4_5array4iter8IntoIterTB1X_B2i_EKj1_EEEB2m_(ptr noalias noundef align 8 dereferenceable(480) %i.i) #22
          to label %.body unwind label %bb.x, !noalias !1423

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.critedge.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8, !range !80, !noalias !1423, !noundef !5
  %.not.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i, label %.noexc.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(208) %i.n, i64 208, i1 false), !noalias !1423
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.050.i.i, i64 2562 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !noalias !1423, !noundef !5 ; 3 uses
  %i.s = icmp ult i16 %i.r, 11
  br i1 %i.s, label %bb.v, label %.preheader.i.i

.noexc.i:                                         ; preds = %bb.d
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterNtNtBK_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaINtNtNtB4_5array4iter8IntoIterTB1X_B2i_EKj1_EEEB2m_(ptr noalias noundef align 8 dereferenceable(480) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1423
  %i.t = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.t, label %.loopexit, label %.lr.ph.i14.i.i

.lr.ph.i14.i.i:                                   ; preds = %.noexc.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i14.i.i
  %.sroa.03.010.i.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i14.i.i ], [ %i.af, %bb.h ] ; 4 uses
  %.sroa.01.09.i.i.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i14.i.i ], [ %i.ac, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i.i, i64 2562
  %i.w = load i16, ptr %i.v, align 2, !noalias !1423, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i, label %.noexc.i.i, label %bb.g, !prof !87

.noexc.i.i:                                       ; preds = %bb.f
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #21
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add nsw i64 %i.x, -1                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i.i, i64 2568
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1429, !nonnull !5, !noundef !5 ; 5 uses
  %i.ac = add i64 %.sroa.01.09.i.i.i, -1          ; 3 uses
  %i.ad = icmp ult i16 %i.w, 12
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1429, !nonnull !5, !noundef !5 ; 19 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2562 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 2, !noalias !1423, !noundef !5 ; 3 uses
  %i.ai = icmp ult i16 %i.ah, 5
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE15bulk_steal_leftB1H_.exit.i.i.i, %bb.g
  %i.aj = icmp eq i64 %i.ac, 0
  br i1 %i.aj, label %.loopexit, label %bb.f

bb.i:                                             ; preds = %bb.g
  %narrow.i.i.i = sub nuw nsw i16 5, %i.ah        ; 2 uses
  %i.ak = zext nneg i16 %narrow.i.i.i to i64      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 2562 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !noalias !1433, !noundef !5 ; 2 uses
  %i.an = zext nneg i16 %i.ah to i64              ; 3 uses
  %.not.i.i.i.i = icmp ugt i16 %narrow.i.i.i, %i.am
  br i1 %.not.i.i.i.i, label %.noexc15.i.i, label %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEB19_.exit.i.i.i.i, !prof !87

.noexc15.i.i:                                     ; preds = %bb.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #21
  unreachable

_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEB19_.exit.i.i.i.i: ; preds = %bb.i
  %i.ao = zext i16 %i.am to i64                   ; 2 uses
  %i.ap = sub nuw nsw i64 %i.ao, %i.ak            ; 4 uses
  %i.aq = trunc nuw i64 %i.ap to i16
  store i16 %i.aq, ptr %i.al, align 2, !noalias !1433
  store i16 5, ptr %i.ag, align 2, !noalias !1433
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 2296 ; 4 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ak
  %i.at = mul nuw nsw i64 %i.an, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 8 %i.ar, i64 %i.at, i1 false), !alias.scope !1436, !noalias !1433
  %i.au = getelementptr inbounds nuw [208 x i8], ptr %i.af, i64 %i.ak
  %i.av = mul nuw nsw i64 %i.an, 208
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.af, i64 %i.av, i1 false), !alias.scope !1439, !noalias !1433
  %i.aw = add nuw nsw i64 %i.ap, 1                ; 4 uses
  %i.ax = sub nuw nsw i64 %i.ao, %i.aw            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 2296 ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = mul nuw nsw i64 %i.ax, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull readonly align 8 %i.az, i64 %i.ba, i1 false), !alias.scope !1442, !noalias !1433
  %i.bb = getelementptr inbounds nuw [208 x i8], ptr %i.ab, i64 %i.aw
  %i.bc = mul nuw nsw i64 %i.ax, 208
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %i.bb, i64 %i.bc, i1 false), !alias.scope !1446, !noalias !1433
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.be = getelementptr inbounds nuw [208 x i8], ptr %i.ab, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.be, i64 208, i1 false), !noalias !1433
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i.i, i64 2296
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.y ; 2 uses
  %i.bh = getelementptr inbounds nuw [208 x i8], ptr %.sroa.03.010.i.i.i, i64 %i.y ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !1433
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !1433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull align 8 dereferenceable(208) %i.bh, i64 208, i1 false), !noalias !1433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(208) %i.b, i64 208, i1 false), !noalias !1450
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1433
  %i.bj = getelementptr inbounds nuw [208 x i8], ptr %i.af, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 8 dereferenceable(208) %i.u, i64 208, i1 false), !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bk = icmp eq i64 %i.ac, 0
  br i1 %i.bk, label %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE15bulk_steal_leftB1H_.exit.i.i.i, label %_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE15bulk_steal_leftB1H_.exit.loopexit.i.i.i

_RNvMs10_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaE15bulk_steal_leftB1H_.exit.loopexit.i.i.i: ; preds = %_RINvNtNtNtCs40k4W9msRzi_5alloc11collections5btree4node13move_to_sliceNtNtCs2bNgeUs5Jlc_6diesel6config11PrintSchemaEB19_.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 2568 ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ak
  %i.bn = shl nuw nsw i64 %i.an, 3
  %i.bo = add nuw nsw i64 %i.bn, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bo, i1 false), !alias.scope !1454, !noalias !1433
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 2568
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.aw
  %i.br = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bq, i64 %i.br, i1 false), !alias.scope !1457, !noalias !1433
  %i.bs = load ptr, ptr %i.bl, align 8, !noalias !1433, !nonnull !5, !noundef !5 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2288
end_hunk_0
