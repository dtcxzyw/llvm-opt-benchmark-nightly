Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.14?download=true
inline.NumInlined: 1131
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvYNtNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtBa_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1s_7Visitor8visit_u8NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs3ZkgueCtkyH_14ruff_workspace:bb.a
  store i64 2, ptr %0, align 8, !alias.scope !3495
  br label %_RINvXNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtB8_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1q_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs3ZkgueCtkyH_14ruff_workspace.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.f, align 8, !alias.scope !3495
  store i64 2, ptr %0, align 8, !alias.scope !3495
  br label %_RINvXNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtB8_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1q_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs3ZkgueCtkyH_14ruff_workspace.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.g, align 8, !alias.scope !3495
  store i64 2, ptr %0, align 8, !alias.scope !3495
  br label %_RINvXNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtB8_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1q_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs3ZkgueCtkyH_14ruff_workspace.exit

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.h, align 8, !alias.scope !3495
  store i64 2, ptr %0, align 8, !alias.scope !3495
  br label %_RINvXNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtB8_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1q_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs3ZkgueCtkyH_14ruff_workspace.exit

_RINvXNvXNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint8settingss_1__NtB8_12ConstantTypeNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1q_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB7_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segment0Cs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  br i1 %i.e, label %.preheader.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.sroa.01.05.i = phi i64 [ %i.i, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.05.i
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !3498, !noundef !9
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit: ; preds = %bb.a
  %i.j = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d)
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread: ; preds = %bb.b, %.preheader.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.n = load i8, ptr %i.m, align 1, !range !3501, !noundef !9 ; 2 uses
  %i.o = icmp ne i8 %i.n, 3
  tail call void @llvm.assume(i1 %i.o)
  %or.cond.i = icmp eq i8 %i.n, 1
  br i1 %or.cond.i, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i64, ptr %i.r, align 8, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %i.s, 152
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %.not.not8 = icmp eq i64 %i.s, 0
  br i1 %.not.not8, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.c
  %.sroa.0.019 = phi ptr [ %i.v, %.lr.ph ], [ %i.q, %bb.c ] ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB7_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segment0Cs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.019) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 152 ; 2 uses
  %.not.not = icmp eq ptr %i.v, %i.t
  %or.cond = select i1 %i.u, i1 true, i1 %.not.not
  br i1 %or.cond, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread ], [ %i.u, %.lr.ph ], [ false, %bb.c ], [ false, %.lr.ph.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB7_4NodejE28suffix_wild_child_in_segment0Cs3ZkgueCtkyH_14ruff_workspace(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !9 ; 4 uses
  %i.e = icmp samesign ult i64 %i.d, 16
  br i1 %i.e, label %.preheader.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %.sroa.01.05.i = phi i64 [ %i.i, %bb.b ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.01.05.i
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !3502, !noundef !9
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit: ; preds = %bb.a
  %i.j = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d)
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread: ; preds = %bb.b, %.preheader.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.n = load i8, ptr %i.m, align 1, !range !3501, !noundef !9 ; 2 uses
  %i.o = icmp ne i8 %i.n, 3
  tail call void @llvm.assume(i1 %i.o)
  %or.cond.i = icmp eq i8 %i.n, 1
  br i1 %or.cond.i, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i64, ptr %i.r, align 8, !noundef !9 ; 2 uses
  %.idx = mul nuw nsw i64 %i.s, 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %.not.not8 = icmp eq i64 %i.s, 0
  br i1 %.not.not8, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.c
  %.sroa.0.019 = phi ptr [ %i.v, %.lr.ph ], [ %i.q, %bb.c ] ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_RNCNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB7_4NodejE28suffix_wild_child_in_segment0Cs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull align 8 %.sroa.0.019) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 144 ; 2 uses
  %.not.not = icmp eq ptr %i.v, %i.t
  %or.cond = select i1 %i.u, i1 true, i1 %.not.not
  br i1 %or.cond, label %_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodejE28suffix_wild_child_in_segmentCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit ], [ true, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.thread ], [ %i.u, %.lr.ph ], [ false, %bb.c ], [ false, %.lr.ph.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_versions_0B5_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 11 uses
  %i.b = alloca [152 x i8], align 8               ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !88, !noundef !9
  %.not.i = icmp eq i64 %i.d, 2
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.f = load i8, ptr %i.e, align 8, !noundef !9  ; 4 uses
  %i.g = icmp ult i8 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.c, !prof !3505

bb.c:                                             ; preds = %bb.b
  %i.h = zext i8 %i.f to i64
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.h, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not15.i = icmp eq i8 %i.f, 0
  br i1 %.not15.i, label %_RNvNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_version11major_minor.exit, label %bb.e

.thread.i:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %i.j = load i64, ptr %i.i, align 8, !noundef !9 ; 2 uses
  %.not153.i = icmp eq i64 %i.j, 0
  br i1 %.not153.i, label %_RNvNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_version11major_minor.exit, label %.thread5.i

.thread5.i:                                       ; preds = %.thread.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.n = zext nneg i8 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread5.i
  %.sroa.04.047.i = phi ptr [ %i.l, %.thread5.i ], [ %i.m, %bb.e ] ; 2 uses
  %.sroa.411.0.i = phi i64 [ %i.j, %.thread5.i ], [ %i.n, %bb.e ]
  %i.o = icmp ugt i64 %.sroa.411.0.i, 1
  br i1 %i.o, label %bb.g, label %_RNvNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_version11major_minor.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 2, ptr %i.q, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 32, i1 false)
  store i64 10485760, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !3506
  %i.r = tail call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #31, !noalias !3506 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i.i, !prof !84

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #30
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.b) #28
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume.i.i:                                ; preds = %bb.ak, %bb.aj, %bb.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %.pn.pn.i.i.i, %bb.ak ], [ %.pn.pn.i.i.i, %bb.aj ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i.i: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.r, ptr noundef nonnull align 8 dereferenceable(152) %i.b, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !noalias !3509
  %i.v = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE8make_mutCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(8) %i.a)
          to label %bb.l unwind label %bb.k, !noalias !3509 ; 5 uses

