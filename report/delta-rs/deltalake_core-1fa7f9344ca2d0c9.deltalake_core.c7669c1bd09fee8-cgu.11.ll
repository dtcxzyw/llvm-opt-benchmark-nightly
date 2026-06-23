inline.NumInlined: 10475
inline.NumDeleted: 2844
begin_hunk_0_@_RNvXs1I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14ScalarFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.r = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef %i.j)
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1L_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = load i64, ptr %0, align 16, !range !1646, !noundef !3
  switch i64 %i.k, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.j, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 7, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @228)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.i, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 6, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @229)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.h, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 9, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @230)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.g, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 6, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.f, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 9, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @232)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.e, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @233)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.d, align 8
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @236, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @235)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.c, align 8
  %i.aa = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @237)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.b, align 8
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @240, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.a, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.b ], [ %i.o, %bb.c ], [ %i.q, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.f ], [ %i.w, %bb.g ], [ %i.y, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1163, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !1163, !noundef !3 ; 4 uses
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
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m) #57
  br label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r) #57
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
  %i.y = load i64, ptr %i.t, align 8, !noundef !3
  %i.z = load i64, ptr %i.x, align 8, !noundef !3
  %i.aa = icmp eq i64 %i.y, %i.z
  br label %bb.c

bb.k:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = tail call fastcc noundef zeroext i1 @_RNvXsj_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae) #57
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30032)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !30029, !noalias !30032, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !30032, !noalias !30029, !noundef !3
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !30032, !noalias !30029, !nonnull !3, !noundef !3
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !30029, !noalias !30032, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, i64 noundef %i.c), !noalias !30034
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.p = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o)
  br i1 %i.p, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val3) ]
  %i.q = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.q, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.g ], [ true, %bb.d ], [ %i.be, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30038)
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !30035, !noalias !30038, !nonnull !3, !noundef !3 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !30038, !noalias !30035, !nonnull !3, !noundef !3 ; 4 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30043)
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !30040, !noalias !30045, !noundef !3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !30043, !noalias !30046, !noundef !3
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !30043, !noalias !30046, !nonnull !3, !noundef !3
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !30040, !noalias !30045, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, i64 noundef %i.x), !noalias !30047
  br i1 %i.ah, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ak = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj), !noalias !30048
  br i1 %i.ak, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !30035, !noalias !30038, !noundef !3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !30038, !noalias !30035, !noundef !3
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !30038, !noalias !30035, !nonnull !3, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !30035, !noalias !30038, !nonnull !3, !noundef !3
  %i.au = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.at, ptr noundef nonnull %i.ar, i64 noundef %i.am), !noalias !30048
  br i1 %i.au, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !30035, !noalias !30038, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !30038, !noalias !30035, !noundef !3
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !30038, !noalias !30035, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !30035, !noalias !30038, !nonnull !3, !noundef !3
  %i.be = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bb, i64 noundef %i.aw), !noalias !30048
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RNvXs1O_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_16ArrayElemTypeDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1163, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !1163, !noundef !3 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv4 = icmp samesign ult i64 %i.e, 2
  %i.h = select i1 %.inv4, i64 2, i64 %i.g        ; 4 uses
  switch i64 %i.d, label %bb.b [
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.h, 2
  br i1 %i.j, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.h, 3
  br i1 %i.k, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.l = tail call i8 @llvm.scmp.i8.i64(i64 %i.d, i64 %i.h)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #57
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.i, %bb.n, %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ %i.q, %bb.g ], [ %i.l, %bb.f ], [ %i.ad, %bb.m ], [ %i.v, %bb.i ], [ %., %bb.l ], [ %i.ai, %bb.n ], [ 1, %bb.k ]
  ret i8 %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !noundef !3
  %i.v = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u) #57 ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = trunc nuw i64 %i.a to i1
  %i.z = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.z, label %bb.m, label %bb.h

bb.l:                                             ; preds = %bb.j
  %. = sext i1 %i.z to i8
  br label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.x, align 8, !noundef !3
  %i.ac = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ad = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ab, i64 %i.ac)
  br label %bb.h

