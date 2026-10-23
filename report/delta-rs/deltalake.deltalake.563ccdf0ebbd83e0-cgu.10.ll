Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.10?download=true
inline.NumInlined: 6560
inline.NumDeleted: 2964
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %.sroa.01.07.i.i = phi i64 [ %i.t, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.01.07.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.01.07.i.i
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !10142, !nonnull !24, !noundef !24 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.o, align 8, !noalias !10142, !nonnull !24, !noundef !24 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.p, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.s = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.r), !noalias !10142
  br i1 %i.s, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %i.t = add nuw i64 %.sroa.01.07.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.w = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
  br i1 %i.w, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val3) ]
  %i.x = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.x, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ true, %bb.d ], [ %i.bs, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10144)
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10143, !nonnull !24, !noundef !24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10144, !nonnull !24, !noundef !24 ; 4 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10146)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10145, !noalias !10147, !noundef !24 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !10146, !noalias !10147, !noundef !24
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !10146, !noalias !10147, !nonnull !24, !noundef !24
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !10145, !noalias !10147, !nonnull !24, !noundef !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = icmp eq i64 %i.ae, 0
  br i1 %i.ao, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.av, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.01.07.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !10148, !nonnull !24, !noundef !24 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !10148, !nonnull !24, !noundef !24 ; 2 uses
  %i.ar = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.ar, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.au = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.at), !noalias !10148
  br i1 %i.au, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i
  %i.av = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ay = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax), !noalias !10147
  br i1 %i.ay, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10143, !noundef !24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10144, !noundef !24
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !10144, !nonnull !24, !noundef !24
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10143, !nonnull !24, !noundef !24
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !10147
  br i1 %i.bi, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !10143, !noundef !24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !10144, !noundef !24
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !10144, !nonnull !24, !noundef !24
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !10143, !nonnull !24, !noundef !24
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !10147
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1R_NtCs4tdlwR1I4n2_7parquet5basicNtB6_11LogicalTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10149, !noundef !24 ; 4 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775807
  %i.d = icmp ugt i64 %i.a, -9223372036854775808
  %i.e = select i1 %i.d, i64 %i.c, i64 16         ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !10149, !noundef !24 ; 4 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775791
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, 9223372036854775807
  %i.i = icmp ugt i64 %i.f, -9223372036854775808
  %i.j = select i1 %i.i, i64 %i.h, i64 16
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.i, %.split, %bb.aa, %bb.y, %bb.z, %bb.ab, %bb.w, %bb.u, %bb.v, %bb.s, %bb.p, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.t, %bb.q, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.ba, %bb.l ], [ true, %bb.c ], [ %i.bf, %bb.m ], [ false, %bb.d ], [ %i.bk, %bb.n ], [ false, %bb.e ], [ %i.bp, %bb.o ], [ false, %bb.f ], [ %i.bt, %bb.r ], [ false, %bb.g ], [ %3, %bb.q ], [ %i.cd, %bb.t ], [ %.mux, %bb.i ], [ false, %bb.p ], [ false, %.split ], [ false, %bb.s ], [ %i.av, %bb.k ], [ %i.cz, %bb.ab ], [ true, %bb.aa ], [ false, %bb.y ], [ false, %bb.v ], [ %i.cv, %bb.z ], [ false, %bb.w ], [ false, %bb.u ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.b [
    i64 4, label %bb.d
    i64 6, label %bb.e
    i64 7, label %bb.f
    i64 8, label %bb.g
    i64 14, label %bb.h
    i64 15, label %bb.i
    i64 16, label %bb.j
    i64 17, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noundef !24
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.l, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !29, !noundef !24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !29, !noundef !24
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.m, label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !29, !noundef !24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !29, !noundef !24
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.n, label %bb.b

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !24
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.b

bb.h:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !29, !noundef !24
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !29, !noundef !24 ; 2 uses
  br i1 %i.ah, label %bb.p, label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !26, !noundef !24
  %.not10 = icmp eq i64 %i.am, -9223372036854775808 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !26, !noundef !24
  %i.ap = icmp eq i64 %i.ao, -9223372036854775808 ; 2 uses
  %brmerge = or i1 %.not10, %i.ap
  %.mux = and i1 %.not10, %i.ap
  br i1 %brmerge, label %bb.b, label %bb.s

bb.j:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.aq = icmp eq i64 %i.f, -9223372036854775808  ; 2 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.k:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i16, ptr %i.ar, align 8, !noundef !24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i16, ptr %i.at, align 8, !noundef !24
  %i.av = icmp eq i16 %i.as, %i.au
  br label %bb.b

bb.l:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !noundef !24
  %i.ba = icmp eq i32 %i.ax, %i.az
  br label %bb.b

bb.m:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !range !42, !noundef !24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !range !42, !noundef !24
  %i.bf = icmp eq i8 %i.bc, %i.be
  br label %bb.b

bb.n:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !range !42, !noundef !24
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !range !42, !noundef !24
  %i.bk = icmp eq i8 %i.bh, %i.bj
  br label %bb.b

bb.o:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !range !29, !noundef !24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !range !29, !noundef !24
  %i.bp = icmp eq i8 %i.bm, %i.bo
  br label %bb.b

bb.p:                                             ; preds = %bb.h
  %2 = trunc nuw i8 %i.ak to i1
  br i1 %2, label %bb.r, label %bb.b

bb.q:                                             ; preds = %bb.h
  %3 = icmp eq i8 %i.ak, 0
  br label %bb.b

bb.r:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.br = load i8, ptr %i.ai, align 1, !noundef !24
  %i.bs = load i8, ptr %i.bq, align 1, !noundef !24
  %i.bt = icmp eq i8 %i.br, %i.bs
  br label %bb.b

bb.s:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !24
  %i.by = icmp eq i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.t, label %bb.b

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !24, !noundef !24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !24, !noundef !24
  %bcmp12 = tail call i32 @bcmp(ptr nonnull %i.cc, ptr nonnull %i.ca, i64 %i.bv)
  %i.cd = icmp eq i32 %bcmp12, 0
  br label %bb.b

bb.u:                                             ; preds = %bb.j
  br i1 %i.aq, label %bb.b, label %bb.w

bb.v:                                             ; preds = %bb.j
  br i1 %i.aq, label %bb.x, label %bb.b

bb.w:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !24
  %i.ci = icmp eq i64 %i.cf, %i.ch
  br i1 %i.ci, label %.split, label %bb.b

.split:                                           ; preds = %bb.w
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !24, !noundef !24
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !24, !noundef !24
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.cm, ptr nonnull %i.ck, i64 %i.cf)
  %i.cn = icmp eq i32 %bcmp, 0
  br i1 %i.cn, label %bb.x, label %bb.b

bb.x:                                             ; preds = %.split, %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !range !85, !noundef !24 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not8 = icmp eq i32 %i.cp, 6
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !range !85, !noundef !24 ; 2 uses
  br i1 %.not8, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cu = icmp eq i32 %i.cp, %i.cs
  br i1 %i.cu, label %bb.aa, label %bb.b

bb.z:                                             ; preds = %bb.x
  %i.cv = icmp eq i32 %i.cs, 6
  br label %bb.b

bb.aa:                                            ; preds = %bb.y
  %i.cw = icmp eq i32 %i.cp, 5
  br i1 %i.cw, label %bb.ab, label %bb.b

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load i32, ptr %i.cq, align 4, !noundef !24
  %i.cy = load i32, ptr %i.ct, align 4, !noundef !24
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1T_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_19AlterConnectorOwnerNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) initializes((0, 68)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %.sroa.01 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.0 = alloca [56 x i8], align 8            ; 5 uses
  %i.a = load i64, ptr %1, align 8, !range !25, !noundef !24
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.g = load i32, ptr %i.d, align 8, !range !101, !noundef !24
  %.sroa.01.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.01, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.h = load i32, ptr %i.d, align 8, !range !101, !noundef !24
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink4 = phi i32 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.sink4, ptr %i.i, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1V_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4CastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #57
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider10statistics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #20 {
bb.a:
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 3) i8 @_RNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider10table_type(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider16get_logical_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([320 x i8]) align 16 captures(none) dereferenceable(320) initializes((0, 8)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #20 {
bb.a:
  store i64 37, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider20get_table_definition(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr null, i64 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @430, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal noundef nonnull ptr @_RNvXs1_NtCs7p2uQeJxui2_9deltalake10datafusionNtB5_17LazyTableProviderNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7p2uQeJxui2_9deltalake6writerNtB5_25ArrowStreamBatchGeneratorNtNtCs5wg436RVUAP_24datafusion_physical_plan6memory18LazyBatchGenerator11reset_state(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10152
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #44, !noalias !10152 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #50, !noalias !10152
end_hunk_0
begin_hunk_1_@_RNvXs2F_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.da = load i64, ptr %i.cz, align 8, !range !51, !noundef !24
  %.not8 = icmp eq i64 %i.da, 69
  br i1 %.not8, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.cz)
          to label %bb.cb unwind label %bb.ca

bb.by:                                            ; preds = %bb.bw
  store i64 69, ptr %i.m, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cb, %bb.by
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 2425
  %i.dc = load i8, ptr %i.db, align 1, !range !29, !noundef !24
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 2427
  %i.de = load i8, ptr %i.dd, align 1, !range !39, !noundef !24
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !range !51, !noundef !24
  %.not10 = icmp eq i64 %i.dg, 69
  br i1 %.not10, label %bb.ci, label %bb.ce

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit45: ; preds = %.body47, %bb.cc, %bb.ca
  %.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.ca ], [ %.pn, %bb.cc ], [ %.pn, %.body47 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query21NamedWindowDefinitionEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.n) #51
          to label %bb.bt unwind label %bb.cj

bb.ca:                                            ; preds = %bb.bx
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit45

bb.cb:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.m, ptr noundef nonnull align 8 dereferenceable(328) %i.f, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bz

.body47:                                          ; preds = %bb.cf, %bb.cd
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.cf ], [ %i.dk, %bb.cd ] ; 2 uses
  %i.di = load i64, ptr %i.m, align 8, !range !51, !alias.scope !10826, !noundef !24
  %i.dj = icmp eq i64 %i.di, 69
  br i1 %i.dj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit45, label %bb.cc

bb.cc:                                            ; preds = %.body47
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit45 unwind label %bb.cj, !inline_history !3

bb.cd:                                            ; preds = %bb.ce
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body47

bb.ce:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10827
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.df) #57
          to label %.noexc46 unwind label %bb.cd, !inline_history !10808