bb.k:                                             ; preds = %bb.u, %bb.r, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEE3newCs3ZkgueCtkyH_14ruff_workspace.exit.i.i
  %i.x = load i64, ptr %i.v, align 8, !range !88, !noalias !3509, !noundef !9
  %.not.i.i.i = icmp eq i64 %i.x, 2
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i64 0, ptr %i.y, align 8, !noalias !3509
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !3509, !noundef !9
  %i.ac = and i64 %i.ab, 16777215
  store i64 %i.ac, ptr %i.aa, align 8, !noalias !3509
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i8 0, ptr %i.ad, align 8, !noalias !3509
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false), !noalias !3509
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = load i64, ptr %.sroa.04.047.i, align 8, !noalias !3509, !noundef !9 ; 7 uses
  %i.af = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE8make_mutCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc.i.i.i unwind label %bb.v, !noalias !3509 ; 5 uses

_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterRyKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace.exit.thread.i.i.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.1.i.i.i, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.1.i.i.i
  %0 = load ptr, ptr %i.a, align 8, !noalias !3509, !nonnull !9, !noundef !9 ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load i64, ptr %1, align 8, !range !88, !noalias !3509, !noundef !9
  %.not6.i.i.i = icmp eq i64 %2, 2
  br i1 %.not6.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterRyKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace.exit.thread.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !3509, !noundef !9
  br label %bb.s

bb.q:                                             ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterRyKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace.exit.thread.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load i8, ptr %i.ai, align 8, !noalias !3509, !noundef !9 ; 2 uses
  %i.ak = zext i8 %i.aj to i64                    ; 2 uses
  %i.al = icmp ult i8 %i.aj, 5
  br i1 %i.al, label %bb.s, label %bb.r, !prof !3505

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ak, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #30
          to label %bb.t unwind label %bb.k, !noalias !3509

bb.s:                                             ; preds = %bb.q, %bb.p
  %.sroa.3.0.i.i.i = phi i64 [ %i.ah, %bb.p ], [ %i.ak, %bb.q ]
  %i.am = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.am, label %bb.u, label %_RINvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_7Version3newARyj2_BW_ECs3ZkgueCtkyH_14ruff_workspace.exit.i, !prof !84

bb.t:                                             ; preds = %bb.u, %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30
          to label %bb.t unwind label %bb.k, !noalias !3509