bb.n:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  %i.ai = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah) #57
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1P_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9PredicateNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i64, ptr %0, align 16, !range !1678, !noundef !3
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 9)
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 17, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @264)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RNvXs1w_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  %.not53 = icmp eq i64 %i.dk, -9223372036854775807
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !range !311, !noundef !3
  %.not54 = icmp eq i64 %i.dm, -9223372036854775807 ; 2 uses
  br i1 %.not53, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %bb.as
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !3, !noundef !3
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !3
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.du = load i64, ptr %i.dt, align 8, !noundef !3
  %i.dv = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2K_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.do, i64 noundef %i.dq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ds, i64 noundef %i.du) #57 ; 2 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.au, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.aw:                                            ; preds = %bb.au
  br i1 %.not54, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.az

bb.ax:                                            ; preds = %bb.au
  br i1 %.not54, label %bb.ay, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.dy = load ptr, ptr %i.dx, align 8, !nonnull !3, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !3
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !3, !noundef !3
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.ee = load i64, ptr %i.ed, align 8, !noundef !3
  %i.ef = tail call fastcc noundef i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2Q_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dy, i64 noundef %i.ea, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ec, i64 noundef %i.ee) #57
  br label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.az:                                            ; preds = %bb.aw
  %i.eg = tail call fastcc noundef i8 @_RNvXseM_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dl) #57 ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %bb.ay, label %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread: ; preds = %bb.t, %bb.q, %bb.p, %bb.u, %_RNvXs3G_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_3CteNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.k, %bb.l, %_RNvXsai_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.ac, %bb.ad, %bb.aw, %bb.ax, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.aj, %bb.ak, %bb.af, %bb.ag, %bb.y, %bb.z, %bb.b, %bb.c, %_RNvXsbg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %bb.am, %bb.al, %bb.av, %bb.az, %bb.ay, %bb.ar, %bb.ai, %bb.d, %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %.sroa.0.0 = phi i8 [ %i.ef, %bb.ay ], [ %i.eg, %bb.az ], [ -1, %bb.ax ], [ 1, %bb.as ], [ %i.dv, %bb.av ], [ -1, %bb.at ], [ 1, %bb.ao ], [ %i.dh, %bb.ar ], [ -1, %bb.ap ], [ 1, %bb.aj ], [ %i.cx, %bb.al ], [ %i.cz, %bb.am ], [ -1, %bb.ak ], [ 1, %bb.af ], [ %i.cn, %bb.ai ], [ -1, %bb.ag ], [ 1, %bb.y ], [ %.sroa.0.0.i56, %_RNvXsbg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7OrderByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.z ], [ 1, %bb.b ], [ %i.i, %bb.d ], [ %.sroa.0.0.i, %_RNvXs3m_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_4WithNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ -1, %bb.c ], [ 1, %bb.aw ], [ -1, %bb.ad ], [ -1, %bb.l ], [ 1, %bb.ac ], [ 1, %bb.k ], [ %.sroa.0.0.i63, %_RNvXsai_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_19TableAliasColumnDefNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ], [ 1, %bb.p ], [ -1, %bb.q ], [ 1, %bb.t ], [ -1, %bb.u ], [ %.sroa.0.0.i60, %_RNvXs3G_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_3CteNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #57
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !135, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !135, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #57
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bd, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30521)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !30518, !noalias !30521, !nonnull !3, !noundef !3 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !30521, !noalias !30518, !nonnull !3, !noundef !3 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30526)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !30523, !noalias !30528, !noundef !3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !30526, !noalias !30529, !noundef !3
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !30526, !noalias !30529, !nonnull !3, !noundef !3
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !30523, !noalias !30528, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.w), !noalias !30530
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aj = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ai), !noalias !30531
  br i1 %i.aj, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !30518, !noalias !30521, !noundef !3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !30521, !noalias !30518, !noundef !3
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !30521, !noalias !30518, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !30518, !noalias !30521, !nonnull !3, !noundef !3
  %i.at = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.as, ptr noundef nonnull %i.aq, i64 noundef %i.al), !noalias !30531
  br i1 %i.at, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !30518, !noalias !30521, !noundef !3 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !30521, !noalias !30518, !noundef !3
  %i.ay = icmp eq i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !30521, !noalias !30518, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !30518, !noalias !30521, !nonnull !3, !noundef !3
  %i.bd = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ba, i64 noundef %i.av), !noalias !30531
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs28_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_13SetQuantifierNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !3088, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs28_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_13SetQuantifierNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs28_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_13SetQuantifierNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.1165, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !7, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !7, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30535)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !135, !alias.scope !30532, !noalias !30535, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !135, !alias.scope !30535, !noalias !30532, !noundef !3
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !30532, !noalias !30535, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !30535, !noalias !30532, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !30535, !noalias !30532, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !30532, !noalias !30535, !nonnull !3, !noundef !3
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !30537, !inline_history !30538
  br i1 %i.ab, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !30532, !noalias !30535, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !30535, !noalias !30532, !noundef !3
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !30535, !noalias !30532, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !30532, !noalias !30535, !nonnull !3, !noundef !3
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !30537, !inline_history !30538
  br i1 %i.al, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = load i64, ptr %i.am, align 16, !alias.scope !30532, !noalias !30535, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !30535, !noalias !30532, !noundef !3
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !30535, !noalias !30532, !nonnull !3, !noundef !3
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !30532, !noalias !30535, !nonnull !3, !noundef !3
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an), !noalias !30537, !inline_history !30538
  br i1 %i.av, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #57, !inline_history !30538
  br i1 %i.aw, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !30532, !noalias !30535, !align !301, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !30535, !noalias !30532, !align !301, !noundef !3 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba) #57, !inline_history !30538
  br i1 %i.bc, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.be = load i8, ptr %i.bd, align 1, !range !120, !alias.scope !30532, !noalias !30535, !noundef !3 ; 2 uses
  %.not5.i = icmp eq i8 %i.be, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bg = load i8, ptr %i.bf, align 1, !range !120, !alias.scope !30535, !noalias !30532, !noundef !3 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.be, %i.bg
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bg, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bi, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bh, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i64 noundef %i.b)
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.q) #57
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = load i64, ptr %0, align 8, !range !7, !noundef !3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = trunc nuw i64 %i.s to i1
  %i.v = load i64, ptr %1, align 8, !range !7, !noundef !3
  %i.w = trunc nuw i64 %i.v to i1                 ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.a, %bb.h, %bb.i
  %.sroa.0.0 = phi i1 [ %i.ab, %bb.i ], [ false, %bb.b ], [ %i.x, %bb.h ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.g:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.i, label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = xor i1 %i.w, true
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.t, align 8, !noundef !3
  %i.aa = load i64, ptr %i.y, align 8, !noundef !3
  %i.ab = icmp eq i64 %i.z, %i.aa
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.b = load i8, ptr %i.a, align 8, !range !135, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2424
  %i.d = load i8, ptr %i.c, align 8, !range !135, !noundef !3
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsdD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2425
  %i.g = load i8, ptr %i.f, align 1, !range !135, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2425
  %i.i = load i8, ptr %i.h, align 1, !range !135, !noundef !3
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXsdD_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

end_hunk_1
begin_hunk_2_@_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.fi, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1488 = phi ptr [ %.tr14.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr87 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.t
    i64 9, label %bb.u
    i64 10, label %bb.ad
    i64 11, label %bb.ae
    i64 12, label %bb.af
    i64 13, label %bb.ao
    i64 14, label %bb.ap
    i64 15, label %bb.aq
    i64 16, label %bb.az
    i64 17, label %bb.ba
    i64 18, label %bb.bb
    i64 19, label %bb.bc
    i64 20, label %bb.bd
    i64 21, label %bb.be
    i64 22, label %bb.bf
    i64 23, label %bb.bg
    i64 24, label %bb.bh
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.am, %bb.ai, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.an, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.a, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ap, %bb.ao, %bb.ae, %bb.ad, %bb.t, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.aw ], [ %i.cm, %bb.t ], [ false, %bb.o ], [ %i.ej, %bb.ad ], [ %i.em, %bb.ae ], [ false, %bb.y ], [ %i.fr, %bb.ao ], [ %i.fu, %bb.ap ], [ false, %bb.au ], [ %i.hm, %bb.az ], [ %i.hp, %bb.ba ], [ %i.hs, %bb.bb ], [ %i.hv, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hz, %bb.be ], [ %i.ie, %bb.bf ], [ %i.ih, %bb.bg ], [ true, %bb.ax ], [ false, %bb.k ], [ true, %bb.l ], [ false, %bb.j ], [ %i.cj, %bb.s ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.u ], [ true, %bb.v ], [ %i.eg, %bb.ac ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10 ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.x ], [ false, %bb.as ], [ %i.hj, %bb.ay ], [ false, %bb.av ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.a ], [ true, %bb.an ], [ false, %bb.bh ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.ai ], [ false, %bb.ah ], [ false, %bb.bl ], [ false, %bb.ag ], [ false, %tailrecurse.backedge ], [ true, %bb.bm ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31768)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !31765, !noalias !31768, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !31768, !noalias !31765, !noundef !3
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !31768, !noalias !31765, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !31765, !noalias !31768, !nonnull !3, !noundef !3
  %i.aq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.an, i64 noundef %i.ai), !noalias !31770
  br i1 %i.aq, label %bb.l, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !31765, !noalias !31768, !nonnull !3, !noundef !3 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !31768, !noalias !31765, !nonnull !3, !noundef !3 ; 6 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31774)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !31771, !noalias !31776, !nonnull !3, !noundef !3 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !31774, !noalias !31777, !nonnull !3, !noundef !3 ; 4 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31781)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !31778, !noalias !31783, !noundef !3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !31781, !noalias !31784, !noundef !3
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !31781, !noalias !31784, !nonnull !3, !noundef !3
  %i.bj = load ptr, ptr %i.bh, align 8, !alias.scope !31778, !noalias !31783, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef %i.bc), !noalias !31785
  br i1 %i.bm, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bp = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bo), !noalias !31786
  br i1 %i.bp, label %bb.p, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !31771, !noalias !31776, !noundef !3 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !31774, !noalias !31777, !noundef !3
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.q, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !31774, !noalias !31777, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !31771, !noalias !31776, !nonnull !3, !noundef !3
  %i.bz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.by, ptr noundef nonnull %i.bw, i64 noundef %i.br), !noalias !31786
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !31771, !noalias !31776, !noundef !3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !31774, !noalias !31777, !noundef !3
  %i.ce = icmp eq i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !31774, !noalias !31777, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !31771, !noalias !31776, !nonnull !3, !noundef !3
  %i.cj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cg, i64 noundef %i.cb), !noalias !31786
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.cm = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cl)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %.val = load ptr, ptr %i.cn, align 8            ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %.val2 = load i8, ptr %i.cp, align 8, !range !135, !noundef !3
  %.val3 = load ptr, ptr %i.co, align 8           ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %.val4 = load i8, ptr %i.cq, align 8, !range !135, !noundef !3
  %i.cr = icmp eq i8 %.val2, %.val4
  br i1 %i.cr, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  %i.cs = icmp eq ptr %.val, %.val3
  br i1 %i.cs, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31790)
  %i.ct = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !31787, !noalias !31790, !nonnull !3, !noundef !3 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !alias.scope !31790, !noalias !31787, !nonnull !3, !noundef !3 ; 4 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31792)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31795)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !31792, !noalias !31797, !noundef !3 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !31795, !noalias !31798, !noundef !3
  %i.dc = icmp eq i64 %i.cz, %i.db
  br i1 %i.dc, label %bb.y, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.df = load ptr, ptr %i.dd, align 8, !alias.scope !31795, !noalias !31798, !nonnull !3, !noundef !3
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !31792, !noalias !31797, !nonnull !3, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, i64 noundef %i.cz), !noalias !31799
  br i1 %i.dj, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10: ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.dm = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dl), !noalias !31800
  br i1 %i.dm, label %bb.z, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i10, %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !31787, !noalias !31790, !noundef !3 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !31790, !noalias !31787, !noundef !3
  %i.dr = icmp eq i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.aa, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !31790, !noalias !31787, !nonnull !3, !noundef !3
  %i.du = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !31787, !noalias !31790, !nonnull !3, !noundef !3
  %i.dw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.do), !noalias !31800
  br i1 %i.dw, label %bb.ab, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !31787, !noalias !31790, !noundef !3 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !31790, !noalias !31787, !noundef !3
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !31790, !noalias !31787, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !31787, !noalias !31790, !nonnull !3, !noundef !3
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy), !noalias !31800
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %.lr.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.ej = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ei) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.em = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.el) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31804)
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr87, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !31801, !noalias !31804, !align !301, !noundef !3 ; 2 uses
  %.not.i = icmp eq ptr %i.eq, null
  %i.er = getelementptr inbounds nuw i8, ptr %.tr1488, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !31804, !noalias !31801, !align !301, !noundef !3 ; 2 uses
  %i.et = icmp eq ptr %i.es, null                 ; 2 uses
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %i.et, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  br i1 %i.et, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.ag
  %i.eu = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.eq, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.es) #57, !noalias !31806, !inline_history !31807
  br i1 %i.eu, label %bb.aj, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ev = getelementptr inbounds nuw i8, ptr %.tr87, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !31801, !noalias !31804, !align !301, !noundef !3 ; 2 uses
  %.not5.i = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1488, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !31804, !noalias !31801, !align !301, !noundef !3 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null                 ; 2 uses
  br i1 %.not5.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.ez, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ez, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.ak
  %i.fa = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ew, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ey) #57, !noalias !31806, !inline_history !31807
  br i1 %i.fa, label %bb.an, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = load ptr, ptr %i.en, align 8, !alias.scope !31801, !noalias !31804, !nonnull !3, !noundef !3 ; 2 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !alias.scope !31804, !noalias !31801, !nonnull !3, !noundef !3 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bm, %bb.an
  %.pn = phi ptr [ %i.fb, %bb.an ], [ %i.jg, %bb.bm ]
  %.pn112 = phi ptr [ %i.fc, %bb.an ], [ %i.ji, %bb.bm ]
  %.tr14.be = getelementptr inbounds nuw i8, ptr %.pn112, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.fe = load i64, ptr %.tr.be, align 16, !range !18343, !noundef !3 ; 3 uses
  %i.ff = icmp ne i64 %i.fe, 31
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = add nsw i64 %i.fe, -11
  %i.fh = icmp samesign ugt i64 %i.fe, 10
  %i.fi = select i1 %i.fh, i64 %i.fg, i64 20      ; 2 uses
  %i.fj = load i64, ptr %.tr14.be, align 16, !range !18343, !noundef !3 ; 3 uses
  %i.fk = icmp ne i64 %i.fj, 31
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = add nsw i64 %i.fj, -11
  %i.fm = icmp samesign ugt i64 %i.fj, 10
  %i.fn = select i1 %i.fm, i64 %i.fl, i64 20
  %i.fo = icmp eq i64 %i.fi, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fr = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fq) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr87, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr1488, i64 8
  %i.fu = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ft) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31811)
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr87, i64 48
  %i.fw = load i8, ptr %i.fv, align 8, !range !135, !alias.scope !31808, !noalias !31811, !noundef !3
  %i.fx = getelementptr inbounds nuw i8, ptr %.tr1488, i64 48
  %i.fy = load i8, ptr %i.fx, align 8, !range !135, !alias.scope !31811, !noalias !31808, !noundef !3
  %i.fz = icmp eq i8 %i.fw, %i.fy
  br i1 %i.fz, label %bb.ar, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr87, i64 49
  %i.gb = load i8, ptr %i.ga, align 1, !range !135, !alias.scope !31808, !noalias !31811, !noundef !3
  %i.gc = getelementptr inbounds nuw i8, ptr %.tr1488, i64 49
  %i.gd = load i8, ptr %i.gc, align 1, !range !135, !alias.scope !31811, !noalias !31808, !noundef !3
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %bb.as, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr inbounds nuw i8, ptr %.tr87, i64 50
  %i.gg = load i8, ptr %i.gf, align 2, !range !852, !alias.scope !31808, !noalias !31811, !noundef !3
  %i.gh = getelementptr inbounds nuw i8, ptr %.tr1488, i64 50
  %i.gi = load i8, ptr %i.gh, align 2, !range !852, !alias.scope !31811, !noalias !31808, !noundef !3
  %i.gj = icmp eq i8 %i.gg, %i.gi
  br i1 %i.gj, label %bb.at, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.as
  %i.gk = getelementptr inbounds nuw i8, ptr %.tr87, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !31808, !noalias !31811, !nonnull !3, !noundef !3 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.tr1488, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !31811, !noalias !31808, !nonnull !3, !noundef !3 ; 2 uses
  %i.go = icmp eq ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
end_hunk_2
