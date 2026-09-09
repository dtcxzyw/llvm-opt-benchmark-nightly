Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_syntax-f1f61ff0feae2508.regex_syntax.535bfd884d6d4f8f-cgu.01?download=true
inline.NumInlined: 398
inline.NumDeleted: 155
begin_hunk_0_@_RNvXs5_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -2
  %.inv.i = icmp samesign ult i64 %i.h, 2
  %i.k = select i1 %.inv.i, i64 2, i64 %i.j
  switch i64 %i.k, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 5), !noalias !402
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !404
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.g, align 8, !noalias !404
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 7, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !404
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !404
  store ptr %0, ptr %i.f, align 8, !noalias !404
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !404
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !404
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.e, align 8, !noalias !404
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !404
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !404
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.d, align 8, !noalias !404
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !404
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !404
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.c, align 8, !noalias !404
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 7, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !404
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !404
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.b, align 8, !noalias !404
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !404
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !404
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.a, align 8, !noalias !404
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !404
  br label %_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXsH_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.s, %bb.g ], [ %i.u, %bb.h ], [ %i.w, %bb.i ], [ %i.y, %bb.j ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtCs79ICTHwG85D_12regex_syntax7unicodeNtB5_13CaseFoldErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtNtCs79ICTHwG85D_12regex_syntax3hir7visitor5visitINtNtB4_5print6WriterQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEEB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7LiteralNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  store ptr %i.b, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_RNvXs_NtCs79ICTHwG85D_12regex_syntax5debugNtB4_5BytesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_5ClassNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = alloca [12 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_set(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.d = load i64, ptr %0, align 8, !range !5, !noundef !6
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.idx9 = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx9
  br i1 %i.j, label %.loopexit, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  br i1 %i.j, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.06 = phi ptr [ %i.g, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = load <2 x i32>, ptr %.sroa.0.06, align 4
  store <2 x i32> %i.q, ptr %i.b, align 8
  store i8 0, ptr %i.o, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq ptr %i.p, %i.n
  br i1 %i.s, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %i.t = call noundef zeroext i1 @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.t

bb.e:                                             ; preds = %.lr.ph8, %bb.e
  %.sroa.02.07 = phi ptr [ %i.g, %.lr.ph8 ], [ %i.u, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = load i8, ptr %.sroa.02.07, align 1, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.07, i64 1
  %i.x = load i8, ptr %i.w, align 1, !noundef !6
  store i8 %i.v, ptr %i.l, align 1
  store i8 %i.x, ptr %i.m, align 1
  store i8 0, ptr %i.a, align 1
  %i.y = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @56) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp eq ptr %i.u, %i.k
  br i1 %i.z, label %.loopexit, label %bb.e
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsF_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !424, !noalias !425, !noundef !6 ; 5 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv.i = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv.i, i64 2, i64 %i.c       ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !8, !alias.scope !425, !noalias !424, !noundef !6 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv6.i = icmp samesign ult i64 %i.e, 2        ; 2 uses
  %i.h = select i1 %.inv6.i, i64 2, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.d
    i64 2, label %2
    i64 3, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
    i64 4, label %bb.m
    i64 5, label %bb.r
    i64 6, label %bb.w
    i64 7, label %bb.z
    i64 0, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

2:                                                ; preds = %bb.b
  br i1 %.inv6.i, label %bb.e, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !424, !noalias !425, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !425, !noalias !424, !noundef !6
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %.split13, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split13:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !425, !noalias !424, !nonnull !6, !noundef !6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !424, !noalias !425, !nonnull !6, !noundef !6
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k), !noalias !426, !inline_history !408
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.t = icmp eq i64 %i.a, %i.e
  br i1 %i.t, label %bb.f, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.u = trunc nuw i64 %i.a to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !427, !noalias !428, !noundef !6 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !428, !noalias !427, !noundef !6
  %i.z = icmp eq i64 %i.w, %i.y                   ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.z, label %bb.k, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.f
  br i1 %i.z, label %bb.i, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !428, !noalias !427, !nonnull !6, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !427, !noalias !428, !nonnull !6, !noundef !6
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.af = add nuw i64 %.sroa.01.08.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.w
  br i1 %exitcond.not.i.i, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.sroa.01.08.i.i = phi i64 [ %i.af, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.sroa.01.08.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.01.08.i.i
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !noalias !429
  %i.aj = load <2 x i32>, ptr %i.ah, align 4, !noalias !429
  %i.ak = icmp eq <2 x i32> %i.ai, %i.aj          ; 2 uses
  %i.al = extractelement <2 x i1> %i.ak, i64 0
  %i.am = extractelement <2 x i1> %i.ak, i64 1
  %.sroa.0.0.i.not.i.not.i.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %.sroa.0.0.i.not.i.not.i.i, label %bb.j, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !428, !noalias !427, !nonnull !6, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !427, !noalias !428, !nonnull !6, !noundef !6
  %i.ar = icmp eq i64 %i.w, 0
  br i1 %i.ar, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph.i4.i

bb.l:                                             ; preds = %.lr.ph.i4.i
  %i.as = add nuw i64 %.sroa.01.08.i5.i, 1        ; 2 uses
  %exitcond.not.i12.i = icmp eq i64 %i.as, %i.w
  br i1 %exitcond.not.i12.i, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.k, %bb.l
  %.sroa.01.08.i5.i = phi i64 [ %i.as, %bb.l ], [ 0, %bb.k ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %.sroa.01.08.i5.i ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.01.08.i5.i ; 2 uses
  %.val.i6.i = load i8, ptr %i.at, align 1, !noalias !429, !noundef !6
  %i.av = getelementptr i8, ptr %i.at, i64 1
  %.val5.i7.i = load i8, ptr %i.av, align 1, !noalias !429
  %.val6.i8.i = load i8, ptr %i.au, align 1, !noalias !429, !noundef !6
  %i.aw = getelementptr i8, ptr %i.au, i64 1
  %.val7.i9.i = load i8, ptr %i.aw, align 1, !noalias !429
  %i.ax = icmp eq i8 %.val.i6.i, %.val6.i8.i
  %i.ay = icmp eq i8 %.val5.i7.i, %.val7.i9.i
  %.sroa.0.0.i.not.i.not.i10.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %.sroa.0.0.i.not.i.not.i10.i, label %bb.l, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !430, !noalias !431, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !431, !noalias !430, !noundef !6
  %i.bf = icmp eq i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bh = load i8, ptr %i.bg, align 4, !range !13, !alias.scope !430, !noalias !431, !noundef !6
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bj = load i8, ptr %i.bi, align 4, !range !13, !alias.scope !431, !noalias !430, !noundef !6
  %i.bk = icmp eq i8 %i.bh, %i.bj
  br i1 %i.bk, label %bb.o, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bl = load i32, ptr %i.az, align 8, !range !14, !alias.scope !430, !noalias !431, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bn = trunc nuw i32 %i.bl to i1
  %i.bo = load i32, ptr %i.ba, align 8, !range !14, !alias.scope !431, !noalias !430, !noundef !6
  %i.bp = trunc nuw i32 %i.bo to i1               ; 2 uses
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.bp, label %.split, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.bp, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %.split14

.split:                                           ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = load i32, ptr %i.bm, align 4, !alias.scope !430, !noalias !431, !noundef !6
  %i.bs = load i32, ptr %i.bq, align 4, !alias.scope !431, !noalias !430, !noundef !6
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %.split14, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split14:                                         ; preds = %.split, %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !430, !noalias !431, !nonnull !6, !noundef !6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !431, !noalias !430, !nonnull !6, !noundef !6
  %i.by = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx), !noalias !432, !inline_history !415
  br i1 %i.by, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !433, !noalias !434, !noundef !6
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !434, !noalias !433, !noundef !6
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.s, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !433, !noalias !434, !noundef !6 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i = icmp eq ptr %i.ch, null
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !434, !noalias !433, !noundef !6 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null                 ; 2 uses
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.cl, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.v

bb.u:                                             ; preds = %bb.s
  br i1 %i.cl, label %.split15, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i64, ptr %i.ci, align 8, !alias.scope !433, !noalias !434, !noundef !6 ; 2 uses
  %i.co = load i64, ptr %i.cm, align 8, !alias.scope !434, !noalias !433, !noundef !6
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %.split8, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split8:                                          ; preds = %bb.v
  %bcmp.i4 = tail call i32 @bcmp(ptr nonnull %i.ch, ptr nonnull %i.ck, i64 %i.cn), !noalias !435, !inline_history !419
  %i.cq = icmp eq i32 %bcmp.i4, 0
  br i1 %i.cq, label %.split15, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split15:                                         ; preds = %.split8, %bb.u
  %i.cr = load ptr, ptr %i.bz, align 8, !alias.scope !433, !noalias !434, !nonnull !6, !noundef !6
  %i.cs = load ptr, ptr %i.ca, align 8, !alias.scope !434, !noalias !433, !nonnull !6, !noundef !6
  %i.ct = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cs), !noalias !435, !inline_history !419
  br i1 %i.ct, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !424, !noalias !425, !noundef !6 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !425, !noalias !424, !noundef !6
  %i.cy = icmp eq i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.x, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !425, !noalias !424, !nonnull !6, !noundef !6
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !alias.scope !424, !noalias !425, !nonnull !6, !noundef !6
  %.not1625.not = icmp eq i64 %i.cv, 0
  br i1 %.not1625.not, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph27

bb.y:                                             ; preds = %.lr.ph27
  %i.dd = add nuw i64 %.sroa.01.0.i126, 1         ; 2 uses
  %exitcond34.not = icmp eq i64 %i.dd, %i.cv
  br i1 %exitcond34.not, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.x, %bb.y
  %.sroa.01.0.i126 = phi i64 [ %i.dd, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %i.dc, i64 %.sroa.01.0.i126
  %i.df = getelementptr inbounds nuw [48 x i8], ptr %i.da, i64 %.sroa.01.0.i126
  %i.dg = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.df), !noalias !426, !inline_history !420
  br i1 %i.dg, label %bb.y, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !424, !noalias !425, !noundef !6 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !425, !noalias !424, !noundef !6
  %i.dl = icmp eq i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.aa, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !425, !noalias !424, !nonnull !6, !noundef !6
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !424, !noalias !425, !nonnull !6, !noundef !6
  %.not23.not = icmp eq i64 %i.di, 0
  br i1 %.not23.not, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph

bb.ab:                                            ; preds = %.lr.ph
  %i.dq = add nuw i64 %.sroa.01.0.i24, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.di
  br i1 %exitcond.not, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa, %bb.ab
  %.sroa.01.0.i24 = phi i64 [ %i.dq, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [48 x i8], ptr %i.dp, i64 %.sroa.01.0.i24
  %i.ds = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.01.0.i24
  %i.dt = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_3HirNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ds), !noalias !426, !inline_history !420
  br i1 %i.dt, label %bb.ab, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.b
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = load i32, ptr %i.du, align 8, !range !18, !alias.scope !424, !noalias !425, !noundef !6
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !range !18, !alias.scope !425, !noalias !424, !noundef !6
  %i.dy = icmp eq i32 %i.dv, %i.dx
  br i1 %i.dy, label %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11: ; preds = %bb.ab, %bb.y, %bb.j, %bb.l, %bb.aa, %bb.x, %2, %bb.i, %bb.k, %bb.b, %.split15, %.split14, %.split13, %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !6, !noundef !6 ; 15 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !6, !noundef !6 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 76
  %i.ee = load i8, ptr %i.ed, align 4, !range !13, !alias.scope !436, !noalias !437, !noundef !6
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 76
  %i.eg = load i8, ptr %i.ef, align 4, !range !13, !alias.scope !437, !noalias !436, !noundef !6
  %i.eh = icmp eq i8 %i.ee, %i.eg
  br i1 %i.eh, label %bb.ac, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 77
  %i.ej = load i8, ptr %i.ei, align 1, !range !13, !alias.scope !436, !noalias !437, !noundef !6
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 77
  %i.el = load i8, ptr %i.ek, align 1, !range !13, !alias.scope !437, !noalias !436, !noundef !6
  %i.em = icmp eq i8 %i.ej, %i.el
  br i1 %i.em, label %bb.ad, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 78
  %i.eo = load i8, ptr %i.en, align 2, !range !13, !alias.scope !436, !noalias !437, !noundef !6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 78
  %i.eq = load i8, ptr %i.ep, align 2, !range !13, !alias.scope !437, !noalias !436, !noundef !6
  %i.er = icmp eq i8 %i.eo, %i.eq
  br i1 %i.er, label %bb.ae, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %i.ea, align 8, !range !5, !alias.scope !436, !noalias !437, !noundef !6
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eu = trunc nuw i64 %i.es to i1
  %i.ev = load i64, ptr %i.ec, align 8, !range !5, !alias.scope !437, !noalias !436, !noundef !6
  %i.ew = trunc nuw i64 %i.ev to i1               ; 2 uses
  br i1 %i.eu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ew, label %.split.i, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.ae
  br i1 %i.ew, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.ah

.split.i:                                         ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ey = load i64, ptr %i.et, align 8, !alias.scope !436, !noalias !437, !noundef !6
  %i.ez = load i64, ptr %i.ex, align 8, !alias.scope !437, !noalias !436, !noundef !6
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.ah, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %.split.i, %bb.ag
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !range !5, !alias.scope !436, !noalias !437, !noundef !6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.fe = trunc nuw i64 %i.fc to i1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !range !5, !alias.scope !437, !noalias !436, !noundef !6
  %i.fh = trunc nuw i64 %i.fg to i1               ; 2 uses
  br i1 %i.fe, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fh, label %.split3.i, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.fh, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.ak

.split3.i:                                        ; preds = %bb.ai
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fj = load i64, ptr %i.fd, align 8, !alias.scope !436, !noalias !437, !noundef !6
  %i.fk = load i64, ptr %i.fi, align 8, !alias.scope !437, !noalias !436, !noundef !6
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.ak, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %.split3.i, %bb.aj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.fn = load i32, ptr %i.fm, align 8, !alias.scope !436, !noalias !437, !noundef !6
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.fp = load i32, ptr %i.fo, align 8, !alias.scope !437, !noalias !436, !noundef !6
  %i.fq = icmp eq i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.al, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.ak
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.fs = load i32, ptr %i.fr, align 4, !alias.scope !436, !noalias !437, !noundef !6
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ec, i64 60
  %i.fu = load i32, ptr %i.ft, align 4, !alias.scope !437, !noalias !436, !noundef !6
  %i.fv = icmp eq i32 %i.fs, %i.fu
  br i1 %i.fv, label %bb.am, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.al
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  %i.fx = load i32, ptr %i.fw, align 8, !alias.scope !436, !noalias !437, !noundef !6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  %i.fz = load i32, ptr %i.fy, align 8, !alias.scope !437, !noalias !436, !noundef !6
  %i.ga = icmp eq i32 %i.fx, %i.fz
  br i1 %i.ga, label %bb.an, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.am
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 68
  %i.gc = load i32, ptr %i.gb, align 4, !alias.scope !436, !noalias !437, !noundef !6
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ec, i64 68
  %i.ge = load i32, ptr %i.gd, align 4, !alias.scope !437, !noalias !436, !noundef !6
  %i.gf = icmp eq i32 %i.gc, %i.ge
  br i1 %i.gf, label %bb.ao, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ao:                                            ; preds = %bb.an
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.gh = load i32, ptr %i.gg, align 8, !alias.scope !436, !noalias !437, !noundef !6
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !alias.scope !437, !noalias !436, !noundef !6
  %i.gk = icmp eq i32 %i.gh, %i.gj
  br i1 %i.gk, label %bb.ap, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ap:                                            ; preds = %bb.ao
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !436, !noalias !437, !noundef !6
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !437, !noalias !436, !noundef !6
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.aq, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.aq:                                            ; preds = %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !range !5, !alias.scope !436, !noalias !437, !noundef !6
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.gt = trunc nuw i64 %i.gr to i1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.gv = load i64, ptr %i.gu, align 8, !range !5, !alias.scope !437, !noalias !436, !noundef !6
  %i.gw = trunc nuw i64 %i.gv to i1               ; 2 uses
  br i1 %i.gt, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.gw, label %bb.at, label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.as:                                            ; preds = %bb.aq
  %i.gx = xor i1 %i.gw, true
  br label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.at:                                            ; preds = %bb.ar
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.gz = load i64, ptr %i.gs, align 8, !alias.scope !436, !noalias !437, !noundef !6
  %i.ha = load i64, ptr %i.gy, align 8, !alias.scope !437, !noalias !436, !noundef !6
  %i.hb = icmp eq i64 %i.gz, %i.ha
  br label %_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXs1U_NtCs79ICTHwG85D_12regex_syntax3hirNtB6_11PropertiesINtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %.lr.ph, %.lr.ph27, %.lr.ph.i.i, %.lr.ph.i4.i, %bb.u, %bb.r, %bb.t, %bb.v, %bb.q, %bb.m, %bb.n, %bb.p, %bb.e, %bb.g, %bb.h, %bb.w, %bb.d, %.split8, %.split, %bb.z, %bb.a, %bb.at, %bb.as, %bb.ar, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %.split3.i, %bb.aj, %bb.ai, %.split.i, %bb.ag, %bb.af, %bb.ad, %bb.ac, %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11, %.split15, %.split14, %.split13, %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %.split15 ], [ false, %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ false, %.split3.i ], [ false, %.split13 ], [ false, %.split14 ], [ %i.hb, %bb.at ], [ false, %bb.ag ], [ %i.gx, %bb.as ], [ false, %bb.ap ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %_RNvXsK_NtCs79ICTHwG85D_12regex_syntax3hirNtB5_7HirKindNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread11 ], [ false, %bb.ao ], [ false, %bb.an ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ar ], [ false, %.split.i ], [ false, %bb.a ], [ false, %bb.z ], [ false, %.split ], [ false, %.split8 ], [ false, %bb.d ], [ false, %.lr.ph.i.i ], [ false, %bb.w ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.e ], [ false, %.lr.ph27 ], [ false, %.lr.ph.i4.i ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.q ], [ false, %bb.v ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.u ], [ false, %.lr.ph ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs4NRVxsYgnAr_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtB7_3fmt5Debug3fmtCs79ICTHwG85D_12regex_syntax(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !6
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionmENtNtB7_3fmt5Debug3fmtCs79ICTHwG85D_12regex_syntax(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !14, !noundef !6
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4)
  br label %bb.d
end_hunk_0