bb.v:                                             ; preds = %bb.ah, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.1.i.i.i, %_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version12push_release.exit.i.i.i, %bb.w, %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.i.i.i, %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.noexc.i.i.i:                                     ; preds = %bb.o
  %i.ao = load i64, ptr %i.af, align 8, !range !88, !noalias !3509, !noundef !9
  %.not.i.i.i.i = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i.i.i, label %bb.x, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.i.i.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.i.i.i: ; preds = %bb.z, %bb.y, %.noexc.i.i.i
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version9make_full(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc9.i.i.i unwind label %bb.v, !noalias !3509 ; 3 uses

.noexc9.i.i.i:                                    ; preds = %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 80 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !3512, !noalias !3509, !noundef !9 ; 3 uses
  %i.at = load i64, ptr %i.aq, align 8, !range !92, !alias.scope !3512, !noalias !3509, !noundef !9
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.w, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i.i

bb.w:                                             ; preds = %.noexc9.i.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i.i unwind label %bb.v, !noalias !3509

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i.i: ; preds = %bb.w, %.noexc9.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !3512, !noalias !3509, !nonnull !9, !noundef !9
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.as
  store i64 %i.ae, ptr %i.ax, align 8, !noalias !3509
  %i.ay = add i64 %i.as, 1
  store i64 %i.ay, ptr %i.ar, align 8, !alias.scope !3512, !noalias !3509
  br label %_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version12push_release.exit.i.i.i

bb.x:                                             ; preds = %.noexc.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 8, !alias.scope !3515, !noalias !3509, !noundef !9 ; 4 uses
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bd = icmp ugt i64 %i.ae, 65535
  br i1 %i.bd, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.i.i.i, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.be = icmp ugt i64 %i.ae, 255
  %i.bf = icmp ugt i8 %i.bb, 3
  %or.cond.i.i.i.i.i = or i1 %i.be, %i.bf
  br i1 %or.cond.i.i.i.i.i, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.i.i.i, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bg = shl nuw i64 %i.ae, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !3515, !noalias !3509, !noundef !9
  %i.bj = or i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.bh, align 8, !alias.scope !3515, !noalias !3509
  store i64 %i.ae, ptr %i.az, align 8, !alias.scope !3515, !noalias !3509
  br label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bk = shl nuw nsw i8 %i.bb, 3
  %narrow.i.i.i.i.i = sub nuw nsw i8 48, %i.bk
  %i.bl = zext nneg i8 %narrow.i.i.i.i.i to i64
  %i.bm = shl nuw nsw i64 %i.ae, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !3515, !noalias !3509, !noundef !9
  %i.bp = or i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !alias.scope !3515, !noalias !3509
  %i.bq = zext nneg i8 %i.bb to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bq
  store i64 %i.ae, ptr %i.br, align 8, !alias.scope !3515, !noalias !3509
  %i.bs = load i8, ptr %i.ba, align 8, !alias.scope !3515, !noalias !3509, !noundef !9
  %i.bt = add i8 %i.bs, 1
  br label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.i.i.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.sink.i.i.i.i.i = phi i8 [ 1, %bb.aa ], [ %i.bt, %bb.ab ]
  store i8 %.sink.i.i.i.i.i, ptr %i.ba, align 8, !alias.scope !3515, !noalias !3509
  br label %_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version12push_release.exit.i.i.i

_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version12push_release.exit.i.i.i: ; preds = %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.i.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.i.i.i
  %i.bu = load i64, ptr %.sroa.04.047.i, align 8, !noalias !3509, !noundef !9 ; 7 uses
  %i.bv = invoke fastcc noundef nonnull align 8 ptr @_RNvMsA_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE8make_mutCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc.1.i.i.i unwind label %bb.v, !noalias !3509 ; 5 uses

.noexc.1.i.i.i:                                   ; preds = %_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version12push_release.exit.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !range !88, !noalias !3509, !noundef !9
  %.not.i.1.i.i.i = icmp eq i64 %i.bw, 2
  br i1 %.not.i.1.i.i.i, label %bb.ac, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.1.i.i.i

bb.ac:                                            ; preds = %.noexc.1.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 8, !alias.scope !3515, !noalias !3509, !noundef !9 ; 4 uses
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp ugt i64 %i.bu, 255
  %i.cc = icmp ugt i8 %i.bz, 3
  %or.cond.i.i.1.i.i.i = or i1 %i.cb, %i.cc
  br i1 %or.cond.i.i.1.i.i.i, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.1.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = shl nuw nsw i8 %i.bz, 3
  %narrow.i.i.1.i.i.i = sub nuw nsw i8 48, %i.cd
  %i.ce = zext nneg i8 %narrow.i.i.1.i.i.i to i64
  %i.cf = shl nuw nsw i64 %i.bu, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !3515, !noalias !3509, !noundef !9
  %i.ci = or i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %i.cg, align 8, !alias.scope !3515, !noalias !3509
  %i.cj = zext nneg i8 %i.bz to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cj
  store i64 %i.bu, ptr %i.ck, align 8, !alias.scope !3515, !noalias !3509
  %i.cl = load i8, ptr %i.by, align 8, !alias.scope !3515, !noalias !3509, !noundef !9
  %i.cm = add i8 %i.cl, 1
  br label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.1.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.cn = icmp ugt i64 %i.bu, 65535
  br i1 %i.cn, label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.1.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = shl nuw i64 %i.bu, 48
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 40 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !3515, !noalias !3509, !noundef !9
  %i.cr = or i64 %i.cq, %i.co
  store i64 %i.cr, ptr %i.cp, align 8, !alias.scope !3515, !noalias !3509
  store i64 %i.bu, ptr %i.bx, align 8, !alias.scope !3515, !noalias !3509
  br label %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.1.i.i.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.i.1.i.i.i: ; preds = %bb.ag, %bb.ae
  %.sink.i.i.1.i.i.i = phi i8 [ 1, %bb.ag ], [ %i.cm, %bb.ae ]
  store i8 %.sink.i.i.1.i.i.i, ptr %i.by, align 8, !alias.scope !3515, !noalias !3509
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterRyKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace.exit.thread.i.i.i

_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.1.i.i.i: ; preds = %bb.af, %bb.ad, %.noexc.1.i.i.i
  %i.cs = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version9make_full(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc9.1.i.i.i unwind label %bb.v, !noalias !3509 ; 3 uses

.noexc9.1.i.i.i:                                  ; preds = %_RNvMse_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_12VersionSmall12push_release.exit.thread.i.1.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 80 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !3512, !noalias !3509, !noundef !9 ; 3 uses
  %i.cw = load i64, ptr %i.ct, align 8, !range !92, !alias.scope !3512, !noalias !3509, !noundef !9
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.ah, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.1.i.i.i

bb.ah:                                            ; preds = %.noexc9.1.i.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCsgHAIXRTqFF5_9pep440_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.1.i.i.i unwind label %bb.v, !noalias !3509

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecyE8push_mutCs3ZkgueCtkyH_14ruff_workspace.exit.i.1.i.i.i: ; preds = %bb.ah, %.noexc9.1.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !3512, !noalias !3509, !nonnull !9, !noundef !9
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cv
  store i64 %i.bu, ptr %i.da, align 8, !noalias !3509
  %i.db = add i64 %i.cv, 1
  store i64 %i.db, ptr %i.cu, align 8, !alias.scope !3512, !noalias !3509
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5array4iterINtB5_8IntoIterRyKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3ZkgueCtkyH_14ruff_workspace.exit.thread.i.i.i

bb.ai:                                            ; preds = %bb.ak
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !3509
  unreachable

bb.aj:                                            ; preds = %bb.v, %bb.k
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.w, %bb.k ], [ %i.an, %bb.v ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3518)
  call void @llvm.experimental.noalias.scope.decl(metadata !3521)
  call void @llvm.experimental.noalias.scope.decl(metadata !3524)
  %i.dd = load ptr, ptr %i.a, align 8, !alias.scope !3527, !noalias !3509, !nonnull !9, !noundef !9
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !3528
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ak, label %common.resume.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume.i.i unwind label %bb.ai, !noalias !3509

_RINvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_7Version3newARyj2_BW_ECs3ZkgueCtkyH_14ruff_workspace.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_version11major_minor.exit

_RNvNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject29get_minimum_supported_version11major_minor.exit: ; preds = %bb.d, %.thread.i, %bb.f, %_RINvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_7Version3newARyj2_BW_ECs3ZkgueCtkyH_14ruff_workspace.exit.i
  %.sroa.0.0.i = phi ptr [ %0, %_RINvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB6_7Version3newARyj2_BW_ECs3ZkgueCtkyH_14ruff_workspace.exit.i ], [ null, %bb.d ], [ null, %bb.f ], [ null, %.thread.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 6903721584472138) i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropINtCs5e9M2GLoJMY_8indexmap6BucketINtNtNtCs4NRVxsYgnAr_4core3mem12maybe_uninit11MaybeUninitNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtCs3ZkgueCtkyH_14ruff_workspace13configuration13ConfigurationEE3lenB37_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9
  %i.c = load ptr, ptr %0, align 8, !noundef !9
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 2672
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCsEhZmuQNqkz_11ruff_linter8settings5types17IdentifierPatternE3lenCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !9
  %i.c = load ptr, ptr %0, align 8, !noundef !9
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  ret i64 %i.g
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtB1g_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEE10initializeCs3ZkgueCtkyH_14ruff_workspace(ptr noundef nonnull returned align 8 %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtB1a_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEECs3ZkgueCtkyH_14ruff_workspace)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCskYQKiYedT9l_7matchit4treeINtB5_4NodeRNtNtCs2AWtUsOyxgP_3std4path4PathE12insert_routeCs3ZkgueCtkyH_14ruff_workspace(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(152) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [152 x i8], align 8               ; 20 uses
  %i.c = alloca [152 x i8], align 8               ; 21 uses
  %i.d = alloca [152 x i8], align 8               ; 11 uses
  %i.e = alloca [152 x i8], align 8               ; 21 uses
  %i.f = alloca [152 x i8], align 8               ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [152 x i8], align 8               ; 20 uses
  %i.p = alloca [152 x i8], align 8               ; 13 uses
  %i.q = alloca [40 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvNtCskYQKiYedT9l_7matchit4tree13find_wildcard(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.w = load i64, ptr %i.u, align 8, !range !16, !noundef !9
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx151.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx151.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 149
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.4141.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.5146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx152.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx152.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.4116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.5121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 149
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.sroa.4103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 149
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4141.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.5146.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.6.sroa.4160.0..sroa.6.0..sroa_idx153.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.6.sroa.5163.0..sroa.6.0..sroa_idx153.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.4116.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.5121.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 149
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.2170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.3171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.4103.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.5108.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %bb.b

._crit_edge:                                      ; preds = %bb.ax, %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.569.0.copyload = load i64, ptr %.sroa.569.0..sroa_idx, align 8
  %i.bn = load <2 x i64>, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store <2 x i64> %i.bn, ptr %0, align 8
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.569.0.copyload, ptr %.sroa.572.0..sroa_idx, align 8
  br label %bb.be

bb.b:                                             ; preds = %.lr.ph, %bb.ax
  %.sroa.0.0297 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.2, %bb.ax ] ; 15 uses
  %.sroa.061.0.copyload = load i64, ptr %i.y, align 8
  %.sroa.462.0.copyload = load i64, ptr %.sroa.462.0..sroa_idx, align 8 ; 11 uses
  %.sroa.563.0.copyload = load i64, ptr %.sroa.563.0..sroa_idx, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bo = trunc nuw i64 %.sroa.061.0.copyload to i1
  br i1 %i.bo, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bp = load ptr, ptr %2, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.bq = load i64, ptr %i.z, align 8, !noundef !9 ; 4 uses
  %i.br = icmp ult i64 %.sroa.563.0.copyload, %.sroa.462.0.copyload
  %.not188 = icmp ugt i64 %.sroa.563.0.copyload, %i.bq
  %or.cond482 = or i1 %i.br, %.not188
  br i1 %or.cond482, label %bb.f, label %bb.e, !prof !3529

bb.d:                                             ; preds = %bb.b
  store i64 1, ptr %.sroa.0.0297, align 8
  %.sroa.4.0..sroa.0.0.21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa.0.0.21.sroa_idx, align 8
  %.sroa.5.0..sroa.0.0.21.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 16
  store i64 %4, ptr %.sroa.5.0..sroa.0.0.21.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvMs1_NtCskYQKiYedT9l_7matchit6escapeNtB5_12UnescapedRef8to_owned(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0297, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskYQKiYedT9l_7matchit6escape14UnescapedRouteECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(48) %i.bs)
          to label %bb.bd unwind label %bb.bc

bb.e:                                             ; preds = %bb.c
  %i.bt = sub nuw i64 %.sroa.563.0.copyload, %.sroa.462.0.copyload ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, 1
  br i1 %i.bu, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.462.0.copyload, i64 noundef %.sroa.563.0.copyload, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.462.0.copyload
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !9
end_hunk_0
begin_hunk_1_@_RNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject23find_user_settings_toml:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtCs4AlrTBRgZ9a_8etcetera13base_strategy20choose_base_strategy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d)
  %i.f = load i64, ptr %i.d, align 8, !range !85, !noundef !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdgNtB4_3XdgNtB6_12BaseStrategy10config_dir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdg3XdgECs3ZkgueCtkyH_14ruff_workspace.exit89

.body65:                                          ; preds = %bb.am, %bb.an, %bb.m, %bb.n, %bb.d, %.body, %bb.f
  %.pn57 = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn55, %.body ], [ %i.x, %bb.m ], [ %i.h, %bb.d ], [ %i.x, %bb.n ], [ %i.aw, %bb.an ], [ %i.aw, %bb.am ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdg3XdgECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.e) #28
          to label %common.resume unwind label %bb.at

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body65

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.b) #28
          to label %.body65 unwind label %bb.at

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.b, align 8, !range !92, !alias.scope !4029, !noundef !9 ; 2 uses
  %i.o = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.o, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val3.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !4040, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4041
  br label %.body