.noexc46:                                         ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10827
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1640
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl)
          to label %bb.ch unwind label %bb.cf, !noalias !10828, !inline_history !10808

bb.cf:                                            ; preds = %.noexc46
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %i.c) #51
          to label %.body47 unwind label %bb.cg, !noalias !10828, !inline_history !10808

bb.cg:                                            ; preds = %bb.cf
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10828, !inline_history !10808
  unreachable

bb.ch:                                            ; preds = %.noexc46
  %.sroa.057.0.copyload = load i64, ptr %i.c, align 8, !noalias !10829
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.458.0..sroa_idx, i64 320, i1 false)
  %.sroa.458.328..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.458.328..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10827
  br label %bb.ci

bb.ci:                                            ; preds = %bb.bz, %bb.ch
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.ch ], [ 69, %bb.bz ]
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 2426
  %.val28 = load i8, ptr %i.do, align 2, !range !42, !noundef !24
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 2336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dp, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.dr, ptr noundef nonnull align 8 dereferenceable(336) %i.aa, i64 336, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2424
  store i8 %i.aq, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.du, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 2024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 8 dereferenceable(328) %i.u, i64 328, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.dy, ptr noundef nonnull align 8 dereferenceable(328) %i.t, i64 328, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 2072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 2120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ed, ptr noundef nonnull align 8 dereferenceable(328) %i.o, i64 328, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 2144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.ef, ptr noundef nonnull align 8 dereferenceable(328) %i.m, i64 328, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 2425
  store i8 %i.dc, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 2427
  store i8 %i.de, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i64 %.sroa.0.0, ptr %i.ei, align 8
  %.sroa.5.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %0, i64 1320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.5.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.458, i64 344, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 2426
  store i8 %.val28, ptr %i.ej, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.cj:                                            ; preds = %bb.cc, %bb.bu, %bb.bd, %bb.ba, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit45, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit43, %bb.bl, %bb.bi, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs7p2uQeJxui2_9deltalake.exit, %bb.ak, %bb.ah, %bb.ae, %bb.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.ck:                                            ; preds = %bb.g
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !24
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !24, !noundef !24
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.b)
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.q) #57
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = load i64, ptr %0, align 8, !range !25, !noundef !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.s to i1
  %i.v = load i64, ptr %1, align 8, !range !25, !noundef !24 ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.a, %bb.h, %bb.i
  %.sroa.0.0 = phi i1 [ %i.z, %bb.i ], [ false, %bb.b ], [ %3, %bb.h ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  %2 = trunc nuw i64 %i.v to i1
  br i1 %2, label %bb.i, label %bb.f

bb.h:                                             ; preds = %bb.e
  %3 = icmp eq i64 %i.v, 0
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.t, align 8, !noundef !24
  %i.y = load i64, ptr %i.w, align 8, !noundef !24
  %i.z = icmp eq i64 %i.x, %i.y
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g) #57
  br i1 %i.h, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = load ptr, ptr %i.i, align 16, !nonnull !24, !noundef !24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load ptr, ptr %i.k, align 16, !nonnull !24, !noundef !24 ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.n, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.o) #57
  br i1 %i.p, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load i64, ptr %i.q, align 16, !noundef !24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.t = load i64, ptr %i.s, align 16, !noundef !24
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !24, !noundef !24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !24, !noundef !24
  %i.z = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBD_EINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.y, ptr noundef nonnull %i.w, i64 noundef %i.r)
  br i1 %i.z, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %0, align 16, !range !81, !noundef !24
  %.not = icmp eq i64 %i.aa, 37
  %i.ab = load i64, ptr %1, align 16, !range !81, !noundef !24
  %i.ac = icmp eq i64 %i.ab, 37                   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ac, label %bb.o, label %.split