bb.j:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !range !92, !alias.scope !4029, !noundef !9 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !4040, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4044
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit

.body:                                            ; preds = %bb.x, %bb.y, %bb.l, %bb.u, %bb.i, %bb.h
  %.pn55 = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.ah, %bb.x ], [ %i.n, %bb.i ], [ %i.ag, %bb.u ], [ %i.w, %bb.l ], [ %i.ah, %bb.y ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.c) #28
          to label %.body65 unwind label %bb.at

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  %i.v = load i64, ptr %i.r, align 8, !noundef !9
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 10)
          to label %bb.t unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.2
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i60 = load i64, ptr %i.c, align 8, !range !92, !alias.scope !4047, !noundef !9 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i.i.i60, 0
  br i1 %i.y, label %.body65, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val3.i.i.i.i61 = load ptr, ptr %i.q, align 8, !alias.scope !4058, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i61, i64 noundef %.val2.i.i.i.i60, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4059
  br label %.body65

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.2
  %.val.i.i.i.i63 = load i64, ptr %i.c, align 8, !range !92, !alias.scope !4047, !noundef !9 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i.i.i63, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val1.i.i.i.i64 = load ptr, ptr %i.q, align 8, !alias.scope !4058, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i64, i64 noundef %.val.i.i.i.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4062
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit67

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit67: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit67
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !92, !alias.scope !4065, !noundef !9 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ab, label %common.resume, label %common.resume.sink.split

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit67
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !92, !alias.scope !4065, !noundef !9 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdg3XdgECs3ZkgueCtkyH_14ruff_workspace.exit89, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !alias.scope !4078, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4079
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdg3XdgECs3ZkgueCtkyH_14ruff_workspace.exit89