bb.i:                                             ; preds = %bb.g
  br i1 %i.ac, label %bb.j, label %bb.o

.split:                                           ; preds = %bb.h
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1) #57
  br i1 %i.ad, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.split, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.af = load i8, ptr %i.ae, align 2, !range !109, !noundef !24
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 162
  %i.ah = load i8, ptr %i.ag, align 2, !range !109, !noundef !24
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load i8, ptr %i.aj, align 16, !range !29, !noundef !24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.am = load i8, ptr %i.al, align 16, !range !29, !noundef !24
  %i.an = icmp eq i8 %i.ak, %i.am
  br i1 %i.an, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.as = icmp eq ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au) #57
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.ax = load i8, ptr %i.aw, align 1, !range !29, !noundef !24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 161
  %i.az = load i8, ptr %i.ay, align 1, !range !29, !noundef !24
  %i.ba = icmp eq i8 %i.ax, %i.az
  br label %bb.o

bb.o:                                             ; preds = %.split, %bb.b, %bb.d, %bb.f, %bb.i, %bb.j, %bb.k, %bb.m, %bb.e, %bb.h, %bb.n
  %.sroa.0.0 = phi i1 [ %i.ba, %bb.n ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %.split ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.g) #57
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !24
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !24, !noundef !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !24, !noundef !24
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ %i.r, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2W_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_6InListNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !29, !noundef !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !29, !noundef !24
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !24, !noundef !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !24, !noundef !24
  %i.j = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.i) #57
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !24
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !24, !noundef !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !24, !noundef !24
  %i.t = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.s, ptr noundef nonnull %i.q, i64 noundef %i.l)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !24
  %i.d = icmp ult i64 %1, %i.c
  tail call void @llvm.assume(i1 %i.d)