common.resume.sink.split:                         ; preds = %bb.q, %bb.aq
  %.val2.i.i.i.i.i84.sink = phi i64 [ %.val2.i.i.i.i.i84, %bb.aq ], [ %.val2.i.i.i.i.i, %bb.q ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.az, %bb.aq ], [ %i.aa, %bb.q ]
  %.val3.i.i.i.i.i85 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i85, i64 noundef %.val2.i.i.i.i.i84.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !9
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body65, %bb.aq, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.aq ], [ %i.aa, %bb.q ], [ %.pn57, %.body65 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdg3XdgECs3ZkgueCtkyH_14ruff_workspace.exit89: ; preds = %bb.s, %bb.r, %bb.c, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.ad = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  %i.ae = load i64, ptr %i.t, align 8, !noundef !9
  %i.af = invoke noundef zeroext i1 @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path7is_file(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ae)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.ag, %bb.ab, %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.a) #28
          to label %.body unwind label %bb.at

bb.v:                                             ; preds = %bb.t
  br i1 %i.af, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.z unwind label %bb.x

bb.x:                                             ; preds = %bb.ai, %bb.ad, %bb.w
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i68 = load i64, ptr %i.a, align 8, !range !92, !alias.scope !4082, !noundef !9 ; 2 uses
  %i.ai = icmp eq i64 %.val2.i.i.i.i68, 0
  br i1 %i.ai, label %.body, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val3.i.i.i.i69 = load ptr, ptr %i.s, align 8, !alias.scope !4093, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i69, i64 noundef %.val2.i.i.i.i68, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4094
  br label %.body

bb.z:                                             ; preds = %bb.w
  %.val.i.i.i.i71 = load i64, ptr %i.a, align 8, !range !92, !alias.scope !4082, !noundef !9 ; 2 uses
  %i.aj = icmp eq i64 %.val.i.i.i.i71, 0
  br i1 %i.aj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val1.i.i.i.i72 = load ptr, ptr %i.s, align 8, !alias.scope !4093, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i72, i64 noundef %.val.i.i.i.i71, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4097
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ak = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  %i.al = load i64, ptr %i.r, align 8, !noundef !9
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.al, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 10)
          to label %bb.ab unwind label %bb.l

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75
  %i.am = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  %i.an = load i64, ptr %i.t, align 8, !noundef !9
  %i.ao = invoke noundef zeroext i1 @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path7is_file(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.an)
          to label %bb.ac unwind label %bb.u

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ao, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.ae unwind label %bb.x

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i.i.i71.1 = load i64, ptr %i.a, align 8, !range !92, !alias.scope !4082, !noundef !9 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i.i.i71.1, 0
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.1, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val1.i.i.i.i72.1 = load ptr, ptr %i.s, align 8, !alias.scope !4093, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i72.1, i64 noundef %.val.i.i.i.i71.1, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4097
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.1: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aq = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  %i.ar = load i64, ptr %i.r, align 8, !noundef !9
  invoke void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 10)
          to label %bb.ag unwind label %bb.l

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.1
  %i.as = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  %i.at = load i64, ptr %i.t, align 8, !noundef !9
  %i.au = invoke noundef zeroext i1 @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path7is_file(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.at)
          to label %bb.ah unwind label %bb.u

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.au, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.x