end_hunk_1
begin_hunk_2_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

bb.ay:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11905)
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr91, i64 48
  %i.hn = load i8, ptr %i.hm, align 8, !range !29, !alias.scope !11904, !noundef !24
  %i.ho = getelementptr inbounds nuw i8, ptr %.tr1692, i64 48
  %i.hp = load i8, ptr %i.ho, align 8, !range !29, !alias.scope !11905, !noundef !24
  %i.hq = icmp eq i8 %i.hn, %i.hp
  br i1 %i.hq, label %bb.az, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.az:                                            ; preds = %bb.ay
  %i.hr = getelementptr inbounds nuw i8, ptr %.tr91, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !11904, !noundef !24 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.tr1692, i64 24
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !11905, !noundef !24
  %i.hv = icmp eq i64 %i.hs, %i.hu
  br i1 %i.hv, label %bb.ba, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ba:                                            ; preds = %bb.az
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr1692, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !11905, !nonnull !24, !noundef !24
  %i.hy = getelementptr inbounds nuw i8, ptr %.tr91, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !11904, !nonnull !24, !noundef !24
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.hz, ptr nonnull %i.hx, i64 %i.hs), !noalias !11906, !inline_history !11885
  %i.ia = icmp eq i32 %bcmp.i, 0
  br i1 %i.ia, label %bb.bb, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr91, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !11904, !nonnull !24, !noundef !24 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.tr1692, i64 32
  %i.ie = load ptr, ptr %i.id, align 8, !alias.scope !11905, !nonnull !24, !noundef !24 ; 2 uses
  %i.if = icmp eq ptr %i.ic, %i.ie
  br i1 %i.if, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ii = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ig, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.ih) #57, !noalias !11906, !inline_history !11885
  br i1 %i.ii, label %bb.bd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ij = getelementptr inbounds nuw i8, ptr %.tr91, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !11904, !nonnull !24, !noundef !24 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.tr1692, i64 40
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !11905, !nonnull !24, !noundef !24 ; 2 uses
  %i.in = icmp eq ptr %i.ik, %i.im
  br i1 %i.in, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsL_NtCs4tdlwR1I4n2_7parquet5basicNtB5_13ConvertedTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !107, !noundef !24
  %switch.tableidx = add nsw i8 %i.a, 1           ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsL_NtCs4tdlwR1I4n2_7parquet5basicNtB5_13ConvertedTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsL_NtCs4tdlwR1I4n2_7parquet5basicNtB5_13ConvertedTypeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.951, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.d, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 336, i64 noundef 16) #44
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.d, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 16, i64 noundef 8) #44
  br label %bb.c
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsP_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types4TypeEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %1, align 8, !nonnull !24, !noundef !24 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11919)
  %i.e = load i64, ptr %i.b, align 8, !range !26, !alias.scope !11918, !noundef !24
  %i.f = icmp ne i64 %i.e, -9223372036854775808   ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !range !26, !alias.scope !11919, !noundef !24
  %i.h = icmp eq i64 %i.g, -9223372036854775808   ; 3 uses
  %not..i = xor i1 %i.h, true
  %i.i = xor i1 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11921)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !11922, !noundef !24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !11923, !noundef !24
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !11923, !nonnull !24, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11922, !nonnull !24, !noundef !24
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k), !noalias !11924, !inline_history !11913
  %i.s = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.s, label %bb.e, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.u = load i8, ptr %i.t, align 8, !range !40, !alias.scope !11922, !noundef !24 ; 2 uses
  %.not.i.i = icmp eq i8 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.w = load i8, ptr %i.v, align 8, !range !40, !alias.scope !11923, !noundef !24 ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i8 %i.w, 3
  br i1 %i.y, label %bb.h, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  %i.aa = load i8, ptr %i.z, align 1, !range !107, !alias.scope !11922, !noundef !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  %i.ac = load i8, ptr %i.ab, align 1, !range !107, !alias.scope !11923, !noundef !24
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !48, !alias.scope !11922, !noundef !24
  %.not5.i.i = icmp eq i64 %i.af, -9223372036854775789
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !48, !alias.scope !11923, !noundef !24
  %i.ai = icmp eq i64 %i.ah, -9223372036854775789 ; 2 uses
  br i1 %.not5.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.split7.i.i