bb.aj:                                            ; preds = %bb.ai
  %.val.i.i.i.i71.2 = load i64, ptr %i.a, align 8, !range !92, !alias.scope !4082, !noundef !9 ; 2 uses
  %i.av = icmp eq i64 %.val.i.i.i.i71.2, 0
  br i1 %i.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.2, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val1.i.i.i.i72.2 = load ptr, ptr %i.s, align 8, !alias.scope !4093, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i72.2, i64 noundef %.val.i.i.i.i71.2, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4097
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit75.2: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.o unwind label %bb.m

bb.al:                                            ; preds = %bb.ah, %bb.ac, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.ao unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i76 = load i64, ptr %i.c, align 8, !range !92, !alias.scope !4100, !noundef !9 ; 2 uses
  %i.ax = icmp eq i64 %.val2.i.i.i.i76, 0
  br i1 %i.ax, label %.body65, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val3.i.i.i.i77 = load ptr, ptr %i.q, align 8, !alias.scope !4111, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i77, i64 noundef %.val2.i.i.i.i76, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4112
  br label %.body65

bb.ao:                                            ; preds = %bb.al
  %.val.i.i.i.i79 = load i64, ptr %i.c, align 8, !range !92, !alias.scope !4100, !noundef !9 ; 2 uses
  %i.ay = icmp eq i64 %.val.i.i.i.i79, 0
  br i1 %i.ay, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit83, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i.i.i80 = load ptr, ptr %i.q, align 8, !alias.scope !4111, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i80, i64 noundef %.val.i.i.i.i79, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4115
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit83

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit83: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ar unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit83
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i84 = load i64, ptr %i.e, align 8, !range !92, !alias.scope !4118, !noundef !9 ; 2 uses
  %i.ba = icmp eq i64 %.val2.i.i.i.i.i84, 0
  br i1 %i.ba, label %common.resume, label %common.resume.sink.split

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit83
  %.val.i.i.i.i.i87 = load i64, ptr %i.e, align 8, !range !92, !alias.scope !4118, !noundef !9 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i.i.i87, 0
  br i1 %i.bb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdg3XdgECs3ZkgueCtkyH_14ruff_workspace.exit89, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.val1.i.i.i.i.i88 = load ptr, ptr %.sroa.416.0..sroa_idx, align 8, !alias.scope !4131, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i88, i64 noundef %.val.i.i.i.i.i87, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !4132
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4AlrTBRgZ9a_8etcetera13base_strategy3xdg3XdgECs3ZkgueCtkyH_14ruff_workspace.exit89