bb.k:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.l, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split7.i.i:                                      ; preds = %bb.j
  %i.aj = tail call fastcc noundef zeroext i1 @_RNvXs1R_NtCs4tdlwR1I4n2_7parquet5basicNtB6_11LogicalTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag) #57, !inline_history !11913
  br i1 %i.aj, label %bb.l, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %.split7.i.i, %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !range !103, !alias.scope !11922, !noundef !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.an = trunc nuw i32 %i.al to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ap = load i32, ptr %i.ao, align 8, !range !103, !alias.scope !11923, !noundef !24 ; 2 uses
  br i1 %i.an, label %bb.m, label %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i

bb.m:                                             ; preds = %bb.l
  %2 = trunc nuw i32 %i.ap to i1
  br i1 %2, label %.split, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.ar = load i32, ptr %i.am, align 4, !alias.scope !11922, !noundef !24
  %i.as = load i32, ptr %i.aq, align 4, !alias.scope !11923, !noundef !24
  %i.at = icmp eq i32 %i.ar, %i.as
  br i1 %i.at, label %bb.ac, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.l
  %3 = icmp eq i32 %i.ap, 0
  br i1 %3, label %bb.ac, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.h)
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.av = load i32, ptr %i.au, align 8, !alias.scope !11918, !noundef !24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ax = load i32, ptr %i.aw, align 8, !alias.scope !11919, !noundef !24
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.o, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !11918, !noundef !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !11919, !noundef !24
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.p, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bf = load i32, ptr %i.be, align 8, !alias.scope !11918, !noundef !24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bh = load i32, ptr %i.bg, align 8, !alias.scope !11919, !noundef !24
  %i.bi = icmp eq i32 %i.bf, %i.bh
  br i1 %i.bi, label %bb.q, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11926)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !11927, !noundef !24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !11928, !noundef !24
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !11928, !nonnull !24, !noundef !24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !11927, !nonnull !24, !noundef !24
  %bcmp.i4.i = tail call i32 @bcmp(ptr nonnull %i.br, ptr nonnull %i.bp, i64 %i.bk), !noalias !11929, !inline_history !11913
  %i.bs = icmp eq i32 %bcmp.i4.i, 0
  br i1 %i.bs, label %bb.s, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bu = load i8, ptr %i.bt, align 8, !range !40, !alias.scope !11927, !noundef !24 ; 2 uses
  %.not.i5.i = icmp eq i8 %i.bu, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.bw = load i8, ptr %i.bv, align 8, !range !40, !alias.scope !11928, !noundef !24 ; 2 uses
  br i1 %.not.i5.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = icmp eq i8 %i.bu, %i.bw
  br i1 %i.bx, label %bb.v, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.s
  %i.by = icmp eq i8 %i.bw, 3
  br i1 %i.by, label %bb.v, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 89
  %i.ca = load i8, ptr %i.bz, align 1, !range !107, !alias.scope !11927, !noundef !24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  %i.cc = load i8, ptr %i.cb, align 1, !range !107, !alias.scope !11928, !noundef !24
  %i.cd = icmp eq i8 %i.ca, %i.cc
  br i1 %i.cd, label %bb.w, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !48, !alias.scope !11927, !noundef !24
  %.not5.i6.i = icmp eq i64 %i.cf, -9223372036854775789
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !48, !alias.scope !11928, !noundef !24
  %i.ci = icmp eq i64 %i.ch, -9223372036854775789 ; 2 uses
  br i1 %.not5.i6.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.ci, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.split7.i7.i