bb.at:                                            ; preds = %bb.u, %.body, %bb.f, %.body65
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 9) i8 @_RNvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject27get_fallback_target_version(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [5080 x i8], align 8              ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [5080 x i8], align 8              ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvMs16_NtCs2AWtUsOyxgP_3std4pathNtB7_4Path4joinReECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 14)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCs2AWtUsOyxgP_3std2fs8metadataRNtNtB4_4path4PathECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.c unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit21: ; preds = %bb.y, %.body, %.body, %bb.t, %bb.b
  %.pn12 = phi { ptr, i32 } [ %i.m, %bb.b ], [ %.pn, %.body ], [ %.pn, %bb.t ], [ %.pn, %.body ], [ %i.am, %bb.y ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.v

bb.b:                                             ; preds = %bb.ab, %bb.u, %bb.l, %bb.d, %bb.e, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit21

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.b, align 8, !range !88, !noundef !9
  %.not.i = icmp eq i64 %i.n, 2
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val18 = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs3ZkgueCtkyH_14ruff_workspace(ptr nonnull %.val18)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECs3ZkgueCtkyH_14ruff_workspace.exit.thread unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECs3ZkgueCtkyH_14ruff_workspace.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val15 = load ptr, ptr %i.i, align 8, !alias.scope !286, !noalias !289, !nonnull !9, !noundef !9
  %.val16 = load i64, ptr %i.k, align 8, !alias.scope !286, !noalias !289, !noundef !9
  invoke fastcc void @_RINvNtCs3ZkgueCtkyH_14ruff_workspace9pyproject20parse_pyproject_tomlRNtNtCs2AWtUsOyxgP_3std4path7PathBufEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(5080) %i.a, ptr %.val15, i64 %.val16)
          to label %bb.i unwind label %bb.b

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECs3ZkgueCtkyH_14ruff_workspace.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit23
  %.sroa.0.0 = phi i8 [ %.sroa.0.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit23 ], [ -1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2AWtUsOyxgP_3std2fs8MetadataNtNtNtB11_2io5error5ErrorEECs3ZkgueCtkyH_14ruff_workspace.exit.thread ] ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.h, align 8, !range !92, !alias.scope !4135, !noundef !9 ; 2 uses
  %i.q = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.q, label %common.resume, label %common.resume.sink.split

bb.h:                                             ; preds = %bb.f
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !range !92, !alias.scope !4135, !noundef !9 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs3ZkgueCtkyH_14ruff_workspace.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.w
  %.val2.i.i.i.i24.sink = phi i64 [ %.val2.i.i.i.i24, %bb.w ], [ %.val2.i.i.i.i, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %i.p, %bb.g ]
  %.val3.i.i.i.i25 = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i25, i64 noundef %.val2.i.i.i.i24.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #31, !noalias !9
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit21, %bb.w, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.w ], [ %i.p, %bb.g ], [ %.pn12, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit21 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.s = load i64, ptr %i.a, align 8, !range !177, !noundef !9
  %i.t = icmp eq i64 %i.s, -2
  br i1 %i.t, label %bb.z, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5080) %i.g, ptr noundef nonnull align 8 dereferenceable(5080) %i.a, i64 5080, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 5056
  %i.v = load i64, ptr %i.u, align 8, !range !253, !noundef !9 ; 2 uses
  %switch = icmp ugt i64 %i.v, -3
  br i1 %switch, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = load i64, ptr %i.g, align 8, !range !4146, !alias.scope !4147, !noundef !9
  switch i64 %i.w, label %bb.l [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit
  ]

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3ZkgueCtkyH_14ruff_workspace7options7OptionsEBF_(ptr noalias noundef nonnull align 8 dereferenceable(5056) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3ZkgueCtkyH_14ruff_workspace9pyproject5ToolsEEB11_.exit unwind label %bb.b

bb.m:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.v, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %.val = load ptr, ptr %.sroa.6.0..sroa_idx6, align 8, !nonnull !9, !noundef !9
end_hunk_1