bb.y:                                             ; preds = %bb.w
  br i1 %i.ci, label %bb.z, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split7.i7.i:                                     ; preds = %bb.x
  %i.cj = tail call fastcc noundef zeroext i1 @_RNvXs1R_NtCs4tdlwR1I4n2_7parquet5basicNtB6_11LogicalTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ce, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg) #57, !inline_history !11913
  br i1 %i.cj, label %bb.z, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %.split7.i7.i, %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cl = load i32, ptr %i.ck, align 8, !range !103, !alias.scope !11927, !noundef !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.cn = trunc nuw i32 %i.cl to i1
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.cp = load i32, ptr %i.co, align 8, !range !103, !alias.scope !11928, !noundef !24 ; 2 uses
  br i1 %i.cn, label %bb.aa, label %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit8.i

bb.aa:                                            ; preds = %bb.z
  %4 = trunc nuw i32 %i.cp to i1
  br i1 %4, label %.split3, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split3:                                          ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.cr = load i32, ptr %i.cm, align 4, !alias.scope !11927, !noundef !24
  %i.cs = load i32, ptr %i.cq, align 4, !alias.scope !11928, !noundef !24
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.ab, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit8.i: ; preds = %bb.z
  %5 = icmp eq i32 %i.cp, 0
  br i1 %5, label %bb.ab, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %.split3, %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit8.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.cv = load i8, ptr %i.cu, align 4, !range !119, !alias.scope !11918, !noundef !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.cx = load i8, ptr %i.cw, align 4, !range !119, !alias.scope !11919, !noundef !24
  %i.cy = icmp ne i8 %i.cv, %i.cx
  br label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %.split, %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !11918, !noundef !24 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !11919, !noundef !24
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.ad, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !11919, !nonnull !24, !noundef !24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !11918, !nonnull !24, !noundef !24
  %.not4.not = icmp eq i64 %i.da, 0
  br i1 %.not4.not, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.sroa.01.0.i.i5 = phi i64 [ %i.dl, %.lr.ph ], [ 0, %bb.ad ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.sroa.01.0.i.i5
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.01.0.i.i5
  %i.dk = tail call fastcc noundef zeroext i1 @_RNvXsP_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types4TypeEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dj) #57, !noalias !11930, !inline_history !11917 ; 2 uses
  %i.dl = add nuw i64 %.sroa.01.0.i.i5, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.dl, %i.da
  %or.cond = select i1 %i.dk, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph

_RNvXsj_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_4TypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %bb.ad, %.split7.i7.i, %bb.aa, %bb.u, %bb.v, %bb.y, %bb.q, %bb.t, %bb.x, %bb.r, %.split7.i.i, %bb.m, %bb.g, %bb.h, %bb.k, %bb.c, %bb.f, %bb.j, %bb.d, %.split3, %.split, %bb.a, %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.n, %bb.o, %bb.p, %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit8.i, %bb.ab, %bb.ac
  %.sroa.0.0.shrunk.i = phi i1 [ true, %.split3 ], [ true, %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ true, %bb.n ], [ %i.cy, %bb.ab ], [ true, %bb.a ], [ true, %_RNvXsn_NtNtCs4tdlwR1I4n2_7parquet6schema5typesNtB5_13BasicTypeInfoNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit8.i ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.ac ], [ true, %bb.aa ], [ true, %.split ], [ true, %.split7.i.i ], [ true, %.split7.i7.i ], [ true, %bb.d ], [ true, %bb.j ], [ true, %bb.f ], [ true, %bb.c ], [ true, %bb.k ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.m ], [ true, %bb.r ], [ true, %bb.x ], [ true, %bb.t ], [ true, %bb.q ], [ true, %bb.y ], [ true, %bb.v ], [ true, %bb.u ], [ false, %bb.ad ], [ %i.dk, %.lr.ph ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsP_NtNtCsbvkFyIu7lgC_4core3fmt3numsNtB7_5Debug3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsn_NtNtCsbvkFyIu7lgC_4core3fmt3numsNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impsNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsp_NtNtCsbvkFyIu7lgC_4core3fmt3numsNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsx_NtNtCsbvkFyIu7lgC_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtB7_3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !26, !noundef !24
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @655, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @654, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EENtNtB7_3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !24
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @655, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @656)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @654, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs4tdlwR1I4n2_7parquet5basic11LogicalTypeENtNtB7_3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !48, !noundef !24
  %.not = icmp eq i64 %i.b, -9223372036854775789
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @655, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @657)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @654, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs4tdlwR1I4n2_7parquet5basic19FieldRepetitionTypeENtNtB7_3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !40, !noundef !24
  %.not = icmp eq i8 %i.b, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @655, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @658)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @654, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
end_hunk_2
